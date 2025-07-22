using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using SistemaSolicitudesLaDat.Service.Abstract;
using System.ComponentModel.DataAnnotations;

namespace SistemaSolicitudesLaDat.Pages.CMS
{
    public class ParticipacionesModel : PageModel
    {
        private readonly IProveedorService _proveedorService;
        private readonly ISolicitudService _solicitudService;

        public ParticipacionesModel(IProveedorService proveedorService, ISolicitudService solicitudService)
        {
            _proveedorService = proveedorService;
            _solicitudService = solicitudService;
        }

        [BindProperty]
        [Required(ErrorMessage = "La cédula jurídica es requerida")]
        [RegularExpression(@"^\d{9,12}$", ErrorMessage = "Formato de cédula jurídica inválido")]
        public string CedulaJuridica { get; set; } = null!;

        public List<SolicitudResumen>? Participaciones { get; set; }

        public string? Mensaje { get; set; }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                Participaciones = null;
                Mensaje = null;
                return Page();
            }

            var proveedor = await _proveedorService.ObtenerPorCedulaAsync(CedulaJuridica);
            if (proveedor == null)
            {
                Mensaje = "Proveedor no existe.";
                Participaciones = null;
                return Page();
            }

            var resultados = await _solicitudService.ObtenerSolicitudesPorProveedorAsync(proveedor.id_proveedor);

            Participaciones = resultados.Select(s => new SolicitudResumen
            {
                consecutivo_oficio = s.consecutivo_oficio,
                titulo_solicitud = s.titulo_solicitud
            }).ToList();

            if (Participaciones == null || Participaciones.Count == 0)
            {
                Mensaje = "Datos no encontrados.";
            }

            return Page();
        }

        public class SolicitudResumen
        {
            public string consecutivo_oficio { get; set; } = null!;
            public string titulo_solicitud { get; set; } = null!;
        }
    }
}
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using SistemaSolicitudesLaDat.Entities.Solicitudes;
using SistemaSolicitudesLaDat.Service.Abstract;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Linq;

namespace SistemaSolicitudesLaDat.Pages.Solicitudes
{
    public class DetalleParticipacionesModel : PageModel
    {
        private readonly IPropuestaService _propuestaService;

        public DetalleParticipacionesModel(IPropuestaService propuestaService)
        {
            _propuestaService = propuestaService;
        }

        [BindProperty(SupportsGet = true, Name = "id")]
        public string IdSolicitud { get; set; } = null!;

        public List<PropuestaConProveedor> Participaciones { get; set; } = new();

        public bool ExisteAprobada { get; set; }

        public async Task<IActionResult> OnGetAsync()
        {
            Participaciones = await _propuestaService.ObtenerPropuestasConProveedorPorSolicitudAsync(IdSolicitud);
            ExisteAprobada = Participaciones.Any(p => p.esta_aprobada);

            if (Participaciones == null || !Participaciones.Any())
            {
                TempData["Info"] = "No hay participaciones para esta solicitud.";
            }

            return Page();
        }

        public async Task<IActionResult> OnPostAprobarAsync(int idPropuesta)
        {
            var resultado = await _propuestaService.AprobarPropuestaAsync(idPropuesta);

            if (resultado)
                TempData["Mensaje"] = "Propuesta aprobada correctamente.";
            else
                TempData["Error"] = "No se pudo aprobar la propuesta. Quizá ya hay una aprobada.";

            return RedirectToPage(new { IdSolicitud });
        }
    }
}

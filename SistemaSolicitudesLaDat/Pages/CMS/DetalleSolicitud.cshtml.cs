using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using SistemaSolicitudesLaDat.Entities.Representantes;
using SistemaSolicitudesLaDat.Entities.Solicitudes;
using SistemaSolicitudesLaDat.Service.Abstract;

namespace SistemaSolicitudesLaDat.Pages.CMS
{
    public class DetalleSolicitudModel : PageModel
    {
        private readonly ISolicitudService _solicitudService;

        public DetalleSolicitudModel(ISolicitudService solicitudService)
        {
            _solicitudService = solicitudService;
        }

        [BindProperty(SupportsGet = true)]
        public string Id { get; set; }

        public Solicitud Solicitud { get; set; }
        public List<EstadoSolicitud> Estados { get; set; } = new();
        public List<Representante> Representantes { get; set; } = new();

        public async Task<IActionResult> OnGetAsync()
        {
            if (string.IsNullOrEmpty(Id))
                return RedirectToPage("/Externo/SolicitudesPublicadas");

            var resultado = await _solicitudService.ObtenerDetalleSolicitudAsync(Id);

            Solicitud = resultado.solicitud;
            Estados = resultado.estados;
            Representantes = resultado.representantes;

            if (Solicitud == null)
                return RedirectToPage("/Externo/SolicitudesPublicadas");

            return Page();
        }

        public string MostrarOIndicado(string valor) =>
            string.IsNullOrWhiteSpace(valor) ? "<em>&lt;No indicado&gt;</em>" : valor;

        public string MostrarOIndicado(DateTime? fecha) =>
            fecha.HasValue ? fecha.Value.ToString("dd/MM/yyyy") : "<em>&lt;No indicado&gt;</em>";
    }
}


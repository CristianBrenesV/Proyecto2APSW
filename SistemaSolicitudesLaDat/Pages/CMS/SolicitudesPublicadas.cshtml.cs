using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using SistemaSolicitudesLaDat.Entities.Solicitudes;
using SistemaSolicitudesLaDat.Service.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace SistemaSolicitudesLaDat.Pages.CMS
{
    public class SolicitudesPublicadasModel : PageModel
    {
        private readonly ISolicitudService _solicitudService;

        public SolicitudesPublicadasModel(ISolicitudService solicitudService)
        {
            _solicitudService = solicitudService;
        }

        public List<Solicitud> Solicitudes { get; set; } = new();
        [BindProperty(SupportsGet = true)] public int Pagina { get; set; } = 1;
        public int TotalPaginas { get; set; }
        public int TotalRegistros { get; set; }
        public int PageSize { get; set; } = 5;

        public async Task<IActionResult> OnGetAsync()
        {
            var (solicitudes, totalRegistros) = await _solicitudService.ObtenerSolicitudesPublicadasAsync(Pagina, PageSize);

            Solicitudes = solicitudes;
            TotalRegistros = totalRegistros;
            TotalPaginas = (int)Math.Ceiling(totalRegistros / (double)PageSize);

            return Page();
        }
    }
}

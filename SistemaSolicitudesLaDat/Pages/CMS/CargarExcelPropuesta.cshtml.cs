using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using SistemaSolicitudesLaDat.Entities.Solicitudes;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;
using System.Threading.Tasks;
using ClosedXML.Excel;

namespace SistemaSolicitudesLaDat.Pages.CMS
{
    public class CargarExcelPropuestaModel : PageModel
    {
        [BindProperty]
        public IFormFile? ArchivoExcel { get; set; }

        [BindProperty(SupportsGet = true)]
        public string? id_solicitud { get; set; }
        public string? MensajeError { get; set; } = null;

        public void OnGet()
        {
            // No hay parámetro, no hay lógica en Get
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (ArchivoExcel == null || ArchivoExcel.Length == 0)
            {
                MensajeError = "Debe seleccionar un archivo Excel válido.";
                return Page();
            }

            try
            {
                var detalles = await Task.Run(() => LeerExcel(ArchivoExcel));
                TempData["DetallesCargados"] = JsonSerializer.Serialize(detalles);

                return RedirectToPage("/CMS/PropuestaSolicitud", new { id = id_solicitud });
            }
            catch (Exception ex)
            {
                MensajeError = $"Error al procesar el archivo: {ex.Message}";
                return Page();
            }
        }

        private List<DetallePropuesta> LeerExcel(IFormFile archivo)
        {
            using var stream = new MemoryStream();
            archivo.CopyTo(stream);
            using var workbook = new XLWorkbook(stream);
            var worksheet = workbook.Worksheet(1);

            var detalles = new List<DetallePropuesta>();

            int fila = 2;
            while (!worksheet.Cell(fila, 1).IsEmpty())
            {
                var mes = worksheet.Cell(fila, 1).GetValue<int>();
                var anio = worksheet.Cell(fila, 2).GetValue<int>();
                var horas = worksheet.Cell(fila, 3).GetValue<int>();
                var monto = worksheet.Cell(fila, 4).GetValue<decimal>();
                var iva = worksheet.Cell(fila, 5).GetValue<decimal>();
                var total = worksheet.Cell(fila, 6).GetValue<decimal>();
                var observaciones = worksheet.Cell(fila, 7).GetValue<string>();
                var porcentajeCobro = worksheet.Cell(fila, 8).GetValue<decimal>();

                if (total != monto + iva)
                    throw new System.Exception($"Fila {fila}: Total no coincide con Monto + IVA.");

                detalles.Add(new DetallePropuesta
                {
                    mes = mes,
                    anio = anio,
                    horas = horas,
                    monto = monto,
                    iva = iva,
                    total = total,
                    observaciones = observaciones,
                    porcentaje_cobro = porcentajeCobro
                });

                fila++;
            }

            return detalles;
        }
    }
}

using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using SistemaSolicitudesLaDat.Entities.Solicitudes;
using SistemaSolicitudesLaDat.Service.Abstract;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Threading.Tasks;

namespace SistemaSolicitudesLaDat.Pages.CMS
{
    public class PropuestaSolicitudModel : PageModel
    {
        private readonly IProveedorService _proveedorService;
        private readonly IPropuestaService _propuestaService;

        public PropuestaSolicitudModel(IProveedorService proveedorService, IPropuestaService propuestaService)
        {
            _proveedorService = proveedorService;
            _propuestaService = propuestaService;
        }

        [BindProperty]
        public Propuesta Propuesta { get; set; } = new Propuesta();

        [BindProperty]
        public Proveedor Proveedor { get; set; } = new Proveedor();

        [BindProperty]
        public List<DetallePropuesta> Detalles { get; set; } = new List<DetallePropuesta> { new DetallePropuesta() };

        public void OnGet(string id)
        {
            Propuesta.id_solicitud = id;
        }

        public async Task<IActionResult> OnPostAsync()
        {
            // Validar datos básicos del proveedor (puedes agregar validaciones personalizadas si quieres)
            if (string.IsNullOrWhiteSpace(Proveedor.cedula_juridica) || !System.Text.RegularExpressions.Regex.IsMatch(Proveedor.cedula_juridica, @"^\d{9,12}$"))
            {
                ModelState.AddModelError("Proveedor.cedula_juridica", "La cédula jurídica es requerida y debe tener entre 9 y 12 dígitos.");
            }

            if (string.IsNullOrWhiteSpace(Proveedor.nombre))
                ModelState.AddModelError("Proveedor.nombre", "El nombre del proveedor es requerido.");

            if (string.IsNullOrWhiteSpace(Proveedor.nombre_representante))
                ModelState.AddModelError("Proveedor.nombre_representante", "El nombre del representante es requerido.");

            if (string.IsNullOrWhiteSpace(Proveedor.telefono))
                ModelState.AddModelError("Proveedor.telefono", "El teléfono de contacto es requerido.");

            if (string.IsNullOrWhiteSpace(Proveedor.correo_electronico) || !new EmailAddressAttribute().IsValid(Proveedor.correo_electronico))
                ModelState.AddModelError("Proveedor.correo_electronico", "El correo electrónico es requerido y debe ser válido.");

            // Validar detalles de la propuesta
            if (Detalles == null || Detalles.Count == 0)
            {
                ModelState.AddModelError(string.Empty, "Debe agregar al menos un detalle de propuesta.");
            }
            else
            {
                for (int i = 0; i < Detalles.Count; i++)
                {
                    var d = Detalles[i];
                    if (d.mes < 1 || d.mes > 12)
                        ModelState.AddModelError($"Detalles[{i}].mes", "Mes debe estar entre 1 y 12.");
                    if (d.anio < 2000)
                        ModelState.AddModelError($"Detalles[{i}].anio", "Año debe ser válido.");
                    if (d.horas <= 0)
                        ModelState.AddModelError($"Detalles[{i}].horas", "Horas deben ser mayores a cero.");
                    if (d.monto <= 0)
                        ModelState.AddModelError($"Detalles[{i}].monto", "Monto debe ser mayor a cero.");
                    if (string.IsNullOrWhiteSpace(d.observaciones))
                        ModelState.AddModelError($"Detalles[{i}].observaciones", "Observaciones son requeridas.");
                    if (d.porcentaje_cobro < 0 || d.porcentaje_cobro > 100)
                        ModelState.AddModelError($"Detalles[{i}].porcentaje_cobro", "Porcentaje de cobro debe estar entre 0 y 100.");
                }
            }

            if (!ModelState.IsValid)
            {
                return Page();
            }

            // Revisar si proveedor existe
            var proveedorExistente = await _proveedorService.ObtenerPorCedulaAsync(Proveedor.cedula_juridica);

            if (proveedorExistente == null)
            {
                // Crear nuevo proveedor
                var nuevoId = await _proveedorService.ObtenerOInsertarProveedorAsync(Proveedor);
                Propuesta.id_proveedor = nuevoId.id_proveedor;
            }
            else
            {
                Propuesta.id_proveedor = proveedorExistente.id_proveedor;
            }

            await _propuestaService.RegistrarPropuestaConDetallesAsync(Propuesta, Detalles);

            TempData["Mensaje"] = "Propuesta registrada exitosamente.";

            return RedirectToPage("/Solicitudes/DetalleSolicitud", new { id = Propuesta.id_solicitud });
        }
    }
}
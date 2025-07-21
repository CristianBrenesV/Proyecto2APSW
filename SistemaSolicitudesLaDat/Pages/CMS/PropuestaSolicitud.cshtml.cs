using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using SistemaSolicitudesLaDat.Entities.Solicitudes;
using SistemaSolicitudesLaDat.Service.Abstract;
using System.ComponentModel.DataAnnotations;
using System.Text.Json;

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
        public List<DetallePropuesta> Detalles { get; set; } = new List<DetallePropuesta>();

        [TempData]
        public string? Mensaje { get; set; }

        [BindProperty]
        public bool MostrarModalCrearProveedor { get; set; } = false;

        public void OnGet(string id)
        {
            // Si vienen detalles cargados en TempData (desde el Excel), los deserializamos y asignamos
            if (TempData.ContainsKey("DetallesCargados"))
            {
                var json = TempData["DetallesCargados"]?.ToString() ?? "[]";
                Detalles = JsonSerializer.Deserialize<List<DetallePropuesta>>(json) ?? new List<DetallePropuesta>();
            }

            Propuesta.id_solicitud = id;
            if (Detalles.Count == 0)
                Detalles.Add(new DetallePropuesta());

            ModelState.Clear();
        }

        public async Task<IActionResult> OnPostValidarProveedorAsync()
        {
            // Limpiar ModelState para evitar errores en otros campos no relacionados
            ModelState.Clear();

            if (string.IsNullOrWhiteSpace(Proveedor.cedula_juridica) ||
                !System.Text.RegularExpressions.Regex.IsMatch(Proveedor.cedula_juridica, @"^\d{9,12}$"))
            {
                ModelState.AddModelError("Proveedor.cedula_juridica", "La cédula jurídica es requerida y debe tener entre 9 y 12 dígitos.");
                return Page();
            }

            var proveedorExistente = await _proveedorService.ObtenerPorCedulaAsync(Proveedor.cedula_juridica);

            if (proveedorExistente == null)
            {
                MostrarModalCrearProveedor = true;
                Proveedor.nombre = string.Empty;
            }
            else
            {
                Proveedor = proveedorExistente;
                // Limpiar ModelState para el nombre que se asigna ahora para que no valide el campo
                ModelState.Remove("Proveedor.nombre");
            }

            return Page();
        }


        public async Task<IActionResult> OnPostCrearProveedorAsync()
        {
            if (!ModelState.IsValid)
            {
                MostrarModalCrearProveedor = true;
                return Page();
            }

            var nuevoProveedor = await _proveedorService.ObtenerOInsertarProveedorAsync(Proveedor);

            if (nuevoProveedor != null && nuevoProveedor.id_proveedor > 0)
            {
                Proveedor = nuevoProveedor;
                Propuesta.id_proveedor = nuevoProveedor.id_proveedor;
                Mensaje = $"Proveedor creado exitosamente. ID: {nuevoProveedor.id_proveedor}";
                MostrarModalCrearProveedor = false;
            }
            else
            {
                Mensaje = "Error: No se pudo crear el proveedor.";
                MostrarModalCrearProveedor = true;
            }

            return Page();
        }

        public async Task<IActionResult> OnPostConfirmarAsync()
        {
            // Validaciones iguales...
            if (string.IsNullOrWhiteSpace(Proveedor.cedula_juridica) ||
                !System.Text.RegularExpressions.Regex.IsMatch(Proveedor.cedula_juridica, @"^\d{9,12}$"))
            {
                ModelState.AddModelError("Proveedor.cedula_juridica", "La cédula jurídica es requerida y debe tener entre 9 y 12 dígitos.");
            }

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

                    if (d.anio < 2000 || d.anio > DateTime.Now.Year + 5)
                        ModelState.AddModelError($"Detalles[{i}].anio", "Año debe ser válido.");

                    if (d.horas <= 0)
                        ModelState.AddModelError($"Detalles[{i}].horas", "Las horas deben ser mayores a cero.");

                    if (d.monto <= 0)
                        ModelState.AddModelError($"Detalles[{i}].monto", "El monto debe ser mayor a cero.");

                    if (string.IsNullOrWhiteSpace(d.observaciones))
                        ModelState.AddModelError($"Detalles[{i}].observaciones", "Las observaciones son requeridas.");

                    if (d.porcentaje_cobro < 0 || d.porcentaje_cobro > 100)
                        ModelState.AddModelError($"Detalles[{i}].porcentaje_cobro", "El porcentaje de cobro debe estar entre 0 y 100.");
                }
            }

            if (!ModelState.IsValid)
            {
                return Page();
            }

            var proveedorExistente = await _proveedorService.ObtenerPorCedulaAsync(Proveedor.cedula_juridica);
            if (proveedorExistente == null)
            {
                var nuevo = await _proveedorService.ObtenerOInsertarProveedorAsync(Proveedor);
                Propuesta.id_proveedor = nuevo.id_proveedor;
            }
            else
            {
                Propuesta.id_proveedor = proveedorExistente.id_proveedor;
            }

            foreach (var d in Detalles)
            {
                d.iva = d.monto * 0.13m;
                d.total = d.monto + d.iva;
            }

            Propuesta.fecha_creacion = DateTime.Now;

            var detallesValidos = Detalles ?? new List<DetallePropuesta>();

            int idPropuesta = await _propuestaService.RegistrarPropuestaConDetallesAsync(Propuesta, detallesValidos);

            if (idPropuesta <= 0)
            {
                ModelState.AddModelError(string.Empty, "Error: No se pudo registrar la propuesta. Intente nuevamente.");
                return Page();
            }

            Mensaje = "Propuesta registrada exitosamente.";

            return Page();
        }

        public IActionResult OnPostCancelar()
        {
            return RedirectToPage("/CMS/DetalleSolicitud", new { id = Propuesta.id_solicitud });
        }

        public IActionResult OnPostCargarExcel()
        {
            return RedirectToPage("/CMS/CargarExcelPropuesta", new { id_solicitud = Propuesta.id_solicitud });
        }
    }
}

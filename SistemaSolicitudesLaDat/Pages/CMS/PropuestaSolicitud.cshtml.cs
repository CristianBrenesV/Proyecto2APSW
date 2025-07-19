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

        public class ProveedorInputModel
        {
            [Required(ErrorMessage = "Cédula jurídica es requerida")]
            [RegularExpression(@"^\d{9,12}$", ErrorMessage = "Formato de cédula jurídica inválido")]
            public string CedulaJuridica { get; set; } = null!;

            [Required(ErrorMessage = "Nombre del proveedor es requerido")]
            public string Nombre { get; set; } = null!;

            [Required(ErrorMessage = "Nombre del representante es requerido")]
            public string NombreRepresentante { get; set; } = null!;

            [Required(ErrorMessage = "Teléfono de contacto es requerido")]
            public string TelefonoContacto { get; set; } = null!;

            [Required(ErrorMessage = "Correo electrónico es requerido")]
            [EmailAddress(ErrorMessage = "Correo electrónico inválido")]
            public string CorreoContacto { get; set; } = null!;
        }

        [BindProperty]
        public Propuesta Propuesta { get; set; } = new Propuesta();

        [BindProperty]
        public List<DetallePropuesta> Detalles { get; set; } = new List<DetallePropuesta> { new DetallePropuesta() };

        [BindProperty]
        public ProveedorInputModel ProveedorInput { get; set; } = new ProveedorInputModel();

        public bool ProveedorExiste { get; set; } = false;

        public bool VerModalCrearProveedor { get; set; } = false;

        public void OnGet(string id)
        {
            Propuesta.id_solicitud = id;
        }

        public async Task<IActionResult> OnPostAsync(string action)
        {
            if (action == "verificar")
            {
                // Validar solo la cédula jurídica para verificación
                if (!TryValidateModel(ProveedorInput, nameof(ProveedorInput)))
                {
                    ModelState.ClearValidationState(nameof(ProveedorInput));
                    TryValidateModel(ProveedorInput.CedulaJuridica, nameof(ProveedorInput.CedulaJuridica));
                    return Page();
                }

                var proveedorExistente = await _proveedorService.ObtenerPorCedulaAsync(ProveedorInput.CedulaJuridica);

                if (proveedorExistente != null)
                {
                    ProveedorExiste = true;

                    ProveedorInput.Nombre = proveedorExistente.nombre;
                    ProveedorInput.NombreRepresentante = proveedorExistente.nombre_representante;
                    ProveedorInput.TelefonoContacto = proveedorExistente.telefono;
                    ProveedorInput.CorreoContacto = proveedorExistente.correo_electronico;
                    Propuesta.id_proveedor = proveedorExistente.id_proveedor;
                }
                else
                {
                    ProveedorExiste = false;
                    VerModalCrearProveedor = true;
                }

                return Page();
            }
            else if (action == "crearProveedor")
            {
                // Validar todos los campos del proveedor para crear
                if (!ModelState.IsValid)
                {
                    VerModalCrearProveedor = true;
                    return Page();
                }

                var nuevoProveedor = new Proveedor
                {
                    cedula_juridica = ProveedorInput.CedulaJuridica,
                    nombre = ProveedorInput.Nombre,
                    nombre_representante = ProveedorInput.NombreRepresentante,
                    telefono = ProveedorInput.TelefonoContacto,
                    correo_electronico = ProveedorInput.CorreoContacto
                };

                var proveedorCreado = await _proveedorService.ObtenerOInsertarProveedorAsync(nuevoProveedor);

                Propuesta.id_proveedor = proveedorCreado.id_proveedor;

                ProveedorExiste = true;
                VerModalCrearProveedor = false;

                return Page();
            }
            else if (action == "guardar")
            {
                if (!ProveedorExiste)
                {
                    ModelState.AddModelError("", "Debe verificar o crear un proveedor antes de guardar.");
                    return Page();
                }

                if (!ModelState.IsValid)
                    return Page();

                await _propuestaService.RegistrarPropuestaConDetallesAsync(Propuesta, Detalles);

                TempData["Mensaje"] = "Propuesta registrada exitosamente.";

                return RedirectToPage("/Solicitudes/DetalleSolicitud", new { id = Propuesta.id_solicitud });
            }

            return Page();
        }
    }
}

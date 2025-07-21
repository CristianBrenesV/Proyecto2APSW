using System;
using System.ComponentModel.DataAnnotations;

namespace SistemaSolicitudesLaDat.Entities.Solicitudes
{
    public class Proveedor
    {
        public int id_proveedor { get; set; }

        [Display(Name = "Cédula jurídica")]

        [Required(ErrorMessage = "La cédula jurídica es obligatoria.")]
        [RegularExpression(@"^\d{9,12}$", ErrorMessage = "La cédula debe tener entre 9 y 12 dígitos.")]
        public string cedula_juridica { get; set; } = string.Empty;

        [Display(Name = "Nombre proveedor")]

   //     [Required(ErrorMessage = "El nombre del proveedor es obligatorio.")]
     //   [StringLength(100, ErrorMessage = "El nombre no debe superar los 100 caracteres.")]
        public string nombre { get; set; } = string.Empty;

        [Display(Name = "Nombre representante")]

       // [Required(ErrorMessage = "El nombre del representante es obligatorio.")]
  //      [StringLength(100, ErrorMessage = "El nombre del representante no debe superar los 100 caracteres.")]
        public string nombre_representante { get; set; } = string.Empty;

        [Display(Name = "Teléfono")]

     //   [Required(ErrorMessage = "El teléfono es obligatorio.")]
        [RegularExpression(@"^\d{8}$", ErrorMessage = "El teléfono debe tener exactamente 8 dígitos.")]
        public string telefono { get; set; } = string.Empty;

        [Display(Name = "Correo electrónico")]

    //    [Required(ErrorMessage = "El correo electrónico es obligatorio.")]
       // [EmailAddress(ErrorMessage = "Ingrese un correo electrónico válido.")]
        public string correo_electronico { get; set; } = string.Empty;
    }
}

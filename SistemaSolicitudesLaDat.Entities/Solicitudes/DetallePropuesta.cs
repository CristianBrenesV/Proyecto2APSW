using System;
using System.ComponentModel.DataAnnotations;

namespace SistemaSolicitudesLaDat.Entities.Solicitudes
{
    public class DetallePropuesta
    {
        public int id_detalle { get; set; }

        public int id_propuesta { get; set; }

        [Display(Name = "Mes")]
      //  [Range(1, 12, ErrorMessage = "El mes debe estar entre 1 y 12.")]
        public int mes { get; set; }

        [Display(Name = "Año")]
    //    [Range(2000, 2100, ErrorMessage = "El año debe ser mayor o igual a 2000.")]
        public int anio { get; set; }

        [Display(Name = "Hora")]
    //    [Range(1, int.MaxValue, ErrorMessage = "Las horas deben ser mayores a 0.")]
        public int horas { get; set; }

        [Display(Name = "Monto")]
   //     [Range(0.01, double.MaxValue, ErrorMessage = "El monto debe ser mayor a 0.")]
        public decimal monto { get; set; }

      //  [Display(Name = "IVA (13% del monto")]
        public decimal iva { get; set; } 

    //    [Display(Name = "Total (monto + IVA)")]
        public decimal total { get; set; } 
        
        [Display(Name = "Observaciones")]
  //      [Required(ErrorMessage = "Las observaciones son obligatorias.")]
   //     [StringLength(300, ErrorMessage = "Máximo 300 caracteres para observaciones.")]
        public string observaciones { get; set; } = string.Empty;

        [Display(Name = "Porcentaje de cobro")]
    //    [Range(0, 100, ErrorMessage = "El porcentaje de cobro debe estar entre 0 y 100.")]
        public decimal porcentaje_cobro { get; set; }

        public Propuesta? Propuesta { get; set; }
    }
}

using System;
using System.ComponentModel.DataAnnotations;

namespace SistemaSolicitudesLaDat.Entities.Solicitudes
{
    public class DetallePropuesta
    {
        public int id_detalle { get; set; }

        public int id_propuesta { get; set; }

        public byte mes { get; set; } 

        public short anio { get; set; } 

        public decimal horas { get; set; }

        public decimal monto { get; set; }

        public decimal iva => monto * 0.13m;

        public decimal total => monto + iva;

        public string observaciones { get; set; } = null!;

        public decimal porcentaje_cobro { get; set; }

        public Propuesta? Propuesta { get; set; }
    }
}

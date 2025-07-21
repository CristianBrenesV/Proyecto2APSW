using System;
using System.ComponentModel.DataAnnotations;

namespace SistemaSolicitudesLaDat.Entities.Solicitudes
{
    public class Propuesta
    {
        public int id_propuesta { get; set; }

        public string? id_solicitud { get; set; }

        public int id_proveedor { get; set; }

        public DateTime fecha_creacion { get; set; }

        public Solicitud? Solicitud { get; set; }
        public Proveedor? Proveedor { get; set; }
        public List<DetallePropuesta>? Detalles { get; set; }
    }
}

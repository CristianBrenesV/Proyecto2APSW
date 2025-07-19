using System;
using System.ComponentModel.DataAnnotations;

namespace SistemaSolicitudesLaDat.Entities.Solicitudes
{
    public class Proveedor
    {
        public int id_proveedor { get; set; }

        public string cedula_juridica { get; set; } = null!; 

        public string nombre { get; set; } = null!;

        public string nombre_representante { get; set; } = null!;

        public string telefono { get; set; } = null!;

        public string correo_electronico { get; set; } = null!;

        public List<Propuesta>? Propuestas { get; set; }
    }
}

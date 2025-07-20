using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaSolicitudesLaDat.Entities.Solicitudes
{
    public class PropuestaConProveedor
    {
        public int id_propuesta { get; set; }
        public int id_proveedor { get; set; }
        public string cedula_juridica { get; set; } = null!;
        public string nombre { get; set; } = null!;
        public bool esta_aprobada { get; set; }
    }
}

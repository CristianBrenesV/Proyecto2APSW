using SistemaSolicitudesLaDat.Entities.Solicitudes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaSolicitudesLaDat.Service.Abstract
{
    public interface IPropuestaService
    {
        Task<int> RegistrarPropuestaConDetallesAsync(Propuesta propuesta, List<DetallePropuesta> detalles);

        Task<List<PropuestaConProveedor>> ObtenerPropuestasConProveedorPorSolicitudAsync(string idSolicitud, string usuarioEjecutor);

        Task<string?> ObtenerIdSolicitudPorPropuestaAsync(int idPropuesta, string usuarioEjecutor);

        Task<bool> AprobarPropuestaAsync(int idPropuesta, string usuarioEjecutor);

        Task<bool> ExistePropuestaAprobadaAsync(string idSolicitud, string usuarioEjecutor);
    }
}

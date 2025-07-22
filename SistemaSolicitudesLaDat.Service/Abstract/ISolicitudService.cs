using SistemaSolicitudesLaDat.Entities.Representantes;
using SistemaSolicitudesLaDat.Entities.Solicitudes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaSolicitudesLaDat.Service.Abstract
{
    public interface ISolicitudService
    {
        Task<Solicitud?> ObtenerPorIdAsync(string id);
        Task CrearAsync(Solicitud solicitud, string usuarioEjecutor);
        Task ActualizarAsync(Solicitud solicitud, string usuarioEjecutor);
        Task<bool> EliminarAsync(Solicitud solicitud, string usuarioEjecutor);
        Task<(IEnumerable<Solicitud> Solicitudes, int Total)> ObtenerSolicitudesPaginadasAsync(int PaginaActual, int pageSize);
        Task<int> MarcarSolicitudesVencidasAsync(string idEstadoVencida);
        Task PublicarAsync(Solicitud solicitud, string usuarioEjecutoro);
        Task<(List<Solicitud> solicitudes, int totalRegistros)> ObtenerSolicitudesPublicadasAsync(int paginaActual, int pageSize, string usuarioEjecutor);
        public Task<List<SolicitudResumen>> ObtenerSolicitudesPorProveedorAsync(int idProveedor, string usuarioEjecutor);
        public Task<(Solicitud solicitud, List<EstadoSolicitud> estados, List<Representante> representantes)> ObtenerDetalleSolicitudAsync(string idSolicitud, string usuarioEjecutor);
    }
}

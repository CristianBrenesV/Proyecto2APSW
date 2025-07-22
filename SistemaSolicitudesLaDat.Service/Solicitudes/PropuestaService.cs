using SistemaSolicitudesLaDat.Entities.Solicitudes;
using SistemaSolicitudesLaDat.Repository.Solicitudes;
using SistemaSolicitudesLaDat.Service.Abstract;

namespace SistemaSolicitudesLaDat.Services
{
    public class PropuestaService : IPropuestaService
    {
        private readonly PropuestaRepository _propuestaRepository;
        private readonly DetallePropuestaRepository _detalleRepository;
        private readonly IBitacoraService _bitacoraService;

        public PropuestaService(
            PropuestaRepository propuestaRepository,
            DetallePropuestaRepository detalleRepository,
             IBitacoraService bitacoraService)
        {
            _propuestaRepository = propuestaRepository;
            _detalleRepository = detalleRepository;
            _bitacoraService = bitacoraService;
        }

        public async Task<int> RegistrarPropuestaConDetallesAsync(Propuesta propuesta, List<DetallePropuesta> detalles)
        {
            int idPropuesta = await _propuestaRepository.InsertarAsync(propuesta);

            foreach (var detalle in detalles)
            {
                detalle.id_propuesta = idPropuesta;
                await _detalleRepository.InsertarAsync(detalle);
            }

            return idPropuesta;
        }

        public async Task<List<PropuestaConProveedor>> ObtenerPropuestasConProveedorPorSolicitudAsync(string idSolicitud)
        {
            return await _propuestaRepository.ObtenerPropuestasConProveedorPorSolicitudAsync(idSolicitud);
        }
        public async Task<string?> ObtenerIdSolicitudPorPropuestaAsync(int idPropuesta)
        {
             return await _propuestaRepository.ObtenerIdSolicitudPorPropuestaAsync(idPropuesta);
        }
        public async Task<bool> ExistePropuestaAprobadaAsync(string idSolicitud)
        {
            return await _propuestaRepository.ExistePropuestaAprobadaAsync(idSolicitud);
        }

        public async Task<Propuesta> ObtenerPropuestaPorCedulaAsync(string cedula)
        {
            return await _propuestaRepository.ObtenerPropuestaPorCedulaAsync(cedula);
        }

        public async Task<bool> AprobarPropuestaAsync(int idPropuesta)
        {
            var idSolicitud = await ObtenerIdSolicitudPorPropuestaAsync(idPropuesta);
            if (string.IsNullOrEmpty(idSolicitud))
                return false;

            bool existeAprobada = await ExistePropuestaAprobadaAsync(idSolicitud);
            if (existeAprobada)
                return false;

            return await _propuestaRepository.MarcarPropuestaComoAprobadaAsync(idPropuesta);
        }
    }
}
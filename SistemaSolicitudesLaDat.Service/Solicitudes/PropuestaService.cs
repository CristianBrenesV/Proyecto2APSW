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

        public async Task<List<PropuestaConProveedor>> ObtenerPropuestasConProveedorPorSolicitudAsync(string idSolicitud, string usuarioEjecutor)
        {
            try
            {
                var propuestas = await _propuestaRepository.ObtenerPropuestasConProveedorPorSolicitudAsync(idSolicitud);

                await _bitacoraService.RegistrarAccionAsync(
                    usuarioEjecutor,
                    "Consulta de propuestas con proveedor por solicitud",
                    new
                    {
                        idSolicitud,
                        totalPropuestas = propuestas.Count
                    }
                );

                return propuestas;
            }
            catch (Exception ex)
            {
                await _bitacoraService.RegistrarErrorAsync(usuarioEjecutor, ex.ToString());
                throw;
            }
        }
        public async Task<string?> ObtenerIdSolicitudPorPropuestaAsync(int idPropuesta, string usuarioEjecutor)
        {
            try
            {
                var idSolicitud = await _propuestaRepository.ObtenerIdSolicitudPorPropuestaAsync(idPropuesta);

                await _bitacoraService.RegistrarAccionAsync(
                    usuarioEjecutor,
                    "Consulta de ID de solicitud por propuesta",
                    new
                    {
                        idPropuesta,
                        idSolicitud
                    }
                );

                return idSolicitud;
            }
            catch (Exception ex)
            {
                await _bitacoraService.RegistrarErrorAsync(usuarioEjecutor, ex.ToString());
                throw;
            }
        }
        public async Task<bool> ExistePropuestaAprobadaAsync(string idSolicitud, string usuarioEjecutor)
        {
            try
            {
                var existeAprobada = await _propuestaRepository.ExistePropuestaAprobadaAsync(idSolicitud);

                await _bitacoraService.RegistrarAccionAsync(
                    usuarioEjecutor,
                    "Consulta de existencia de propuesta aprobada",
                    new
                    {
                        idSolicitud,
                        existeAprobada
                    }
                );

                return existeAprobada;
            }
            catch (Exception ex)
            {
                await _bitacoraService.RegistrarErrorAsync(usuarioEjecutor, ex.ToString());
                throw;
            }
        }

        public async Task<bool> AprobarPropuestaAsync(int idPropuesta, string usuarioEjecutor)
        {
            try
            {
                var idSolicitud = await ObtenerIdSolicitudPorPropuestaAsync(idPropuesta, usuarioEjecutor);
                if (string.IsNullOrEmpty(idSolicitud))
                    return false;

                bool existeAprobada = await ExistePropuestaAprobadaAsync(idSolicitud, usuarioEjecutor);
                if (existeAprobada)
                    return false;

                bool resultado = await _propuestaRepository.MarcarPropuestaComoAprobadaAsync(idPropuesta);

                await _bitacoraService.RegistrarAccionAsync(
                    usuarioEjecutor,
                    "Aprobación de propuesta",
                    new
                    {
                        idPropuesta,
                        idSolicitud,
                        resultadoAprobacion = resultado
                    }
                );

                return resultado;
            }
            catch (Exception ex)
            {
                await _bitacoraService.RegistrarErrorAsync(usuarioEjecutor, ex.ToString());
                throw;
            }
        }

    }
}
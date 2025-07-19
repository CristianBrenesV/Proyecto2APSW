using SistemaSolicitudesLaDat.Entities.Solicitudes;
using SistemaSolicitudesLaDat.Repository.Solicitudes;
using SistemaSolicitudesLaDat.Service.Abstract;

namespace SistemaSolicitudesLaDat.Services
{
    public class PropuestaService : IPropuestaService
    {
        private readonly PropuestaRepository _propuestaRepository;
        private readonly DetallePropuestaRepository _detalleRepository;

        public PropuestaService(
            PropuestaRepository propuestaRepository,
            DetallePropuestaRepository detalleRepository)
        {
            _propuestaRepository = propuestaRepository;
            _detalleRepository = detalleRepository;
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
    }
}

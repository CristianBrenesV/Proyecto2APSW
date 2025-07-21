using SistemaSolicitudesLaDat.Entities.Solicitudes;
using SistemaSolicitudesLaDat.Repository.Solicitudes;
using SistemaSolicitudesLaDat.Service.Abstract;


namespace SistemaSolicitudesLaDat.Services
{
    public class DetallePropuestaService : IDetallePropuestaService
    {
        private readonly DetallePropuestaRepository _detallePropuestaRepository;

        public DetallePropuestaService(DetallePropuestaRepository detallePropuestaRepository)
        {
            _detallePropuestaRepository = detallePropuestaRepository;
        }

        public async Task InsertarAsync(DetallePropuesta detalle)
        {
            await _detallePropuestaRepository.InsertarAsync(detalle);
        }

        public async Task<IEnumerable<DetallePropuesta>> ObtenerPorPropuestaAsync(int idPropuesta)
        {
            return await _detallePropuestaRepository.ObtenerPorPropuestaAsync(idPropuesta);
        }
    }
}
using SistemaSolicitudesLaDat.Entities.Solicitudes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaSolicitudesLaDat.Service.Abstract
{
    public interface IDetallePropuestaService
    {
        Task<IEnumerable<DetallePropuesta>> ObtenerPorPropuestaAsync(int idPropuesta);
        Task InsertarAsync(DetallePropuesta detalle);
    }
}

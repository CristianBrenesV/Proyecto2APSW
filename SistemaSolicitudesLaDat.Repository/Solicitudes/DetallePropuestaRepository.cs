using Dapper;
using SistemaSolicitudesLaDat.Entities.Solicitudes;
using SistemaSolicitudesLaDat.Repository.Infrastructure;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaSolicitudesLaDat.Repository.Solicitudes
{
    public class DetallePropuestaRepository
    {
        private readonly IDbConnectionFactory _dbConnectionFactory;

        public DetallePropuestaRepository(IDbConnectionFactory dbConnectionFactory)
        {
            _dbConnectionFactory = dbConnectionFactory;
        }

        public async Task InsertarAsync(DetallePropuesta detalle)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            var parameters = new DynamicParameters();
            parameters.Add("p_id_propuesta", detalle.id_propuesta);
            parameters.Add("p_mes", detalle.mes);
            parameters.Add("p_anio", detalle.anio);
            parameters.Add("p_horas", detalle.horas);
            parameters.Add("p_monto", detalle.monto);
            parameters.Add("p_observaciones", detalle.observaciones);
            parameters.Add("p_porcentaje_cobro", detalle.porcentaje_cobro);

            await connection.ExecuteAsync(
                "InsertarDetallePropuesta",
                parameters,
                commandType: CommandType.StoredProcedure);
        }
        public async Task<IEnumerable<DetallePropuesta>> ObtenerPorPropuestaAsync(int idPropuesta)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            return await connection.QueryAsync<DetallePropuesta>(
                "ListarDetallesPorPropuesta",
                new { p_id_propuesta = idPropuesta },
                commandType: CommandType.StoredProcedure);
        }
    }
}

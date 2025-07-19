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
    public class PropuestaRepository
    {
        private readonly IDbConnectionFactory _dbConnectionFactory;

        public PropuestaRepository(IDbConnectionFactory dbConnectionFactory)
        {
            _dbConnectionFactory = dbConnectionFactory;
        }

        public async Task<int> InsertarAsync(Propuesta propuesta)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            var parameters = new DynamicParameters();
            parameters.Add("p_id_solicitud", propuesta.id_solicitud);
            parameters.Add("p_id_proveedor", propuesta.id_proveedor);

            int nuevoId = await connection.ExecuteScalarAsync<int>(
                "InsertarPropuesta",
                parameters,
                commandType: CommandType.StoredProcedure);

            return nuevoId;
        }
    }
}

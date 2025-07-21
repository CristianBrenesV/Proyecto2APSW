using Dapper;
using MySql.Data.MySqlClient;
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
            parameters.Add("p_id_propuesta", dbType: DbType.Int32, direction: ParameterDirection.Output);

            await connection.ExecuteAsync(
                "InsertarPropuesta",
                parameters,
                commandType: CommandType.StoredProcedure);

            int nuevoId = parameters.Get<int>("p_id_propuesta");
            return nuevoId;
        }

        public async Task<List<PropuestaConProveedor>> ObtenerPropuestasConProveedorPorSolicitudAsync(string idSolicitud)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            var resultado = await connection.QueryAsync<PropuestaConProveedor>(
                "ObtenerPropuestasPorSolicitud",
                new { p_idSolicitud = idSolicitud },
                commandType: CommandType.StoredProcedure
            );

            return resultado.AsList();
        }

        public async Task<string?> ObtenerIdSolicitudPorPropuestaAsync(int idPropuesta)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            var resultado = await connection.QueryFirstOrDefaultAsync<string>(
                "ObtenerIdSolicitudPorPropuesta",
                new { p_idPropuesta = idPropuesta },
                commandType: CommandType.StoredProcedure);

            return resultado;
        }

        public async Task<bool> ExistePropuestaAprobadaAsync(string idSolicitud)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            var cantidad = await connection.ExecuteScalarAsync<int>(
                "ExistePropuestaAprobada",
                new { p_idSolicitud = idSolicitud },
                commandType: CommandType.StoredProcedure);

            return cantidad > 0;
        }

        public async Task<bool> MarcarPropuestaComoAprobadaAsync(int idPropuesta)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            var filas = await connection.ExecuteAsync(
                "MarcarPropuestaComoAprobada",
                new { p_idPropuesta = idPropuesta },
                commandType: CommandType.StoredProcedure);

            return filas > 0;
        }
    }
}
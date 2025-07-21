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
    public class ProveedorRepository
    {
        private readonly IDbConnectionFactory _dbConnectionFactory;

        public ProveedorRepository(IDbConnectionFactory dbConnectionFactory)
        {
            _dbConnectionFactory = dbConnectionFactory;
        }

        public async Task<Proveedor?> ObtenerPorCedulaAsync(string cedulaJuridica)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            return await connection.QuerySingleOrDefaultAsync<Proveedor>(
                "ObtenerProveedorPorCedula",
                new { p_cedula_juridica = cedulaJuridica },
                commandType: CommandType.StoredProcedure);
        }

        public async Task<int> InsertarAsync(Proveedor proveedor)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            var parameters = new DynamicParameters();
            parameters.Add("p_cedula_juridica", proveedor.cedula_juridica);
            parameters.Add("p_nombre", proveedor.nombre);
            parameters.Add("p_nombre_representante", proveedor.nombre_representante);
            parameters.Add("p_telefono", proveedor.telefono);
            parameters.Add("p_correo_electronico", proveedor.correo_electronico);

            parameters.Add("p_id_proveedor", dbType: DbType.Int32, direction: ParameterDirection.Output);

            await connection.ExecuteAsync(
                "InsertarProveedor",
                parameters,
                commandType: CommandType.StoredProcedure);

            int nuevoId = parameters.Get<int>("p_id_proveedor");

            return nuevoId;
        }

    }
}

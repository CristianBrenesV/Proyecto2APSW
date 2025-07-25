﻿using Dapper;
using SistemaSolicitudesLaDat.Entities.Representantes;
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
    public class SolicitudRepository
    {
        private readonly IDbConnectionFactory _dbConnectionFactory;

        public SolicitudRepository(IDbConnectionFactory dbConnectionFactory)
        {
            _dbConnectionFactory = dbConnectionFactory;
        }

        public async Task<IEnumerable<Solicitud>> GetAllAsync()
        {
            using var connection = _dbConnectionFactory.CreateConnection();
            var solicitudes = await connection.QueryAsync<Solicitud>(
                "ListarSolicitudes",
                commandType: System.Data.CommandType.StoredProcedure);
            return solicitudes;
        }

        public async Task<(IEnumerable<Solicitud> Solicitudes, int Total)> ObtenerSolicitudesPaginadasAsync(int paginaActual, int pageSize)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            var parameters = new DynamicParameters();
            parameters.Add("p_PaginaActual", paginaActual);
            parameters.Add("p_pageSize", pageSize);

            using var multi = await connection.QueryMultipleAsync("Listar5Solicitudes", parameters, commandType: CommandType.StoredProcedure);

            var solicitudes = await multi.ReadAsync<Solicitud>();
            var total = await multi.ReadFirstAsync<int>();

            return (solicitudes, total);
        }
        public async Task<Solicitud?> GetByIdAsync(string id)
        {
            using var connection = _dbConnectionFactory.CreateConnection();
            return await connection.QuerySingleOrDefaultAsync<Solicitud>(
                "ListarPorIdSolicitud",
                new { p_IdSolicitud = id },
                commandType: CommandType.StoredProcedure
            );
        }
        public async Task<int> ObtenerSiguienteNumeroAsync()
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            var siguienteNumero = await connection.QueryFirstOrDefaultAsync<int>(
                "ObtenerSiguienteNumeroSolicitud",
                commandType: CommandType.StoredProcedure);

            return siguienteNumero == 0 ? 1 : siguienteNumero;
        }

        public async Task<int> MarcarSolicitudesVencidasAsync(string idEstadoVencida)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            var parametros = new DynamicParameters();
            parametros.Add("p_estado_vencida", idEstadoVencida, DbType.String, ParameterDirection.Input);

            int filasAfectadas = await connection.ExecuteAsync(
                "MarcarSolicitudesVencidas",
                parametros,
                commandType: CommandType.StoredProcedure);

            return filasAfectadas;
        }

        public async Task<int> InsertAsync(Solicitud solicitud)
        {
            using var connection = _dbConnectionFactory.CreateConnection();
            var parameters = new DynamicParameters();
            parameters.Add("p_id_solicitud", solicitud.id_solicitud);
            parameters.Add("p_consecutivo_oficio", solicitud.consecutivo_oficio);
            parameters.Add("p_documento_respuesta", solicitud.documento_respuesta);
            parameters.Add("p_documento_inicio", solicitud.documento_inicio);
            parameters.Add("p_titulo_solicitud", solicitud.titulo_solicitud);
            parameters.Add("p_descripcion", solicitud.descripcion);
            parameters.Add("p_fecha_ingreso", solicitud.fecha_ingreso);
            parameters.Add("p_fecha_inicio", solicitud.fecha_inicio);
            parameters.Add("p_observaciones", solicitud.observaciones);
            parameters.Add("p_estado_solicitud", solicitud.estado_solicitud);
            parameters.Add("p_id_representante", solicitud.id_representante);
            parameters.Add("p_fecha_respuesta", solicitud.fecha_respuesta);

            return await connection.ExecuteAsync(
                "InsertarSolicitud",
                parameters,
                commandType: System.Data.CommandType.StoredProcedure);
        }

        public async Task<int> UpdateAsync(Solicitud solicitud)
        {
            using var connection = _dbConnectionFactory.CreateConnection();
            var parameters = new DynamicParameters();
            parameters.Add("p_id_solicitud", solicitud.id_solicitud);
            parameters.Add("p_consecutivo_oficio", solicitud.consecutivo_oficio);
            parameters.Add("p_documento_respuesta", solicitud.documento_respuesta);
            parameters.Add("p_documento_inicio", solicitud.documento_inicio);
            parameters.Add("p_titulo_solicitud", solicitud.titulo_solicitud);
            parameters.Add("p_descripcion", solicitud.descripcion);
            parameters.Add("p_fecha_ingreso", solicitud.fecha_ingreso);
            parameters.Add("p_fecha_inicio", solicitud.fecha_inicio);
            parameters.Add("p_observaciones", solicitud.observaciones);
            parameters.Add("p_estado_solicitud", solicitud.estado_solicitud);
            parameters.Add("p_id_representante", solicitud.id_representante);
            parameters.Add("p_fecha_respuesta", solicitud.fecha_respuesta);

            return await connection.ExecuteAsync(
                "ActualizarSolicitud",
                parameters,
                commandType: System.Data.CommandType.StoredProcedure);
        }
        public async Task<int> PublicarAsync(Solicitud solicitud)
        {
            using var connection = _dbConnectionFactory.CreateConnection();
            var parameters = new DynamicParameters();
            parameters.Add("p_id_solicitud", solicitud.id_solicitud);
            parameters.Add("p_es_publicada", solicitud.es_publicada);
            parameters.Add("p_fecha_vencimiento_publicacion", solicitud.fecha_vencimiento_publicacion);

            return await connection.ExecuteAsync(
                "PublicarSolicitud",
                parameters,
                commandType: System.Data.CommandType.StoredProcedure);
        }

        public async Task<(List<Solicitud> solicitudes, int totalRegistros)> ObtenerSolicitudesPublicadasAsync(int paginaActual, int pageSize)
        {
            using var connection = _dbConnectionFactory.CreateConnection();
            using var multi = await connection.QueryMultipleAsync(
                "Listar5SolicitudesPublicadas",
                new
                {
                    p_PaginaActual = paginaActual,
                    p_pageSize = pageSize
                },
                commandType: CommandType.StoredProcedure
            );

            var solicitudes = (await multi.ReadAsync<Solicitud>()).ToList();
            var totalRegistros = await multi.ReadFirstAsync<int>();

            return (solicitudes, totalRegistros);
        }

        public async Task<List<Solicitud>> ObtenerSolicitudesPorCedulaAsync(string cedulaJuridica)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            // Asumiendo que el SP retorna sólo un conjunto de Solicitud
            var solicitudes = await connection.QueryAsync<Solicitud>(
                "ObtenerSolicitudesPorCedulaProveedor",
                new { CedulaJuridica = cedulaJuridica },
                commandType: CommandType.StoredProcedure);

            return solicitudes.ToList();
        }

        public async Task<List<SolicitudResumen>> ObtenerSolicitudesPorProveedorAsync(int idProveedor)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            var resultado = await connection.QueryAsync<SolicitudResumen>(
                "ObtenerSolicitudesPorProveedor",
                new { idProveedor = idProveedor }, // mismo nombre que en el SP
                commandType: CommandType.StoredProcedure);

            return resultado.ToList();
        }


        public async Task<(Solicitud solicitud, List<EstadoSolicitud> estados, List<Representante> representantes)> ObtenerDetalleSolicitudAsync(string idSolicitud)
        {
            using var connection = _dbConnectionFactory.CreateConnection();
            using var multi = await connection.QueryMultipleAsync(
                "ObtenerDetalleSolicitud",
                new { p_id_solicitud = idSolicitud },
                commandType: CommandType.StoredProcedure);

            var solicitud = await multi.ReadSingleOrDefaultAsync<Solicitud>();
            var estados = (await multi.ReadAsync<EstadoSolicitud>()).ToList();
            var representantes = (await multi.ReadAsync<Representante>()).ToList();

            return (solicitud, estados, representantes);
        }

        public async Task<bool> TieneRelacionAsync(string id)
        {
            using var connection = _dbConnectionFactory.CreateConnection();

            var parameters = new DynamicParameters();
            parameters.Add("p_IdSolicitud", id, DbType.String);
            parameters.Add("p_TieneRelacion", dbType: DbType.Boolean, direction: ParameterDirection.Output);

            await connection.ExecuteAsync("TieneRelacionSolicitud", parameters, commandType: CommandType.StoredProcedure);

            return parameters.Get<bool>("p_TieneRelacion");
        }


        public async Task<bool> DeleteAsync(Solicitud solicitud)
        {
            var parameters = new DynamicParameters();
            parameters.Add("p_id_solicitud", solicitud.id_solicitud?.Trim(), DbType.String, ParameterDirection.Input);
            parameters.Add("p_result", dbType: DbType.Int32, direction: ParameterDirection.Output);

            using var connection = _dbConnectionFactory.CreateConnection();

            if (connection.State != ConnectionState.Open)
                connection.Open();

            await connection.ExecuteAsync(
                "EliminarSolicitud",
                parameters,
                commandType: CommandType.StoredProcedure
            );

            int resultado = parameters.Get<int>("p_result");
            return resultado == 1;
        }
    }
}
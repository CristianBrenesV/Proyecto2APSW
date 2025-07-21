-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sistema_solicitudes_ladat
-- ------------------------------------------------------
-- Server version	9.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `id_bitacora` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` date NOT NULL,
  `usuario_ejecutor` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion_accion` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `listado_acciones` json NOT NULL,
  `id_solicitud` char(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_bitacora`),
  KEY `usuario_ejecutor` (`usuario_ejecutor`),
  KEY `bitacora_ibfk_1` (`id_solicitud`),
  CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud` (`id_solicitud`) ON DELETE SET NULL,
  CONSTRAINT `bitacora_ibfk_2` FOREIGN KEY (`usuario_ejecutor`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES ('0000000001','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T06:49:16.1092282Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000002','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 0}',NULL),('0000000003','2025-06-28','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Procedure or function \'ObtenerSiguienteNumero\' cannot be found in database \'\' Verify that user \'solicitudes_usr\'@\'localhost\' has enough privileges to execute\\\\r\\\\n   at MySql.Data.MySqlClient.ProcedureCache.GetProcDataAsync(MySqlConnection connection, String spName, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.ProcedureCache.AddNewAsync(MySqlConnection connection, String spName, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.ProcedureCache.GetProcedureAsync(MySqlConnection conn, String spName, String cacheKey, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.StoredProcedure.GetParametersAsync(String procName, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.StoredProcedure.CheckParametersAsync(String spName, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.StoredProcedure.Resolve(Boolean preparing)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteDbDataReaderAsync(CommandBehavior behavior, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.QueryRowAsync[T](IDbConnection cnn, Row row, Type effectiveType, CommandDefinition command) in /_/Dapper/SqlMapper.Async.cs:line 489\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Representantes.RepresentantesRepository.ObtenerSiguienteNumeroAsync() in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Representantes\\\\\\\\RepresentantesRepository.cs:line 62\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Representantes.RepresentanteService.CrearAsync(Representante representante, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Representantes\\\\\\\\RepresentanteService.cs:line 39\\\"}\"',NULL),('0000000004','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T06:50:54.6958158Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000005','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 0}',NULL),('0000000006','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 1}',NULL),('0000000007','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 2}',NULL),('0000000008','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 3}',NULL),('0000000009','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 4}',NULL),('0000000010','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 5}',NULL),('0000000011','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 6}',NULL),('0000000012','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 7}',NULL),('0000000013','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 8}',NULL),('0000000014','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 9}',NULL),('0000000015','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000016','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000017','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000018','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000019','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000020','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000021','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 2, \"RepresentantesMostrados\": 5}',NULL),('0000000022','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000023','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 0}',NULL),('0000000024','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T07:05:25.1088498Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000025','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 0}',NULL),('0000000026','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T07:07:54.6752583Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000027','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 0}',NULL),('0000000028','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T07:09:13.4291266Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000029','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 0}',NULL),('0000000030','2025-06-28','0925rhmxms','Consulta paginada de usuarios','{\"Pagina\": 1, \"UsuariosMostrados\": 2}',NULL),('0000000031','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 0}',NULL),('0000000032','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T07:12:32.9796914Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000033','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 0}',NULL),('0000000034','2025-06-28','0925rhmxms','Creación de solicitud','{\"descripcion\": \"Mantenimiento preventivo de maquinaria\", \"fecha_inicio\": \"2025-06-14T00:00:00\", \"id_solicitud\": \"46928f4984\", \"fecha_ingreso\": \"2025-06-28T00:00:00-06:00\", \"observaciones\": \"Requiere atención urgente\", \"fecha_respuesta\": \"2025-06-16T00:00:00\", \"documento_inicio\": \"inicio_1001.pdf\", \"estado_solicitud\": \"1\", \"id_representante\": \"REP001\", \"titulo_solicitud\": \"Servicio de mantenimiento\", \"consecutivo_oficio\": \"OF-1001\", \"documento_respuesta\": \"respuesta_1001.pdf\"}',NULL),('0000000035','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 1}',NULL),('0000000036','2025-06-28','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mantenimiento preventivo de maquinaria\", \"fecha_inicio\": \"2025-06-14T00:00:00\", \"id_solicitud\": \"46928f4984\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"Requiere atención urgente\", \"fecha_respuesta\": \"2025-06-16T00:00:00\", \"documento_inicio\": \"inicio_1001.pdf\", \"estado_solicitud\": \"4\", \"id_representante\": \"REP001\", \"titulo_solicitud\": \"Servicio de mantenimiento\", \"consecutivo_oficio\": \"OF-1001\", \"documento_respuesta\": \"respuesta_1001.pdf\"}',NULL),('0000000037','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 1}',NULL),('0000000038','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000039','2025-06-28','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Revisión y reparación de flota corporativa\", \"fecha_inicio\": \"2025-02-25T00:00:00\", \"id_solicitud\": \"SOL011\", \"fecha_ingreso\": \"2025-02-03T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1011.pdf\", \"estado_solicitud\": \"3\", \"id_representante\": \"REP012\", \"titulo_solicitud\": \"Mantenimiento de vehículos\", \"consecutivo_oficio\": \"OF-1011\", \"documento_respuesta\": null}','SOL011'),('0000000040','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000041','2025-06-28','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Revisión y reparación de flota corporativa\", \"fecha_inicio\": \"2025-02-25T00:00:00\", \"id_solicitud\": \"SOL011\", \"fecha_ingreso\": \"2025-02-03T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1011.pdf\", \"estado_solicitud\": \"3\", \"id_representante\": \"REP012\", \"titulo_solicitud\": \"Mantenimiento de vehículos\", \"consecutivo_oficio\": \"OF-1011\", \"documento_respuesta\": null}','SOL011'),('0000000042','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000043','2025-06-28','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mejoras en la red eléctrica\", \"fecha_inicio\": \"2025-03-01T00:00:00\", \"id_solicitud\": \"SOL009\", \"fecha_ingreso\": \"2025-01-28T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1009.pdf\", \"estado_solicitud\": \"2\", \"id_representante\": \"REP008\", \"titulo_solicitud\": \"Actualización de infraestructura\", \"consecutivo_oficio\": \"OF-1009\", \"documento_respuesta\": null}','SOL009'),('0000000044','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000045','2025-06-28','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mejoras en la red eléctrica\", \"fecha_inicio\": \"2025-03-01T00:00:00\", \"id_solicitud\": \"SOL009\", \"fecha_ingreso\": \"2025-01-28T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1009.pdf\", \"estado_solicitud\": \"3\", \"id_representante\": \"REP008\", \"titulo_solicitud\": \"Actualización de infraestructura\", \"consecutivo_oficio\": \"OF-1009\", \"documento_respuesta\": null}','SOL009'),('0000000046','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000047','2025-06-28','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mejoras en la red eléctrica\", \"fecha_inicio\": \"2025-03-06T00:00:00\", \"id_solicitud\": \"SOL009\", \"fecha_ingreso\": \"2025-01-28T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1009.pdf\", \"estado_solicitud\": \"3\", \"id_representante\": \"REP008\", \"titulo_solicitud\": \"Actualización de infraestructura\", \"consecutivo_oficio\": \"OF-1009\", \"documento_respuesta\": null}','SOL009'),('0000000048','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000049','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 3}',NULL),('0000000050','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000051','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000052','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 3}',NULL),('0000000053','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000054','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 3}',NULL),('0000000055','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 2}',NULL),('0000000056','2025-06-28','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Pedido de materiales para producción\", \"fecha_inicio\": \"2025-01-20T00:00:00\", \"id_solicitud\": \"SOL002\", \"fecha_ingreso\": \"2025-01-10T00:00:00\", \"observaciones\": \"Entrega en dos fases\", \"fecha_respuesta\": \"2025-01-13T00:00:00\", \"documento_inicio\": \"inicio_1002.pdf\", \"estado_solicitud\": \"2\", \"id_representante\": \"REP005\", \"titulo_solicitud\": \"Suministro de materiales\", \"consecutivo_oficio\": \"OF-1002\", \"documento_respuesta\": \"respuesta_1002.pdf\"}','SOL002'),('0000000057','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000058','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000059','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 2}',NULL),('0000000060','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000061','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 2}',NULL),('0000000062','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL001','{\"Pagina\": 1, \"DesglosesMostrados\": 1}',NULL),('0000000063','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000064','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000065','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T07:23:43.0046075Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000066','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000067','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T07:25:46.3533371Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000068','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000069','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000070','2025-06-28','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mejoras en la red eléctrica\", \"fecha_inicio\": \"2025-03-06T00:00:00\", \"id_solicitud\": \"SOL009\", \"fecha_ingreso\": \"2025-01-28T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1009.pdf\", \"estado_solicitud\": \"1\", \"id_representante\": \"REP008\", \"titulo_solicitud\": \"Actualización de infraestructura\", \"consecutivo_oficio\": \"OF-1009\", \"documento_respuesta\": null}','SOL009'),('0000000071','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000072','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000073','2025-06-28','0925rhmxms','Creación de solicitud','{\"descripcion\": null, \"fecha_inicio\": \"2025-06-28T00:00:00\", \"id_solicitud\": \"c9094a4540\", \"fecha_ingreso\": \"2025-06-28T00:00:00-06:00\", \"observaciones\": \"Mejorar la infraestructura\", \"fecha_respuesta\": \"2025-06-28T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": \"1\", \"id_representante\": \"REP015\", \"titulo_solicitud\": \"Actualización de infraestructura\", \"consecutivo_oficio\": \"OF-1012\", \"documento_respuesta\": null}',NULL),('0000000074','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000075','2025-06-28','0925rhmxms','Actualización de solicitud','{\"descripcion\": null, \"fecha_inicio\": \"2025-06-29T00:00:00\", \"id_solicitud\": \"c9094a4540\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"Mejorar la infraestructura\", \"fecha_respuesta\": \"2025-06-28T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": \"1\", \"id_representante\": \"REP015\", \"titulo_solicitud\": \"Actualización de infraestructura\", \"consecutivo_oficio\": \"OF-1012\", \"documento_respuesta\": null}',NULL),('0000000076','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000077','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T07:30:18.3478548Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000078','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000079','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000080','2025-06-28','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mejoras en las columnas\", \"fecha_inicio\": \"2025-06-29T00:00:00\", \"id_solicitud\": \"c9094a4540\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"Mejorar la infraestructura\", \"fecha_respuesta\": \"2025-06-28T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": \"1\", \"id_representante\": \"REP015\", \"titulo_solicitud\": \"Actualización de infraestructura\", \"consecutivo_oficio\": \"OF-1012\", \"documento_respuesta\": null}',NULL),('0000000081','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000082','2025-06-28','0925rhmxms','Creación de solicitud','{\"descripcion\": \"Llevar el vehículo placa LDT-022 al mecánico\", \"fecha_inicio\": \"2025-06-28T00:00:00\", \"id_solicitud\": \"80150c36b2\", \"fecha_ingreso\": \"2025-06-28T00:00:00-06:00\", \"observaciones\": \"Urgente\", \"fecha_respuesta\": \"2025-06-28T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": \"1\", \"id_representante\": \"REP011\", \"titulo_solicitud\": \"Mantenimiento de vehículos\", \"consecutivo_oficio\": \"OF-1013\", \"documento_respuesta\": null}',NULL),('0000000083','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000084','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T07:42:26.8031141Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000085','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000086','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 0}',NULL),('0000000087','2025-06-28','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Truncated incorrect INTEGER value: \'G012\'\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteDbDataReaderAsync(CommandBehavior behavior, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.QueryRowAsync[T](IDbConnection cnn, Row row, Type effectiveType, CommandDefinition command) in /_/Dapper/SqlMapper.Async.cs:line 489\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Desgloses.DesgloseRepository.ObtenerSiguienteNumeroAsync() in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Desgloses\\\\\\\\DesgloseRepository.cs:line 73\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Desgloses.DesgloseService.InsertAsync(Desglose desglose, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Desgloses\\\\\\\\DesgloseService.cs:line 42\\\"}\"',NULL),('0000000088','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T07:47:28.1357447Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000089','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000090','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 0}',NULL),('0000000091','2025-06-28','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Truncated incorrect INTEGER value: \'G012\'\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteDbDataReaderAsync(CommandBehavior behavior, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.QueryRowAsync[T](IDbConnection cnn, Row row, Type effectiveType, CommandDefinition command) in /_/Dapper/SqlMapper.Async.cs:line 489\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Desgloses.DesgloseRepository.ObtenerSiguienteNumeroAsync() in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Desgloses\\\\\\\\DesgloseRepository.cs:line 73\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Desgloses.DesgloseService.InsertAsync(Desglose desglose, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Desgloses\\\\\\\\DesgloseService.cs:line 42\\\"}\"',NULL),('0000000092','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T07:50:05.6578608Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000093','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000094','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 0}',NULL),('0000000095','2025-06-28','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Truncated incorrect INTEGER value: \'G012\'\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteDbDataReaderAsync(CommandBehavior behavior, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.QueryRowAsync[T](IDbConnection cnn, Row row, Type effectiveType, CommandDefinition command) in /_/Dapper/SqlMapper.Async.cs:line 489\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Desgloses.DesgloseRepository.ObtenerSiguienteNumeroAsync() in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Desgloses\\\\\\\\DesgloseRepository.cs:line 73\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Desgloses.DesgloseService.InsertAsync(Desglose desglose, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Desgloses\\\\\\\\DesgloseService.cs:line 42\\\"}\"',NULL),('0000000096','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T07:51:58.6327175Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000097','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000098','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 0}',NULL),('0000000099','2025-06-28','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Truncated incorrect INTEGER value: \'G012\'\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteDbDataReaderAsync(CommandBehavior behavior, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.QueryRowAsync[T](IDbConnection cnn, Row row, Type effectiveType, CommandDefinition command) in /_/Dapper/SqlMapper.Async.cs:line 489\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Desgloses.DesgloseRepository.ObtenerSiguienteNumeroAsync() in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Desgloses\\\\\\\\DesgloseRepository.cs:line 73\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Desgloses.DesgloseService.InsertAsync(Desglose desglose, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Desgloses\\\\\\\\DesgloseService.cs:line 42\\\"}\"',NULL),('0000000100','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T07:53:46.9770815Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000101','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000102','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 4}',NULL),('0000000103','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000104','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL010','{\"Pagina\": 1, \"DesglosesMostrados\": 1}',NULL),('0000000105','2025-06-28','0925rhmxms','Actualización de desglose','{\"anio\": 2025, \"horas\": 12, \"id_desglose\": \"DESG010\", \"id_solicitud\": \"SOL010\"}','SOL010'),('0000000106','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL010','{\"Pagina\": 1, \"DesglosesMostrados\": 1}',NULL),('0000000107','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T07:57:02.1601167Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000108','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000109','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 0}',NULL),('0000000110','2025-06-28','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Truncated incorrect INTEGER value: \'G012\'\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteDbDataReaderAsync(CommandBehavior behavior, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.QueryRowAsync[T](IDbConnection cnn, Row row, Type effectiveType, CommandDefinition command) in /_/Dapper/SqlMapper.Async.cs:line 489\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Desgloses.DesgloseRepository.ObtenerSiguienteNumeroAsync() in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Desgloses\\\\\\\\DesgloseRepository.cs:line 73\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Desgloses.DesgloseService.InsertAsync(Desglose desglose, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Desgloses\\\\\\\\DesgloseService.cs:line 42\\\"}\"',NULL),('0000000111','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T08:04:50.3028853Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000112','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000113','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 0}',NULL),('0000000114','2025-06-28','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Truncated incorrect INTEGER value: \'ESG012\'\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteDbDataReaderAsync(CommandBehavior behavior, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.QueryRowAsync[T](IDbConnection cnn, Row row, Type effectiveType, CommandDefinition command) in /_/Dapper/SqlMapper.Async.cs:line 489\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Desgloses.DesgloseRepository.ObtenerSiguienteNumeroAsync() in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Desgloses\\\\\\\\DesgloseRepository.cs:line 73\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Desgloses.DesgloseService.InsertAsync(Desglose desglose, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Desgloses\\\\\\\\DesgloseService.cs:line 46\\\"}\"',NULL),('0000000115','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T08:07:35.8346879Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000116','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000117','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000118','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 0}',NULL),('0000000119','2025-06-28','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Truncated incorrect INTEGER value: \'ESG012\'\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteDbDataReaderAsync(CommandBehavior behavior, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.QueryRowAsync[T](IDbConnection cnn, Row row, Type effectiveType, CommandDefinition command) in /_/Dapper/SqlMapper.Async.cs:line 489\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Desgloses.DesgloseRepository.ObtenerSiguienteNumeroAsync() in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Desgloses\\\\\\\\DesgloseRepository.cs:line 73\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Desgloses.DesgloseService.InsertAsync(Desglose desglose, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Desgloses\\\\\\\\DesgloseService.cs:line 46\\\"}\"',NULL),('0000000120','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T08:10:04.2658392Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000121','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000122','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 0}',NULL),('0000000123','2025-06-28','0925rhmxms','Creación de desglose','{\"anio\": 2025, \"horas\": 13, \"id_desglose\": \"DESG013\", \"id_solicitud\": \"SOL013\"}','SOL013'),('0000000124','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 1}',NULL),('0000000125','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T08:11:53.997178Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000126','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000127','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 1}',NULL),('0000000128','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T16:39:30.0481449Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000129','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000130','2025-06-28','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-28T16:40:39.9389324Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000131','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000132','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000133','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 4}',NULL),('0000000134','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000135','2025-06-28','0925rhmxms','Creación de solicitud','{\"descripcion\": \"mantenimiento pc\", \"fecha_inicio\": \"2025-06-28T00:00:00\", \"id_solicitud\": \"SOL015\", \"fecha_ingreso\": \"2025-06-28T00:00:00-06:00\", \"observaciones\": \"obs\", \"fecha_respuesta\": \"2025-07-03T00:00:00\", \"documento_inicio\": \"inicio\", \"estado_solicitud\": \"1\", \"id_representante\": \"REP005\", \"titulo_solicitud\": \"Mantenimiento\", \"consecutivo_oficio\": \"OF-1014\", \"documento_respuesta\": \"respuesta\"}',NULL),('0000000136','2025-06-28','0925rhmxms','Creación de solicitud','{\"descripcion\": \"mantenimiento pc\", \"fecha_inicio\": \"2025-06-28T00:00:00\", \"id_solicitud\": \"SOL016\", \"fecha_ingreso\": \"2025-06-28T00:00:00-06:00\", \"observaciones\": \"obs\", \"fecha_respuesta\": \"2025-07-03T00:00:00\", \"documento_inicio\": \"inicio\", \"estado_solicitud\": \"1\", \"id_representante\": \"REP005\", \"titulo_solicitud\": \"Mantenimiento\", \"consecutivo_oficio\": \"OF-1014\", \"documento_respuesta\": \"respuesta\"}',NULL),('0000000137','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000138','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000139','2025-06-28','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"mantenimiento pc\", \"fecha_inicio\": \"2025-06-28T00:00:00\", \"id_solicitud\": \"SOL015\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"obs\", \"fecha_respuesta\": \"2025-07-03T00:00:00\", \"documento_inicio\": \"inicio\", \"estado_solicitud\": \"1\", \"id_representante\": \"REP005\", \"titulo_solicitud\": \"mantenimiento\", \"consecutivo_oficio\": \"OF-1014\", \"documento_respuesta\": \"respuesta\"}',NULL),('0000000140','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000141','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000142','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 1}',NULL),('0000000143','2025-06-28','0925rhmxms','Creación de desglose','{\"anio\": 2025, \"horas\": 13, \"id_desglose\": \"DESG014\", \"id_solicitud\": \"SOL013\"}','SOL013'),('0000000144','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 2}',NULL),('0000000145','2025-06-28','0925rhmxms','Actualización de desglose','{\"anio\": 2025, \"horas\": 15, \"id_desglose\": \"DESG014\", \"id_solicitud\": \"SOL013\"}','SOL013'),('0000000146','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 2}',NULL),('0000000147','2025-06-28','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 2}',NULL),('0000000148','2025-06-28','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000149','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000150','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 2, \"RepresentantesMostrados\": 5}',NULL),('0000000151','2025-06-28','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000152','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T19:04:16.9520269Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000153','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000154','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Llevar el vehículo placa LDT-022 al mecánico\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL013\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"Urgente\", \"fecha_respuesta\": \"2025-06-28T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": null, \"id_representante\": \"REP011\", \"titulo_solicitud\": \"Mantenimiento de vehículos\", \"consecutivo_oficio\": \"OF-1013\", \"documento_respuesta\": null}','SOL013'),('0000000155','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000156','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mejoras en las columnas\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL014\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"Mejorar la infraestructura\", \"fecha_respuesta\": \"2025-06-28T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": null, \"id_representante\": \"REP015\", \"titulo_solicitud\": \"Actualización de infraestructura\", \"consecutivo_oficio\": \"OF-1014\", \"documento_respuesta\": null}',NULL),('0000000157','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000158','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Creación de nuevo portal corporativo\", \"fecha_inicio\": \"2025-02-28T00:00:00\", \"id_solicitud\": \"SOL012\", \"fecha_ingreso\": \"2025-02-05T00:00:00\", \"observaciones\": \"Entregable fase 1 completado\", \"fecha_respuesta\": \"2025-02-07T00:00:00\", \"documento_inicio\": \"inicio_1012.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP011\", \"titulo_solicitud\": \"Desarrollo web\", \"consecutivo_oficio\": \"OF-1012\", \"documento_respuesta\": \"respuesta_1012.pdf\"}','SOL012'),('0000000159','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000160','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000161','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Revisión y reparación de flota corporativa\", \"fecha_inicio\": \"2025-02-25T00:00:00\", \"id_solicitud\": \"SOL011\", \"fecha_ingreso\": \"2025-02-03T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1011.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP012\", \"titulo_solicitud\": \"Mantenimiento de vehículos\", \"consecutivo_oficio\": \"OF-1011\", \"documento_respuesta\": null}','SOL011'),('0000000162','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000163','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Lanzamiento de nueva campaña de marketing\", \"fecha_inicio\": \"2025-02-20T00:00:00\", \"id_solicitud\": \"SOL010\", \"fecha_ingreso\": \"2025-02-01T00:00:00\", \"observaciones\": \"Presupuesto aprobado\", \"fecha_respuesta\": \"2025-02-03T00:00:00\", \"documento_inicio\": \"inicio_1010.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP010\", \"titulo_solicitud\": \"Campaña publicitaria\", \"consecutivo_oficio\": \"OF-1010\", \"documento_respuesta\": \"respuesta_1010.pdf\"}','SOL010'),('0000000164','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000165','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000166','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Asesoría para optimización de procesos\", \"fecha_inicio\": \"2025-02-05T00:00:00\", \"id_solicitud\": \"SOL005\", \"fecha_ingreso\": \"2025-01-18T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1005.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP007\", \"titulo_solicitud\": \"Consultoría técnica\", \"consecutivo_oficio\": \"OF-1005\", \"documento_respuesta\": null}','SOL005'),('0000000167','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000168','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000169','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Implementación de nuevo sistema ERP\", \"fecha_inicio\": \"2025-02-10T00:00:00\", \"id_solicitud\": \"SOL006\", \"fecha_ingreso\": \"2025-01-20T00:00:00\", \"observaciones\": \"Coordinar con TI\", \"fecha_respuesta\": \"2025-01-22T00:00:00\", \"documento_inicio\": \"inicio_1006.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP004\", \"titulo_solicitud\": \"Instalación de software\", \"consecutivo_oficio\": \"OF-1006\", \"documento_respuesta\": \"respuesta_1006.pdf\"}','SOL006'),('0000000170','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000171','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000172','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Análisis y selección de nuevos proveedores\", \"fecha_inicio\": \"2025-02-15T00:00:00\", \"id_solicitud\": \"SOL007\", \"fecha_ingreso\": \"2025-01-22T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1007.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP009\", \"titulo_solicitud\": \"Evaluación de proveedores\", \"consecutivo_oficio\": \"OF-1007\", \"documento_respuesta\": null}','SOL007'),('0000000173','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000174','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000175','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Revisión de procesos internos de calidad\", \"fecha_inicio\": \"2025-02-20T00:00:00\", \"id_solicitud\": \"SOL008\", \"fecha_ingreso\": \"2025-01-25T00:00:00\", \"observaciones\": \"Informe preliminar entregado\", \"fecha_respuesta\": \"2025-01-28T00:00:00\", \"documento_inicio\": \"inicio_1008.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP006\", \"titulo_solicitud\": \"Auditoría interna\", \"consecutivo_oficio\": \"OF-1008\", \"documento_respuesta\": \"respuesta_1008.pdf\"}','SOL008'),('0000000176','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000177','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000178','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mejoras en la red eléctrica\", \"fecha_inicio\": \"2025-03-06T00:00:00\", \"id_solicitud\": \"SOL009\", \"fecha_ingreso\": \"2025-01-28T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1009.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP008\", \"titulo_solicitud\": \"Actualización de infraestructura\", \"consecutivo_oficio\": \"OF-1009\", \"documento_respuesta\": null}','SOL009'),('0000000179','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000180','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 4}',NULL),('0000000181','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mantenimiento preventivo de maquinaria\", \"fecha_inicio\": \"2025-01-15T00:00:00\", \"id_solicitud\": \"SOL001\", \"fecha_ingreso\": \"2025-01-05T00:00:00\", \"observaciones\": \"Requiere atención urgente\", \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1001.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP001\", \"titulo_solicitud\": \"Servicio de mantenimiento\", \"consecutivo_oficio\": \"OF-1001\", \"documento_respuesta\": \"respuesta_1001.pdf\"}','SOL001'),('0000000182','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000183','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 4}',NULL),('0000000184','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Pedido de materiales para producción\", \"fecha_inicio\": \"2025-01-20T00:00:00\", \"id_solicitud\": \"SOL002\", \"fecha_ingreso\": \"2025-01-10T00:00:00\", \"observaciones\": \"Entrega en dos fases\", \"fecha_respuesta\": \"2025-01-13T00:00:00\", \"documento_inicio\": \"inicio_1002.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP005\", \"titulo_solicitud\": \"Suministro de materiales\", \"consecutivo_oficio\": \"OF-1002\", \"documento_respuesta\": \"respuesta_1002.pdf\"}','SOL002'),('0000000185','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000186','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 4}',NULL),('0000000187','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Curso de actualización para el equipo técnico\", \"fecha_inicio\": \"2025-02-01T00:00:00\", \"id_solicitud\": \"SOL003\", \"fecha_ingreso\": \"2025-01-12T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1003.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP003\", \"titulo_solicitud\": \"Capacitación de personal\", \"consecutivo_oficio\": \"OF-1003\", \"documento_respuesta\": null}','SOL003'),('0000000188','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000189','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 4}',NULL),('0000000190','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Reparación de sistema de climatización\", \"fecha_inicio\": \"2025-01-25T00:00:00\", \"id_solicitud\": \"SOL004\", \"fecha_ingreso\": \"2025-01-15T00:00:00\", \"observaciones\": \"Presupuesto aprobado\", \"fecha_respuesta\": \"2025-01-16T00:00:00\", \"documento_inicio\": \"inicio_1004.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP002\", \"titulo_solicitud\": \"Reparación de equipo\", \"consecutivo_oficio\": \"OF-1004\", \"documento_respuesta\": \"respuesta_1004.pdf\"}','SOL004'),('0000000191','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000192','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T19:09:12.1040117Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000193','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000194','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Llevar el vehículo placa LDT-022 al mecánico\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL013\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"Urgente\", \"fecha_respuesta\": \"2025-06-28T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": \"FINALIZADA\", \"id_representante\": \"REP011\", \"titulo_solicitud\": \"Mantenimiento de vehículos\", \"consecutivo_oficio\": \"OF-1013\", \"documento_respuesta\": null}','SOL013'),('0000000195','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000196','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mejoras en las columnas\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL014\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"Mejorar la infraestructura\", \"fecha_respuesta\": \"2025-06-28T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": \"VENCIDA\", \"id_representante\": \"REP015\", \"titulo_solicitud\": \"Actualización de infraestructura\", \"consecutivo_oficio\": \"OF-1014\", \"documento_respuesta\": null}',NULL),('0000000197','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000198','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T19:20:46.6024268Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000199','2025-06-30','0925rhmxms','Consulta paginada de estados de solicitud','{\"Pagina\": 1, \"EstadosMostrados\": 5}',NULL),('0000000200','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T19:39:59.0856981Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000201','2025-06-30','0925rhmxms','Consulta paginada de estados de solicitud','{\"Pagina\": 1, \"EstadosMostrados\": 5}',NULL),('0000000202','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T19:45:00.004906Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000203','2025-06-30','0925rhmxms','Consulta paginada de estados de solicitud','{\"Pagina\": 1, \"EstadosMostrados\": 5}',NULL),('0000000204','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T19:45:59.6763148Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000205','2025-06-30','0925rhmxms','Consulta paginada de estados de solicitud','{\"Pagina\": 1, \"EstadosMostrados\": 5}',NULL),('0000000206','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T19:48:21.0718606Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000207','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000208','2025-06-30','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000209','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000210','2025-06-30','0925rhmxms','Consulta paginada de estados de solicitud','{\"Pagina\": 1, \"EstadosMostrados\": 5}',NULL),('0000000211','2025-06-30','0925rhmxms','Consulta paginada de estados de solicitud','{\"Pagina\": 1, \"EstadosMostrados\": 5}',NULL),('0000000212','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:09:43.8153215Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000213','2025-06-30','0925rhmxms','Consulta paginada de estados de solicitud','{\"Pagina\": 1, \"EstadosMostrados\": 5}',NULL),('0000000214','2025-06-30','0925rhmxms','Consulta paginada de estados de solicitud','{\"Pagina\": 1, \"EstadosMostrados\": 5}',NULL),('0000000215','2025-06-30','0925rhmxms','Consulta paginada de estados de solicitud','{\"Pagina\": 1, \"EstadosMostrados\": 5}',NULL),('0000000216','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:17:05.6517046Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000217','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000218','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 4}',NULL),('0000000219','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000220','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:18:13.1839576Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000221','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000222','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:18:41.6002217Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000223','2025-06-30','0925rhmxms','Consulta paginada de usuarios','{\"Pagina\": 1, \"UsuariosMostrados\": 2}',NULL),('0000000224','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000225','2025-06-30','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000226','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:19:33.1337631Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000227','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000228','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:22:06.7699838Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000229','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000230','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:23:54.3932501Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000231','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000232','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:25:52.6596045Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000233','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000234','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:26:48.404894Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000235','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000236','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:27:29.7283066Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000237','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000238','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:27:54.5251626Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000239','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000240','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:28:53.9772903Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000241','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000242','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000243','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:29:52.649097Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000244','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000245','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000246','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:30:37.4040143Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000247','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000248','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:31:32.3673339Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000249','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000250','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000251','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:32:08.2732594Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000252','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000253','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:34:16.6384552Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000254','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000255','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:37:44.7316097Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000256','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000257','2025-06-30','0925rhmxms','Consulta paginada de estados de solicitud','{\"Pagina\": 1, \"EstadosMostrados\": 5}',NULL),('0000000258','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000259','2025-06-30','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000260','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:39:51.5151403Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000261','2025-06-30','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000262','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000263','2025-06-30','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 2}',NULL),('0000000264','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:40:20.2179746Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000265','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000266','2025-06-30','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL013','{\"Pagina\": 1, \"DesglosesMostrados\": 2}',NULL),('0000000267','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T20:57:29.9394282Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000268','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 6}',NULL),('0000000269','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000270','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 6}',NULL),('0000000271','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000272','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 6}',NULL),('0000000273','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 4}',NULL),('0000000274','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 6}',NULL),('0000000275','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000276','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:03:12.7431977Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000277','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 6}',NULL),('0000000278','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000279','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 6}',NULL),('0000000280','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000281','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 6}',NULL),('0000000282','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 4}',NULL),('0000000283','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 6}',NULL),('0000000284','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000285','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:05:05.573619Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000286','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 6}',NULL),('0000000287','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000288','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 6}',NULL),('0000000289','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000290','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 6}',NULL),('0000000291','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 4}',NULL),('0000000292','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 6}',NULL),('0000000293','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000294','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Revisión y reparación de flota corporativa\", \"fecha_inicio\": \"2025-02-25T00:00:00\", \"id_solicitud\": \"SOL011\", \"fecha_ingreso\": \"2025-02-03T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": \"2025-07-04T00:00:00\", \"documento_inicio\": \"inicio_1011.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP012\", \"titulo_solicitud\": \"Mantenimiento de vehículos\", \"consecutivo_oficio\": \"OF-1011\", \"documento_respuesta\": null}','SOL011'),('0000000295','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000296','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000297','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000298','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000299','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000300','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 4}',NULL),('0000000301','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000302','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000303','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mejoras en las columnas\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL014\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"Mejorar la infraestructura\", \"fecha_respuesta\": \"2025-06-28T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": null, \"id_representante\": \"REP015\", \"titulo_solicitud\": \"Actualización de infraestructura\", \"consecutivo_oficio\": \"OF-1014\", \"documento_respuesta\": null}',NULL),('0000000304','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000305','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000306','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Llevar el vehículo placa LDT-022 al mecánico\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL013\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"Urgente\", \"fecha_respuesta\": \"2025-06-28T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": null, \"id_representante\": \"REP011\", \"titulo_solicitud\": \"Mantenimiento de vehículos\", \"consecutivo_oficio\": \"OF-1013\", \"documento_respuesta\": null}','SOL013'),('0000000307','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000308','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000309','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Llevar el vehículo placa LDT-022 al mecánico\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL013\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"Urgente\", \"fecha_respuesta\": \"2025-06-28T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": null, \"id_representante\": \"REP011\", \"titulo_solicitud\": \"Mantenimiento de vehículos\", \"consecutivo_oficio\": \"OF-1013\", \"documento_respuesta\": null}','SOL013'),('0000000310','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000311','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000312','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000313','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 4}',NULL),('0000000314','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000315','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000316','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000317','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000318','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000319','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000320','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000321','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 4}',NULL),('0000000322','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000323','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000324','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000325','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000326','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:07:29.1735504Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000327','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000328','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000329','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Llevar el vehículo placa LDT-022 al mecánico\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL013\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"Urgente\", \"fecha_respuesta\": \"2025-06-28T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": null, \"id_representante\": \"REP011\", \"titulo_solicitud\": \"Mantenimiento de vehículos\", \"consecutivo_oficio\": \"OF-1013\", \"documento_respuesta\": null}','SOL013'),('0000000330','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000331','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000332','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:09:26.3587649Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000333','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000334','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000335','2025-06-30','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Cannot add or update a child row: a foreign key constraint fails (`sistema_solicitudes_ladat`.`solicitud`, CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`estado_solicitud`) REFERENCES `estado_solicitud` (`id_estado`))\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteNonQueryAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.ExecuteImplAsync(IDbConnection cnn, CommandDefinition command, Object param) in /_/Dapper/SqlMapper.Async.cs:line 662\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Solicitudes.SolicitudRepository.InsertAsync(Solicitud solicitud) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Solicitudes\\\\\\\\SolicitudRepository.cs:line 99\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Solicitudes.SolicitudService.CrearAsync(Solicitud solicitud, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Solicitudes\\\\\\\\SolicitudService.cs:line 51\\\"}\"',NULL),('0000000336','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:11:49.0456707Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000337','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000338','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000339','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000340','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000341','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000342','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000343','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:13:56.2265091Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000344','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000345','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000346','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:15:34.0514255Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000347','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000348','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000349','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:18:22.267635Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000350','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000351','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000352','2025-06-30','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Cannot add or update a child row: a foreign key constraint fails (`sistema_solicitudes_ladat`.`solicitud`, CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`estado_solicitud`) REFERENCES `estado_solicitud` (`id_estado`))\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteNonQueryAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.ExecuteImplAsync(IDbConnection cnn, CommandDefinition command, Object param) in /_/Dapper/SqlMapper.Async.cs:line 662\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Solicitudes.SolicitudRepository.InsertAsync(Solicitud solicitud) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Solicitudes\\\\\\\\SolicitudRepository.cs:line 99\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Solicitudes.SolicitudService.CrearAsync(Solicitud solicitud, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Solicitudes\\\\\\\\SolicitudService.cs:line 51\\\"}\"',NULL),('0000000353','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:38:24.6994735Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000354','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000355','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000356','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000357','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000358','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000359','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000360','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000361','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000362','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000363','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000364','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000365','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000366','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000367','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000368','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000369','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000370','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000371','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000372','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000373','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000374','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000375','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000376','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000377','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000378','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:38:47.796884Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000379','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000380','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000381','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000382','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000383','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000384','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000385','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000386','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000387','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:39:33.2922763Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000388','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:43:07.7305461Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000389','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000390','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000391','2025-06-30','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Cannot add or update a child row: a foreign key constraint fails (`sistema_solicitudes_ladat`.`solicitud`, CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`estado_solicitud`) REFERENCES `estado_solicitud` (`id_estado`))\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteNonQueryAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.ExecuteImplAsync(IDbConnection cnn, CommandDefinition command, Object param) in /_/Dapper/SqlMapper.Async.cs:line 662\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Solicitudes.SolicitudRepository.InsertAsync(Solicitud solicitud) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Solicitudes\\\\\\\\SolicitudRepository.cs:line 99\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Solicitudes.SolicitudService.CrearAsync(Solicitud solicitud, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Solicitudes\\\\\\\\SolicitudService.cs:line 51\\\"}\"',NULL),('0000000392','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:49:12.3653638Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000393','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000394','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000395','2025-06-30','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Cannot add or update a child row: a foreign key constraint fails (`sistema_solicitudes_ladat`.`solicitud`, CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`estado_solicitud`) REFERENCES `estado_solicitud` (`id_estado`))\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteNonQueryAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.ExecuteImplAsync(IDbConnection cnn, CommandDefinition command, Object param) in /_/Dapper/SqlMapper.Async.cs:line 662\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Solicitudes.SolicitudRepository.InsertAsync(Solicitud solicitud) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Solicitudes\\\\\\\\SolicitudRepository.cs:line 99\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Solicitudes.SolicitudService.CrearAsync(Solicitud solicitud, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Solicitudes\\\\\\\\SolicitudService.cs:line 51\\\"}\"',NULL),('0000000396','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:54:41.7492765Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000397','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000398','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000399','2025-06-30','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Cannot add or update a child row: a foreign key constraint fails (`sistema_solicitudes_ladat`.`solicitud`, CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`estado_solicitud`) REFERENCES `estado_solicitud` (`id_estado`))\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteNonQueryAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.ExecuteImplAsync(IDbConnection cnn, CommandDefinition command, Object param) in /_/Dapper/SqlMapper.Async.cs:line 662\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Solicitudes.SolicitudRepository.InsertAsync(Solicitud solicitud) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Solicitudes\\\\\\\\SolicitudRepository.cs:line 99\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Solicitudes.SolicitudService.CrearAsync(Solicitud solicitud, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Solicitudes\\\\\\\\SolicitudService.cs:line 51\\\"}\"',NULL),('0000000400','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T21:57:09.2026293Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000401','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000402','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000403','2025-06-30','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Cannot add or update a child row: a foreign key constraint fails (`sistema_solicitudes_ladat`.`solicitud`, CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`estado_solicitud`) REFERENCES `estado_solicitud` (`id_estado`))\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteNonQueryAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.ExecuteImplAsync(IDbConnection cnn, CommandDefinition command, Object param) in /_/Dapper/SqlMapper.Async.cs:line 662\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Solicitudes.SolicitudRepository.InsertAsync(Solicitud solicitud) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Solicitudes\\\\\\\\SolicitudRepository.cs:line 99\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Solicitudes.SolicitudService.CrearAsync(Solicitud solicitud, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Solicitudes\\\\\\\\SolicitudService.cs:line 50\\\"}\"',NULL),('0000000404','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:03:26.2959065Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000405','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000406','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000407','2025-06-30','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Cannot add or update a child row: a foreign key constraint fails (`sistema_solicitudes_ladat`.`solicitud`, CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`estado_solicitud`) REFERENCES `estado_solicitud` (`id_estado`))\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteNonQueryAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.ExecuteImplAsync(IDbConnection cnn, CommandDefinition command, Object param) in /_/Dapper/SqlMapper.Async.cs:line 662\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Solicitudes.SolicitudRepository.InsertAsync(Solicitud solicitud) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Solicitudes\\\\\\\\SolicitudRepository.cs:line 99\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Solicitudes.SolicitudService.CrearAsync(Solicitud solicitud, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Solicitudes\\\\\\\\SolicitudService.cs:line 52\\\"}\"',NULL),('0000000408','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:12:32.1301866Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000409','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000410','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000411','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:13:34.7572797Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000412','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000413','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000414','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:13:50.2734164Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000415','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000416','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000417','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Descripción prueba\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL0000001\", \"fecha_ingreso\": \"2025-06-30T00:00:00\", \"observaciones\": \"Observaciones de prueba\", \"fecha_respuesta\": \"2025-07-04T00:00:00\", \"documento_inicio\": \"Documento inicio ejemplo\", \"estado_solicitud\": null, \"id_representante\": \"REP001\", \"titulo_solicitud\": \"Título prueba\", \"consecutivo_oficio\": \"OF-1234\", \"documento_respuesta\": \"Documento respuesta ejemplo\"}','SOL0000001'),('0000000418','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000419','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000420','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:16:29.846923Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000421','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000422','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000423','2025-06-30','0925rhmxms','Error técnico','\"{\\\"error\\\":\\\"MySql.Data.MySqlClient.MySqlException (0x80004005): Cannot add or update a child row: a foreign key constraint fails (`sistema_solicitudes_ladat`.`solicitud`, CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`estado_solicitud`) REFERENCES `estado_solicitud` (`id_estado`))\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacketAsync(Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.NativeDriver.GetResultAsync(Int32 affectedRow, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.GetResultAsync(Int32 statementId, Int32 affectedRows, Int64 insertedId, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.Driver.NextResultAsync(Int32 statementId, Boolean force, Boolean execAsync)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResultAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReaderAsync(CommandBehavior behavior, Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteNonQueryAsync(Boolean execAsync, CancellationToken cancellationToken)\\\\r\\\\n   at Dapper.SqlMapper.ExecuteImplAsync(IDbConnection cnn, CommandDefinition command, Object param) in /_/Dapper/SqlMapper.Async.cs:line 662\\\\r\\\\n   at SistemaSolicitudesLaDat.Repository.Solicitudes.SolicitudRepository.InsertAsync(Solicitud solicitud) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Repository\\\\\\\\Solicitudes\\\\\\\\SolicitudRepository.cs:line 99\\\\r\\\\n   at SistemaSolicitudesLaDat.Service.Solicitudes.SolicitudService.CrearAsync(Solicitud solicitud, String usuarioEjecutor) in C:\\\\\\\\P1\\\\\\\\SistemaSolicitudesLaDat.Service\\\\\\\\Solicitudes\\\\\\\\SolicitudService.cs:line 52\\\"}\"',NULL),('0000000424','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:17:44.1077396Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000425','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000426','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000427','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:19:53.5820123Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000428','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000429','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000430','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:22:34.1987991Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000431','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000432','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000433','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:23:53.9119987Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000434','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000435','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000436','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:26:06.0558258Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000437','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000438','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000439','2025-06-30','0925rhmxms','Creación de solicitud','{\"descripcion\": \"fewf\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL015\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"fwefw\", \"fecha_respuesta\": \"2025-06-27T00:00:00\", \"documento_inicio\": \"fcsfs\", \"estado_solicitud\": \"EST001\", \"id_representante\": \"REP013\", \"titulo_solicitud\": \"fsdf\", \"consecutivo_oficio\": \"OF-1515\", \"documento_respuesta\": \"dasd\"}','SOL015'),('0000000440','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000441','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000442','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000443','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000444','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000445','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000446','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000447','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000448','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000449','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000450','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Descripción prueba\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL0000001\", \"fecha_ingreso\": \"2025-06-30T00:00:00\", \"observaciones\": \"Observaciones de prueba\", \"fecha_respuesta\": \"2025-07-04T00:00:00\", \"documento_inicio\": \"Documento inicio ejemplo\", \"estado_solicitud\": null, \"id_representante\": \"REP001\", \"titulo_solicitud\": \"Título prueba\", \"consecutivo_oficio\": \"OF-1234\", \"documento_respuesta\": \"Documento respuesta ejemplo\"}','SOL0000001'),('0000000451','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000452','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000453','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000454','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000455','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000456','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000457','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000458','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000459','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000460','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000461','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000462','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000463','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:32:22.9053141Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000464','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000465','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000466','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Descripción prueba\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL0000001\", \"fecha_ingreso\": \"2025-06-30T00:00:00\", \"observaciones\": \"Observaciones de prueba\", \"fecha_respuesta\": \"2025-07-04T00:00:00\", \"documento_inicio\": \"Documento inicio ejemplo\", \"estado_solicitud\": null, \"id_representante\": \"REP007\", \"titulo_solicitud\": \"Título prueba\", \"consecutivo_oficio\": \"OF-1234\", \"documento_respuesta\": \"Documento respuesta ejemplo\"}','SOL0000001'),('0000000467','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000468','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000469','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:35:15.7364959Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000470','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000471','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000472','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Descripción prueba\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL0000001\", \"fecha_ingreso\": \"2025-06-30T00:00:00\", \"observaciones\": \"Observaciones de prueba\", \"fecha_respuesta\": \"2025-07-04T00:00:00\", \"documento_inicio\": \"Documento inicio ejemplo\", \"estado_solicitud\": null, \"id_representante\": \"REP007\", \"titulo_solicitud\": \"Título prueba\", \"consecutivo_oficio\": \"OF-1234\", \"documento_respuesta\": \"Documento respuesta ejemplo\"}','SOL0000001'),('0000000473','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000474','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000475','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000476','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000477','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000478','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000479','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000480','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000481','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000482','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000483','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000484','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000485','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000486','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000487','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:37:54.9214896Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000488','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000489','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000490','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Creación de nuevo portal corporativo\", \"fecha_inicio\": \"2025-02-28T00:00:00\", \"id_solicitud\": \"SOL012\", \"fecha_ingreso\": \"2025-02-05T00:00:00\", \"observaciones\": \"Entregable fase 1 completado\", \"fecha_respuesta\": \"2025-02-07T00:00:00\", \"documento_inicio\": \"inicio_1012.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP011\", \"titulo_solicitud\": \"Desarrollo web\", \"consecutivo_oficio\": \"OF-1012\", \"documento_respuesta\": \"respuesta_1012.pdf\"}','SOL012'),('0000000491','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000492','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000493','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Descripción prueba\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL0000001\", \"fecha_ingreso\": \"2025-06-30T00:00:00\", \"observaciones\": \"Observaciones de prueba\", \"fecha_respuesta\": \"2025-07-04T00:00:00\", \"documento_inicio\": \"Documento inicio ejemplo\", \"estado_solicitud\": null, \"id_representante\": \"REP007\", \"titulo_solicitud\": \"Título prueba\", \"consecutivo_oficio\": \"OF-1234\", \"documento_respuesta\": \"Documento respuesta ejemplo\"}','SOL0000001'),('0000000494','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000495','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000496','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Descripción prueba\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL0000001\", \"fecha_ingreso\": \"2025-06-30T00:00:00\", \"observaciones\": \"Observaciones de prueba\", \"fecha_respuesta\": \"2025-07-04T00:00:00\", \"documento_inicio\": \"Documento inicio ejemplo\", \"estado_solicitud\": null, \"id_representante\": \"REP007\", \"titulo_solicitud\": \"Título prueba\", \"consecutivo_oficio\": \"OF-1234\", \"documento_respuesta\": \"Documento respuesta ejemplo\"}','SOL0000001'),('0000000497','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000498','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000499','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000500','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000501','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:39:03.0101359Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000502','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000503','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000504','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000505','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000506','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:39:52.0846254Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000507','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000508','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000509','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:46:10.219222Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000510','2025-06-30','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000511','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000512','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000513','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000514','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000515','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000516','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000517','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:50:56.2147787Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000518','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000519','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000520','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000521','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000522','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T22:54:41.9769144Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000523','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000524','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000525','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"fewf\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL015\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"fwefw\", \"fecha_respuesta\": \"2025-06-27T00:00:00\", \"documento_inicio\": \"fcsfs\", \"estado_solicitud\": null, \"id_representante\": \"REP013\", \"titulo_solicitud\": \"fsdf\", \"consecutivo_oficio\": \"OF-1515\", \"documento_respuesta\": \"dasd\"}','SOL015'),('0000000526','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000527','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000528','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000529','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000530','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000531','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000532','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000533','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000534','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000535','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000536','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"fewf\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL015\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"fwefw\", \"fecha_respuesta\": \"2025-06-27T00:00:00\", \"documento_inicio\": \"fcsfs\", \"estado_solicitud\": null, \"id_representante\": \"REP013\", \"titulo_solicitud\": \"fsdf\", \"consecutivo_oficio\": \"OF-1515\", \"documento_respuesta\": \"dasd\"}','SOL015'),('0000000537','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000538','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000539','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-06-30T23:03:03.5154246Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000540','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000541','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000542','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000543','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000544','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000545','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000546','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T04:45:34.1879275Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000547','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000548','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000549','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000550','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000551','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000552','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000553','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Descripción prueba\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL0000001\", \"fecha_ingreso\": \"2025-06-30T00:00:00\", \"observaciones\": \"Observaciones de prueba\", \"fecha_respuesta\": \"2025-07-04T00:00:00\", \"documento_inicio\": \"Documento inicio ejemplo\", \"estado_solicitud\": null, \"id_representante\": \"REP007\", \"titulo_solicitud\": \"Título prueba\", \"consecutivo_oficio\": \"OF-1234\", \"documento_respuesta\": \"Documento respuesta ejemplo\"}','SOL0000001'),('0000000554','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000555','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000556','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T04:50:29.3423749Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000557','2025-06-30','0925rhmxms','Consulta paginada de usuarios','{\"Pagina\": 1, \"UsuariosMostrados\": 2}',NULL),('0000000558','2025-06-30','0925rhmxms','Consulta paginada de usuarios','{\"Pagina\": 1, \"UsuariosMostrados\": 2}',NULL),('0000000559','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000560','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000561','2025-06-30','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000562','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000563','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000564','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Creación de nuevo portal corporativo\", \"fecha_inicio\": \"2025-02-28T00:00:00\", \"id_solicitud\": \"SOL012\", \"fecha_ingreso\": \"2025-02-05T00:00:00\", \"observaciones\": \"Entregable fase 1 completado\", \"fecha_respuesta\": \"2025-02-07T00:00:00\", \"documento_inicio\": \"inicio_1012.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP011\", \"titulo_solicitud\": \"Desarrollo web\", \"consecutivo_oficio\": \"OF-1012\", \"documento_respuesta\": \"respuesta_1012.pdf\"}','SOL012'),('0000000565','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000566','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000567','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000568','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000569','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T04:51:49.0342565Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000570','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000571','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000572','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000573','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000574','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000575','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000576','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000577','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000578','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mantenimiento preventivo de maquinaria\", \"fecha_inicio\": \"2025-01-15T00:00:00\", \"id_solicitud\": \"SOL001\", \"fecha_ingreso\": \"2025-01-05T00:00:00\", \"observaciones\": \"Requiere atención urgente\", \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1001.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP001\", \"titulo_solicitud\": \"Servicio de mantenimiento\", \"consecutivo_oficio\": \"OF-1001\", \"documento_respuesta\": \"respuesta_1001.pdf\"}','SOL001'),('0000000579','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000580','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000581','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000582','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000583','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T04:55:18.9603926Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000584','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000585','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000586','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Descripción prueba\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL0000001\", \"fecha_ingreso\": \"2025-06-30T00:00:00\", \"observaciones\": \"Observaciones de prueba\", \"fecha_respuesta\": \"2025-07-04T00:00:00\", \"documento_inicio\": \"Documento inicio ejemplo\", \"estado_solicitud\": null, \"id_representante\": \"REP007\", \"titulo_solicitud\": \"Título prueba\", \"consecutivo_oficio\": \"OF-1234\", \"documento_respuesta\": \"Documento respuesta ejemplo\"}','SOL0000001'),('0000000587','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000588','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000589','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000590','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000591','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000592','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000593','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000594','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000595','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T05:05:46.442932Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000596','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000597','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000598','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Descripción ejemplo\", \"fecha_inicio\": \"2025-07-02T00:00:00\", \"id_solicitud\": \"SOL015\", \"fecha_ingreso\": \"2025-07-01T00:00:00\", \"observaciones\": \"Observación ejemplo\", \"fecha_respuesta\": \"2025-07-05T00:00:00\", \"documento_inicio\": \"inicio.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP001\", \"titulo_solicitud\": \"Título ejemplo\", \"consecutivo_oficio\": \"OF-1515\", \"documento_respuesta\": \"respuesta.pdf\"}','SOL015'),('0000000599','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000600','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000601','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T05:09:38.0055883Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000602','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000603','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000604','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000605','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000606','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mantenimiento preventivo de maquinarias\", \"fecha_inicio\": \"2025-01-15T00:00:00\", \"id_solicitud\": \"SOL001\", \"fecha_ingreso\": \"2025-01-05T00:00:00\", \"observaciones\": \"Requiere atención urgente\", \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1001.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP001\", \"titulo_solicitud\": \"Servicio de mantenimiento\", \"consecutivo_oficio\": \"OF-1001\", \"documento_respuesta\": \"respuesta_1001.pdf\"}','SOL001'),('0000000607','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000608','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000609','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000610','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000611','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T05:13:53.4145845Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000612','2025-06-30','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000613','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000614','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000615','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000616','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000617','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T05:16:12.3187815Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000618','2025-06-30','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000619','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000620','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000621','2025-06-30','0925rhmxms','Consulta paginada de usuarios','{\"Pagina\": 1, \"UsuariosMostrados\": 2}',NULL),('0000000622','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000623','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000624','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000625','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000626','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000627','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000628','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T05:19:19.358437Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000629','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000630','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000631','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000632','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000633','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T05:22:32.1569791Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000634','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000635','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000636','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000637','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000638','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T05:24:45.7841685Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000639','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000640','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000641','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000642','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000643','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T05:29:27.8319428Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000644','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000645','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000646','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000647','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000648','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mantenimiento preventivo de maquinarias\", \"fecha_inicio\": \"2025-01-15T00:00:00\", \"id_solicitud\": \"SOL001\", \"fecha_ingreso\": \"2025-01-05T00:00:00\", \"observaciones\": \"Requiere atención urgente\", \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1001.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP001\", \"titulo_solicitud\": \"Servicio de mantenimiento\", \"consecutivo_oficio\": \"OF-1001\", \"documento_respuesta\": \"respuesta_1001.pdf\"}','SOL001'),('0000000649','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000650','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000651','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000652','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000653','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mantenimiento preventivo de maquinarias\", \"fecha_inicio\": \"2025-01-15T00:00:00\", \"id_solicitud\": \"SOL001\", \"fecha_ingreso\": \"2025-01-05T00:00:00\", \"observaciones\": \"Requiere atención urgente\", \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1001.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP001\", \"titulo_solicitud\": \"Servicio de mantenimiento\", \"consecutivo_oficio\": \"OF-1001\", \"documento_respuesta\": \"respuesta_1001.pdf\"}','SOL001'),('0000000654','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000655','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000656','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000657','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000658','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000659','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000660','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000661','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000662','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000663','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000664','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000665','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000666','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000667','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000668','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000669','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000670','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000671','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000672','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Pedido de materiales para producción\", \"fecha_inicio\": \"2025-01-20T00:00:00\", \"id_solicitud\": \"SOL002\", \"fecha_ingreso\": \"2025-01-10T00:00:00\", \"observaciones\": \"Entrega en dos fases\", \"fecha_respuesta\": \"2025-01-13T00:00:00\", \"documento_inicio\": \"inicio_1002.pdf\", \"estado_solicitud\": null, \"id_representante\": null, \"titulo_solicitud\": \"Suministro de materiales\", \"consecutivo_oficio\": \"OF-1002\", \"documento_respuesta\": \"respuesta_1002.pdf\"}','SOL002'),('0000000673','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000674','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000675','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000676','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000677','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000678','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000679','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000680','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000681','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000682','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000683','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000684','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000685','2025-06-30','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL002','{\"Pagina\": 1, \"DesglosesMostrados\": 1}',NULL),('0000000686','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000687','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000688','2025-06-30','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL006','{\"Pagina\": 1, \"DesglosesMostrados\": 1}',NULL),('0000000689','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000690','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000691','2025-06-30','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL005','{\"Pagina\": 1, \"DesglosesMostrados\": 1}',NULL),('0000000692','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000693','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000694','2025-06-30','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL004','{\"Pagina\": 1, \"DesglosesMostrados\": 1}',NULL),('0000000695','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000696','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000697','2025-06-30','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL003','{\"Pagina\": 1, \"DesglosesMostrados\": 1}',NULL),('0000000698','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000699','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000700','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000701','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000702','2025-06-30','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL012','{\"Pagina\": 1, \"DesglosesMostrados\": 1}',NULL),('0000000703','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000704','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000705','2025-06-30','0925rhmxms','Consulta paginada de desgloses de la solicitud SOL014','{\"Pagina\": 1, \"DesglosesMostrados\": 0}',NULL),('0000000706','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000707','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000708','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mejoras en las columnas\", \"fecha_inicio\": \"2025-06-30T00:00:00\", \"id_solicitud\": \"SOL014\", \"fecha_ingreso\": \"2025-06-28T00:00:00\", \"observaciones\": \"Mejorar la infraestructura\", \"fecha_respuesta\": \"2025-06-28T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": null, \"id_representante\": null, \"titulo_solicitud\": \"Actualización de infraestructura\", \"consecutivo_oficio\": \"OF-1014\", \"documento_respuesta\": null}',NULL),('0000000709','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000710','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000711','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000712','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000713','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000714','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000715','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mantenimiento preventivo de maquinarias\", \"fecha_inicio\": \"2025-01-15T00:00:00\", \"id_solicitud\": \"SOL001\", \"fecha_ingreso\": \"2025-01-05T00:00:00\", \"observaciones\": \"Requiere atención urgente\", \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1001.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP002\", \"titulo_solicitud\": \"Servicio de mantenimiento\", \"consecutivo_oficio\": \"OF-1001\", \"documento_respuesta\": \"respuesta_1001.pdf\"}','SOL001'),('0000000716','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000717','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000718','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000719','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000720','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mantenimiento preventivo de maquinarias\", \"fecha_inicio\": \"2025-01-15T00:00:00\", \"id_solicitud\": \"SOL001\", \"fecha_ingreso\": \"2025-01-05T00:00:00\", \"observaciones\": \"Requiere atención urgente\", \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1001.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP002\", \"titulo_solicitud\": \"Servicio de mantenimiento\", \"consecutivo_oficio\": \"OF-1001\", \"documento_respuesta\": \"respuesta_1001.pdf\"}','SOL001'),('0000000721','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000722','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000723','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Revisión y reparación de flota corporativa\", \"fecha_inicio\": \"2025-02-25T00:00:00\", \"id_solicitud\": \"SOL011\", \"fecha_ingreso\": \"2025-02-03T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": \"2025-07-04T00:00:00\", \"documento_inicio\": \"inicio_1011.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP012\", \"titulo_solicitud\": \"Mantenimiento de vehículos\", \"consecutivo_oficio\": \"OF-1011\", \"documento_respuesta\": null}','SOL011'),('0000000724','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000725','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000726','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000727','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000728','2025-06-30','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Mantenimiento preventivo de maquinarias\", \"fecha_inicio\": \"2025-01-15T00:00:00\", \"id_solicitud\": \"SOL001\", \"fecha_ingreso\": \"2025-01-05T00:00:00\", \"observaciones\": \"Requiere atención urgente\", \"fecha_respuesta\": null, \"documento_inicio\": \"inicio_1001.pdf\", \"estado_solicitud\": null, \"id_representante\": \"REP002\", \"titulo_solicitud\": \"Servicio de mantenimiento\", \"consecutivo_oficio\": \"OF-1001\", \"documento_respuesta\": \"respuesta_1001.pdf\"}','SOL001'),('0000000729','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000730','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000731','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T05:36:09.5213642Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000732','2025-06-30','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000733','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000734','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000735','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000736','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000737','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T05:42:36.5511241Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000738','2025-06-30','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000739','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000740','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000741','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000742','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000743','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T05:45:25.2340273Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000744','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000745','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000746','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000747','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000748','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T05:48:10.2572178Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000749','2025-06-30','0925rhmxms','Consulta paginada de representantes','{\"Pagina\": 1, \"RepresentantesMostrados\": 10}',NULL),('0000000750','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000751','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000752','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000753','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000754','2025-06-30','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-01T05:49:49.84054Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000755','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000756','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000757','2025-06-30','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000758','2025-06-30','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000759','2025-07-08','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-08T16:45:15.732729Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000760','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000761','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000762','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000763','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000764','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000765','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000766','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000767','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000768','2025-07-08','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-08T16:55:35.3930878Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000769','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000770','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000771','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000772','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000773','2025-07-08','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-08T16:59:15.459984Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000774','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000775','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000776','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000777','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000778','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000779','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000780','2025-07-08','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Descripción ejemplo\", \"fecha_inicio\": \"2025-07-02T00:00:00\", \"id_solicitud\": \"SOL015\", \"fecha_ingreso\": \"2025-07-01T00:00:00\", \"observaciones\": \"Observación ejemplo\", \"fecha_respuesta\": \"2025-07-05T00:00:00\", \"documento_inicio\": \"inicio.pdf\", \"estado_solicitud\": \"EST001\", \"id_representante\": \"REP001\", \"titulo_solicitud\": \"Título ejemplo\", \"consecutivo_oficio\": \"OF-1515\", \"documento_respuesta\": \"respuesta.pdf\"}','SOL015'),('0000000781','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000782','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000783','2025-07-08','0925rhmxms','Creación de solicitud','{\"descripcion\": \"da\", \"fecha_inicio\": \"2025-07-08T00:00:00\", \"id_solicitud\": \"SOL016\", \"fecha_ingreso\": \"2025-07-07T00:00:00\", \"observaciones\": \"da\", \"fecha_respuesta\": \"2025-07-11T00:00:00\", \"documento_inicio\": null, \"estado_solicitud\": \"EST001\", \"id_representante\": \"REP012\", \"titulo_solicitud\": \"TituloB\", \"consecutivo_oficio\": \"OF-1515\", \"documento_respuesta\": null}','SOL016'),('0000000784','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000785','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000786','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000787','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000788','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000789','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000790','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000791','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000792','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000793','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000794','2025-07-08','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000795','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000796','2025-07-08','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-08T17:16:50.0272561Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000797','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000798','2025-07-08','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-08T17:17:42.0227444Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000799','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000800','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 1}',NULL),('0000000801','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000802','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000803','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000804','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000805','2025-07-08','0925rhmxms','Creación de solicitud','{\"descripcion\": \"da\", \"fecha_inicio\": \"2025-07-09T00:00:00\", \"id_solicitud\": \"SOL017\", \"fecha_ingreso\": \"2025-07-07T00:00:00\", \"observaciones\": \"da\", \"fecha_respuesta\": \"2025-07-12T00:00:00\", \"documento_inicio\": \"da\", \"estado_solicitud\": \"EST001\", \"id_representante\": \"REP013\", \"titulo_solicitud\": \"da\", \"consecutivo_oficio\": \"OF-1016\", \"documento_respuesta\": \"da\"}','SOL017'),('0000000806','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000807','2025-07-08','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-08T17:20:04.1268302Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000808','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000809','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000810','2025-07-08','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Descripción ejemplo\", \"fecha_inicio\": \"2025-07-02T00:00:00\", \"id_solicitud\": \"SOL015\", \"fecha_ingreso\": \"2025-07-01T00:00:00\", \"observaciones\": \"Observación ejemplo\", \"fecha_respuesta\": \"2025-07-05T00:00:00\", \"documento_inicio\": \"inicio.pdf\", \"estado_solicitud\": \"EST005\", \"id_representante\": \"REP001\", \"titulo_solicitud\": \"Título ejemplo\", \"consecutivo_oficio\": \"OF-1515\", \"documento_respuesta\": \"respuesta.pdf\"}','SOL015'),('0000000811','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000812','2025-07-08','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-08T17:25:04.7794611Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000813','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000814','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 2}',NULL),('0000000815','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000816','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000817','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000818','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000819','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000820','2025-07-08','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-08T17:28:16.3409854Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000821','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000822','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000823','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 2}',NULL),('0000000824','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000825','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000826','2025-07-08','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-08T17:30:57.5203771Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000827','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000828','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000829','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 2}',NULL),('0000000830','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000831','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000832','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000833','2025-07-08','0925rhmxms','Creación de solicitud','{\"descripcion\": \"ffwe\", \"fecha_inicio\": \"2025-07-08T00:00:00\", \"id_solicitud\": \"SOL018\", \"fecha_ingreso\": \"2025-07-08T00:00:00\", \"observaciones\": null, \"fecha_respuesta\": \"2025-07-12T00:00:00\", \"documento_inicio\": \"da\", \"estado_solicitud\": \"EST001\", \"id_representante\": \"REP015\", \"titulo_solicitud\": \"fdas\", \"consecutivo_oficio\": \"OF-1018\", \"documento_respuesta\": \"da\"}','SOL018'),('0000000834','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000835','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000836','2025-07-08','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-08T17:38:39.6356848Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000837','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000838','2025-07-08','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 3}',NULL),('0000000839','2025-07-11','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-11T18:06:20.9439598Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000840','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000841','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 3}',NULL),('0000000842','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000843','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000844','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 3}',NULL),('0000000845','2025-07-11','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-11T18:11:01.2967244Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000846','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000847','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 3}',NULL),('0000000848','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000849','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000850','2025-07-11','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-11T18:11:46.5907858Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000851','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000852','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 3}',NULL),('0000000853','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000854','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000855','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000856','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 3}',NULL),('0000000857','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000858','2025-07-11','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-11T18:13:20.3239576Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000859','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000860','2025-07-11','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-11T18:13:51.1097795Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000861','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000862','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 3}',NULL),('0000000863','2025-07-11','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-11T18:17:20.4642105Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000864','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000865','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000866','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000867','2025-07-11','0925rhmxms','Creación de solicitud','{\"descripcion\": \"fsd\", \"fecha_inicio\": \"2025-07-10T00:00:00\", \"id_solicitud\": \"SOL019\", \"fecha_ingreso\": \"2025-07-05T00:00:00\", \"observaciones\": \"fd\", \"fecha_respuesta\": \"2025-07-11T00:00:00\", \"documento_inicio\": \"fsd\", \"estado_solicitud\": \"EST001\", \"id_representante\": \"REP014\", \"titulo_solicitud\": \"fds\", \"consecutivo_oficio\": \"fsd\", \"documento_respuesta\": null}',NULL),('0000000868','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000869','2025-07-11','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"ffwe\", \"fecha_inicio\": \"2025-07-08T00:00:00\", \"id_solicitud\": \"SOL018\", \"fecha_ingreso\": \"2025-07-08T00:00:00\", \"observaciones\": \"dadada\", \"fecha_respuesta\": \"2025-07-12T00:00:00\", \"documento_inicio\": \"da\", \"estado_solicitud\": \"EST005\", \"id_representante\": \"REP015\", \"titulo_solicitud\": \"fdas\", \"consecutivo_oficio\": \"OF-1018\", \"documento_respuesta\": \"da\"}','SOL018'),('0000000870','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000871','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000872','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000873','2025-07-11','0925rhmxms','Creación de solicitud','{\"descripcion\": \"dasda\", \"fecha_inicio\": \"2025-07-11T00:00:00\", \"id_solicitud\": \"SOL020\", \"fecha_ingreso\": \"2025-07-11T00:00:00\", \"observaciones\": \"dada\", \"fecha_respuesta\": \"2025-07-18T00:00:00\", \"documento_inicio\": \"dda\", \"estado_solicitud\": \"EST001\", \"id_representante\": \"REP009\", \"titulo_solicitud\": \"dasda\", \"consecutivo_oficio\": \"OF-1019\", \"documento_respuesta\": null}','SOL020'),('0000000874','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000875','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000876','2025-07-11','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-11T18:21:15.4096444Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000877','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000878','2025-07-11','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"dasda\", \"fecha_inicio\": \"2025-07-11T00:00:00\", \"id_solicitud\": \"SOL020\", \"fecha_ingreso\": \"2025-07-11T00:00:00\", \"observaciones\": \"dada\", \"fecha_respuesta\": \"2025-07-18T00:00:00\", \"documento_inicio\": \"dda\", \"estado_solicitud\": \"EST002\", \"id_representante\": \"REP009\", \"titulo_solicitud\": \"dasda\", \"consecutivo_oficio\": \"OF-1019\", \"documento_respuesta\": null}','SOL020'),('0000000879','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000880','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 4}',NULL),('0000000881','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000882','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 4}',NULL),('0000000883','2025-07-11','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Reparación de sistema de climatización\", \"fecha_inicio\": \"2025-01-25T00:00:00\", \"id_solicitud\": \"SOL004\", \"fecha_ingreso\": \"2025-01-15T00:00:00\", \"observaciones\": \"Presupuesto aprobado\", \"fecha_respuesta\": \"2025-01-16T00:00:00\", \"documento_inicio\": \"inicio_1004.pdf\", \"estado_solicitud\": \"EST005\", \"id_representante\": \"REP002\", \"titulo_solicitud\": \"Reparación de equipo\", \"consecutivo_oficio\": \"OF-1004\", \"documento_respuesta\": \"respuesta_1004.pdf\"}','SOL004'),('0000000884','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000885','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 4}',NULL),('0000000886','2025-07-11','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-11T18:28:25.1601042Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000887','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000888','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 4}',NULL),('0000000889','2025-07-11','0925rhmxms','Actualización de solicitud','{\"descripcion\": \"Pedido de materiales para producción\", \"fecha_inicio\": \"2025-01-20T00:00:00\", \"id_solicitud\": \"SOL002\", \"fecha_ingreso\": \"2025-01-10T00:00:00\", \"observaciones\": \"Entrega en dos fases\", \"fecha_respuesta\": \"2025-01-13T00:00:00\", \"documento_inicio\": \"inicio_1002.pdf\", \"estado_solicitud\": \"EST002\", \"id_representante\": null, \"titulo_solicitud\": \"Suministro de materiales\", \"consecutivo_oficio\": \"OF-1002\", \"documento_respuesta\": \"respuesta_1002.pdf\"}','SOL002'),('0000000890','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000891','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 4}',NULL),('0000000892','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000893','2025-07-11','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-11T18:29:56.5857283Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000894','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000895','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000896','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 4}',NULL),('0000000897','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000898','2025-07-11','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-11T18:32:51.1740676Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000899','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000900','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 4}',NULL),('0000000901','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000902','2025-07-11','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-11T18:37:47.3739338Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000903','2025-07-11','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-11T18:37:47.3739338Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000904','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000905','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000906','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 4}',NULL),('0000000907','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000908','2025-07-11','0925rhmxms','Marcado automático de solicitudes vencidas','{\"TotalVencidas\": 5}',NULL),('0000000909','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000910','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000911','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000912','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000913','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000914','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000915','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 4}',NULL),('0000000916','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 4, \"SolicitudesMostradas\": 4}',NULL),('0000000917','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000918','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000919','2025-07-11','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-11T18:39:50.508987Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000920','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000921','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 3, \"SolicitudesMostradas\": 5}',NULL),('0000000922','2025-07-11','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 2, \"SolicitudesMostradas\": 5}',NULL),('0000000923','2025-07-13','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-14T02:45:50.1600965Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000924','2025-07-13','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000925','2025-07-19','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-19T16:08:09.3978476Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000926','2025-07-19','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-19T16:09:19.1976234Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000927','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000928','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000929','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000930','2025-07-19','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-19T16:22:05.7739731Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000931','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000932','2025-07-19','0925rhmxms','Publicación de solicitud','{\"es_publicada\": true, \"id_solicitud\": \"SOL020\", \"fecha_vencimiento_publicacion\": \"2025-07-19T00:00:00\"}','SOL020'),('0000000933','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000934','2025-07-19','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-19T16:23:26.642128Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000935','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000936','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000937','2025-07-19','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-19T16:24:24.4583479Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000938','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000939','2025-07-19','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-19T16:25:18.6142528Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000940','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000941','2025-07-19','0925rhmxms','Publicación de solicitud','{\"es_publicada\": true, \"id_solicitud\": \"SOL018\", \"fecha_vencimiento_publicacion\": \"2025-08-03T00:00:00\"}','SOL018'),('0000000942','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000943','2025-07-19','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-19T16:26:40.6716417Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000944','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000945','2025-07-19','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-19T16:28:19.3232012Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000946','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000947','2025-07-19','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-19T16:29:12.6720038Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000948','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000949','2025-07-19','0925rhmxms','Inicio de sesión','{\"Fecha\": \"2025-07-19T16:31:10.4408891Z\", \"Nombre_Usuario\": \"rhm\"}',NULL),('0000000950','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000951','2025-07-19','0925rhmxms','Despublicación de solicitud','{\"es_publicada\": false, \"id_solicitud\": \"SOL020\", \"fecha_vencimiento_publicacion\": null}','SOL020'),('0000000952','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL),('0000000953','2025-07-19','0925rhmxms','Consulta paginada de solicitudes','{\"Pagina\": 1, \"SolicitudesMostradas\": 5}',NULL);
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desglose`
--

DROP TABLE IF EXISTS `desglose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `desglose` (
  `id_desglose` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `mes` tinyint unsigned DEFAULT NULL,
  `anio` year DEFAULT NULL,
  `horas` tinyint unsigned DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `observaciones` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `porcentaje_cobro` decimal(5,2) DEFAULT NULL,
  `id_solicitud` char(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_iva` char(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_desglose`),
  KEY `id_solicitud` (`id_solicitud`),
  KEY `id_iva` (`id_iva`),
  CONSTRAINT `desglose_ibfk_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud` (`id_solicitud`),
  CONSTRAINT `desglose_ibfk_2` FOREIGN KEY (`id_iva`) REFERENCES `impuesto_valor_agregado` (`id_iva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desglose`
--

LOCK TABLES `desglose` WRITE;
/*!40000 ALTER TABLE `desglose` DISABLE KEYS */;
INSERT INTO `desglose` VALUES ('DESG001',1,2025,40,1000.00,1130.00,'Trabajo completo mes enero',100.00,'SOL001','1'),('DESG002',1,2025,20,500.00,565.00,'Primera fase de suministro',50.00,'SOL002','1'),('DESG003',2,2025,30,750.00,847.50,'Capacitación personal técnico',75.00,'SOL003','1'),('DESG004',1,2025,25,600.00,678.00,'Reparación equipo climatización',60.00,'SOL004','1'),('DESG005',2,2025,15,400.00,452.00,'Consultoría procesos',40.00,'SOL005','1'),('DESG006',2,2025,50,1200.00,1356.00,'Instalación software ERP',100.00,'SOL006','1'),('DESG007',2,2025,10,300.00,339.00,'Evaluación proveedores',30.00,'SOL007','1'),('DESG008',2,2025,35,900.00,1017.00,'Auditoría procesos internos',90.00,'SOL008','1'),('DESG009',3,2025,45,1100.00,1243.00,'Actualización infraestructura',100.00,'SOL009','1'),('DESG010',2,2025,12,7500.00,8475.00,'Campaña marketing fase 1',70.00,'SOL010','1'),('DESG011',2,2025,18,450.00,508.50,'Mantenimiento vehículos',45.00,'SOL011','1'),('DESG012',2,2025,55,1300.00,1469.00,'Desarrollo portal web',100.00,'SOL012','1'),('DESG013',6,2025,13,548000.00,619240.00,'Cambio tubo de escape',2.00,'SOL013','1'),('DESG014',6,2025,15,524600.00,592798.00,'Des',3.00,'SOL013','1');
/*!40000 ALTER TABLE `desglose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_propuesta`
--

DROP TABLE IF EXISTS `detalle_propuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_propuesta` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `id_propuesta` int NOT NULL,
  `mes` tinyint NOT NULL,
  `anio` smallint NOT NULL,
  `horas` decimal(10,2) NOT NULL,
  `monto` decimal(15,2) NOT NULL,
  `iva` decimal(15,2) GENERATED ALWAYS AS ((`monto` * 0.13)) STORED,
  `total` decimal(15,2) GENERATED ALWAYS AS ((`monto` + `iva`)) STORED,
  `observaciones` text COLLATE utf8mb4_general_ci NOT NULL,
  `porcentaje_cobro` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `fk_detalle_propuesta` (`id_propuesta`),
  CONSTRAINT `fk_detalle_propuesta` FOREIGN KEY (`id_propuesta`) REFERENCES `propuesta` (`id_propuesta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_propuesta`
--

LOCK TABLES `detalle_propuesta` WRITE;
/*!40000 ALTER TABLE `detalle_propuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_propuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_solicitud`
--

DROP TABLE IF EXISTS `estado_solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_solicitud` (
  `id_estado` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `estado` enum('nueva','respondida','iniciada','finalizada','vencida') COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_solicitud`
--

LOCK TABLES `estado_solicitud` WRITE;
/*!40000 ALTER TABLE `estado_solicitud` DISABLE KEYS */;
INSERT INTO `estado_solicitud` VALUES ('EST001','nueva'),('EST002','respondida'),('EST003','iniciada'),('EST004','finalizada'),('EST005','vencida');
/*!40000 ALTER TABLE `estado_solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impuesto_valor_agregado`
--

DROP TABLE IF EXISTS `impuesto_valor_agregado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impuesto_valor_agregado` (
  `id_iva` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `monto_iva` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_iva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impuesto_valor_agregado`
--

LOCK TABLES `impuesto_valor_agregado` WRITE;
/*!40000 ALTER TABLE `impuesto_valor_agregado` DISABLE KEYS */;
INSERT INTO `impuesto_valor_agregado` VALUES ('1',0.13);
/*!40000 ALTER TABLE `impuesto_valor_agregado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propuesta`
--

DROP TABLE IF EXISTS `propuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propuesta` (
  `id_propuesta` int NOT NULL AUTO_INCREMENT,
  `id_solicitud` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `id_proveedor` int NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_propuesta`),
  KEY `fk_propuesta_solicitud` (`id_solicitud`),
  KEY `fk_propuesta_proveedor` (`id_proveedor`),
  CONSTRAINT `fk_propuesta_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  CONSTRAINT `fk_propuesta_solicitud` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud` (`id_solicitud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propuesta`
--

LOCK TABLES `propuesta` WRITE;
/*!40000 ALTER TABLE `propuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `propuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `cedula_juridica` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre_representante` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `correo_electronico` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_proveedor`),
  UNIQUE KEY `cedula_juridica` (`cedula_juridica`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'305180515','PAPAS','Juan','50153578','juan@papas.com');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representante`
--

DROP TABLE IF EXISTS `representante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `representante` (
  `id_representante` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_representante`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representante`
--

LOCK TABLES `representante` WRITE;
/*!40000 ALTER TABLE `representante` DISABLE KEYS */;
INSERT INTO `representante` VALUES ('REP001','Ana Gómez','ana.gomez@ladat.com'),('REP002','Luis Martínez','luis.martinez@ladat.com'),('REP003','Carlos Ramírez','carlos.ramirez@ladat.com'),('REP004','Marta Torres','marta.torres@ladat.com'),('REP005','Jorge Castillo','jorge.castillo@ladat.com'),('REP006','Paula Ruiz','paula.ruiz@ladat.com'),('REP007','Diego Herrera','diego.herrera@ladat.com'),('REP008','Lucía Fernández','lucia.fernandez@ladat.com'),('REP009','Sofía Moreno','sofia.moreno@ladat.com'),('REP010','Andrés Salazar','andres.salazar@ladat.com'),('REP011','Valeria Díaz','valeria.diaz@ladat.com'),('REP012','Sebastián Ríos','sebastian.rios@ladat.com'),('REP013','Camila Ortega','camila.ortega@ladat.com'),('REP014','Fernando Reyes','fernando.reyes@ladat.com'),('REP015','Isabel Vargas','isabel.vargas@ladat.com');
/*!40000 ALTER TABLE `representante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud` (
  `id_solicitud` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `consecutivo_oficio` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `documento_respuesta` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `documento_inicio` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `titulo_solicitud` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `observaciones` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado_solicitud` char(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_representante` char(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fecha_respuesta` date DEFAULT NULL,
  `es_publicada` tinyint(1) DEFAULT '0',
  `fecha_vencimiento_publicacion` date DEFAULT NULL,
  PRIMARY KEY (`id_solicitud`),
  KEY `estado_solicitud` (`estado_solicitud`),
  KEY `id_representante` (`id_representante`),
  CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`estado_solicitud`) REFERENCES `estado_solicitud` (`id_estado`),
  CONSTRAINT `solicitud_ibfk_2` FOREIGN KEY (`id_representante`) REFERENCES `representante` (`id_representante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
INSERT INTO `solicitud` VALUES ('SOL0000001','OF-1234','Documento respuesta ejemplo','Documento inicio ejemplo','Título prueba','Descripción prueba','2025-06-30','2025-06-30','Observaciones de prueba','EST001','REP007','2025-07-04',0,NULL),('SOL001','OF-1001','respuesta_1001.pdf','inicio_1001.pdf','Servicio de mantenimiento','Mantenimiento preventivo de maquinarias','2025-01-05','2025-01-15','Requiere atención urgente','EST005','REP002',NULL,0,NULL),('SOL002','OF-1002','respuesta_1002.pdf','inicio_1002.pdf','Suministro de materiales','Pedido de materiales para producción','2025-01-10','2025-01-20','Entrega en dos fases','EST001',NULL,'2025-01-13',0,NULL),('SOL003','OF-1003',NULL,'inicio_1003.pdf','Capacitación de personal','Curso de actualización para el equipo técnico','2025-01-12','2025-02-01',NULL,'EST005','REP003',NULL,0,NULL),('SOL004','OF-1004','respuesta_1004.pdf','inicio_1004.pdf','Reparación de equipo','Reparación de sistema de climatización','2025-01-15','2025-01-25','Presupuesto aprobado','EST005','REP002','2025-01-16',0,NULL),('SOL005','OF-1005',NULL,'inicio_1005.pdf','Consultoría técnica','Asesoría para optimización de procesos','2025-01-18','2025-02-05',NULL,'EST005','REP007',NULL,0,NULL),('SOL006','OF-1006','respuesta_1006.pdf','inicio_1006.pdf','Instalación de software','Implementación de nuevo sistema ERP','2025-01-20','2025-02-10','Coordinar con TI','EST001','REP004','2025-01-22',0,NULL),('SOL007','OF-1007',NULL,'inicio_1007.pdf','Evaluación de proveedores','Análisis y selección de nuevos proveedores','2025-01-22','2025-02-15',NULL,'EST005','REP009',NULL,0,NULL),('SOL008','OF-1008','respuesta_1008.pdf','inicio_1008.pdf','Auditoría interna','Revisión de procesos internos de calidad','2025-01-25','2025-02-20','Informe preliminar entregado','EST001','REP006','2025-01-28',0,NULL),('SOL009','OF-1009',NULL,'inicio_1009.pdf','Actualización de infraestructura','Mejoras en la red eléctrica','2025-01-28','2025-03-06',NULL,'EST005','REP008',NULL,0,NULL),('SOL010','OF-1010','respuesta_1010.pdf','inicio_1010.pdf','Campaña publicitaria','Lanzamiento de nueva campaña de marketing','2025-02-01','2025-02-20','Presupuesto aprobado','EST001','REP010','2025-02-03',0,NULL),('SOL011','OF-1011',NULL,'inicio_1011.pdf','Mantenimiento de vehículos','Revisión y reparación de flota corporativa','2025-02-03','2025-02-25',NULL,'EST001','REP012','2025-07-04',0,NULL),('SOL012','OF-1012','respuesta_1012.pdf','inicio_1012.pdf','Desarrollo web','Creación de nuevo portal corporativo','2025-02-05','2025-02-28','Entregable fase 1 completado','EST001','REP011','2025-02-07',0,NULL),('SOL013','OF-1013',NULL,NULL,'Mantenimiento de vehículos','Llevar el vehículo placa LDT-022 al mecánico','2025-06-28','2025-06-30','Urgente','EST001','REP011','2025-06-28',0,NULL),('SOL015','OF-1515','respuesta.pdf','inicio.pdf','Título ejemplo','Descripción ejemplo','2025-07-01','2025-07-02','Observación ejemplo','EST005','REP001','2025-07-05',0,NULL),('SOL016','OF-1515',NULL,NULL,'TituloB','da','2025-07-07','2025-07-08','da','EST001','REP012','2025-07-11',0,NULL),('SOL017','OF-1016','da','da','da','da','2025-07-07','2025-07-09','da','EST001','REP013','2025-07-12',0,NULL),('SOL018','OF-1018','da','da','fdas','','2025-07-08','2025-07-08','dadada','EST005','REP015','2025-07-12',1,'2025-08-03'),('SOL020','OF-1019',NULL,'dda','dasda','dasda','2025-07-11','2025-07-11','dada','EST002','REP009','2025-07-18',0,NULL);
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre_usuario` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre_completo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `correo_electronico` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `contrasenia_cifrada` varbinary(240) NOT NULL,
  `tag_autenticacion` varbinary(16) NOT NULL,
  `nonce` varbinary(12) NOT NULL,
  `estado` enum('activo','inactivo','bloqueado') COLLATE utf8mb4_general_ci NOT NULL,
  `intentos_fallidos` int DEFAULT '0',
  `ultimo_intento` datetime DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`),
  UNIQUE KEY `unique_nombre_usuario` (`nombre_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('0709cbvxms','cbv','Cristian Brenes','brenescris1@gmail.com',_binary '��qnG�XtACp�?8',_binary '$�u\�s�\�{\"3DUfw�',_binary '\Z+<M^o','activo',2,'2025-06-28 00:07:44'),('0925rhmxms','rhm','Raúl Hernández Molina','hernandezmolinaraul@gmail.com',_binary '$�u\�s�\�{',_binary 'A^�Ns�Ʀ㓒\�yCH',_binary '\�\�\�_�~5)\���','activo',0,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sistema_solicitudes_ladat'
--
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarDesglose` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarDesglose`(
    IN p_id_desglose CHAR(10),
    IN p_mes TINYINT UNSIGNED,
    IN p_anio YEAR,
    IN p_horas TINYINT UNSIGNED,
    IN p_monto DECIMAL(10,2),
	IN p_total DECIMAL(10,2),
    IN p_observaciones VARCHAR(500),
    IN p_porcentaje_cobro DECIMAL(5,2),
    IN p_id_iva CHAR(10)
)
BEGIN
    UPDATE desglose
    SET
        mes = p_mes,
        anio = p_anio,
        horas = p_horas,
        monto = p_monto,
        total = p_total,
        observaciones = p_observaciones,
        porcentaje_cobro = p_porcentaje_cobro,
        id_iva = p_id_iva
    WHERE id_desglose = p_id_desglose;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarEstadoSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarEstadoSolicitud`(IN p_IdEstado VARCHAR(10), IN p_Estado VARCHAR(100))
BEGIN
    UPDATE estado_solicitud
    SET estado = p_Estado
    WHERE id_estado = p_IdEstado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarRepresentante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarRepresentante`(
    IN p_id_representante CHAR(10),
    IN p_nombre VARCHAR(100),
    IN p_email VARCHAR(100)
)
BEGIN
    -- Verificar si el id_representante existe
    IF EXISTS (SELECT 1 FROM representante WHERE id_representante = p_id_representante) THEN
        -- Actualizar los datos del representante
        UPDATE representante
        SET nombre = p_nombre,
            email = p_email
        WHERE id_representante = p_id_representante;
    ELSE
        -- Si no existe el representante con ese id, lanzar un mensaje de error
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El id del representante no existe.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarSolicitud`(
    IN p_id_solicitud CHAR(10),
    IN p_consecutivo_oficio VARCHAR(100),
    IN p_documento_respuesta VARCHAR(500),
    IN p_documento_inicio VARCHAR(500),
    IN p_titulo_solicitud VARCHAR(100),
    IN p_descripcion VARCHAR(500),
    IN p_fecha_ingreso DATE,
    IN p_fecha_inicio DATE,
    IN p_observaciones VARCHAR(500),
    IN p_estado_solicitud CHAR(10),
    IN p_id_representante CHAR(10),
    IN p_fecha_respuesta DATE
)
BEGIN
    UPDATE sistema_solicitudes_ladat.solicitud
    SET
        consecutivo_oficio = p_consecutivo_oficio,
        documento_respuesta = p_documento_respuesta,
        documento_inicio = p_documento_inicio,
        titulo_solicitud = p_titulo_solicitud,
        descripcion = p_descripcion,
        fecha_ingreso = p_fecha_ingreso,
        fecha_inicio = p_fecha_inicio,
        observaciones = p_observaciones,
        estado_solicitud = p_estado_solicitud,
        id_representante = p_id_representante,
        fecha_respuesta = p_fecha_respuesta
    WHERE id_solicitud = p_id_solicitud;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarPropuestaDetalles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarPropuestaDetalles`(
    IN p_id_propuesta INT
)
BEGIN
    SELECT p.id_propuesta, p.id_solicitud, p.id_proveedor, p.fecha_creacion,
           d.id_detalle, d.mes, d.anio, d.horas, d.monto, d.iva, d.total, d.observaciones, d.porcentaje_cobro
    FROM propuesta p
    LEFT JOIN detalle_propuesta d ON p.id_propuesta = d.id_propuesta
    WHERE p.id_propuesta = p_id_propuesta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarProveedorPorCedula` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarProveedorPorCedula`(
    IN p_cedula_juridica VARCHAR(20)
)
BEGIN
    SELECT id_proveedor, cedula_juridica, nombre, nombre_representante, telefono, email
    FROM proveedor
    WHERE cedula_juridica = p_cedula_juridica;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CrearRepresentante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CrearRepresentante`(
    IN p_id_representante CHAR(10),
    IN p_nombre VARCHAR(100),
    IN p_email VARCHAR(100)
)
BEGIN
    -- Insertar un nuevo registro en la tabla de representantes
    INSERT INTO representante (id_representante, nombre, email)
    VALUES (p_id_representante, p_nombre, p_email);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cuenta_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cuenta_usuarios`()
BEGIN
    SELECT COUNT(*) FROM usuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarDesglose` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarDesglose`(
    IN p_id_desglose CHAR(10),
	OUT p_result INT -- 1 = eliminado, 0 = no eliminado por relaciones
)
BEGIN
    DECLARE v_rel_solicitudes INT DEFAULT 0;

    -- Contar registros relacionados en solicitudes
    SELECT COUNT(*) INTO v_rel_solicitudes
    FROM solicitud
    WHERE p_id_desglose = p_id_desglose;

    -- Verificar si hay relaciones en solicitudes
    IF v_rel_solicitudes = 0 THEN
        DELETE FROM desglose WHERE id_desglose = p_id_desglose;
        SET p_result = 1; -- eliminado
    ELSE
        SET p_result = 0; -- no eliminado porque tiene relaciones en solicitudes
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarEstadoSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarEstadoSolicitud`(IN p_IdEstado VARCHAR(10))
BEGIN
    DELETE FROM estado_solicitud
    WHERE id_estado = p_IdEstado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarRepresentante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarRepresentante`(
    IN p_id_representante CHAR(10),
    OUT p_result INT -- 1 = eliminado, 0 = no eliminado por relaciones
)
BEGIN
    DECLARE v_rel_solicitudes INT DEFAULT 0;

    -- Contar registros relacionados en solicitudes
    SELECT COUNT(*) INTO v_rel_solicitudes
    FROM solicitud
    WHERE id_representante = p_id_representante;

    -- Verificar si hay relaciones en solicitudes
    IF v_rel_solicitudes = 0 THEN
        DELETE FROM representante WHERE id_representante = p_id_representante;
        SET p_result = 1; -- eliminado
    ELSE
        SET p_result = 0; -- no eliminado porque tiene relaciones en solicitudes
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarSolicitud`(
    IN p_id_solicitud CHAR(10),
    OUT p_result INT -- 1 = eliminado, 0 = no eliminado por relaciones
)
BEGIN
    DECLARE v_rel_desglose INT DEFAULT 0;

    -- Contar registros relacionados en desglose
    SELECT COUNT(*) INTO v_rel_desglose
    FROM desglose
    WHERE id_solicitud = p_id_solicitud;

    IF v_rel_desglose = 0 THEN
        DELETE FROM solicitud WHERE id_solicitud = p_id_solicitud;
        SET p_result = 1; -- eliminado
    ELSE
        SET p_result = 0; -- no eliminado porque tiene relaciones en desglose
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarDesglose` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarDesglose`(
    IN p_id_desglose CHAR(10),
    IN p_mes TINYINT UNSIGNED,
    IN p_anio YEAR,
    IN p_horas TINYINT UNSIGNED,
    IN p_monto DECIMAL(10,2),
	IN p_total DECIMAL(10,2),
    IN p_observaciones VARCHAR(500),
    IN p_porcentaje_cobro DECIMAL(5,2),
    IN p_id_solicitud CHAR(10),
    IN p_id_iva CHAR(10)
)
BEGIN
    -- Simplemente insertar monto sin calcular IVA ni total
    INSERT INTO desglose (
        id_desglose, mes, anio, horas, monto, total,
        observaciones, porcentaje_cobro, id_solicitud, id_iva
    ) VALUES (
        p_id_desglose, p_mes, p_anio, p_horas, p_monto, p_total,
        p_observaciones, p_porcentaje_cobro, p_id_solicitud, p_id_iva
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarDetallePropuesta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarDetallePropuesta`(
    IN p_id_propuesta INT,
    IN p_mes TINYINT,
    IN p_anio SMALLINT,
    IN p_horas DECIMAL(10,2),
    IN p_monto DECIMAL(15,2),
    IN p_observaciones TEXT,
    IN p_porcentaje_cobro DECIMAL(5,2)
)
BEGIN
    INSERT INTO detalle_propuesta (
        id_propuesta, mes, anio, horas, monto, observaciones, porcentaje_cobro
    )
    VALUES (
        p_id_propuesta, p_mes, p_anio, p_horas, p_monto, p_observaciones, p_porcentaje_cobro
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarEstadoSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarEstadoSolicitud`(IN p_IdEstado VARCHAR(10), IN p_Estado VARCHAR(100))
BEGIN
    INSERT INTO estado_solicitud (id_estado, estado)
    VALUES (p_IdEstado, p_Estado);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarPropuesta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarPropuesta`(
    IN p_id_solicitud CHAR(10),
    IN p_id_proveedor INT,
    OUT p_id_propuesta INT
)
BEGIN
    INSERT INTO propuesta (id_solicitud, id_proveedor)
    VALUES (p_id_solicitud, p_id_proveedor);

    SET p_id_propuesta = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarProveedor`(
    IN p_cedula_juridica VARCHAR(20),
    IN p_nombre VARCHAR(100),
    IN p_nombre_representante VARCHAR(100),
    IN p_telefono VARCHAR(20),
    IN p_email VARCHAR(100),
    OUT p_id_proveedor INT
)
BEGIN
    DECLARE proveedor_existe INT;

    SELECT id_proveedor INTO proveedor_existe
    FROM proveedor
    WHERE cedula_juridica = p_cedula_juridica;

    IF proveedor_existe IS NULL THEN
        INSERT INTO proveedor (cedula_juridica, nombre, nombre_representante, telefono, email)
        VALUES (p_cedula_juridica, p_nombre, p_nombre_representante, p_telefono, p_email);

        SET p_id_proveedor = LAST_INSERT_ID();
    ELSE
        SET p_id_proveedor = proveedor_existe;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarSolicitud`(
    IN p_id_solicitud CHAR(10),
    IN p_consecutivo_oficio VARCHAR(100),
    IN p_documento_respuesta VARCHAR(500),
    IN p_documento_inicio VARCHAR(500),
    IN p_titulo_solicitud VARCHAR(100),
    IN p_descripcion VARCHAR(500),
    IN p_fecha_ingreso DATE,
    IN p_fecha_inicio DATE,
    IN p_observaciones VARCHAR(500),
    IN p_estado_solicitud CHAR(10),
    IN p_id_representante CHAR(10),
    IN p_fecha_respuesta DATE
)
BEGIN
    INSERT INTO sistema_solicitudes_ladat.solicitud (
        id_solicitud,
        consecutivo_oficio,
        documento_respuesta,
        documento_inicio,
        titulo_solicitud,
        descripcion,
        fecha_ingreso,
        fecha_inicio,
        observaciones,
        estado_solicitud,
        id_representante,
        fecha_respuesta
    )
    VALUES (
        p_id_solicitud,
        p_consecutivo_oficio,
        p_documento_respuesta,
        p_documento_inicio,
        p_titulo_solicitud,
        p_descripcion,
        p_fecha_ingreso,
        p_fecha_inicio,
        p_observaciones,
        p_estado_solicitud,
        p_id_representante,
        p_fecha_respuesta
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_bitacora` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_bitacora`(
    IN  pI_usuario_ejecutor    CHAR(10),
    IN  pI_descripcion_accion  VARCHAR(100),
    IN  pI_listado_acciones    JSON,
    IN  pI_id_solicitud        CHAR(10),
    OUT pS_resultado           INT
)
BEGIN
    DECLARE new_id CHAR(10);

    -- Generar nuevo id_bitacora (ajusta este mecanismo según tus necesidades)
    SELECT LPAD(IFNULL(MAX(CAST(id_bitacora AS UNSIGNED)) + 1, 1), 10, '0')
    INTO new_id
    FROM bitacora;

    -- Intentar la inserción
    BEGIN
        DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
        BEGIN
            SET pS_resultado = 0;
        END;

        INSERT INTO bitacora (
            id_bitacora,
            fecha,
            usuario_ejecutor,
            descripcion_accion,
            listado_acciones,
            id_solicitud
        )
        VALUES (
            new_id,
            CURDATE(),
            pI_usuario_ejecutor,
            pI_descripcion_accion,
            pI_listado_acciones,
            pI_id_solicitud
        );

        SET pS_resultado = 1;
    END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar10Desglose` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar10Desglose`(
    IN p_id_solicitud CHAR(10),
    IN p_PaginaActual INT,
    IN p_pageSize INT
)
BEGIN
    DECLARE p_offset INT;

    SET p_offset = (p_PaginaActual - 1) * p_pageSize;

    SELECT 
        d.id_desglose,
        d.mes,
        d.anio,
        d.horas,
        d.monto,
        ROUND(d.monto * iva.monto_iva / 100, 2) AS iva,
        d.total,
        d.observaciones,
        d.porcentaje_cobro,
        d.id_iva
    FROM desglose d
    INNER JOIN impuesto_valor_agregado iva ON d.id_iva = iva.id_iva
    WHERE d.id_solicitud = p_id_solicitud
    ORDER BY d.anio, d.mes
    LIMIT p_pageSize OFFSET p_offset;

    SELECT COUNT(*) AS TotalRegistros
    FROM desglose
    WHERE id_solicitud = p_id_solicitud;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar10EstadosSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar10EstadosSolicitud`(
    IN p_Pagina INT,
    IN p_TamanoPagina INT
)
BEGIN
    DECLARE v_Offset INT;
    SET v_Offset = (p_Pagina - 1) * p_TamanoPagina;

    SELECT SQL_CALC_FOUND_ROWS id_estado, estado
    FROM estado_solicitud
    ORDER BY id_estado
    LIMIT v_Offset, p_TamanoPagina;

    -- Esto debe obtener el total de filas ignorando el LIMIT
    SELECT FOUND_ROWS() AS TotalFilas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar10Representantes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar10Representantes`(
    IN p_PaginaActual INT,
    IN p_pageSize INT
)
BEGIN
    DECLARE p_offset INT;

    -- Calcular el offset para la paginación
    SET p_offset = (p_PaginaActual - 1) * p_pageSize;

    -- Seleccionar los representantes con paginación
    SELECT
        r.id_representante,
        r.nombre,
        r.email
    FROM sistema_solicitudes_ladat.representante r
    ORDER BY r.nombre ASC
    LIMIT p_pageSize OFFSET p_offset;

    -- Seleccionar el total de registros en la tabla representante
    SELECT COUNT(*) AS TotalRegistros FROM sistema_solicitudes_ladat.representante;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar5Solicitudes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar5Solicitudes`(
    IN p_PaginaActual INT,
    IN p_pageSize INT
)
BEGIN
    DECLARE p_offset INT;

    SET p_offset = (p_PaginaActual - 1) * p_pageSize;

    SELECT
        s.id_solicitud,
        s.consecutivo_oficio,
        s.documento_respuesta,
        s.documento_inicio,
        s.titulo_solicitud,
        s.descripcion,
        s.fecha_ingreso,
        s.fecha_inicio,
        s.fecha_respuesta,
        s.observaciones,
        e.estado AS EstadoNombre,
        r.nombre AS RepresentanteNombre,
        s.es_publicada,
        s.fecha_vencimiento_publicacion
    FROM sistema_solicitudes_ladat.solicitud s
    LEFT JOIN sistema_solicitudes_ladat.estado_solicitud e ON s.estado_solicitud = e.id_estado
    LEFT JOIN sistema_solicitudes_ladat.representante r ON s.id_representante = r.id_representante
    ORDER BY s.fecha_ingreso DESC
    LIMIT p_pageSize OFFSET p_offset;

    SELECT COUNT(*) AS TotalRegistros FROM sistema_solicitudes_ladat.solicitud;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar5SolicitudesPublicadas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar5SolicitudesPublicadas`(
    IN p_PaginaActual INT,
    IN p_pageSize INT
)
BEGIN
    DECLARE p_offset INT;

    SET p_offset = (p_PaginaActual - 1) * p_pageSize;

    SELECT
        s.id_solicitud,
        s.consecutivo_oficio,
        s.documento_respuesta,
        s.documento_inicio,
        s.titulo_solicitud,
        s.descripcion,
        s.fecha_ingreso,
        s.fecha_inicio,
        s.fecha_respuesta,
        s.observaciones,
        e.estado AS EstadoNombre,
        r.nombre AS RepresentanteNombre,
        s.es_publicada,
        s.fecha_vencimiento_publicacion
    FROM sistema_solicitudes_ladat.solicitud s
    LEFT JOIN sistema_solicitudes_ladat.estado_solicitud e ON s.estado_solicitud = e.id_estado
    LEFT JOIN sistema_solicitudes_ladat.representante r ON s.id_representante = r.id_representante
    WHERE s.es_publicada = TRUE
      AND (s.fecha_vencimiento_publicacion IS NULL OR s.fecha_vencimiento_publicacion >= CURDATE())
    ORDER BY s.fecha_ingreso DESC
    LIMIT p_pageSize OFFSET p_offset;

    SELECT COUNT(*) AS TotalRegistros
    FROM sistema_solicitudes_ladat.solicitud
    WHERE es_publicada = TRUE
      AND (fecha_vencimiento_publicacion IS NULL OR fecha_vencimiento_publicacion >= CURDATE());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarDesgloses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarDesgloses`(IN p_id_solicitud CHAR(10))
BEGIN
    SELECT 
        d.id_desglose,
        d.mes,
        d.anio,
        d.horas,
        d.monto,
        d.total,
        d.observaciones,
        d.porcentaje_cobro,
        d.id_solicitud,
        d.id_iva,
        iva.monto_iva
    FROM desglose d
    JOIN impuesto_valor_agregado iva ON d.id_iva = iva.id_iva
    WHERE d.id_solicitud = p_id_solicitud;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarEstadoSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarEstadoSolicitud`()
BEGIN
    SELECT id_estado, estado AS Estado FROM estado_solicitud;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarIVAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarIVAS`()
BEGIN
    SELECT id_iva, monto_iva
    FROM impuesto_valor_agregado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarPorIdDesglose` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarPorIdDesglose`(IN p_IdDesglose VARCHAR(50))
BEGIN
    SELECT id_desglose, mes, anio, horas, monto, total, observaciones,
           porcentaje_cobro, id_solicitud, id_iva
    FROM desglose
    WHERE id_desglose = p_IdDesglose;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarPorIdEstadoSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarPorIdEstadoSolicitud`(IN p_IdEstado VARCHAR(50))
BEGIN
    SELECT id_estado AS IdEstado, estado AS Estado
    FROM estado_solicitud
    WHERE id_estado = p_IdEstado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarPorIdRepresentante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarPorIdRepresentante`(IN p_IdRepresentante VARCHAR(50))
BEGIN
    SELECT id_representante, nombre, email
    FROM representante
    WHERE id_representante = p_IdRepresentante;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarPorIdSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarPorIdSolicitud`(IN p_IdSolicitud VARCHAR(50))
BEGIN
    SELECT id_solicitud, consecutivo_oficio, documento_respuesta, documento_inicio,
           titulo_solicitud, descripcion, fecha_ingreso, fecha_inicio, observaciones,
           estado_solicitud, id_representante, fecha_respuesta
    FROM solicitud
    WHERE id_solicitud = p_IdSolicitud;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarPorNombreEstadoSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarPorNombreEstadoSolicitud`(IN p_NombreEstado VARCHAR(100))
BEGIN
    SELECT id_estado AS IdEstado, estado AS Estado
    FROM estado_solicitud
    WHERE estado = p_NombreEstado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarRepresentantes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarRepresentantes`()
BEGIN
    SELECT id_representante, nombre, email
    FROM representante;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarSolicitudes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarSolicitudes`()
BEGIN
    SELECT
        id_solicitud,
        consecutivo_oficio,
        documento_respuesta,
        documento_inicio,
        titulo_solicitud,
        descripcion,
        fecha_ingreso,
        fecha_inicio,
        observaciones,
        estado_solicitud,
        id_representante,
        fecha_respuesta
    FROM sistema_solicitudes_ladat.solicitud
    ORDER BY fecha_ingreso DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MarcarSolicitudesVencidas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MarcarSolicitudesVencidas`(IN p_estado_vencida VARCHAR(10))
BEGIN
	UPDATE solicitud
	SET estado_solicitud = 'EST005'
	WHERE fecha_respuesta IS NULL
	  AND fecha_ingreso IS NOT NULL
	  AND fecha_ingreso <= DATE_SUB(CURDATE(), INTERVAL 5 DAY)
	  AND (estado_solicitud IS NULL OR estado_solicitud <> 'EST005');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostrar_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_usuarios`(
    IN p_estado VARCHAR(10) -- Puedes pasar 'activo', 'inactivo', 'bloqueado' o NULL para todos
)
BEGIN
    IF p_estado IS NULL OR p_estado = '' THEN
        SELECT 
            id_usuario,
            nombre_usuario,
            nombre_completo,
            correo_electronico,
            estado,
            intentos_fallidos,
            ultimo_intento
        FROM usuario;
    ELSE
        SELECT 
            id_usuario,
            nombre_usuario,
            nombre_completo,
            correo_electronico,
            estado,
            intentos_fallidos,
            ultimo_intento
        FROM usuario
        WHERE estado = p_estado;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostrar_usuarios_paginado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_usuarios_paginado`(
    IN pI_pagina INT,
    IN pI_tamano_pagina INT
)
BEGIN
    DECLARE p_offset INT;
    SET p_offset = (pI_pagina - 1) * pI_tamano_pagina;

    SELECT 
        id_usuario,
        nombre_usuario,
        nombre_completo,
        correo_electronico,
        estado,
        intentos_fallidos,
        ultimo_intento
    FROM usuario
    ORDER BY nombre_completo
    LIMIT pI_tamano_pagina OFFSET p_offset;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerDetalleSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerDetalleSolicitud`(
    IN p_id_solicitud CHAR(10)
)
BEGIN
    -- Selecciona detalle de la solicitud
    SELECT
        s.id_solicitud,
        s.consecutivo_oficio,
        s.documento_respuesta,
        s.documento_inicio,
        s.titulo_solicitud,
        s.descripcion,
        s.fecha_ingreso,
        s.fecha_inicio,
        s.fecha_respuesta,
        s.observaciones,
        s.estado_solicitud AS EstadoId,
        e.estado AS EstadoNombre,
        s.id_representante AS RepresentanteId,
        r.nombre AS RepresentanteNombre,
        s.fecha_vencimiento_publicacion
    FROM sistema_solicitudes_ladat.solicitud s
    LEFT JOIN sistema_solicitudes_ladat.estado_solicitud e ON s.estado_solicitud = e.id_estado
    LEFT JOIN sistema_solicitudes_ladat.representante r ON s.id_representante = r.id_representante
    WHERE s.id_solicitud = p_id_solicitud;

    -- Selecciona todos los estados para la lista de selección
    SELECT id_estado, estado FROM sistema_solicitudes_ladat.estado_solicitud;

    -- Selecciona todos los representantes para la lista de selección
    SELECT id_representante, nombre FROM sistema_solicitudes_ladat.representante;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerIdEstadoPorNombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerIdEstadoPorNombre`(
    IN p_nombre_estado VARCHAR(100),
    OUT p_id_estado CHAR(10)
)
BEGIN
    SELECT id_estado INTO p_id_estado
    FROM estado_solicitud
    WHERE estado = p_nombre_estado
    LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerProveedorPorCedula` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerProveedorPorCedula`(
    IN p_cedula_juridica VARCHAR(20)
)
BEGIN
    SELECT 
        id_proveedor,
        cedula_juridica,
        nombre,
        nombre_representante,
        telefono,
        correo_electronico
    FROM proveedor
    WHERE cedula_juridica = p_cedula_juridica
    LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerSiguienteNumeroDesglose` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerSiguienteNumeroDesglose`()
BEGIN
    DECLARE ultimoId VARCHAR(10);
    DECLARE siguienteNumero INT DEFAULT 1;
    DECLARE numeroParte INT;

    -- Obtener el último id_desglose
    SELECT id_desglose
    INTO ultimoId
    FROM desglose
    ORDER BY id_desglose DESC
    LIMIT 1;

    IF ultimoId IS NOT NULL AND LENGTH(ultimoId) >= 6 THEN
        SET numeroParte = CAST(SUBSTRING(ultimoId, 5) AS UNSIGNED);

        IF numeroParte IS NOT NULL THEN
            SET siguienteNumero = numeroParte + 1;
        END IF;
    END IF;

    -- Retornar el siguiente número
    SELECT siguienteNumero AS siguiente_numero;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerSiguienteNumeroRepresentante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerSiguienteNumeroRepresentante`()
BEGIN
    DECLARE ultimoId VARCHAR(10);
    DECLARE siguienteNumero INT DEFAULT 1;
    DECLARE numeroParte INT;

    SELECT id_representante
    INTO ultimoId
    FROM representante
    ORDER BY id_representante DESC
    LIMIT 1;

    IF ultimoId IS NOT NULL AND LENGTH(ultimoId) >= 6 THEN
        SET numeroParte = CAST(SUBSTRING(ultimoId, 4) AS UNSIGNED);

        IF numeroParte IS NOT NULL THEN
            SET siguienteNumero = numeroParte + 1;
        END IF;
    END IF;

    SELECT siguienteNumero AS siguiente_numero;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerSiguienteNumeroSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerSiguienteNumeroSolicitud`()
BEGIN
    DECLARE ultimoId VARCHAR(10);
    DECLARE siguienteNumero INT DEFAULT 1;
    DECLARE numeroParte INT;

    SELECT id_solicitud
    INTO ultimoId
    FROM solicitud
    ORDER BY id_solicitud DESC
    LIMIT 1;

    IF ultimoId IS NOT NULL AND LENGTH(ultimoId) >= 6 THEN
        SET numeroParte = CAST(SUBSTRING(ultimoId, 4) AS UNSIGNED);

        IF numeroParte IS NOT NULL THEN
            SET siguienteNumero = numeroParte + 1;
        END IF;
    END IF;

    SELECT siguienteNumero AS siguiente_numero;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PublicarSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PublicarSolicitud`(
    IN p_id_solicitud CHAR(10),
    IN p_es_publicada TINYINT(1),
    IN p_fecha_vencimiento_publicacion DATE
)
BEGIN
    UPDATE sistema_solicitudes_ladat.solicitud
    SET
        es_publicada = p_es_publicada,
        fecha_vencimiento_publicacion = p_fecha_vencimiento_publicacion
    WHERE id_solicitud = p_id_solicitud;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrar_intento_fallido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_intento_fallido`(
    IN pI_nombreUsuario VARCHAR(100)
)
BEGIN
    DECLARE v_intentos INT DEFAULT 0;
    DECLARE v_ultimo DATETIME;

    -- Obtener intentos y último intento
    SELECT intentos_fallidos, ultimo_intento
    INTO v_intentos, v_ultimo
    FROM usuario
    WHERE nombre_usuario = pI_nombreUsuario;

    -- Reiniciar contador si pasó más de 1 minuto
    IF v_ultimo IS NULL OR TIMESTAMPDIFF(SECOND, v_ultimo, NOW()) > 60 THEN
        SET v_intentos = 1;
    ELSE
        SET v_intentos = v_intentos + 1;
    END IF;

    -- Bloquear si llegó a 3 intentos
    IF v_intentos >= 3 THEN
        UPDATE usuario
        SET intentos_fallidos = v_intentos,
            ultimo_intento = NOW(),
            estado = 'bloqueado'
        WHERE nombre_usuario = pI_nombreUsuario;
    ELSE
        UPDATE usuario
        SET intentos_fallidos = v_intentos,
            ultimo_intento = NOW()
        WHERE nombre_usuario = pI_nombreUsuario;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reiniciar_intentos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reiniciar_intentos`(
	IN pI_nombreUsuario VARCHAR(100)
)
BEGIN
    UPDATE usuario
    SET intentos_fallidos = 0,
        ultimo_intento = NULL
    WHERE nombre_usuario = pI_nombreUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TieneRelacionSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TieneRelacionSolicitud`(IN p_IdSolicitud VARCHAR(50), OUT p_TieneRelacion BOOLEAN)
BEGIN
    DECLARE total INT;

    SELECT 
        (SELECT COUNT(*) FROM desglose WHERE id_solicitud = p_IdSolicitud) +
        (SELECT COUNT(*) FROM bitacora WHERE id_solicitud = p_IdSolicitud)
    INTO total;

    SET p_TieneRelacion = (total > 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ValidarRelacionEstadoSolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ValidarRelacionEstadoSolicitud`(IN p_IdEstado VARCHAR(10))
BEGIN
    SELECT COUNT(*) AS cantidad
    FROM solicitud
    WHERE estado_solicitud = p_IdEstado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VerificarRelacionAsignado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VerificarRelacionAsignado`(
    IN p_id_desglose CHAR(10),
    OUT p_asignado BOOLEAN
)
BEGIN
    DECLARE v_count INT;


    SELECT COUNT(*) INTO v_count
    FROM desglose
    WHERE id_desglose = p_id_desglose;

    SET p_asignado = v_count > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `verificar_credencial` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `verificar_credencial`(
    IN pI_nombre_usuario VARCHAR(100),
    OUT pS_id_usuario CHAR(10),
    OUT pS_nombre_usuario VARCHAR(100),
    OUT pS_nombre_completo VARCHAR(100),
    OUT pS_correo_electronico VARCHAR(100),
    OUT pS_contrasenia_cifrada VARBINARY(240),
    OUT pS_tag VARBINARY(16),
    OUT pS_nonce VARBINARY(12),
    OUT pS_encontrado INT
)
BEGIN
    DECLARE v_estado ENUM('activo', 'inactivo', 'bloqueado');

    -- Manejador si no se encuentra el usuario
    DECLARE EXIT HANDLER FOR NOT FOUND
    BEGIN
        SET pS_encontrado = 0;
        SET pS_id_usuario = NULL;
        SET pS_nombre_usuario = NULL;
        SET pS_nombre_completo = NULL;
        SET pS_correo_electronico = NULL;
        SET pS_contrasenia_cifrada = NULL;
        SET pS_tag = NULL;
        SET pS_nonce = NULL;
    END;

    -- Buscar usuario
    SELECT id_usuario, nombre_usuario, nombre_completo, correo_electronico,
           contrasenia_cifrada, tag_autenticacion, nonce, estado
    INTO pS_id_usuario, pS_nombre_usuario, pS_nombre_completo, pS_correo_electronico,
         pS_contrasenia_cifrada, pS_tag, pS_nonce, v_estado
    FROM usuario
    WHERE nombre_usuario = pI_nombre_usuario
    LIMIT 1;

    -- Validar estado
    IF v_estado = 'activo' THEN
        SET pS_encontrado = 1;
    ELSE
        SET pS_encontrado = 0;
        SET pS_id_usuario = NULL;
        SET pS_nombre_usuario = NULL;
        SET pS_nombre_completo = NULL;
        SET pS_correo_electronico = NULL;
        SET pS_contrasenia_cifrada = NULL;
        SET pS_tag = NULL;
        SET pS_nonce = NULL;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-19 13:37:45

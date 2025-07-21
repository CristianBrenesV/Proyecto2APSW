using SistemaSolicitudesLaDat.Entities.Solicitudes;
using SistemaSolicitudesLaDat.Repository.Solicitudes;
using SistemaSolicitudesLaDat.Service.Abstract;
using System.Text.RegularExpressions;

namespace SistemaSolicitudesLaDat.Services
{
    public class ProveedorService : IProveedorService
    {
        private readonly ProveedorRepository _proveedorRepository;

        public ProveedorService(ProveedorRepository proveedorRepository)
        {
            _proveedorRepository = proveedorRepository;
        }
        public async Task<Proveedor?> ObtenerPorCedulaAsync(string cedulaJuridica)
        {
            return await _proveedorRepository.ObtenerPorCedulaAsync(cedulaJuridica);
        }
        public async Task<Proveedor> ObtenerOInsertarProveedorAsync(Proveedor proveedor)
        {
            if (!Regex.IsMatch(proveedor.cedula_juridica, @"^\d{9,12}$"))
                throw new ArgumentException("Formato de cédula jurídica inválido");

            var existente = await _proveedorRepository.ObtenerPorCedulaAsync(proveedor.cedula_juridica);

            if (existente != null)
                return existente;

            var nuevoId = await _proveedorRepository.InsertarAsync(proveedor);
            proveedor.id_proveedor = nuevoId;
            return proveedor;
        }
    }
}

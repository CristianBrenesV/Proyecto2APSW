using SistemaSolicitudesLaDat.Entities.Solicitudes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaSolicitudesLaDat.Service.Abstract
{
    public interface IProveedorService
    {
        Task<Proveedor> ObtenerOInsertarProveedorAsync(Proveedor proveedor);
        Task<Proveedor?> ObtenerPorCedulaAsync(string cedulaJuridica);
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaSolicitudesLaDat.Entities.Solicitudes
{
    public class SolicitudResumen
    {
        [Display(Name = "Consecutivo oficio de la solicitud")]
        public string consecutivo_oficio { get; set; } = string.Empty;

        [Display(Name = "Título de la solicitud")]
        public string titulo_solicitud { get; set; } = string.Empty;
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    
    public enum Roles
    {
        Administrador = 1,
        Empresa = 2,
        Empleado = 3
    }

    public enum EstadoUsuario
    {
        Pendiente = 0,
        Activo = 1,
        Rechazado = 2
    }

}

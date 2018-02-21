using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    class DTOEmpleado
    {
        public DTOEmpleado() { }
        public virtual int idEmpleado { get; set; }
        public virtual int idTipoDocumento { get; set; }
        public virtual int idEmpresa { get; set; }
        public virtual int idUsuario { get; set; }
        public virtual string nombreCompleto { get; set; }
        public virtual string documento { get; set; }
        public virtual DateTime fechaNacimiento { get; set; }
        public virtual byte genero { get; set; }
        public virtual string foto { get; set; }
    }
}

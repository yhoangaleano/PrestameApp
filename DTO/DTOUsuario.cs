using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTOUsuario
    {
        public DTOUsuario() { }
        public virtual int idUsuario { get; set; }
        public virtual int idRol { get; set; }
        public virtual string correoElectronico { get; set; }
        public virtual string usuario { get; set; }
        public virtual string contrasena { get; set; }
        public virtual byte? estado { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTOEmpresa
    {

        public DTOEmpresa() {

            this.usuario = new DTOUsuario();
        }

        public virtual int idEmpresa { get; set; }
        public virtual int idUsuario { get; set; }
        public virtual string NIT { get; set; }
        public virtual string razonSocial { get; set; }
        public virtual string telefono { get; set; }
        public virtual string nombreResponsable { get; set; }


        public DTOUsuario usuario;

    }
}

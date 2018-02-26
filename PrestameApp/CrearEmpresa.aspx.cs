using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

using DTO;
using DAO;

namespace PrestameApp
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        private DTOEmpresa _DTOEmpresa = new DTOEmpresa();

        private DAOEmpresa _DAOEmpresa = new DAOEmpresa();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnGuardarEmpresa_Click(object sender, EventArgs e)
        {

            _DTOEmpresa.NIT = txtNIT.Text;
            _DTOEmpresa.razonSocial = txtRazonSocial.Text;
            _DTOEmpresa.telefono = txtTelefono.Text;
            _DTOEmpresa.nombreResponsable = txtNombreResponsable.Text;

            _DTOEmpresa.usuario.correoElectronico = txtCorreoElectronico.Text;
            _DTOEmpresa.usuario.usuario = txtUsuario.Text;
            _DTOEmpresa.usuario.contrasena = txtContrasena.Text;
            _DTOEmpresa.usuario.idRol = (int)Roles.Empresa;


            DataTable _dt = _DAOEmpresa.crud_tblEmpresaInsert(_DTOEmpresa);

            if (_dt.Rows.Count > 0)
            {
                ClientScript.RegisterStartupScript( this.GetType(), @"AlertaSuccess", "window.onload = alertaExito('La empresa fue almacenada correctamente');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript( this.GetType(), @"AlertaError", "window.onload = alertaError('Ocurrió un error al intentar almacenar la empresa');", true);
            }

        }

        protected void txtCorreoElectronico_TextChanged(object sender, EventArgs e)
        {
            string correoElectronico = txtCorreoElectronico.Text;

            DataTable _dt = _DAOEmpresa.crud_tblUsuarioExisteCorreoElectronico(correoElectronico);

            if (_dt.Rows.Count > 0)
            {
                lblErrorCorreoElectronico.Visible = true;
                lblErrorCorreoElectronico.Text = "El correo electrónico ya existe, por favor intente con otro.";
            }
            else
            {
                lblErrorCorreoElectronico.Visible = false;
                lblErrorCorreoElectronico.Text = "";
            }
        }
    }
}
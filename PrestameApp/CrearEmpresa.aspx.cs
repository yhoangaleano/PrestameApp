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
            if (!IsPostBack)
            {
                txtNIT.Attributes.Add("onblur", "ValidatorOnChange(event);");
                txtRazonSocial.Attributes.Add("onblur", "ValidatorOnChange(event);");
                txtTelefono.Attributes.Add("onblur", "ValidatorOnChange(event);");
                txtNombreResponsable.Attributes.Add("onblur", "ValidatorOnChange(event);");
                txtCorreoElectronico.Attributes.Add("onblur", "ValidatorOnChange(event);");
                txtUsuario.Attributes.Add("onblur", "ValidatorOnChange(event);");
                txtContrasena.Attributes.Add("onblur", "ValidatorOnChange(event);");
                txtConfirmarContrasena.Attributes.Add("onblur", "ValidatorOnChange(event);");

            }
        }

        private bool validarFormulario()
        {
            if (this.IsValid)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void btnGuardarEmpresa_Click(object sender, EventArgs e)
        {
            if (this.validarFormulario() == true)
            {
                
                _DTOEmpresa.NIT = txtNIT.Text;
                _DTOEmpresa.razonSocial = txtRazonSocial.Text;
                _DTOEmpresa.telefono = txtTelefono.Text;
                _DTOEmpresa.nombreResponsable = txtNombreResponsable.Text;

                _DTOEmpresa.usuario.correoElectronico = txtCorreoElectronico.Text;
                _DTOEmpresa.usuario.usuario = txtUsuario.Text;
                _DTOEmpresa.usuario.contrasena = txtContrasena.Text;
                _DTOEmpresa.usuario.idRol = (int)Roles.Empresa;

                _DTOEmpresa.usuario.estado = (byte)EstadoUsuario.Activo;


                DataTable _dt = _DAOEmpresa.crud_tblEmpresaInsert(_DTOEmpresa);

                if (_dt.Rows.Count > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), @"AlertaSuccess", "window.onload = alertaExito('La empresa fue almacenada correctamente');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), @"AlertaError", "window.onload = alertaError('Ocurrió un error al intentar almacenar la empresa');", true);
                }

            }

        }

        protected void txtNITUnique_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string NIT = args.Value;

            DataTable _dt = _DAOEmpresa.crud_tblEmpresaExisteNIT(NIT);

            if (_dt.Rows.Count > 0)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void txtCorreoElectronicoUnique_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string correoElectronico = args.Value;

            DataTable _dt = _DAOEmpresa.crud_tblUsuarioExisteCorreoElectronico(correoElectronico);

            if (_dt.Rows.Count > 0)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void txtUsuarioUnique_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string usuario = args.Value;

            DataTable _dt = _DAOEmpresa.crud_tblUsuarioExisteUsuario(usuario);

            if (_dt.Rows.Count > 0)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}
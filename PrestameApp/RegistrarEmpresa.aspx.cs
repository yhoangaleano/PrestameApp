using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net.Mail;
using System.Configuration;

using System.Data;

using DTO;
using DAO;

namespace PrestameApp
{
    public partial class RegistrarEmpresa : System.Web.UI.Page
    {

        private DTOEmpresa _DTOEmpresa = new DTOEmpresa();

        private DAOEmpresa _DAOEmpresa = new DAOEmpresa();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarme_Click(object sender, EventArgs e)
        {
            _DTOEmpresa.NIT = txtNIT.Text;
            _DTOEmpresa.razonSocial = txtRazonSocial.Text;
            _DTOEmpresa.telefono = txtTelefono.Text;
            _DTOEmpresa.nombreResponsable = txtNombreResponsable.Text;

            _DTOEmpresa.usuario.correoElectronico = txtCorreoElectronico.Text;
            _DTOEmpresa.usuario.usuario = txtUsuario.Text;
            _DTOEmpresa.usuario.contrasena = txtContrasena.Text;
            _DTOEmpresa.usuario.idRol = (int)Roles.Empresa;

            _DTOEmpresa.usuario.estado = (byte)EstadoUsuario.Pendiente;


            DataTable _dt = _DAOEmpresa.crud_tblEmpresaInsert(_DTOEmpresa);

            if (_dt.Rows.Count > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), @"AlertaSuccess", "window.onload = alertaExito('La empresa fue almacenada correctamente');", true);
                this.enviarCorreoElectronico(_DTOEmpresa.usuario.correoElectronico, _DTOEmpresa.razonSocial);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), @"AlertaError", "window.onload = alertaError('Ocurrió un error al intentar almacenar la empresa');", true);
            }
        }

        private bool enviarCorreoElectronico(string correoElectronico, string razonSocial)
        {
            MailMessage mensaje = new MailMessage();
            mensaje.To.Add(correoElectronico);
            mensaje.From = new MailAddress("yhoangaleano@gmail.com", "Yhoan Galeano - Instructor SENA", System.Text.Encoding.UTF8);
            mensaje.Subject = "Bienvenido a PrestameApp!!!";
            mensaje.SubjectEncoding = System.Text.Encoding.UTF8;
            mensaje.Body = "Hola <b>" + razonSocial + "</b>, es un placer tenerte en nuestra aplicación.";
            mensaje.BodyEncoding = System.Text.Encoding.UTF8;
            mensaje.IsBodyHtml = true;
            mensaje.Priority = MailPriority.High;

            SmtpClient cliente = new SmtpClient();

            string contrasenaCorreo = ConfigurationManager.AppSettings["contrasenaCorreo"].ToString();

            cliente.Credentials = new System.Net.NetworkCredential("yhoangaleano@gmail.com", contrasenaCorreo);
            cliente.Port = 587;
            cliente.Host = "smtp.gmail.com";
            cliente.EnableSsl = true; //Es obligatorio cuando trabajamos con gmail

            try
            {
                cliente.Send(mensaje);
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Console.ReadLine();
                return false;
            }

        }
    }
}
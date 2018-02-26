using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using DTO;

namespace DAO
{
    public class DAOEmpresa
    {

        private SqlConnection conexion;
        private SqlCommand comando;
        private SqlDataAdapter adaptador;

        private string cadenaConexion = ConfigurationManager.ConnectionStrings["prestameBD"].ConnectionString;

        public DataTable crud_tblEmpresaInsert(DTOEmpresa _DTOEmpresa)
        {
            DataTable _dt = new DataTable();

            using (conexion = new SqlConnection(cadenaConexion))
            {

                try
                {
                    conexion.Open();
                    comando = new SqlCommand("crud_tblEmpresaInsert", conexion);
                    comando.CommandType = CommandType.StoredProcedure;

                    comando.Parameters.AddWithValue("@NIT", _DTOEmpresa.NIT);
                    comando.Parameters.AddWithValue("@razonSocial", _DTOEmpresa.razonSocial);
                    comando.Parameters.AddWithValue("@telefono", _DTOEmpresa.telefono);
                    comando.Parameters.AddWithValue("@nombreResponsable", _DTOEmpresa.nombreResponsable);
                    comando.Parameters.AddWithValue("@correoElectronico", _DTOEmpresa.usuario.correoElectronico);
                    comando.Parameters.AddWithValue("@usuario", _DTOEmpresa.usuario.usuario);
                    comando.Parameters.AddWithValue("@contrasena", _DTOEmpresa.usuario.contrasena);
                    comando.Parameters.AddWithValue("@idRol", _DTOEmpresa.usuario.idRol);

                    adaptador = new SqlDataAdapter(comando);
                    adaptador.Fill(_dt); // El fill adapta los datos mque tiene el "adaptador" para que se convierta en un DataTable o un DataSet

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    throw ex;
                }

                finally
                {
                    conexion.Close();
                }

            }

            return _dt;

        }

        public DataTable crud_tblUsuarioExisteCorreoElectronico(string correoElectronico)
        {
            DataTable _dt = new DataTable();

            using (conexion = new SqlConnection(cadenaConexion))
            {

                try
                {
                    conexion.Open();
                    comando = new SqlCommand("crud_tblUsuarioExisteCorreoElectronico", conexion);
                    comando.CommandType = CommandType.StoredProcedure;

                    comando.Parameters.AddWithValue("@correoElectronico", correoElectronico);


                    adaptador = new SqlDataAdapter(comando);
                    adaptador.Fill(_dt); // El fill adapta los datos mque tiene el "adaptador" para que se convierta en un DataTable o un DataSet

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    throw ex;
                }

                finally
                {
                    conexion.Close();
                }

            }

            return _dt;

        }
        

    }
}

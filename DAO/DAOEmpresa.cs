using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DAO
{
    public class DAOEmpresa
    {

        private SqlConnection conexion;
        private SqlCommand comando;
        private string cadenaConexion = ConfigurationManager.ConnectionStrings["prestameDB"].ConnectionString;

    }
}

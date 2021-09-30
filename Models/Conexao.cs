using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace Metalurgica.Models
{
    public class Conexao
    {
        public SqlConnection acesso;
        public Conexao()
        {
            acesso = new SqlConnection(ConfigurationManager.AppSettings["acessoDB"]);

        }
    }
}
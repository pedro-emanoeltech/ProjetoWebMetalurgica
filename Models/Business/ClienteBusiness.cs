using Metalurgica.Models.Mapeamento;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dapper;

namespace Metalurgica.Models.Business
{
    public class ClienteBusiness : Conexao
    {
        public List<Cliente> Listar()
        {
            return acesso.Query<Cliente>("SELECT *FROM Clientes order by Nome").ToList();
        }

    }
}
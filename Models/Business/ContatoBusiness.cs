using Metalurgica.Models.Mapeamento;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dapper;

namespace Metalurgica.Models.Business
{
    public class ContatoBusiness : Conexao
    {
        public List<Contato> Listar()
        {
            return acesso.Query<Contato>("SELECT *FROM Contatos order by Nome").ToList();
        }

    }
}
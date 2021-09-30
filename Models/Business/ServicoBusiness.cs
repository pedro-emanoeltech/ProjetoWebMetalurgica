using Metalurgica.Models.Mapeamento;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dapper;

namespace Metalurgica.Models.Business
{
    public class ServicoBusiness : Conexao
    {
        public List<Servico> Listar()
        {
            return acesso.Query<Servico>("SELECT *FROM Servicos order by NomeServico").ToList();
        }

    }
}
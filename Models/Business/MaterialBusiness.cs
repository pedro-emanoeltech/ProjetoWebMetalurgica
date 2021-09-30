using Metalurgica.Models.Mapeamento;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dapper;

namespace Metalurgica.Models.Business
{
    public class MaterialBusiness : Conexao
    {
       
        public List<Material> Listar()
        {
            return acesso.Query<Material>("SELECT *FROM Materiais order by ID").ToList();

        }
    }
}
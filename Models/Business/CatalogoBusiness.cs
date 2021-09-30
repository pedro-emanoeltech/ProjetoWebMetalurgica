using Metalurgica.Models.Mapeamento;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dapper;

namespace Metalurgica.Models.Business
{
    public class CatalogoBusiness : Conexao
    {
        public List<Catalogo> Listar()
        {
            return acesso.Query<Catalogo>("select  *from Catalogos c left join Materiais m on c.IDMaterial = m.ID").ToList();
        }


        public List<Catalogo> ListarRelacoes()
        {
            var listarelacoes = acesso.Query<Catalogo, Material, Catalogo>("select  *from Catalogos c inner join Materiais m on c.IDMaterial = m.ID order by c.Nome",
                (c, m) => { c.Material = m; return c; }, new { }, splitOn: "ID").ToList();

            return listarelacoes;
        }

        public Catalogo Exibir(int id)
        {
            var listarelacoes = acesso.Query<Catalogo, Material, Catalogo>("select  *from Catalogos c inner join Materiais m on c.IDMaterial = m.ID where c.ID=@wID  order by c.Nome ",
                (c, m) => { c.Material = m; return c; }, new { wID = id  }, splitOn: "ID").SingleOrDefault();

            return listarelacoes;

        }

        public bool Deletar(int id)
        {
            try
            {
                return acesso.Execute("Delete *FROM Catalogos where id =@pID", new { pID = id }) == 1;

            }
            catch
            {
                return false;

            }

        }
    }
}
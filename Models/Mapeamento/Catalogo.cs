using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Metalurgica.Models.Mapeamento
{
    public class Catalogo
    {
        public int ID { get; set; }
        public string Nome { get; set; }
        public string Setor { get; set; }
        public string Imagem { get; set; }
        public string Detalhes { get; set; }
        public int IDMaterial { get; set; }

        public Material Material { get; set; }


    }
}
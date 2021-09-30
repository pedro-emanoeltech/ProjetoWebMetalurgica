using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Metalurgica.Models.Mapeamento
{
    public class Cliente
    {
        public int ID { get; set; }
        public string Nome { get; set; }
        public float QuantidadeClientes { get; set; }
        public string Cidade { get; set; }

        public string Estado { get; set; }

        public string Imagem { get; set; }
    }
}
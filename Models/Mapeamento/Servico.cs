using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Metalurgica.Models.Mapeamento
{
    public class Servico
    {
        public int ID { get; set; }
        public string NomeServico { get; set; }

        public string TipoServico { get; set; }

        public string PrazoServico { get; set; }

    }
}
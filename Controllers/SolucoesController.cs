using Metalurgica.Models.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Metalurgica.Models.Mapeamento;

namespace Metalurgica.Controllers
{
    public class SolucoesController : Controller
    {
        // GET: Solucoes
        public ActionResult Index()
        {     
            var material = new MaterialBusiness().Listar();
            return View(material);
        }

        
    }
}
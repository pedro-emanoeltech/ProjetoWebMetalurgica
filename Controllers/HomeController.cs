using Metalurgica.Models.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Metalurgica.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var lista = new CatalogoBusiness().ListarRelacoes();
            return View(lista);
        }

    }
      
}
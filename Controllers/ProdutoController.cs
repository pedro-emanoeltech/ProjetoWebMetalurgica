using Metalurgica.Models.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Metalurgica.Controllers
{
    public class ProdutoController : Controller
    {

        public ActionResult Index()
        {
            var lista = new CatalogoBusiness().ListarRelacoes();
            return View(lista);
        }


        

        public ActionResult Details(int id)
        {
            var Catalogo = new CatalogoBusiness().Exibir(id);
            return View(Catalogo);

        }

        public ActionResult DeleteFalha()
        {

            return View();

        }
        public ActionResult Delete(int id)
        {
            if (new CatalogoBusiness().Deletar(id))

                return RedirectToAction("Index");

            else
                return RedirectToAction("DeleteFalha");

        }

        public ActionResult Edit(int id)
        {
            var Catalogo = new CatalogoBusiness().Exibir(id);
            return View(Catalogo);

        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Eredar.Controllers
{
    public class PublicController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.NazivProjekta = "EREDAR";
            return View();
        }

        public ActionResult Kontakt()
        {
            ViewBag.NazivProjekta = "EREDAR";
            return View();
        }

        public ActionResult Prijava()
        {
            ViewBag.NazivProjekta = "EREDAR";
            return View();
        }

    }
}
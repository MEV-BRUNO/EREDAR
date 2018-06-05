using Eredar.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Eredar.Controllers
{
    public class LOGINController : Controller
    {
        // GET: LOGIN
        public ActionResult Index()
        {
            return View();
        }
        // GET: Account/Login
        [HttpGet]
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        // POST: Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(PrijavaModel model, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                return View(model);
            }
            return View(model);
        }


        // GET: Account/Login
        [HttpGet]
        [AllowAnonymous]
        public ActionResult Registracija()
        {

            return View();
        }

        // POST: Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Registracija(RegistracijaModel model)
        {
            if (ModelState.IsValid)
            {
                return View(model);
            }
            return View(model);
        }

        // GET: Account/Login
        [HttpGet]
        [AllowAnonymous]
        public ActionResult ZaboravljenaLozinka()
        {

            return View();
        }

        // POST: Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult ZaboravljenaLozinka(ZaboravljenaLozinkaModel model)
        {
            if (ModelState.IsValid)
            {
                return View(model);
            }
            return View(model);
        }



    }
}
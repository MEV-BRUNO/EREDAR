using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Eredar.Models;

namespace Eredar.Controllers
{
    public class DetaljiPrijaveController : Controller
    {
        // GET: DetaljiPrijave
        public ActionResult DetaljiPrijave()
        {

            Prijava naslov = new Prijava();

            return View(naslov);
        }
    }
}
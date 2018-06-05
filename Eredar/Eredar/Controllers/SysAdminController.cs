using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Eredar.Controllers
{
    public class SysAdminController : Controller
    {
        // GET: Index
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult PregledPrijava()
        {
            return PartialView();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using BugTrackerMVC.Models;

namespace BugTrackerMVC.Controllers
{
    [HandleError]
    public class AccountController : Controller
    {
        public ActionResult LogOn()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LogOn(LogOnModel model, string returnUrl)
        {
            return View();
        }

        public ActionResult LogOff()
        {
            return RedirectToAction("Index", "Home");
        }
    }
}
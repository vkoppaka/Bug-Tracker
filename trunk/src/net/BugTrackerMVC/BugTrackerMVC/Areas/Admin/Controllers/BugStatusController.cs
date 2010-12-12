using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DomainModel.Repository;
using DomainModel.Database;

namespace BugTrackerMVC.Areas.Admin.Controllers
{
    public class BugStatusController : Controller
    {
        private readonly BugStatusRepository repository = new BugStatusRepository();

        public ActionResult Index()
        {
            IList<BugStatus> bugStatusList = repository.GetAll();
            return View(bugStatusList);
        }

    }
}

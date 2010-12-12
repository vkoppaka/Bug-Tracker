using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace BugTrackerMVC.Models
{
    public class LogOnModel
    {
        [Required(ErrorMessage="(*)")]
        [DisplayName("User name")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "(*)")]
        [DataType(DataType.Password)]
        [DisplayName("Password")]
        public string Password { get; set; }

        [DisplayName("Remember me?")]
        public bool RememberMe { get; set; }
    }
}

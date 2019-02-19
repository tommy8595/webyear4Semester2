using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using web.Models;

namespace web.Controllers
{
    public class StudentSubjectController : Controller
    {
        // GET: StudentSubject
        public ActionResult Subject()
        {
           
            return View();
        }
    }
}
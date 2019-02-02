using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace webasp.Controllers
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
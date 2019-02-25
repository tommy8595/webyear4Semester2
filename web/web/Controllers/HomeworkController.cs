using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using web.Models;

namespace web.Controllers
{
    public class HomeworkController : Controller
    {
        private web_projectEntities1 db = new web_projectEntities1();
        // GET: Homework
        public ActionResult Index()
        {
           List<tbl_subject> sub = new List<tbl_subject>();
            sub = db.tbl_subject.ToList();
            return View(sub);
        }
    }
}
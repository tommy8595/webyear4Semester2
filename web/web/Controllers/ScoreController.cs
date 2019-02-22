using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using web.Models;

namespace web.Controllers
{
    public class ScoreController : Controller
    {
        private web_projectEntities1 db = new web_projectEntities1();

        // GET: Score
        public ActionResult Index()
        {
            var tbl_score = db.tbl_score.Include(t => t.tbl_student).Include(t => t.tbl_teacher);
            return View(tbl_score.ToList());
        }

    }
}

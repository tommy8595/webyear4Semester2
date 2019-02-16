using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using web.Models;

namespace web.Controllers
{
    public class ScheduleController : Controller
    {
        private web_projectEntities db = new web_projectEntities();
        // GET: Schedule
        public ActionResult Schedule()
        {
            int a = Convert.ToInt32(Session["CLASS_ID"].ToString());
            var tbl_schedule = db.tbl_schdedule.Where(t => t.class_id == a).OrderBy(t=>t.sch_days).ThenBy(t=>t.sch_times).ToList();
            return View(tbl_schedule);
        }
        public ActionResult Index(int? id=1)
        {
                 return View();
        }
    }
}
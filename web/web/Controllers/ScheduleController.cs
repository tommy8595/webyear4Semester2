
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
            int a = 1;
            try
            {
                a = Convert.ToInt32(Session["CLASS_ID"].ToString());
            }
            catch (NullReferenceException e)
            {
                Response.Write(e.Message);
            }
            //session
            var tbl_schedule = db.tbl_schdedule.Where(t => t.class_id == a).OrderBy(t => t.sch_days).ThenBy(t => t.sch_times).ToList();
            foreach (var item in tbl_schedule)
            {
                if (Session[item.tbl_subject.sub_name.ToString()] == null)
                    Session.Add(item.tbl_subject.sub_name.ToString(), item.tbl_subject.sub_id);
            }

            return View(tbl_schedule);


        }
        public ActionResult Index(int? id = 1)
        {
            return View();
        }
    }
}
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
    public class tbl_schdeduleController : Controller
    {
        private web_projectEntities db = new web_projectEntities();

        // GET: tbl_schdedule
        public ActionResult Index()
        {
            var tbl_schdedule = db.tbl_schdedule.Include(t => t.tbl_class).Include(t => t.tbl_subject).Include(t => t.tbl_teacher).Include(t => t.tbl_day).Include(t => t.tbl_time);
            return View(tbl_schdedule.ToList());
        }

        // GET: tbl_schdedule/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_schdedule tbl_schdedule = db.tbl_schdedule.Find(id);
            if (tbl_schdedule == null)
            {
                return HttpNotFound();
            }
            return View(tbl_schdedule);
        }

        // GET: tbl_schdedule/Create
        public ActionResult Create()
        {
            ViewBag.class_id = new SelectList(db.tbl_class, "class_id", "class_name");
            ViewBag.sub_id = new SelectList(db.tbl_subject, "sub_id", "sub_name");
            ViewBag.tea_id = new SelectList(db.tbl_teacher, "tea_id", "tea_name");
            ViewBag.sch_days = new SelectList(db.tbl_day, "day_id", "day");
            ViewBag.sch_times = new SelectList(db.tbl_time, "time_id", "times");
            return View();
        }

        // POST: tbl_schdedule/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "sub_id,class_id,tea_id,sch_id,sch_days,sch_times")] tbl_schdedule tbl_schdedule)
        {
            if (ModelState.IsValid)
            {
                db.tbl_schdedule.Add(tbl_schdedule);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.class_id = new SelectList(db.tbl_class, "class_id", "class_name", tbl_schdedule.class_id);
            ViewBag.sub_id = new SelectList(db.tbl_subject, "sub_id", "sub_name", tbl_schdedule.sub_id);
            ViewBag.tea_id = new SelectList(db.tbl_teacher, "tea_id", "tea_name", tbl_schdedule.tea_id);
            ViewBag.sch_days = new SelectList(db.tbl_day, "day_id", "day", tbl_schdedule.sch_days);
            ViewBag.sch_times = new SelectList(db.tbl_time, "time_id", "times", tbl_schdedule.sch_times);
            return View(tbl_schdedule);
        }

        // GET: tbl_schdedule/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_schdedule tbl_schdedule = db.tbl_schdedule.Find(id);
            if (tbl_schdedule == null)
            {
                return HttpNotFound();
            }
            ViewBag.class_id = new SelectList(db.tbl_class, "class_id", "class_name", tbl_schdedule.class_id);
            ViewBag.sub_id = new SelectList(db.tbl_subject, "sub_id", "sub_name", tbl_schdedule.sub_id);
            ViewBag.tea_id = new SelectList(db.tbl_teacher, "tea_id", "tea_name", tbl_schdedule.tea_id);
            ViewBag.sch_days = new SelectList(db.tbl_day, "day_id", "day", tbl_schdedule.sch_days);
            ViewBag.sch_times = new SelectList(db.tbl_time, "time_id", "times", tbl_schdedule.sch_times);
            return View(tbl_schdedule);
        }

        // POST: tbl_schdedule/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "sub_id,class_id,tea_id,sch_id,sch_days,sch_times")] tbl_schdedule tbl_schdedule)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbl_schdedule).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.class_id = new SelectList(db.tbl_class, "class_id", "class_name", tbl_schdedule.class_id);
            ViewBag.sub_id = new SelectList(db.tbl_subject, "sub_id", "sub_name", tbl_schdedule.sub_id);
            ViewBag.tea_id = new SelectList(db.tbl_teacher, "tea_id", "tea_name", tbl_schdedule.tea_id);
            ViewBag.sch_days = new SelectList(db.tbl_day, "day_id", "day", tbl_schdedule.sch_days);
            ViewBag.sch_times = new SelectList(db.tbl_time, "time_id", "times", tbl_schdedule.sch_times);
            return View(tbl_schdedule);
        }

        // GET: tbl_schdedule/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_schdedule tbl_schdedule = db.tbl_schdedule.Find(id);
            if (tbl_schdedule == null)
            {
                return HttpNotFound();
            }
            return View(tbl_schdedule);
        }

        // POST: tbl_schdedule/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_schdedule tbl_schdedule = db.tbl_schdedule.Find(id);
            db.tbl_schdedule.Remove(tbl_schdedule);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}

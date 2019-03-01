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
    public class AttandanceController : Controller
    {
        private web_projectEntities db = new web_projectEntities();
        [HttpGet]
        // GET: Attandance
        public ActionResult Index(int id = 1)
        {
            int a = int.Parse(Session["STU_ID"].ToString());
            var tbl_attandance = db.fn_get_att1(a, id);
            return View(tbl_attandance.ToList());
        }

        // GET: Attandance/Details/5
        public ActionResult Details(int? id = 1)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_attandance tbl_attandance = db.tbl_attandance.Find(id);
            if (tbl_attandance == null)
            {
                return HttpNotFound();
            }
            return View(tbl_attandance);
        }

        // GET: Attandance/Create
        public ActionResult Create()
        {
            ViewBag.stu_id = new SelectList(db.tbl_student, "stu_id", "stu_name");
            ViewBag.sub_id = new SelectList(db.tbl_subject, "sub_id", "sub_name");
            ViewBag.tea_id = new SelectList(db.tbl_teacher, "tea_id", "tea_email");
            return View();
        }

        // POST: Attandance/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "sub_id,stu_id,tea_id,att_date,att_type,att_description")] tbl_attandance tbl_attandance)
        {
            if (ModelState.IsValid)
            {
                db.tbl_attandance.Add(tbl_attandance);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.stu_id = new SelectList(db.tbl_student, "stu_id", "stu_name", tbl_attandance.stu_id);
            ViewBag.sub_id = new SelectList(db.tbl_subject, "sub_id", "sub_name", tbl_attandance.sub_id);
            ViewBag.tea_id = new SelectList(db.tbl_teacher, "tea_id", "tea_email", tbl_attandance.tea_id);
            return View(tbl_attandance);
        }

        // GET: Attandance/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_attandance tbl_attandance = db.tbl_attandance.Find(id);
            if (tbl_attandance == null)
            {
                return HttpNotFound();
            }
            ViewBag.stu_id = new SelectList(db.tbl_student, "stu_id", "stu_name", tbl_attandance.stu_id);
            ViewBag.sub_id = new SelectList(db.tbl_subject, "sub_id", "sub_name", tbl_attandance.sub_id);
            ViewBag.tea_id = new SelectList(db.tbl_teacher, "tea_id", "tea_email", tbl_attandance.tea_id);
            return View(tbl_attandance);
        }

        // POST: Attandance/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "sub_id,stu_id,tea_id,att_date,att_type,att_description")] tbl_attandance tbl_attandance)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbl_attandance).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.stu_id = new SelectList(db.tbl_student, "stu_id", "stu_name", tbl_attandance.stu_id);
            ViewBag.sub_id = new SelectList(db.tbl_subject, "sub_id", "sub_name", tbl_attandance.sub_id);
            ViewBag.tea_id = new SelectList(db.tbl_teacher, "tea_id", "tea_email", tbl_attandance.tea_id);
            return View(tbl_attandance);
        }

        // GET: Attandance/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_attandance tbl_attandance = db.tbl_attandance.Find(id);
            if (tbl_attandance == null)
            {
                return HttpNotFound();
            }
            return View(tbl_attandance);
        }

        // POST: Attandance/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_attandance tbl_attandance = db.tbl_attandance.Find(id);
            db.tbl_attandance.Remove(tbl_attandance);
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

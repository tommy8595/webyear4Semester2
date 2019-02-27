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
    public class tbl_scoreController : Controller
    {
        private web_projectEntities db = new web_projectEntities();

        // GET: tbl_score
        public ActionResult Index()
        {
            var tbl_score = db.tbl_score.Include(t => t.tbl_student).Include(t => t.tbl_teacher);
            return View(tbl_score.ToList());
        }

        // GET: tbl_score/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_score tbl_score = db.tbl_score.Find(id);
            if (tbl_score == null)
            {
                return HttpNotFound();
            }
            return View(tbl_score);
        }

        // GET: tbl_score/Create
        public ActionResult Create()
        {
            ViewBag.stu_id = new SelectList(db.tbl_student, "stu_id", "stu_name");
            ViewBag.tea_id = new SelectList(db.tbl_teacher, "tea_id", "tea_email");
            return View();
        }

        // POST: tbl_score/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "stu_id,tea_id,attandance,homework,assignment,final_exam,score_id1")] tbl_score tbl_score)
        {
            if (ModelState.IsValid)
            {
                db.tbl_score.Add(tbl_score);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.stu_id = new SelectList(db.tbl_student, "stu_id", "stu_name", tbl_score.stu_id);
            ViewBag.tea_id = new SelectList(db.tbl_teacher, "tea_id", "tea_email", tbl_score.tea_id);
            return View(tbl_score);
        }

        // GET: tbl_score/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_score tbl_score = db.tbl_score.Find(id);
            if (tbl_score == null)
            {
                return HttpNotFound();
            }
            ViewBag.stu_id = new SelectList(db.tbl_student, "stu_id", "stu_name", tbl_score.stu_id);
            ViewBag.tea_id = new SelectList(db.tbl_teacher, "tea_id", "tea_email", tbl_score.tea_id);
            return View(tbl_score);
        }

        // POST: tbl_score/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "stu_id,tea_id,attandance,homework,assignment,final_exam,score_id1")] tbl_score tbl_score)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbl_score).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.stu_id = new SelectList(db.tbl_student, "stu_id", "stu_name", tbl_score.stu_id);
            ViewBag.tea_id = new SelectList(db.tbl_teacher, "tea_id", "tea_email", tbl_score.tea_id);
            return View(tbl_score);
        }

        // GET: tbl_score/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_score tbl_score = db.tbl_score.Find(id);
            if (tbl_score == null)
            {
                return HttpNotFound();
            }
            return View(tbl_score);
        }

        // POST: tbl_score/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_score tbl_score = db.tbl_score.Find(id);
            db.tbl_score.Remove(tbl_score);
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

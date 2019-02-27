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
        private web_projectEntities db = new web_projectEntities();
        IEnumerable<tbl_score> scores = null;
        tbl_score score = new tbl_score();

        // GET: Score
        public ActionResult Index()
        {
            //var tbl_score = db.tbl_score.Include(t => t.tbl_student).Include(t => t.tbl_teacher);
            try
            {
                var _queryScore = from sc in db.tbl_score.ToList() join st in db.tbl_student.ToList() on sc.stu_id equals st.stu_id where sc.stu_id == (int)Session["STU_ID"] && sc.tbl_teacher.tea_id == (int)Session["ooad"] select sc;
                scores = _queryScore.ToList();
                for (int i = 0; i < scores.Count(); i++)
                {
                    scores.ElementAt(i).attandance = 0;
                    scores.ElementAt(i).assignment = 0;
                    scores.ElementAt(i).homework = 0;
                    scores.ElementAt(i).final_exam = 0;
                }
                return View(scores);
            }
            catch (Exception)
            {
                //Initialize when schedule ain't set;
                score.attandance = 0;
                score.assignment = 0;
                score.homework = 0;
                score.final_exam = 0;
                List<tbl_score> scores = new List<tbl_score>();
                scores.Add(score);
                return View("Index", scores);
            }
        }
        public ActionResult OOAD()
        {
            try
            {
                var _queryScore = from sc in db.tbl_score.ToList() join st in db.tbl_student.ToList() on sc.stu_id equals st.stu_id where sc.stu_id == (int)Session["STU_ID"] && sc.tbl_teacher.tea_id == (int)Session["ooad"] select sc;
                scores = _queryScore.ToList();
                return View("Index", scores);
            }
            catch(Exception)
            {
                //Initialize when schedule ain't set;
                score.attandance = 0;
                score.assignment = 0;
                score.homework = 0;
                score.final_exam = 0;
                List<tbl_score> scores = new List<tbl_score>();
                scores.Add(score);
                return View("Index", scores);
            }
        }
        public ActionResult WEB()
        {
            try
            {
                var _queryScore = from sc in db.tbl_score.ToList() join st in db.tbl_student.ToList() on sc.stu_id equals st.stu_id where sc.stu_id == (int)Session["STU_ID"] && sc.tbl_teacher.tea_id == (int)Session["web"] select sc;
                scores = _queryScore.ToList();
                return View("Index", scores);
            }
            catch (Exception)
            {
                //Initialize when schedule ain't set;
                score.attandance = 0;
                score.assignment = 0;
                score.homework = 0;
                score.final_exam = 0;
                List<tbl_score> scores = new List<tbl_score>();
                scores.Add(score);
                return View("Index", scores);
            }
        }
        public ActionResult SE()
        {
            try
            {
                var _queryScore = from sc in db.tbl_score.ToList() join st in db.tbl_student.ToList() on sc.stu_id equals st.stu_id where sc.stu_id == (int)Session["STU_ID"] && sc.tbl_teacher.tea_id == (int)Session["se"] select sc;
                scores = _queryScore.ToList();
                return View("Index", scores);
            }
            catch(Exception)
            {
                //Initialize when schedule ain't set;
                score.attandance = 0;
                score.assignment = 0;
                score.homework = 0;
                score.final_exam = 0;
                List<tbl_score> scores = new List<tbl_score>();
                scores.Add(score);
                return View("Index", scores);
            }
        }
        public ActionResult Linux()
        {
            try
            {
                var _queryScore = from sc in db.tbl_score.ToList() join st in db.tbl_student.ToList() on sc.stu_id equals st.stu_id where sc.stu_id == (int)Session["STU_ID"] && sc.tbl_teacher.tea_id == (int)Session["linux"] select sc;
                scores = _queryScore.ToList();
                return View("Index", scores);
            }
            catch (Exception)
            {
                //Initialize when schedule ain't set;
                score.attandance = 0;
                score.assignment = 0;
                score.homework = 0;
                score.final_exam = 0;
                List<tbl_score> scores = new List<tbl_score>();
                scores.Add(score);
                return View("Index", scores);
            }
        }
        public ActionResult MIS()
        {
            try
            {
                var _queryScore = from sc in db.tbl_score.ToList() join st in db.tbl_student.ToList() on sc.stu_id equals st.stu_id where sc.stu_id == (int)Session["STU_ID"] && sc.tbl_teacher.tea_id == (int)Session["mis"] select sc;
                scores = _queryScore.ToList();
                return View("Index", scores);
            }
            catch (Exception)
            {
                //Initialize when schedule ain't set;
                score.attandance = 0;
                score.assignment = 0;
                score.homework = 0;
                score.final_exam = 0;
                List<tbl_score> scores = new List<tbl_score>();
                scores.Add(score);
                return View("Index", scores);
            }
        }
    }
}

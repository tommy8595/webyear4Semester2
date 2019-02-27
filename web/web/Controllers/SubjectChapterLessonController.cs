using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using web.Models;
using System.Data.SqlClient;
using System.Data;

namespace web.Controllers
{
    
    public class SubjectChapterLessonController : Controller
    {
        private web_projectEntities db = new web_projectEntities();
        // GET: Lesson
        public ActionResult SCL(int subject_id=1, int teacher_id=2)
        {
            string q = "Data Source=.;Initial Catalog=web_project;Integrated Security=True";
            SqlConnection con = new SqlConnection(q);
            con.Open();
            string qu = "select * from dbo.fn_get_chapter_lesson(" + subject_id + "," + teacher_id + ")";
            SqlDataAdapter data = new SqlDataAdapter(qu, con);
            DataTable dt = new DataTable();
            data.Fill(dt);
            qu = "select * from tbl_subject where sub_id="+subject_id;
            data = new SqlDataAdapter(qu, con);
            data.Fill(dt);
            ViewBag.sub_description = dt.Rows[dt.Rows.Count - 1]["sub_description"].ToString();

            qu = "select * from tbl_teacher where tea_id=" + teacher_id;
            data = new SqlDataAdapter(qu, con);
            data.Fill(dt);
            ViewBag.teacher_description = dt.Rows[dt.Rows.Count - 1]["sub_description"].ToString();

            con.Close();
            return View(dt);
        }
    }
}
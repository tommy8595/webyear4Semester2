using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace web.Controllers
{
    public class Homework_AssignmentController : Controller
    {
        // Connect to database
        string connectString = @"Data Source=.; Initial Catalog=web_project; Integrated Security=True";
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        // GET: Homework_Assignment
        public ActionResult Index()
        {
            try
            {
                //----------Select Subject id from database---------------
                SqlConnection con = new SqlConnection(connectString);
                con.Open();
                string sub = "ooad";
                SqlDataAdapter da_sub_id = new SqlDataAdapter("select * from tbl_subject where sub_name='" + sub + "'", con);
                dt.Clear();
                da_sub_id.Fill(dt);
                int sub_id = int.Parse(dt.Rows[0][0].ToString());

                SqlDataAdapter da = new SqlDataAdapter("select h.hom_type, h.hom_description from tbl_homework h inner join tbl_homework_detail hd on h.hom_id=hd.hom_id where h.sub_id=" + sub_id + " and hd.stu_id="+ (int)Session["STU_ID"] +"", con);
                dt1.Clear();
                dt1.Columns.Add("hom_type");
                dt1.Columns.Add("hom_description");
                da.Fill(dt1);

                if (dt1.Rows.Equals(null))
                {
                    dt1.Rows.Add("homework", "We don't have homework");
                    dt1.Rows.Add("assignment", "We don't have assignment");
                }
                return View(dt1);
            }
            catch (Exception)
            {
                dt1.Rows.Add("homework", "We don't have homework");
                dt1.Rows.Add("assignment", "We don't have assignment");
                return View(dt1);
            }
        }
        public ActionResult OOAD()
        {
            try
            {
                //----------Select Subject id from database---------------
                SqlConnection con = new SqlConnection(connectString);
                con.Open();
                string sub = "ooad";
                SqlDataAdapter da_sub_id = new SqlDataAdapter("select * from tbl_subject where sub_name='" + sub + "'", con);
                dt.Clear();
                da_sub_id.Fill(dt);
                int sub_id = int.Parse(dt.Rows[0][0].ToString());

                SqlDataAdapter da = new SqlDataAdapter("select h.hom_type, h.hom_description from tbl_homework h inner join tbl_homework_detail hd on h.hom_id=hd.hom_id where h.sub_id=" + sub_id + " and hd.stu_id=" + (int)Session["STU_ID"] + "", con);
                dt1.Clear();
                dt1.Columns.Add("hom_type");
                dt1.Columns.Add("hom_description");
                da.Fill(dt1);

                if (dt1.Rows.Equals(null))
                {
                    dt1.Rows.Add("homework", "We don't have homework");
                    dt1.Rows.Add("assignment", "We don't have assignment");
                }
                return View("index", dt1);
            }
            catch (Exception)
            {
                dt1.Rows.Add("homework", "We don't have homework");
                dt1.Rows.Add("assignment", "We don't have assignment");
                return View("index", dt1);
            }
        }

        public ActionResult WEB()
        {
            try
            {
                //----------Select Subject id from database---------------
                SqlConnection con = new SqlConnection(connectString);
                con.Open();
                string sub = "web";
                SqlDataAdapter da_sub_id = new SqlDataAdapter("select * from tbl_subject where sub_name='" + sub + "'", con);
                dt.Clear();
                da_sub_id.Fill(dt);
                int sub_id = int.Parse(dt.Rows[0][0].ToString());

                SqlDataAdapter da = new SqlDataAdapter("select h.hom_type, h.hom_description from tbl_homework h inner join tbl_homework_detail hd on h.hom_id=hd.hom_id where h.sub_id=" + sub_id + " and hd.stu_id=" + (int)Session["STU_ID"] + "", con);
                dt1.Clear();
                dt1.Columns.Add("hom_type");
                dt1.Columns.Add("hom_description");
                da.Fill(dt1);

                if (dt1.Rows.Equals(null))
                {
                    dt1.Rows.Add("homework", "We don't have homework");
                    dt1.Rows.Add("assignment", "We don't have assignment");
                }
                return View("index", dt1);
            }
            catch (Exception)
            {
                dt1.Rows.Add("homework", "We don't have homework");
                dt1.Rows.Add("assignment", "We don't have assignment");
                return View("index", dt1);
            }
        }

        public ActionResult SE()
        {
            try
            {
                //----------Select Subject id from database---------------
                SqlConnection con = new SqlConnection(connectString);
                con.Open();
                string sub = "se";
                SqlDataAdapter da_sub_id = new SqlDataAdapter("select * from tbl_subject where sub_name='" + sub + "'", con);
                dt.Clear();
                da_sub_id.Fill(dt);
                int sub_id = int.Parse(dt.Rows[0][0].ToString());

                SqlDataAdapter da = new SqlDataAdapter("select h.hom_type, h.hom_description from tbl_homework h inner join tbl_homework_detail hd on h.hom_id=hd.hom_id where h.sub_id=" + sub_id + " and hd.stu_id=" + (int)Session["STU_ID"] + "", con);
                dt1.Clear();
                dt1.Columns.Add("hom_type");
                dt1.Columns.Add("hom_description");
                da.Fill(dt1);

                if (dt1.Rows.Equals(null))
                {
                    dt1.Rows.Add("homework", "We don't have homework");
                    dt1.Rows.Add("assignment", "We don't have assignment");
                }
                return View("index", dt1);
            }
            catch (Exception)
            {
                dt1.Rows.Add("homework", "We don't have homework");
                dt1.Rows.Add("assignment", "We don't have assignment");
                return View("index", dt1);
            }
        }

        public ActionResult LINUX()
        {
            try
            {
                //----------Select Subject id from database---------------
                SqlConnection con = new SqlConnection(connectString);
                con.Open();
                string sub = "linux";
                SqlDataAdapter da_sub_id = new SqlDataAdapter("select * from tbl_subject where sub_name='" + sub + "'", con);
                dt.Clear();
                da_sub_id.Fill(dt);
                int sub_id = int.Parse(dt.Rows[0][0].ToString());

                SqlDataAdapter da = new SqlDataAdapter("select h.hom_type, h.hom_description from tbl_homework h inner join tbl_homework_detail hd on h.hom_id=hd.hom_id where h.sub_id=" + sub_id + " and hd.stu_id=" + (int)Session["STU_ID"] + "", con);
                dt1.Clear();
                dt1.Columns.Add("hom_type");
                dt1.Columns.Add("hom_description");
                da.Fill(dt1);

                if (dt1.Rows.Equals(null))
                {
                    dt1.Rows.Add("homework", "We don't have homework");
                    dt1.Rows.Add("assignment", "We don't have assignment");
                }
                return View("index", dt1);
            }
            catch (Exception)
            {
                dt1.Rows.Add("homework", "We don't have homework");
                dt1.Rows.Add("assignment", "We don't have assignment");
                return View("index", dt1);
            }
        }

        public ActionResult MIS()
        {
            try
            {
                //----------Select Subject id from database---------------
                SqlConnection con = new SqlConnection(connectString);
                con.Open();
                string sub = "mis";
                SqlDataAdapter da_sub_id = new SqlDataAdapter("select * from tbl_subject where sub_name='" + sub + "'", con);
                dt.Clear();
                da_sub_id.Fill(dt);
                int sub_id = int.Parse(dt.Rows[0][0].ToString());

                SqlDataAdapter da = new SqlDataAdapter("select h.hom_type, h.hom_description from tbl_homework h inner join tbl_homework_detail hd on h.hom_id=hd.hom_id where h.sub_id=" + sub_id + " and hd.stu_id=" + (int)Session["STU_ID"] + "", con);
                dt1.Clear();
                dt1.Columns.Add("hom_type");
                dt1.Columns.Add("hom_description");
                da.Fill(dt1);

                if (dt1.Rows.Equals(null))
                {
                    dt1.Rows.Add("homework", "We don't have homework");
                    dt1.Rows.Add("assignment", "We don't have assignment");
                }
                return View("index", dt1);
            }
            catch (Exception)
            {
                dt1.Rows.Add("homework", "We don't have homework");
                dt1.Rows.Add("assignment", "We don't have assignment");
                return View("index", dt1);
            }
        }
    }

}
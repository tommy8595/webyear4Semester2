using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using web;
using web.Models;

namespace web.Controllers
{
    public class LoginController : Controller
    {
        web_projectEntities1 db = new web_projectEntities1();
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(string em, string pass)
        {
            try
            {
                var _queryUser = from u in db.tbl_user.ToList() where u.user_email.Equals(em) && u.user_psw.Equals(pass) select u;
                var _queryStudent = from s in db.tbl_student.ToList() where s.tbl_user.user_id == _queryUser.ToList().SingleOrDefault().user_id select s;
                if (_queryUser.Count() > 0)
                {
                    Session.Add("STU_ID", _queryStudent.SingleOrDefault().stu_id);
                    Session.Add("CLASS_ID", _queryStudent.SingleOrDefault().class_id);
                    int a = int.Parse(_queryStudent.SingleOrDefault().class_id.ToString());
                    var tbl_schedule = db.tbl_schdedule.Where(t => t.class_id == a).OrderBy(t => t.sch_days).ThenBy(t => t.sch_times).ToList();
                    foreach (var item in tbl_schedule)
                    {
                        if (Session[item.tbl_subject.sub_name.ToString()] == null)
                            Session.Add(item.tbl_subject.sub_name.ToString(), item.tbl_subject.sub_id);
                    }
                    return RedirectPermanent(Url.Action("Menu", "Menu"));
                }
                else
                {
                    string message = "Oops! Login Failed";
                    Response.Write("<div class='alert alert-danger'>" + message + "</div>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
           
        
            //session
           
            
            return View();
        }
    }
}
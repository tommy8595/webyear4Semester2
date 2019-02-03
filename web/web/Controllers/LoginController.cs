using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using web;

namespace web.Controllers
{
    public class LoginController : Controller
    {
        web_projectEntities db = new web_projectEntities();
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
                string sql = "SELECT * FROM tbl_user where user_email = @ue and user_psw = @up";
                var _sqlQuery = db.tbl_user.SqlQuery(sql, new SqlParameter("@ue", em), new SqlParameter("@up", pass));
                if (_sqlQuery.Count() > 0)
                {
                    return RedirectPermanent(Url.Action("Menu","Menu"));
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
            return View();
        }
    }
}
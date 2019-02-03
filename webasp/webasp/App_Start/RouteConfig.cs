using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace webasp
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
<<<<<<< HEAD
                defaults: new { controller = "tbl_user", action = "Index", id = UrlParameter.Optional }
=======
                defaults: new { controller = "Login", action = "Login", id = UrlParameter.Optional }
>>>>>>> 9dc0a22dced0390f0f9962276a7b04ac8c2e9738
            );
        }
    }
}

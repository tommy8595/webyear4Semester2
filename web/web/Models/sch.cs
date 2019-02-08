using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace web.Models
{
    public class sch
    {
        public string day { get; set; }
        public TimeSpan time { get; set; }
        public string teacher { get; set; }
        public string clas{ get;set;}
        public string sub { get; set; }
        public sch(string d,TimeSpan t,string tea,string c,string sub)
        {
            this.day = d;
            this.time = t;
            this.teacher = tea;
            this.clas = c;
            this.sub = sub;
        }
    }
}
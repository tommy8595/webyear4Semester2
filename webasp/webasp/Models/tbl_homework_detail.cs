//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace webasp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_homework_detail
    {
        public int hom_id { get; set; }
        public int stu_id { get; set; }
        public double point { get; set; }
        public string description { get; set; }
    
        public virtual tbl_homework tbl_homework { get; set; }
        public virtual tbl_student tbl_student { get; set; }
    }
}

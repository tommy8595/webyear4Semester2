//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace web_project.Models.data_database
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_student
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_student()
        {
            this.tbl_attandance = new HashSet<tbl_attandance>();
            this.tbl_homework_detail = new HashSet<tbl_homework_detail>();
            this.tbl_score = new HashSet<tbl_score>();
        }
    
        public int stu_id { get; set; }
        public string stu_name { get; set; }
        public string stu_sex { get; set; }
        public System.DateTime stu_dob { get; set; }
        public string stu_pob { get; set; }
        public string stu_address { get; set; }
        public string stu_phone { get; set; }
        public string stu_email { get; set; }
        public string stu_emergency_number { get; set; }
        public Nullable<int> class_id { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_attandance> tbl_attandance { get; set; }
        public virtual tbl_class tbl_class { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_homework_detail> tbl_homework_detail { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_score> tbl_score { get; set; }
    }
}

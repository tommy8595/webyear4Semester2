﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace webasp
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class web_projectEntities1 : DbContext
    {
        public web_projectEntities1()
            : base("name=web_projectEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tbl_attandance> tbl_attandance { get; set; }
        public virtual DbSet<tbl_class> tbl_class { get; set; }
        public virtual DbSet<tbl_homework> tbl_homework { get; set; }
        public virtual DbSet<tbl_lesson> tbl_lesson { get; set; }
        public virtual DbSet<tbl_schdedule> tbl_schdedule { get; set; }
        public virtual DbSet<tbl_student> tbl_student { get; set; }
        public virtual DbSet<tbl_subject> tbl_subject { get; set; }
        public virtual DbSet<tbl_teacher> tbl_teacher { get; set; }
        public virtual DbSet<tbl_user> tbl_user { get; set; }
        public virtual DbSet<tbl_homework_detail> tbl_homework_detail { get; set; }
        public virtual DbSet<tbl_score> tbl_score { get; set; }
    }
}

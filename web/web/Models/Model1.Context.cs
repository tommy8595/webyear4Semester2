﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace web.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class web_projectEntities : DbContext
    {
        public web_projectEntities()
            : base("name=web_projectEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<tbl_attandance> tbl_attandance { get; set; }
        public virtual DbSet<tbl_chapter> tbl_chapter { get; set; }
        public virtual DbSet<tbl_class> tbl_class { get; set; }
        public virtual DbSet<tbl_day> tbl_day { get; set; }
        public virtual DbSet<tbl_homework> tbl_homework { get; set; }
        public virtual DbSet<tbl_homework_detail> tbl_homework_detail { get; set; }
        public virtual DbSet<tbl_lesson> tbl_lesson { get; set; }
        public virtual DbSet<tbl_schdedule> tbl_schdedule { get; set; }
        public virtual DbSet<tbl_score> tbl_score { get; set; }
        public virtual DbSet<tbl_student> tbl_student { get; set; }
        public virtual DbSet<tbl_subject> tbl_subject { get; set; }
        public virtual DbSet<tbl_teacher> tbl_teacher { get; set; }
        public virtual DbSet<tbl_time> tbl_time { get; set; }
        public virtual DbSet<tbl_user> tbl_user { get; set; }
    
        [DbFunction("web_projectEntities", "fn_get_att")]
        public virtual IQueryable<fn_get_att1_Result> fn_get_att(Nullable<int> st, Nullable<int> su)
        {
            var stParameter = st.HasValue ?
                new ObjectParameter("st", st) :
                new ObjectParameter("st", typeof(int));
    
            var suParameter = su.HasValue ?
                new ObjectParameter("su", su) :
                new ObjectParameter("su", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<fn_get_att1_Result>("[web_projectEntities].[fn_get_att](@st, @su)", stParameter, suParameter);
        }
    
        [DbFunction("web_projectEntities", "fn_get_chapter_lesson")]
        public virtual IQueryable<fn_get_chapter_lesson_Result> fn_get_chapter_lesson(Nullable<int> sid, Nullable<int> tid)
        {
            var sidParameter = sid.HasValue ?
                new ObjectParameter("sid", sid) :
                new ObjectParameter("sid", typeof(int));
    
            var tidParameter = tid.HasValue ?
                new ObjectParameter("tid", tid) :
                new ObjectParameter("tid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<fn_get_chapter_lesson_Result>("[web_projectEntities].[fn_get_chapter_lesson](@sid, @tid)", sidParameter, tidParameter);
        }
    
        [DbFunction("web_projectEntities", "fn_get_att1")]
        public virtual IQueryable<fn_get_att1_Result> fn_get_att1(Nullable<int> st, Nullable<int> su)
        {
            var stParameter = st.HasValue ?
                new ObjectParameter("st", st) :
                new ObjectParameter("st", typeof(int));
    
            var suParameter = su.HasValue ?
                new ObjectParameter("su", su) :
                new ObjectParameter("su", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<fn_get_att1_Result>("[web_projectEntities].[fn_get_att1](@st, @su)", stParameter, suParameter);
        }
    
        [DbFunction("web_projectEntities", "fn_get_chapter_lesson1")]
        public virtual IQueryable<fn_get_chapter_lesson1_Result> fn_get_chapter_lesson1(Nullable<int> sid, Nullable<int> tid)
        {
            var sidParameter = sid.HasValue ?
                new ObjectParameter("sid", sid) :
                new ObjectParameter("sid", typeof(int));
    
            var tidParameter = tid.HasValue ?
                new ObjectParameter("tid", tid) :
                new ObjectParameter("tid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<fn_get_chapter_lesson1_Result>("[web_projectEntities].[fn_get_chapter_lesson1](@sid, @tid)", sidParameter, tidParameter);
        }
    }
}

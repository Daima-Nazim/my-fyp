﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core.Objects;
using System.Linq;

public partial class AIDiseaseDetectionDBEntities : DbContext
{
    public AIDiseaseDetectionDBEntities()
        : base("name=AIDiseaseDetectionDBEntities")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public virtual DbSet<tblAdmin> tblAdmins { get; set; }
    public virtual DbSet<tblDisease> tblDiseases { get; set; }
    public virtual DbSet<tblfeature> tblfeatures { get; set; }
    public virtual DbSet<tblImage> tblImages { get; set; }
    public virtual DbSet<tblimage2> tblimage2 { get; set; }
    public virtual DbSet<tblimage3> tblimage3 { get; set; }
    public virtual DbSet<tblImageSegment> tblImageSegments { get; set; }
    public virtual DbSet<tblreport> tblreports { get; set; }
    public virtual DbSet<tblUser> tblUsers { get; set; }
    public virtual DbSet<tblUserType> tblUserTypes { get; set; }

    public virtual ObjectResult<AdminLogIn_Result> AdminLogIn(string email, string password)
    {
        var emailParameter = email != null ?
            new ObjectParameter("email", email) :
            new ObjectParameter("email", typeof(string));

        var passwordParameter = password != null ?
            new ObjectParameter("password", password) :
            new ObjectParameter("password", typeof(string));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<AdminLogIn_Result>("AdminLogIn", emailParameter, passwordParameter);
    }

    public virtual ObjectResult<UserLogIn_Result> UserLogIn(string email, string password)
    {
        var emailParameter = email != null ?
            new ObjectParameter("email", email) :
            new ObjectParameter("email", typeof(string));

        var passwordParameter = password != null ?
            new ObjectParameter("password", password) :
            new ObjectParameter("password", typeof(string));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<UserLogIn_Result>("UserLogIn", emailParameter, passwordParameter);
    }

    public virtual ObjectResult<ViewReport_Result> ViewReport()
    {
        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewReport_Result>("ViewReport");
    }

    public virtual ObjectResult<showdisease_Result> showdisease()
    {
        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<showdisease_Result>("showdisease");
    }

    public virtual ObjectResult<showfeatures_Result> showfeatures()
    {
        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<showfeatures_Result>("showfeatures");
    }

    public virtual ObjectResult<showImageSegments_Result> showImageSegments()
    {
        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<showImageSegments_Result>("showImageSegments");
    }

    public virtual ObjectResult<ViewReport2_Result> ViewReport2(Nullable<int> usid)
    {
        var usidParameter = usid.HasValue ?
            new ObjectParameter("usid", usid) :
            new ObjectParameter("usid", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewReport2_Result>("ViewReport2", usidParameter);
    }
}

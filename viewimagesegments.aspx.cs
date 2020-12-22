using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_viewimagesegments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Fillsegments();
    }
    protected void Fillsegments()
    {
        using (var db = new AIDiseaseDetectionDBEntities())
        {
            var hospitals =db.showImageSegments().ToList();
            GV.DataSource = hospitals;
            GV.DataBind();
        }
    }
}
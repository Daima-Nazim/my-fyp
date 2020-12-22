using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_viewfeatures : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Fillfeatures();
    }
    protected void Fillfeatures()
    {
        using (var db = new AIDiseaseDetectionDBEntities())
        {
            var hospitals = db.showfeatures().ToList();
            GV.DataSource = hospitals;
            GV.DataBind();
        }
    }
}
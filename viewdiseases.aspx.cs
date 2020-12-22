using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_viewdiseases : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillDiseases();
    }
    protected void FillDiseases()
    {
        using (var db = new AIDiseaseDetectionDBEntities())
        {
            var hospitals = db.showdisease().ToList();
            GV.DataSource = hospitals;
            GV.DataBind();
        }
    }
}

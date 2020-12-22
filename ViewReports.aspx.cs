using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_ViewReports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Fillreports();
    }
    protected void Fillreports()
    {
        if (Request.QueryString["usid"] != null)
        {
            using (var db = new AIDiseaseDetectionDBEntities())
            {
                int usid = Convert.ToInt32(Request.QueryString["usid"]);

                var hospital = db.ViewReport2(usid).ToList();
                GV.DataSource = hospital;
                GV.DataBind();

            }
        }
      
    }





  

}

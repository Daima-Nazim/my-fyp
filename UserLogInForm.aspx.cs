using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Request.Cookies["UserInfo"] != null)
        {
            Session["UserID"] = Request.Cookies["UserInfo"]["UserID"];

            Session.Timeout = 720;
            Response.Redirect("patienthomepage.aspx");
        }
    }
    protected void cmdLogin_Click(object sender, EventArgs e)
    {
        using (var db = new AIDiseaseDetectionDBEntities())
        {
            var query = db.UserLogIn(txtEmailAddress.Text, txtPassword.Text).ToList();
            if (query.Count > 0)
            {

                Session["UserID"] = query[0].UserID;
                Session.Timeout = 720;

                Response.Cookies["UserInfo"]["UserID"] = query[0].UserID.ToString();

                Response.Cookies["UserInfo"].Expires = DateTime.Now.AddDays(1);

                int usid = Convert.ToInt32(Session["UserID"]);

                Response.Redirect("patienthomepage.aspx?usid=" + usid);

            }
            else
            {

                lblMsg.Text = "Invalid email address or password";

            }
        }
    }

}
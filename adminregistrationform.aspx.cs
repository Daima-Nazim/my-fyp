using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;


    }

    protected void cmdSave_Click(object sender, EventArgs e)
    {
        using (AIDiseaseDetectionDBEntities db = new AIDiseaseDetectionDBEntities())
        {
            tblAdmin us = new tblAdmin();
            us.AdminName = txtName.Text;
            us.EmailAddress = txtEmailAddress.Text;
            us.Password = txtPassword.Text;
            us.Contact_No = Convert.ToInt32(txtcontact.Text);

            db.tblAdmins.Add(us);
            db.SaveChanges();
            Response.Write("Record inserted successfully");

        }
    }
}





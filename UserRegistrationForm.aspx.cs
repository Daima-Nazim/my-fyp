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


    }

    protected void cmdSave_Click(object sender, EventArgs e)
    {
        using (AIDiseaseDetectionDBEntities db = new AIDiseaseDetectionDBEntities())
        {
            tblUser us = new tblUser();
            us.UserName = txtName.Text;
            us.EmailAddress = txtEmailAddress.Text;
            us.Password = txtPassword.Text;
            us.Age = Convert.ToInt32(txtage.Text);
            if (rdmale.Checked)
            {
                us.Gender = "M";
            }
            else if (rdfemale.Checked)
            {
                us.Gender = "F";
            }
            db.tblUsers.Add(us);
            db.SaveChanges();
            Response.Write("Record inserted successfully");

        }
    }
}





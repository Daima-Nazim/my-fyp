﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logoutpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Cookies["UserInfo"].Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("UserLogInForm.aspx");
    }
}
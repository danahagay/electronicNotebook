﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void btnNewProfile_Click(object sender, EventArgs e)
    {
        Response.Redirect("Detail2.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        divToDoList.Visible = false;
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        Response.Redirect("Courses.aspx");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        divToDoList.Visible = false;
    }
    protected void imgBtnToDoList_Click(object sender, ImageClickEventArgs e)
    {
        divToDoList.Visible = true;
    }
}
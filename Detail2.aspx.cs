using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;



public partial class Detail2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnNext_Click(object sender, EventArgs e)
    {



        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        con.Open();

        string str = "INSERT INTO STUDENT (Last_Name , First_Name, UserNameEmail, Password) VALUES ('" + txtBoxLastName.Text + "','" + txtBoxFName.Text + "','" + txtBobMail.Text + "','" + txtboxPassword.Text + "')";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Session["username"]=txtBobMail.Text;

        Response.Redirect("Details.aspx");

    }
}
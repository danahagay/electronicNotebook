using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UserName"] != null && Request.Cookies["Pwd"] != null)
            {
                userName.Value = Request.Cookies["UserName"].Value;
                txtpass.Attributes.Add("value", Request.Cookies["Pwd"].Value);

            }
        }

    }
    protected void btnConnect_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter();
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Login_Check_Sp", con);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@username", userName.Value);
            cmd.Parameters.AddWithValue("@pwd", txtpass.Value);
            adp.SelectCommand = cmd;
            adp.Fill(dt);
            cmd.Dispose();
            if (dt.Rows.Count > 0)
            {
                //lblStatus.Text = "Login Successfull";
                Response.Redirect("Courses.aspx");
                Session["username"]= userName.Value;
                //Or in show messagebox using  ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Login Successfull');", true);
                //Or write using Response.Write("Login Successfull");
                //Or redirect using Response.Redirect("Mypanel.aspx");
            }
            else
            {
                lblStatus.Text = "שם משתמש או סיסמא לא נכונים!";
                //Or show in messagebox usingScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Wrong Username/Password');", true);
                //Or write using Response.Write("Wrong Username/Password");
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Oops!! following error occured : " + ex.Message.ToString() + "');", true);
            // Response.Write("Oops!! following error occured: " +ex.Message.ToString());           
        }
        finally
        {
            dt.Clear();
            dt.Dispose();
            adp.Dispose();

        }
    
    }
}
       
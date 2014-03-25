using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Courses : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        getCourses();
     
    }

    protected void GoFromCourseToSheet()
    {
        Response.Redirect("Sheet.aspx");
    }

    protected void imgBtmGo_Click(object sender, ImageClickEventArgs e)
    {
        DataTable dtCourse = new DataTable();
        SqlDataAdapter adpCourse = new SqlDataAdapter();
        

        try
        {
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("insert_user", con1);
            cmd1.CommandType = CommandType.StoredProcedure;

            cmd1.Parameters.AddWithValue("@username", Session["username"]);
            cmd1.Parameters.AddWithValue("@coursename", txtCourse.Value);
            adpCourse.SelectCommand = cmd1;
            adpCourse.Fill(dtCourse);
            cmd1.Dispose();
            Response.Redirect("Sheet.aspx");

        }


        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Oops!! following error occured : " + ex.Message.ToString() + "');", true);
            // Response.Write("Oops!! following error occured: " +ex.Message.ToString());           
        }
        finally
        {
            con1.Close();
        }
        Response.Redirect("Sheet.aspx");
    }

    public DataTable getCourses()
    {
        try
        {
            con1.Open();
            SqlCommand cmdGetCourses = new SqlCommand("uploadCoursesPage", con1);
            cmdGetCourses.CommandType = CommandType.StoredProcedure;
            cmdGetCourses.Parameters.AddWithValue("@username", Session["username"]);

            SqlDataAdapter adpHoldsCourses = new SqlDataAdapter(cmdGetCourses);
            DataTable dt = new DataTable();
            adpHoldsCourses.Fill(dt);
            adpHoldsCourses.Dispose();
            return dt;

        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally { con1.Close(); }
      
    }
}
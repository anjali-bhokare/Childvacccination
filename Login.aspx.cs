using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_Login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "SELECT username FROM ParentRegistration WHERE username = '"+txtluser.Text+"' AND parentpassword = '"+txtlpassword.Text+"'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        string a = txtluser.Text;
        if (dt.Rows.Count > 0)
        {
            Session["parent"] = txtluser.Text;
            Response.Redirect("~/Parent/Home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<script> alert('Invalid Username Or Password!')</script>");
        }
    
       cn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        txtluser.Text = "";
        txtlpassword.Text = "";
    }
}
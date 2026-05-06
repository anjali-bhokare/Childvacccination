using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Parent_parent1 : System.Web.UI.MasterPage
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["Parent"].ToString();
        cn.Open();
        cmd.CommandText = " select parentname from ParentRegistration where username = '" + Label1.Text + "'";
        cmd.Connection = cn;
        Session["pname"] = cmd.ExecuteScalar().ToString();
        cn.Close();

    }

    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Button btn = sender as Button;
        Session["hos1"] = txtsearch.Text;
        Response.Redirect("~/User/Search.aspx");
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Parent_searchvaccine1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        string hospitalId = Session["hospitalID"].ToString();
       

            


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["v2id"] = btn.CommandArgument;
        Response.Redirect("~/Parent/searchvaccine1.aspx");


    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        Button btn = sender as Button;
        Session["vid"] = btn.CommandArgument;
        Response.Redirect("~/Parent/BookVaccine.aspx");
    }
}


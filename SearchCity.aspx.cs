using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Parent_SearchCity : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["city1"] = DropDownList1.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["hospitalId"] = btn.CommandArgument;
        Response.Redirect("~/Parent/searchvaccine1.aspx");
    }
}
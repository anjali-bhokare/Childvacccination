using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Parent_searchvaccine : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["cityname"] = drpcity.Text;
        Session["hosname"] = drphos.Text;

        string hosname = Session["hosname"].ToString();
        cn.Open();
        cmd.CommandText = "select hospitalname from HospitalRegistration where hospitalname='" + hosname + "'";
        cmd.Connection = cn;
        lblhname.Text = cmd.ExecuteScalar().ToString();
        cn.Close();

        string hosadd = Session["hosname"].ToString();
        cn.Open();
        cmd.CommandText = "select hospitaladdress from HospitalRegistration where hospitalname='" + hosname + "'";
        cmd.Connection = cn;
        lblname.Text = cmd.ExecuteScalar().ToString();
        cn.Close();

        string hosco = Session["hosname"].ToString();
        cn.Open();
        cmd.CommandText = "select hospitalcontactno from HospitalRegistration where hospitalname='" + hosname + "'";
        cmd.Connection = cn;
        lblco.Text = cmd.ExecuteScalar().ToString();
        cn.Close();

    }

    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["vid"] = btn.CommandArgument;
        Response.Redirect("~/Parent/BookVaccine.aspx");
    }
}
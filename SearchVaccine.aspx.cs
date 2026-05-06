using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_SearchVaccine : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["cityname"] = drpcity.Text;
        Session["vname"] = drohname.Text;
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["vid"] = btn.CommandArgument;
        Response.Redirect("~/Parent/BookVaccine.aspx");

    }
}
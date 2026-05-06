using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Button btn = sender as Button;
        Session["hos"] = txtsearch.Text;
        Response.Redirect("~/User/Search.aspx");
    }
}

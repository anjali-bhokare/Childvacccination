using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class User_Bookhome : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Kindly Enter Your Name')</Script>");
        }

        else if (string.IsNullOrEmpty(txtdate.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please Enter Date')</Script>");
        }

        else if (string.IsNullOrEmpty(txtcontact.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Kindly Enter Your Mobile No.')</Script>");
        }
        else if (string.IsNullOrEmpty(txtxmail.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Kindly Enter Your Email Address')</Script>");
        }
        else if (!FileUpload1.HasFile)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please Upload a Prescription')</Script>");
        }
        else if (string.IsNullOrEmpty(txtmsg.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Kindlly Enter Commments')</Script>");
        }
        else
        {

            cn.Open();
            cmd.CommandText = "insert into Prescription values('" + txtname.Text + "','" + txtdate.Text + "'," + txtcontact.Text + ",'" + txtxmail.Text + "','" + DropDownList1.Text + "','" + txtmsg.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Submitted Successfully !')</Script>");
        }
    }
}
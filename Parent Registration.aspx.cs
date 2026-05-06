using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class User_User : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtpraddress.Text = "";
        txtprconfirmpass.Text = "";
        txtprcontact.Text = "";
        txtpremail.Text = "";
        txtprname.Text = "";
        txtprpassword.Text = "";
        txtprusername.Text = "";
        txtrpid.Text = "";

    }

    protected void btnrsubmit_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtprname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Parent Name is required')</script>");
        }
       else if (string.IsNullOrEmpty(txtpraddress.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Address is required')</script>");
        }
       else if (string.IsNullOrEmpty(txtprusername.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('User Name is required')</script>");
        }
        else
        {
            cn.Open();
            cmd.CommandText = " insert into ParentRegistration values ('" + txtrpid.Text + "','" + txtprname.Text + "','" + txtpraddress.Text + "','" + txtpremail.Text + "'," + txtprcontact.Text + ",'" + txtprpassword.Text + "','" + txtprusername.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Registred Successfully!')</script>");
        }
    }
}
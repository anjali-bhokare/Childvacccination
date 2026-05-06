using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class User_HospitalRegi : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Hospital Name is required')</script>");
        }
       else if (string.IsNullOrEmpty(txtadd.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert(' Address is required')</script>");
        }
       else if (string.IsNullOrEmpty(txtusername.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert(' User Name is required')</script>");
        }
        else {
            String status = "Pending";
            cn.Open();
            cmd.CommandText = "insert into HospitalRegistration values ('" + txtid.Text + "','" + txtname.Text + "','" + DropDownList1.Text + "','" + txtadd.Text + "','" + txtmail.Text + "'," + txtcontact.Text + ",'" + Image1.ImageUrl + "','" + txtpass.Text + "','" + status + "','" + txtusername.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Registred Successfully!')</script>");

        }
}

    

    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpass.Text = "";
        txtname.Text = "";
        txtmail.Text = "";
        txtid.Text = "";
        txtcontact.Text = "";
        txtconf.Text = "";
        txtadd.Text = "";
    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            Image1.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
        }
    }
}
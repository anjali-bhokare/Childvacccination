using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Parent_Addchild : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Session["parent"].ToString();
        cn.Open();
        cmd.CommandText = "select parentname from ParentRegistration where username= '" + username + "'";
        cmd.Connection = cn;
        txtpname.Text = cmd.ExecuteScalar().ToString();
        cn.Close();
        string parentaddress = Session["parent"].ToString();
        cn.Open();
        cmd.CommandText = "select parentaddress from ParentRegistration where username= '" + username + "'";
        cmd.Connection = cn;
        txtcaddress.Text = cmd.ExecuteScalar().ToString();
        cn.Close();
        



    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtcname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Child Name is required')</script>");
        }
        else if (string.IsNullOrEmpty(txtpname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Parent Name is required')</script>");
        }
        else if (string.IsNullOrEmpty(txtchistory.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Child History is required')</script>");
        }
        else if (string.IsNullOrEmpty(txtbdate.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Child's Birth Date is required')</script>");
        }
        else if (string.IsNullOrEmpty(txtcheight.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Child Height is required')</script>");
        }
        else if (string.IsNullOrEmpty(txtcweight.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Child Weight is required')</script>");
        }
        else
        {
            cn.Open();
            cmd.CommandText = "insert into ChildRegistration values(" + txtcid.Text + ",'" + txtcname.Text + "','" + txtcaddress.Text + "','" + txtpname.Text + "','" + txtbdate.Text + "','"+txtage.Text+"','" + txtcweight.Text + "','" + txtcheight.Text + "','" + txtchistory.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script>alert('Child Details Saved Successfully!')</script>");
        }
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtage.Text = "";
        txtbdate.Text = "";
        
        txtcheight.Text = "";
        txtchistory.Text = "";
        txtcid.Text = "";
        txtcname.Text = "";
        txtcweight.Text = "";
        
    }
}
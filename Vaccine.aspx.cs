using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Hospital_Vaccine : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = " select count(vaccineId) from Vaccine";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            txtid.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = " select max(vaccineId) from Vaccine";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtid.Text = y.ToString();
            cn.Close();
        }
        cn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Vaccine Name is required')</script>");
        }
        if (string.IsNullOrEmpty(txthosname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Hospital Name is required')</script>");
        }
        if (string.IsNullOrEmpty(txtcomp.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Company Name is required')</script>");
        }
        if (string.IsNullOrEmpty(txtprice.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Price is required')</script>");
        }
        if (string.IsNullOrEmpty(txtweek.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Vaccine week is required')</script>");
        }
        else
        {
            cn.Open();
            cmd.CommandText = "insert into Vaccine values (" + txtid.Text + ",'" + txtname.Text + "','" + DropDownList1.Text + "','" + txthosname.Text + "','" + txtcomp.Text + "','" + txtmfgdate.Text + "','" + txtexpdate.Text + "','" + txtweek.Text + "','" + txtprice.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Details Saved  Successfully!')</script>");
            GridView1.DataBind();
        }

    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtcomp.Text = "";
        txtexpdate.Text = "";
        txthosname.Text = "";
        txtid.Text = "";
        txtmfgdate.Text = "";
        txtname.Text = "";
        txtprice.Text = "";
        txtweek.Text = "";
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        DropDownList1.Text = GridView1.SelectedRow.Cells[3].Text;
        txthosname.Text = GridView1.SelectedRow.Cells[4].Text;
        txtmfgdate.Text = GridView1.SelectedRow.Cells[5].Text;
        txtexpdate.Text = GridView1.SelectedRow.Cells[6].Text;
        txtweek.Text = GridView1.SelectedRow.Cells[7].Text;
        txtprice.Text = GridView1.SelectedRow.Cells[8].Text;
    }
}
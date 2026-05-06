using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Parent_BookVaccine : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {


        
        cn.Open();
        cmd.CommandText = "select count(appoitmentId) from VaccineAppoitment ";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            lblid.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select max(appoitmentid) from  VaccineAppoitment";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            lblid.Text = y.ToString();
            cn.Close();
        }
        cn.Close();

        string username = Session["parent"].ToString();
        cn.Open();
        cmd.CommandText = "select parentname from ParentRegistration where username='" + username + "'";
        cmd.Connection = cn;
        lblname.Text = cmd.ExecuteScalar().ToString();
        cn.Close();
        
        


        string vid = Session["vid"].ToString();
        cn.Open();
        cmd.CommandText = "select vaccinename from Vaccine where vaccineid='" + vid + "'";
        cmd.Connection = cn;
        lblvaccinename.Text = cmd.ExecuteScalar().ToString();
        cn.Close();


        cn.Open();
        cmd.CommandText = "select hospitalname from Vaccine where vaccineid='" + vid + "'";
        cmd.Connection = cn;
        lblhosname.Text = cmd.ExecuteScalar().ToString();
        cn.Close();


        cn.Open();
        cmd.CommandText = "select price from Vaccine where vaccineid='" + vid + "'";
        cmd.Connection = cn;
        lbltotalamount.Text = cmd.ExecuteScalar().ToString();
        cn.Close();
       

        if (!IsPostBack)
        {
            lbldate.Text = DateTime.Now.ToShortDateString();
        }
        if (!IsPostBack)
        {
            scanner.Visible = false;
        }




    }







    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into VaccineAppoitment values(" + lblid.Text + ",'" + lblname.Text + "','"+DropDownList1.Text+"','" + lbldate.Text + "','" + lblhosname.Text + "','" + lblvaccinename.Text + "','" + lbltotalamount.Text + "',@p1)";
        if (rdbtnarrival.Checked == true)
            cmd.Parameters.AddWithValue("@p1", rdbtnarrival.Text);
        else if (rdbtnupi.Checked == true)
            cmd.Parameters.AddWithValue("@p1", rdbtnupi.Text);
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script>alert('Appointment Details Submited!!')</script>");
    }




    protected void rdbtnupi_CheckedChanged(object sender, EventArgs e)
    {
        scanner.ImageUrl = "~/Images/ii1.png";
        scanner.Visible = true;
    }

    protected void rdbtnarrival_CheckedChanged(object sender, EventArgs e)
    {
        scanner.Visible = false;
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        rdbtnarrival.Text = "";
        rdbtnupi.Text = "";
    }
}




    

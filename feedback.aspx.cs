using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Parent_feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Session["Parent"].ToString();
        cn.Open();
        cmd.CommandText = "select parentname from ParentRegistration where username= '" + username + "'";
        cmd.Connection = cn;
        txtname.Text = cmd.ExecuteScalar().ToString();
        cn.Close();
    }    
  
     
    protected void Clear()
    {
        txtname.Text = "";
        txtmsg.Text = "";
        txtmob.Text = "";
        txtmail.Text = "";
        Label1.Text = "";
        rdbtn1.Checked = false;
        rdbtn2.Checked = false;
        rdbtn3.Checked = false;
        rdbtn4.Checked = false;
        rdbtn5.Checked = false;
        rdbtn6.Checked = false;
        rdbtn7.Checked = false;
        rdbtn8.Checked = false;
        rdbtn9.Checked = false;
        rdbtn10.Checked = false;
        rdbtn11.Checked = false;
        rdbtn12.Checked = false;
        rdbtn13.Checked = false;
        rdbtn14.Checked = false;
        rdbtn15.Checked = false;
        rdbtn16.Checked = false;
        rdbtn17.Checked = false;
        rdbtn18.Checked = false;
        rdbtn19.Checked = false;
        rdbtn20.Checked = false;
        ImageButton1.ImageUrl = "~/Images/star.gif";
        ImageButton2.ImageUrl = "~/Images/star.gif";
        ImageButton3.ImageUrl = "~/Images/star.gif";
        ImageButton4.ImageUrl = "~/Images/star.gif";
        ImageButton5.ImageUrl = "~/Images/star.gif";
    }


    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Parent Name is required')</script>");
        }
       else if (string.IsNullOrEmpty(txtmsg.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Message is required')</script>");
        }
       else if (string.IsNullOrEmpty(txtmail.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Mail is required')</script>");
        }
       else if (string.IsNullOrEmpty(Label1.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script> alert('Rating is required')</script>");
        }

        else
        {
            cn.Open();
            cmd.CommandText = "insert into Feedback values('" + txtname.Text + "','" + DropDownList1.Text + "','" + txtmail.Text + "'," + txtmob.Text + ",'" + Label1.Text + "','" + txtmsg.Text + "',@p1,@p2,@p3,@p4)";
            if (rdbtn1.Checked == true)
                cmd.Parameters.AddWithValue("@p1", lbl1.Text);
            else if (rdbtn2.Checked == true)
                cmd.Parameters.AddWithValue("@p1", lbl2.Text);
            else if (rdbtn3.Checked == true)
                cmd.Parameters.AddWithValue("@p1", lbl3.Text);
            else if (rdbtn4.Checked == true)
                cmd.Parameters.AddWithValue("@p1", lbl4.Text);
            else if (rdbtn5.Checked == true)
                cmd.Parameters.AddWithValue("@p1", lbl5.Text);
            else
                Label1.Text = "select rating";

            if (rdbtn6.Checked == true)
                cmd.Parameters.AddWithValue("@p2", lbl1.Text);
            else if (rdbtn7.Checked == true)
                cmd.Parameters.AddWithValue("@p2", lbl2.Text);
            else if (rdbtn8.Checked == true)
                cmd.Parameters.AddWithValue("@p2", lbl3.Text);
            else if (rdbtn9.Checked == true)
                cmd.Parameters.AddWithValue("@p2", lbl4.Text);
            else if (rdbtn10.Checked == true)
                cmd.Parameters.AddWithValue("@p2", lbl5.Text);
            else
                Label1.Text = "select rating";

            if (rdbtn11.Checked == true)
                cmd.Parameters.AddWithValue("@p3", lbl1.Text);
            else if (rdbtn12.Checked == true)
                cmd.Parameters.AddWithValue("@p3", lbl2.Text);
            else if (rdbtn13.Checked == true)
                cmd.Parameters.AddWithValue("@p3", lbl3.Text);
            else if (rdbtn14.Checked == true)
                cmd.Parameters.AddWithValue("@p3", lbl4.Text);
            else if (rdbtn15.Checked == true)
                cmd.Parameters.AddWithValue("@p3", lbl5.Text);
            else
                Label1.Text = "select rating";

            if (rdbtn16.Checked == true)
                cmd.Parameters.AddWithValue("@p4", lbl1.Text);
            else if (rdbtn17.Checked == true)
                cmd.Parameters.AddWithValue("@p4", lbl2.Text);
            else if (rdbtn18.Checked == true)
                cmd.Parameters.AddWithValue("@p4", lbl3.Text);
            else if (rdbtn19.Checked == true)
                cmd.Parameters.AddWithValue("@p4", lbl4.Text);
            else if (rdbtn20.Checked == true)
                cmd.Parameters.AddWithValue("@p4", lbl5.Text);
            else
                Label1.Text = "select rating";
            cmd.ExecuteNonQuery();
            cmd.Connection = cn;
            cn.Close();
            Clear();
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<Script>alert('Feedback Submitted Successfully!!')</Script>");

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Clear();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton2.ImageUrl = "~/Images/star.gif";
        ImageButton3.ImageUrl = "~/Images/star.gif";
        ImageButton4.ImageUrl = "~/Images/star.gif";
        ImageButton5.ImageUrl = "~/Images/star.gif";
        Label1.Text = "1 Star";
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton2.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton3.ImageUrl = "~/Images/star.gif";
        ImageButton4.ImageUrl = "~/Images/star.gif";
        ImageButton5.ImageUrl = "~/Images/star.gif";
        Label1.Text = "2 Star";
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton2.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton3.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton4.ImageUrl = "~/Images/star.gif";
        ImageButton5.ImageUrl = "~/Images/star.gif";
        Label1.Text = "3 Star";
    }



    protected void rdbtn8_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void rdbtn5_CheckedChanged(object sender, EventArgs e)
    {

    }



    protected void ImageButton4_Click1(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton2.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton3.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton4.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton5.ImageUrl = "~/Images/star.gif";
        Label1.Text = "4 Star";
    }

    protected void ImageButton5_Click1(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton2.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton3.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton4.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton5.ImageUrl = "~/Images/Filledstar.gif";

        Label1.Text = "5 Star";
    }
}

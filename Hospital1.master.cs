using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Hospital_Hospital1 : System.Web.UI.MasterPage
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["Hospital"].ToString();
        cn.Open();
        cmd.CommandText = " select hospitalname from HospitalRegistration where username = '" + Label1.Text + "'";
        cmd.Connection = cn;
        Session["hname"] = cmd.ExecuteScalar().ToString();
        cn.Close();
    }
}

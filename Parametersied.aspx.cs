using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

public partial class Report_Parametersied : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Child Vaccination Final\App_Data\Child Vccination.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    ReportDocument crpt = new ReportDocument();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnserachDate_Click(object sender, EventArgs e)
    {
        DateTime date1 = DateTime.Parse(txtfromdate.Text);
        DateTime date2 = DateTime.Parse(txttodate.Text);
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("Select * from VaccineAppoitment where date between '"+date1+"' and '"+date2+"' ", cn);
        da.Fill(ds, "VaccineAppoitment");
        da.Fill(ds);
        crpt.Load(Server.MapPath("~/Report/VaccineAppoitment.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer2.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "VaccineAppoitment");
        crpt.Refresh();
        cn.Close();
    }

    protected void btnsearchCity_Click(object sender, EventArgs e)
    {

    }

    protected void txtsrch_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("Select * from [View] where vaccinecompanyname ='"+ drpcname.Text +"'", cn);
        da.Fill(ds, "View");
        da.Fill(ds);
        crpt.Load(Server.MapPath("~/Report/View.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer2.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "View");
        crpt.Refresh();
        cn.Close();
    }

    protected void txtserchhospital_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("Select * from VaccineAppoitment where hospitalname ='" + drphname.Text + "'", cn);
        da.Fill(ds, "VaccineAppoitment");
        da.Fill(ds);
        crpt.Load(Server.MapPath("~/Report/VaccineAppoitment.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer2.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Vaccine");
        crpt.Refresh();
        cn.Close();
    }

    protected void txtsearchvaccine_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("Select * from VaccineAppoitment where vaccinename ='" + drpvname.Text + "'", cn);
        da.Fill(ds, "VaccineAppoitment");
        da.Fill(ds);
        crpt.Load(Server.MapPath("~/Report/VaccineAppoitment.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer2.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Vaccine");
        crpt.Refresh();
        cn.Close();
    }
}
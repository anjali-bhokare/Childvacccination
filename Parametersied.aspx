<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Parametersied.aspx.cs" Inherits="Report_Parametersied" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            border: 1px solid #000000;
        }
        .auto-style3 {
            width: 610px;
        }
        .auto-style4 {
            height: 61px;
        }
        .auto-style5 {
            width: 80%;
            border: 1px solid #000000;
        }
        .auto-style7 {
            text-align: right;
            height: 81px;
        }
        .auto-style8 {
            text-align: left;
            height: 81px;
            width: 292px;
        }
        .auto-style9 {
            height: 78px;
        }
        .auto-style10 {
            text-align: left;
            height: 81px;
            width: 263px;
        }
        .auto-style12 {
            text-align: left;
            height: 81px;
            width: 296px;
        }
        .auto-style13 {
            width: 688px;
        }
        .auto-style14 {
            height: 108px;
        }
        .auto-style15 {
            text-align: center;
            border: 1px solid #000000;
            width: 462px;
            height: 301px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td style="text-align: center" class="auto-style13">
                <table align="center" class="auto-style5">
                    <tr>
                        <td class="auto-style2" colspan="2"><strong>Search By Date<br />
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">From :</td>
                        <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtfromdate" runat="server" TextMode="Date"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">To :</td>
                        <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txttodate" runat="server" TextMode="Date"></asp:TextBox>
                            &nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style9" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="txtsrch2" runat="server" OnClick="txtsrch_Click" style="height: 29px" Text="Search" />
                            <br />
                        </td>
                    </tr>
                    </table>
            </td>
            <td>
                <table align="center" class="auto-style15">
                    <tr>
                        <td colspan="2" class="" border: 1px solid #000000;>Search by City<br />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" class="auto-style14">Select City :</td>
                        <td class="auto-style14">
                            <asp:DropDownList ID="drpcity" runat="server">
                            </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center" class="auto-style4">
                            <asp:Button ID="btnsearchCity" runat="server" Text="Search" OnClick="btnsearchCity_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <table align="center" class="auto-style5">
                    <tr>
                        <td class="auto-style2" colspan="2"><strong>Search By Company<br />
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Select Company Name:</td>
                        <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="drpcname" runat="server" DataSourceID="SqlDataSource5" DataTextField="vaccinecompanyname" DataValueField="vaccinecompanyname">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [vaccinecompanyname] FROM [View]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [vaccinecompanyname] FROM [Vaccine]"></asp:SqlDataSource>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="txtcompanysrch" runat="server" OnClick="txtsrch_Click" style="height: 29px" Text="Search" />
                            <br />
                        </td>
                    </tr>
                    </table>
            </td>
            <td>
                <table align="center" class="" border: 1px solid #000000;>
                    <tr>
                        <td class="auto-style2" colspan="2"><strong>Search</strong> <strong>By Hospital<br />
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Select Hospital Name:</td>
                        <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="drphname" runat="server" datasourceid="SqlDataSource2" DataTextField="hospitalname" DataValueField="hospitalname">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [hospitalname] FROM [VaccineAppoitment]"></asp:SqlDataSource>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="txtserchhospital" runat="server"  style="height: 29px" Text="Search" OnClick="txtserchhospital_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <table align="center" class="auto-style5">
                    <tr>
                        <td class="auto-style2" colspan="2"><strong>Search By Vaccine<br />
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Select Vaccine Name:</td>
                        <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="drpvname" runat="server" DataSourceID="SqlDataSource3" DataTextField="vaccinename" DataValueField="vaccinename">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [vaccinename] FROM [View]"></asp:SqlDataSource>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="txtsearchvaccine" runat="server"  style="height: 29px" Text="Search" OnClick="txtsearchvaccine_Click" />
                            <br />
                        </td>
                    </tr>
                    </table>
            </td>
            <td>
                <table align="center" class="" border: 1px solid #000000;>
                    <tr>
                        <td class="auto-style2" colspan="2"><strong>Order By Company<br />
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Select Company Name:</td>
                        <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="drpcname1" runat="server" DataSourceID="SqlDataSource4" DataTextField="vaccinecompanyname" DataValueField="vaccinecompanyname">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [vaccinecompanyname] FROM [View]"></asp:SqlDataSource>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="txtsrch1" runat="server" OnClick="txtsrch_Click" style="height: 29px" Text="Search" />
                            <br />
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <CR:CrystalReportViewer ID="CrystalReportViewer2" runat="server" AutoDataBind="true" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


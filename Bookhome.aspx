<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Bookhome.aspx.cs" Inherits="User_Bookhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        height: 26px;
        width: 305px;
    }
    .auto-style6 {
        width: 305px;
    }
    .auto-style7 {
        width: 305px;
        height: 111px;
    }
    .auto-style8 {
        width: 305px;
        height: 89px;
    }
        .auto-style9 {
            margin-right: 0px;
        }
    .auto-style10 {
        height: 26px;
        width: 305px;
        font-size: xx-large;
        text-align: center;
    }
    .auto-style13 {
        font-size: medium;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" Height="569px" ImageUrl="~/Images/i7.png" Width="907px" CssClass="auto-style9" />
<table align="right" class="">
    <tr>
        <td class="auto-style5">home vaccine</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:TextBox ID="txtname" runat="server" Height="40px" Width="350px">Name</asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:TextBox ID="txtdate" runat="server" Height="40px" TextMode="Date" Width="350px">Date</asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:TextBox ID="txtcontact" runat="server" Height="40px" Width="350px">Contact No:</asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:TextBox ID="txtxmail" runat="server" Height="40px" Width="350px">Email</asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cityname" DataValueField="cityname" Height="40px" Width="350px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [cityname] FROM [Addcity]"></asp:SqlDataSource>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><span class="auto-style13">Upload Prescription:</span><br />
            <asp:FileUpload ID="FileUpload1" runat="server" Height="40px" Width="350px" />
            <br />
            <br />
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:TextBox ID="txtmsg" runat="server" Height="40px" TextMode="MultiLine" Width="350px">Message</asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style10">&nbsp;
            <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Text="Submit" Width="100px" BackColor="#99CCFF" />
            <br />
        </td>
    </tr>
</table>
</asp:Content>


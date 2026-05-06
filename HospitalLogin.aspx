<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="HospitalLogin.aspx.cs" Inherits="User_HospitalLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style4 {
            width: 40%;
            border: 1px solid #000000;
        }
        .auto-style5 {
            font-size: x-large;
            text-align: center;
            height: 39px;
        }
        .auto-style6 {
            width: 162px;
        }
    .auto-style7 {
        width: 40%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" class="auto-style7">
    <tr>
        <td>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/i10.png" />
        </td>
    </tr>
</table>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<table align="center" class="auto-style4">
    <tr>
        <td class="auto-style5" colspan="2"><strong>Login</strong></td>
    </tr>
    <tr>
        <td class="auto-style6">User Name:</td>
        <td>
            <asp:TextBox ID="txtusername" runat="server" BorderColor="Black" Height="45px" Width="450px"></asp:TextBox>
            <br /></td>
    </tr>
    <tr>
        <td class="auto-style6">Password:</td>
        <td>
            <br />
            <asp:TextBox ID="txtpassword" runat="server" BorderColor="Black" Height="45px" Width="450px"></asp:TextBox>
            <br /></td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnlogin" runat="server" BackColor="#66FF33" BorderColor="Black" Height="45px" OnClick="btnlogin_Click" Text="Login" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" BackColor="Red" BorderColor="Black" Height="45px" OnClick="btncancel_Click" Text="Cancel" Width="150px" />
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Height="35px" NavigateUrl="~/User/HospitalRegi.aspx" Width="150px">Register Here!</asp:HyperLink>
                &nbsp;</td>
    </tr>
</table>
</asp:Content>


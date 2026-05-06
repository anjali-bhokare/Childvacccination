<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="User_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 40%;
            border: 1px solid #000000;
        }
        .auto-style5 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style6 {
            height: 26px;
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
<table align="center" class="auto-style4">
        <tr>
            <td class="auto-style5" colspan="2"><strong>Login</strong></td>
        </tr>
        <tr>
            <td>User Name:</td>
            <td>
                <asp:TextBox ID="txtluser" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="txtlpassword" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnlogin" runat="server" BackColor="#66FF66" BorderColor="Black" Height="35px" OnClick="btnlogin_Click" Text="Login" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#FF3300" BorderColor="Black" Height="35px" OnClick="Button2_Click" Text="Cancel" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Height="35px" NavigateUrl="~/User/Parent Registration.aspx" Width="150px">Register Mee!</asp:HyperLink>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


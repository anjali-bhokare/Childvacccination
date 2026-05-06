<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Hoslogin1.aspx.cs" Inherits="User_Hoslogin1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 80%; border: 1px solid #000000">
    <tr>
        <td class="auto-style3" colspan="2" style="font-size: large"><strong>Hospital Login</strong></td>
    </tr>
    <tr>
        <td>User Name:</td>
        <td>
            <asp:TextBox ID="txthusername" runat="server" Height="35px" Width="250px"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td>Password:</td>
        <td>
            <asp:TextBox ID="txthpass" runat="server" Height="35px" Width="250px"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnlogin" runat="server" Height="35px" OnClick="btnlogin_Click" Text="Login" Width="150px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncancel" runat="server" Height="35px" OnClick="btncancel_Click" Text="Cancel" Width="150px" />
            <br />
        </td>
    </tr>
</table>
</asp:Content>


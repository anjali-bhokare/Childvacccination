<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="parentlogin1.aspx.cs" Inherits="User_parentlogin1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 70%">
        <tr>
            <td style="background-image: url('../Images/bg.png'); height: 599px;"><table align="center" style="width: 80%; height: 278px;">
    <tr>
        <td colspan="2" style="font-size: x-large; text-align: center;"><strong>Parent Login</strong></td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;User Name:&nbsp;</td>
        <td>
            <asp:TextBox ID="txtusrname" runat="server" Height="35px" Width="250px" BorderColor="White"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:</td>
        <td>
            <asp:TextBox ID="txtpass" runat="server" Height="35px" Width="250px"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="2" style="color: #006699">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="btnlogin" runat="server" Height="35px" OnClick="btnlogin_Click" Text="Login" Width="150px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncancel" runat="server" Height="35px" OnClick="btncancel_Click" Text="Cancel" Width="150px" />
            <br />
        </td>
    </tr>
</table>
            </td>
        </tr>
    </table>
</asp:Content>


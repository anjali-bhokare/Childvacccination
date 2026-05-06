<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="login Both.aspx.cs" Inherits="User_login_Both" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="background-image: url('../Images/bg.png')">
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
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnloginp" runat="server" BackColor="#66FF66" BorderColor="Black" Height="35px" OnClick="btnlogin_Click" Text="Login" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#FF3300" BorderColor="Black" Height="35px"  Text="Cancel" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Height="35px" NavigateUrl="~/User/Parent Registration.aspx" Width="150px">Register Mee!</asp:HyperLink>
                &nbsp;</td>
        </tr>
    </table>
            </td>
            <td style="background-image: url('../Images/bg.png')">
<table align="center" class="auto-style4">
    <tr>
        <td class="auto-style5" colspan="2"><strong>Login</strong></td>
    </tr>
    <tr>
        <td class="auto-style6">User Name:</td>
        <td>
            <asp:TextBox ID="txtusername" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            <br /></td>
    </tr>
    <tr>
        <td class="auto-style6">Password:</td>
        <td>
            <br />
            <asp:TextBox ID="txtpassword" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            <br /></td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnlogin" runat="server" BackColor="#66FF33" BorderColor="Black" Height="35px"  Text="Login" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" BackColor="Red" BorderColor="Black" Height="35px"  Text="Cancel" Width="100px" />
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" Height="35px" NavigateUrl="~/User/HospitalRegi.aspx" Width="150px">Register Here!</asp:HyperLink>
                &nbsp;</td>
    </tr>
</table>
            </td>
        </tr>
    </table>
</asp:Content>


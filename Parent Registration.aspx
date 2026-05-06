<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Parent Registration.aspx.cs" Inherits="User_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 70%;
        border: 1px solid #000000;
    }
        .auto-style5 {
            font-size: large;
            text-align: center;
        }
        .auto-style6 {
            width: 200px;
        }
        .auto-style7 {
            width: 466px;
        }
    .auto-style13 {
        font-size: small;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="0" class="auto-style4">
    <tr>
        <td class="auto-style5" colspan="3"><strong>Parent Registration</strong></td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp; Id</td>
        <td colspan="2">
            <asp:TextBox ID="txtrpid" runat="server" BackColor="White" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp; Name:</td>
        <td colspan="2">
            <asp:TextBox ID="txtprname" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp; Address:</td>
        <td colspan="2">
            <asp:TextBox ID="txtpraddress" runat="server" BorderColor="Black" Height="35px" TextMode="MultiLine" Width="250px" BorderStyle="None"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp; Email:</td>
        <td colspan="2">
            <asp:TextBox ID="txtpremail" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpremail" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp; Contact No:</td>
        <td colspan="2">
            <asp:TextBox ID="txtprcontact" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtprcontact" ErrorMessage="Enter Valid Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp; User Name:</td>
        <td class="auto-style7">&nbsp;<asp:TextBox ID="txtprusername" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
&nbsp;&nbsp; Password:<asp:TextBox ID="txtprpassword" runat="server" Height="35px" Width="100px" BackColor="White" BorderColor="Black"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtprconfirmpass" ControlToValidate="txtprpassword" ErrorMessage="Password must be match" ForeColor="Red"></asp:CompareValidator>
            <br />
        </td>
        <td class="auto-style6"><span class="auto-style13">Confirm password:</span><asp:TextBox ID="txtprconfirmpass" runat="server" Height="35px" Width="100px" BorderColor="Black" CssClass="auto-style13"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnrsubmit" runat="server" BackColor="#66FF33" BorderColor="Black" Height="35px" OnClick="btnrsubmit_Click" Text="Submit" Width="80px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnreset" runat="server" BackColor="#FF3300" BorderColor="Black" Height="35px" OnClick="btnreset_Click" Text="Reset" Width="80px" />
        </td>
    </tr>
</table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="calender.aspx.cs" Inherits="User_calender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
        border: 1px solid #000000;
    }
    .auto-style5 {
        font-size: medium;
        text-align: center;
    }
    .auto-style6 {
        font-size: medium;
        text-align: center;
        height: 26px;
    }
    .auto-style9 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style4">
    <tr>
        <td class="auto-style9"><strong>Your Child Needs Vaccine As They Grow!</strong></td>
    </tr>
    <tr>
        <td class="auto-style5">Recommnded Immuzations For Birth Through 6 Years Old</td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Image ID="Image1" runat="server" Height="600px" ImageUrl="~/Images/i1.png" Width="1300px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Recommnded Immuzations For 7 Through 18 Years Old<br />
            <asp:Image ID="Image2" runat="server" Height="600px" ImageUrl="~/Images/i5.png" Width="1300px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
    </tr>
</table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="HospitalRegi.aspx.cs" Inherits="User_HospitalRegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style4 {
            width: 50%;
            border: 1px solid #000000;
        }
        .auto-style5 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style6 {
            height: 26px;
            width: 178px;
        }
        .auto-style8 {
            margin-left: 46px;
        }
        .auto-style7 {
            width: 178px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style4">
    <tr>
        <td class="auto-style5" colspan="3"><strong>Hospital Registration<br /></strong></td>
    </tr>
    <tr>
        <td class="auto-style3">Id:</td>
        <td class="auto-style6">
            <asp:TextBox ID="txtid" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            <br /></td>
        <td rowspan="7">
            <asp:Image ID="Image1" runat="server" BorderColor="Black" CssClass="auto-style8" Height="191px" Width="188px" />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupload" runat="server" BorderColor="Black" Height="35px" Text="Upload" Width="150px" OnClick="btnupload_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            <br />
            <br />
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
    </tr>
    <tr>
        <td>Name:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtname" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            <br /></td>
    </tr>
    <tr>
        <td>City Name:</td>
        <td class="auto-style7">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cityname" DataValueField="cityname" Height="35px" Width="250px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [cityname] FROM [Addcity]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>Address:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtadd" runat="server" BorderColor="Black" Height="35px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            <br /></td>
    </tr>
    <tr>
        <td>Email:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtmail" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br /></td>
    </tr>
    <tr>
        <td>Contact No:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtcontact" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Moblile No" ForeColor="Red" ValidationExpression="[0-9]{10}" ControlToValidate="txtcontact"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>User Name:</td>
        <td class="auto-style7">&nbsp;<br />
            <asp:TextBox ID="txtusername" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            <br />
            <br />
            <br /></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style7">Password:<asp:TextBox ID="txtpass" runat="server" BorderColor="Black" Height="35px" Width="100px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtconf" ControlToValidate="txtpass" ErrorMessage="Password Must Be Same" ForeColor="Red"></asp:CompareValidator>
        </td>
        <td>Confirm Password:<asp:TextBox ID="txtconf" runat="server" BorderColor="Black" Height="35px" Width="100px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsubmit" runat="server" BackColor="#66FF33" BorderColor="Black" Height="35px" OnClick="btnsubmit_Click" Text="Submit" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" BackColor="Red" BorderColor="Black" Height="35px" OnClick="btnreset_Click" Text="Reset" Width="100px" />
            <br /></td>
    </tr>
</table>
</asp:Content>


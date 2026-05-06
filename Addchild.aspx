<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/parent1.master" AutoEventWireup="true" CodeFile="Addchild.aspx.cs" Inherits="Parent_Addchild" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 50%;
            border: 1px solid #000000;
        }
        .auto-style4 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3">
        <tr>
            <td class="auto-style4" colspan="2"><strong>Child Registration<br />
                </strong></td>
        </tr>
        <tr>
            <td>Child Id:</td>
            <td>
                <asp:TextBox ID="txtcid" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Child Name:</td>
            <td>
                <asp:TextBox ID="txtcname" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Child Address:</td>
            <td>
                <asp:TextBox ID="txtcaddress" runat="server" BorderColor="Black" Height="35px" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Parent Name:</td>
            <td>
                <asp:TextBox ID="txtpname" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Birth Date:</td>
            <td>
                <asp:TextBox ID="txtbdate" runat="server" BorderColor="Black" Height="35px" Width="250px" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Child Age:</td>
            <td>
                <asp:TextBox ID="txtage" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Child Weight:</td>
            <td>
                <asp:TextBox ID="txtcweight" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Child Height:</td>
            <td>
                <asp:TextBox ID="txtcheight" runat="server" BorderColor="Black" Height="35px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Medical History:</td>
            <td>
                <asp:TextBox ID="txtchistory" runat="server" BorderColor="Black" Height="35px" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" BorderColor="Black" Height="35px" OnClick="btnsave_Click" Text="Save" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" BorderColor="Black" Height="35px" OnClick="btnreset_Click" Text="Reset" Width="100px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/parent1.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="Parent_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 60%;
            border: 1px solid #000000;
        }
        .auto-style4 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            width: 198px;
        }
        .auto-style8 {
            height: 26px;
            width: 198px;
        }
        .auto-style10 {
            width: 89px;
        }
        .auto-style13 {
            margin-left: 43px;
            margin-top: 4px;
        }
        .auto-style14 {
            margin-left: 33px;
        }
        .auto-style15 {
            margin-left: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="">
        <tr>
            <td class="auto-style4" rowspan="15">&nbsp;
                <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl="~/Images/feedback.png" Width="600px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="auto-style4" colspan="6"><strong>Feedback</strong></td>
        </tr>
        <tr>
            <td class="auto-style7">Name:</td>
            <td colspan="5">&nbsp;
                <asp:TextBox ID="txtname" runat="server" BorderColor="Black" CssClass="auto-style13" Height="45px" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Hospital Name:</td>
            <td class="auto-style5" colspan="5">&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style15" DataSourceID="SqlDataSource1" DataTextField="hospitalname" DataValueField="hospitalname" Height="45px" Width="350px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [hospitalname] FROM [HospitalRegistration]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Email :</td>
            <td colspan="5">&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtmail" runat="server" BorderColor="Black" CssClass="auto-style14" Height="45px" Width="350px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Mobile No:</td>
            <td colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtmob" runat="server" BorderColor="Black" Height="45px" Width="350px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmob" ErrorMessage="Enter Valid Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Rating:<br />
            </td>
            <td class="auto-style5" colspan="5">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Star.gif" OnClick="ImageButton1_Click" />
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Star.gif" OnClick="ImageButton2_Click" Height="17px" Width="20px" />
&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/Star.gif" OnClick="ImageButton3_Click" Height="20px" Width="20px" />
&nbsp;<asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/Star.gif" Height="20px" OnClick="ImageButton4_Click1" />
&nbsp;<asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Images/Star.gif" Height="25px" Width="32px" OnClick="ImageButton5_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Enabled="False" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:Label ID="lbl1" runat="server" Text="Very Satisfied"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl2" runat="server" Text="Satisfied"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl3" runat="server" Text="Neutral"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="lbl4" runat="server" Text="Unsatisfied"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl5" runat="server" Text="Unsatisfied"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Doctor Knowledge:<br />
            </td>
            <td>&nbsp;<asp:RadioButton ID="rdbtn1" runat="server" GroupName="a" />
                &nbsp;</td>
            <td>
                <asp:RadioButton ID="rdbtn2" runat="server" GroupName="a" />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn3" runat="server" GroupName="a" />
            </td>
            <td class="auto-style10">
                <asp:RadioButton ID="rdbtn4" runat="server" GroupName="a" />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn5" runat="server" GroupName="a" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Nurse Knowledge:<br />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn6" runat="server" GroupName="b" />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn7" runat="server" GroupName="b" />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn8" runat="server" GroupName="b" />
            </td>
            <td class="auto-style10">
                <asp:RadioButton ID="rdbtn9" runat="server" GroupName="b" />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn10" runat="server" GroupName="b" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Waiting Time:<br />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn11" runat="server" GroupName="c" />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn12" runat="server" GroupName="c" />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn13" runat="server" GroupName="c" />
            </td>
            <td class="auto-style10">
                <asp:RadioButton ID="rdbtn14" runat="server" GroupName="c" />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn15" runat="server" GroupName="c" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Hygine:<br />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn16" runat="server" SkinID="d" />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn17" runat="server" GroupName="d" />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn18" runat="server" GroupName="d" />
            </td>
            <td class="auto-style10">
                <asp:RadioButton ID="rdbtn19" runat="server" GroupName="d" />
            </td>
            <td>
                <asp:RadioButton ID="rdbtn20" runat="server" GroupName="d" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Message:</td>
            <td class="auto-style5" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtmsg" runat="server" BorderColor="Black" Height="45px" TextMode="MultiLine" Width="350px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="6">&nbsp;
                <asp:Button ID="btnsave" runat="server" BorderColor="Black" Height="35px" Text="Submit" Width="100px" OnClick="btnsave_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" BorderColor="Black" Height="35px" OnClick="Button2_Click" Text="Reset" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


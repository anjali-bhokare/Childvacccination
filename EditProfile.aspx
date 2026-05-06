<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/Hospital1.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Hospital_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 60%;
        }
        .auto-style6 {
            font-size: x-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style5">
        <tr>
            <td class="auto-style6"><strong>Edit Profile</strong></td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="hospitalId" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="hospitalId" HeaderText="hospitalId" ReadOnly="True" SortExpression="hospitalId" />
                        <asp:BoundField DataField="hospitalname" HeaderText="hospitalname" SortExpression="hospitalname" />
                        <asp:BoundField DataField="hospitaladdress" HeaderText="hospitaladdress" SortExpression="hospitaladdress" />
                        <asp:BoundField DataField="hospitalemail" HeaderText="hospitalemail" SortExpression="hospitalemail" />
                        <asp:BoundField DataField="hospitalcontactno" HeaderText="hospitalcontactno" SortExpression="hospitalcontactno" />
                        <asp:BoundField DataField="hospitalpassword" HeaderText="hospitalpassword" SortExpression="hospitalpassword" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [hospitalId], [hospitalname], [hospitaladdress], [hospitalemail], [hospitalcontactno], [hospitalpassword], [username] FROM [HospitalRegistration] WHERE ([username] = @username)" UpdateCommand="update HospitalRegistration set hospitalname=@hospitalname,hospitaladdress=@hospitaladdress,hospitalemail=@hospitalemail,hospitalcontactno=@hospitalcontactno,hospitalpassword=@hospitalpassword where username=@username ">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="Hospital" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


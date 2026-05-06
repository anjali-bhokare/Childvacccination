<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/parent1.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Parent_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table align="center" style="width: 80%; border: 1px solid #000000; margin-bottom: 20px;">
                    <tr>
                        <td><strong>Vaccine Name:</strong></td>
                        <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("vaccinename") %>' /></td>
                    </tr>
                    <tr>
                        <td><strong>City:</strong></td>
                        <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("selectcity") %>' /></td>
                    </tr>
                    <tr>
                        <td><strong>Hospital:</strong></td>
                        <td><asp:Label ID="Label3" runat="server" Text='<%# Eval("hospitalname") %>' /></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT vaccinename, selectcity, hospitalname FROM Vaccine WHERE hospitalname LIKE '%' + @hospitalname + '%' OR (vaccinename LIKE '%' + @vaccinename + '%') OR (selectcity LIKE '%' + @selectcity + '%')" >
            <SelectParameters>
                <asp:SessionParameter Name="hospitalname" SessionField="hos1" Type="String" />
                <asp:SessionParameter Name="vaccinename" SessionField="hos1" Type="String" />
                <asp:SessionParameter Name="selectcity" SessionField="hos1" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>


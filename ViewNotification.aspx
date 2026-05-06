<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/parent1.master" AutoEventWireup="true" CodeFile="ViewNotification.aspx.cs" Inherits="Parent_ViewNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="bookingdate" HeaderText="bookingdate" SortExpression="bookingdate" />
        <asp:BoundField DataField="parentname" HeaderText="parentname" SortExpression="parentname" />
        <asp:BoundField DataField="parentno" HeaderText="parentno" SortExpression="parentno" />
        <asp:BoundField DataField="childname" HeaderText="childname" SortExpression="childname" />
        <asp:BoundField DataField="hospitalname" HeaderText="hospitalname" SortExpression="hospitalname" />
        <asp:BoundField DataField="vaccinename" HeaderText="vaccinename" SortExpression="vaccinename" />
        <asp:BoundField DataField="appoitmentdate" HeaderText="appoitmentdate" SortExpression="appoitmentdate" />
        <asp:BoundField DataField="totalamount" HeaderText="totalamount" SortExpression="totalamount" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Notification] WHERE ([parentname] = @parentname)">
    <SelectParameters>
        <asp:SessionParameter Name="parentname" SessionField="pname" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>


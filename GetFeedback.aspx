<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/Hospital1.master" AutoEventWireup="true" CodeFile="GetFeedback.aspx.cs" Inherits="Hospital_ViewFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style5">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="hospitalname" HeaderText="hospitalname" SortExpression="hospitalname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="mobileno" HeaderText="mobileno" SortExpression="mobileno" />
                <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
                <asp:BoundField DataField="doctorknowledge" HeaderText="doctorknowledge" SortExpression="doctorknowledge" />
                <asp:BoundField DataField="nurseknowledge" HeaderText="nurseknowledge" SortExpression="nurseknowledge" />
                <asp:BoundField DataField="waitingtime" HeaderText="waitingtime" SortExpression="waitingtime" />
                <asp:BoundField DataField="hyglene" HeaderText="hyglene" SortExpression="hyglene" />
                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Feedback] WHERE ([hospitalname] = @hospitalname)">
            <SelectParameters>
                <asp:SessionParameter Name="hospitalname" SessionField="hname" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>


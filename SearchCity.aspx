<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/parent1.master" AutoEventWireup="true" CodeFile="SearchCity.aspx.cs" Inherits="Parent_SearchCity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        text-align: center;
    }
    .auto-style4 {
        width: 80%;
        border: 1px solid #000000;
    }
    .auto-style5 {
        width: 125px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
    <tr>
        <td class="auto-style3">
            <div class="auto-style3">
                City Name:&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cityname" DataValueField="cityname" Width="150px">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" Width="100px" />
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [cityname] FROM [Addcity]"></asp:SqlDataSource>
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="hospitalId" DataSourceID="SqlDataSource2" GridLines="Horizontal">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <ItemTemplate>
                    <br />
                    <br />
                    <br />
                    <table align="center" cellpadding="3" class="auto-style4">
                        <tr>
                            <td class="auto-style5" rowspan="5">
                                <asp:Image ID="Image1" runat="server" Height="165px" ImageUrl='<%# Eval("hospitalimage") %>' Width="175px" />
                            </td>
                            <td>&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("hospitalname") %>' Width="700px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("hospitaladdress") %>' Width="700px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("hospitalemail") %>' Width="700px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("hospitalcontactno") %>' Width="700px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("hospitalId") %>' Text="View Details" Width="100px" OnClick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [HospitalRegistration] WHERE ([cityname] = @cityname)">
                <SelectParameters>
                    <asp:SessionParameter Name="cityname" SessionField="city1" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>


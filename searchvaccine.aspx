<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/parent1.master" AutoEventWireup="true" CodeFile="searchvaccine.aspx.cs" Inherits="Parent_searchvaccine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 80%;
            border: 1px solid #000000;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td>Select City:<asp:DropDownList ID="drpcity" runat="server" DataSourceID="SqlDataSource1" DataTextField="cityname" DataValueField="cityname" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cityname] FROM [Addcity]"></asp:SqlDataSource>
            </td>
            <td>Select Hospital Name:<asp:DropDownList ID="drphos" runat="server" DataSourceID="SqlDataSource3" DataTextField="hospitalname" DataValueField="hospitalname">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [hospitalname] FROM [HospitalRegistration] WHERE ([cityname] = @cityname)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drpcity" Name="cityname" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Text="Search" Width="150px" />
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table class="auto-style5">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style6">&nbsp; Hospital Name:</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblhname" runat="server" CssClass="auto-style6"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hospital Address:&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblname" runat="server"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hospital Contact:&nbsp;&nbsp; &nbsp;
                            <asp:Label ID="lblco" runat="server"></asp:Label>
                            &nbsp;</td>
                    </tr>
                </table>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DataList ID="DataList1" runat="server" DataKeyField="vaccineId" DataSourceID="SqlDataSource2" RepeatDirection="Horizontal" RepeatColumns="3">
                    <ItemTemplate>
                        <table align="center" class="auto-style3">
                            <tr>
                                <td colspan="2"><strong>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("vaccinename") %>'></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td>Vaccine Mfg:</td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("vaccinemfgdate") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Vaccine Exp:</td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("vaccineexpirydate") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Vaccine Price:</td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Vaccine Week:</td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("vaccineweek") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Vaccine Company Name:</td>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("vaccinecompanyname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("vaccineId") %>' OnClick="Button2_Click1" Text="Book" Height="45px" Width="110px" />
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Vaccine] WHERE (([selectcity] = @selectcity) AND ([hospitalname] = @hospitalname))">
                    <SelectParameters>
                        <asp:SessionParameter Name="selectcity" SessionField="cityname" Type="String" />
                        <asp:SessionParameter Name="hospitalname" SessionField="hosname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


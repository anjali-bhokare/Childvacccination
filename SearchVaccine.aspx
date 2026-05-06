<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="SearchVaccine.aspx.cs" Inherits="User_SearchVaccine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 61px;
        }
        .auto-style9 {
            margin-left: 40px;
        }
    .auto-style11 {
        font-size: medium;
    }
    .auto-style13 {
        height: 221px;
        font-size: small;
        width: 331px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style4">
        <tr>
            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select City :<asp:DropDownList ID="drpcity" runat="server" DataSourceID="SqlDataSource1" DataTextField="cityname" DataValueField="cityname" Height="45px" Width="250px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cityname] FROM [Addcity]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;&nbsp; Select Hospital Name:<asp:DropDownList ID="drohname" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="hospitalname" DataValueField="hospitalname" Height="45px" Width="250px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [hospitalname] FROM [HospitalRegistration] WHERE ([cityname] = @cityname)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drpcity" Name="cityname" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DataList ID="DataList1" runat="server" DataKeyField="vaccineId" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table align="center" class="auto-style4" border: 1px solid #000000">
                            <tr>
                                <td>Vaccine Name:</td>
                                <td>&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label1" runat="server" Height="35px" Text='<%# Eval("vaccinename") %>' Width="250px"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>Hospital Name:</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblname" runat="server" Height="35px" Text='<%# Eval("hospitalname") %>' Width="250px"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>Hospital Address:</td>
                                <td>
                                    &nbsp;&nbsp; 
                                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource3">
                                        <ItemTemplate>
                                            <table align="center" class="auto-style4">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lbladd" runat="server" Text='<%# Eval("hospitaladdress") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [hospitaladdress] FROM [HospitalRegistration] WHERE ([hospitalname] = @hospitalname)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblname" Name="hospitalname" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">Vaccine Mfg:</td>
                                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label4" runat="server" Height="35px" Text='<%# Eval("vaccinemfgdate") %>' Width="250px" CssClass="auto-style11"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>Vaccine Exp:</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label5" runat="server" Height="35px" Text='<%# Eval("vaccineexpirydate") %>' Width="250px"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>Vaccine Price:</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label6" runat="server" Height="35px" Text='<%# Eval("price") %>' Width="250px"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>Vaccine Week:</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label7" runat="server" Height="35px" Text='<%# Eval("vaccineweek") %>' Width="250px"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>Vccine Company:</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label8" runat="server" Height="35px" Text='<%# Eval("vaccinecompanyname") %>' Width="250px"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3" colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                        <asp:Button ID="Button3" runat="server" Text="View More" OnClick="Button3_Click" />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [hospitaladdress] FROM [HospitalRegistration] WHERE ([hospitaladdress] = @hospitaladdress)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label9" Name="hospitaladdress" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Vaccine] WHERE (([selectcity] = @selectcity) AND ([hospitalname] = @hospitalname))">
                    <SelectParameters>
                        <asp:SessionParameter Name="selectcity" SessionField="cityname" Type="String" />
                        <asp:SessionParameter Name="hospitalname" SessionField="vname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


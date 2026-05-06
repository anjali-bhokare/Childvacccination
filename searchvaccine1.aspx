<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/parent1.master" AutoEventWireup="true" CodeFile="searchvaccine1.aspx.cs" Inherits="Parent_searchvaccine1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            width: 80%;
            border: 1px solid #000000;
        }
    .auto-style13 {
        height: 31px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table align="center" class="auto-style11">
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DataList ID="DataList1" runat="server" DataKeyField="hospitalId" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table align="center" class="auto-style12">
                            <tr>
                                <td rowspan="5">
                                    <asp:Image ID="Image1" runat="server" Height="145px" ImageUrl='<%# Eval("hospitalimage") %>' Width="137px" />
                                </td>
                                <td>
                                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("hospitalname") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("hospitaladdress") %>'></asp:Label>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("hospitalemail") %>'></asp:Label>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("hospitalcontactno") %>'></asp:Label>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnv" runat="server" OnClick="Button1_Click" Text="View Vaccine" CommandArgument='<%# Eval("hospitalname") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:DataList ID="DataList2" runat="server" DataKeyField="vaccineId" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <table align="center" class="auto-style12">
                                    <tr>
                                        <td>Vaccine Name:</td>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("vaccinename") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Company Name:</td>
                                        <td class="auto-style13">
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("vaccinecompanyname") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Price:</td>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Mfg Date:</td>
                                        <td>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("vaccinemfgdate") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Exp Date:</td>
                                        <td>
                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("vaccineexpirydate") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("vaccineId") %>' OnClick="Button1_Click1" Text="Book Vaccine" />
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Vaccine] WHERE (([hospitalname] = @hospitalname) AND ([hospitalname] = @hospitalname2))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblname" Name="hospitalname" PropertyName="Text" Type="String" />
                                <asp:SessionParameter Name="hospitalname2" SessionField="v2id" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [HospitalRegistration] WHERE ([hospitalId] = @hospitalId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="hospitalId" SessionField="hospitalID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>


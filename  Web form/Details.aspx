<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="BloodDonor.image.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style11 {
            font-size: xx-large;
            color: #CC0066;
        }
        .auto-style12 {
            font-size: xx-large;
            color: #000000;
            width: 96px;
            height: 118px;
        }
        .auto-style16 {
            font-size: x-large;
            color: #000000;
        }
        .auto-style15 {
            font-size: large;
        }
        .auto-style17 {
            font-size: xx-large;
        }
        .auto-style18 {
            font-size: xx-large;
            width: 298px;
            height: 127px;
        }
        .auto-style1 {
            color: #000000;
        }
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style19 {
            width: 248px;
            height: 99px;
            margin-right: 0px;
        }
        .auto-style13 {
            font-size: xx-large;
            color: #000000;
        }
        .auto-style26 {
            text-align: center;
            width: 50px;
            height: 51px;
        }
        .auto-style25 {
            text-align: justify;
            width: 144px;
            height: 57px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #FFCCCC">
        <strong><em><span class="auto-style11">
            <span class="auto-style13"><span class="auto-style5"><span class="auto-style11" style="background-color: #FFCCCC">
            <img class="auto-style26" src="images23-removebg-preview.png" /><img class="auto-style25" src="sankalp.png" /></span></span></span><br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style16" NavigateUrl="~/image/Home.aspx">Home</asp:HyperLink>
        </span><span class="auto-style17">
            <span class="auto-style16">&nbsp;&nbsp; </span>
        </span><span class="auto-style11">
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style16" NavigateUrl="~/image/Search.aspx">Search</asp:HyperLink>
            <span class="auto-style15">&nbsp;</span><br />
        </span></em></strong><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" EmptyDataText="No Donor Found" ForeColor="#FF66CC" ShowHeaderWhenEmpty="True" BackColor="#99CCFF" BorderColor="#0066FF" BorderStyle="Solid" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="43px" Width="414px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="UserID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("uid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("uid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UserName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("uname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("uname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password" Visible="False">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("pswd") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("pswd") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("states") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("states") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("cities") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("cities") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BloodGroup">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("bloodgroup") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("bloodgroup") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone Number">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("phno") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("phno") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField />
                <asp:TemplateField HeaderText="Language">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("lang") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("lang") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action" ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="cmdedit" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Edit" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action" ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="cmddelete" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>

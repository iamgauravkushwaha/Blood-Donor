<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ALogin.aspx.cs" Inherits="BloodDonor.image.UserLogin" %>

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
            text-align: center;
        }
        .auto-style13 {
            font-size: xx-large;
            color: #000000;
        }
        .auto-style14 {
            font-size: x-large;
        }
        .auto-style16 {
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style17 {
            font-size: xx-large;
        }
        .auto-style15 {
            font-size: large;
        }
        .auto-style25 {
            text-align: justify;
            width: 144px;
            height: 57px;
        }
        .auto-style26 {
            text-align: center;
            width: 50px;
            height: 51px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #FFCCFF">
        <div>
            <strong><em><span class="auto-style13"><span class="auto-style11">
            <span class="auto-style5"><span class="auto-style11" style="background-color: #FFCCCC">
            <img class="auto-style26" src="images23-removebg-preview.png" /><img class="auto-style25" src="sankalp.png" /></span></span><br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style16" NavigateUrl="~/image/Home.aspx">Home</asp:HyperLink>
            <span class="auto-style17">
            <span class="auto-style16">&nbsp;&nbsp; </span>
        </span>
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style16" NavigateUrl="~/image/Search.aspx">Search</asp:HyperLink>
            <span class="auto-style15">&nbsp;</span></span><br />
            <br />
            </span></em></strong></div>
        <span class="auto-style14"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;
            User ID&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style16"></asp:TextBox>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style14" ErrorMessage="Invalid UserID" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
        <span class="auto-style14">&nbsp; </span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" CssClass="auto-style14" ErrorMessage="Enter UserID"></asp:RequiredFieldValidator>
        <span class="auto-style14"><strong>&nbsp;</strong><br />
        <br />
        <br />
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp; Password <strong>&nbsp;&nbsp;&nbsp; &nbsp; </strong></span>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style16"></asp:TextBox>
        <span class="auto-style14">&nbsp;&nbsp; </span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" CssClass="auto-style14" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style14"><strong>&nbsp;</strong><br />
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" CssClass="auto-style16" Height="32px" Width="90px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
        <p class="auto-style12">
            &nbsp;</p>
    </form>
</body>
</html>

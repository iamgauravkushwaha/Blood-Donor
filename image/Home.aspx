<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BloodDonor.image.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #000000;
        }
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style11 {
            font-size: xx-large;
            color: #000000;
        }
        .auto-style12 {
            width: 101px;
            height: 114px;
            background-color: #FFCCFF;
        }
        .auto-style14 {
            width: 373px;
            height: 230px;
        }
        .auto-style15 {
            width: 427px;
            height: 232px;
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
    <form id="form1" runat="server" style="background-color: #FFCCFF">
        <div class="auto-style1">
            <em><span class="auto-style5"><strong><span class="auto-style13"><span class="auto-style11">
            <span class="auto-style11" style="background-color: #FFCCCC">
            <img class="auto-style26" src="images23-removebg-preview.png" /><img class="auto-style25" src="sankalp.png" /></span></span></span></strong><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div>
                <asp:Menu ID="Menu1" runat="server" BackColor="#00CC99" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="XX-Large" ForeColor="Black" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" StaticSubMenuIndent="10px" CssClass="auto-style11">
                    <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#F7F6F3" />
                    <DynamicSelectedStyle BackColor="#5D7B9D" />
                    <Items>
                        <asp:MenuItem NavigateUrl="Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="Register.aspx" Text="Register" Value="Register"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="Search.aspx" Text="Search" Value="Search"></asp:MenuItem>
                        <asp:MenuItem Text="Login" Value="Login">
                            <asp:MenuItem NavigateUrl="ULogin.aspx" Text="User Login" Value="User Login"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="ALogin.aspx" Text="Admin Login" Value="Admin Login"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#5D7B9D" />
                </asp:Menu>
            </div>
            <span style="font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
            <br />
            </span></span><span style="font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style1">
            <p class="auto-style6">
                It is said that blood is one of the most priceless gifts one can give to another.</p>
            <p class="auto-style6">
&nbsp;Blood is essential for a person to stay alive. Many times due to accidents or</p>
            <p class="auto-style6">
&nbsp;any other serious ailments, a person might require blood. And in those times,</p>
            <p class="auto-style6">
&nbsp;people who step up to donate their blood are real-life superheroes.</span></p>
            <span class="auto-style5">
            <br />
&nbsp;&nbsp;
            <img class="auto-style14" src="images22-removebg-preview.png" /><img class="auto-style15" src="images12-removebg-preview.png" /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <h1><span class="auto-style5"></h1>
&nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </span></div>
    </form>
</body>
</html>

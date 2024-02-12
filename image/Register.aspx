<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BloodDonor.image.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 295px;
        }
        .auto-style3 {
            width: 295px;
            height: 22px;
            font-size: x-large;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            width: 295px;
            font-size: x-large;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style8 {
            width: 10px;
        }
        .auto-style9 {
            height: 22px;
            width: 10px;
        }
        .auto-style11 {
            font-size: xx-large;
            color: #000000;
        }
        .auto-style12 {
            width: 295px;
            font-size: x-large;
            height: 59px;
        }
        .auto-style13 {
            font-size: x-large;
            height: 59px;
            width: 842px;
        }
        .auto-style14 {
            width: 10px;
            height: 59px;
        }
        .auto-style15 {
            height: 59px;
        }
        .auto-style16 {
            width: 842px;
        }
        .auto-style17 {
            font-size: x-large;
            width: 842px;
        }
        .auto-style18 {
            height: 22px;
            width: 842px;
        }
        .auto-style19 {
            width: 295px;
            font-size: x-large;
            height: 52px;
        }
        .auto-style20 {
            font-size: x-large;
            width: 842px;
            height: 52px;
        }
        .auto-style21 {
            width: 10px;
            height: 52px;
        }
        .auto-style22 {
            height: 52px;
        }
        .auto-style23 {
            height: 265px;
        }
        .auto-style26 {
            height: 50px;
            width: 62px;
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
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style23">
                        <strong><em><span class="auto-style1"><span class="auto-style5"><span class="auto-style13"><span class="auto-style11">
                        <span class="auto-style11" style="background-color: #FFCCCC">
            <img class="auto-style26" src="images23-removebg-preview.png" /><img class="auto-style25" src="sankalp.png" /></span></span></span><br />
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2"><strong>
                                    <br />
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/image/Home.aspx" CssClass="auto-style5">Home</asp:HyperLink>
                                    </strong><span class="auto-style5">&nbsp; </span> <strong>
                                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/image/ULogin.aspx" CssClass="auto-style5">Login</asp:HyperLink>
                                    <span class="auto-style5">&nbsp; </span> </strong>&nbsp;<strong><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/image/Search.aspx" CssClass="auto-style5">Search</asp:HyperLink>
                                    <span class="auto-style5">&nbsp;&nbsp;</span>&nbsp; </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td class="auto-style16">
                                    <h4>&nbsp;</h4>
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style17">
                                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <br />
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">User Name</td>
                                <td class="auto-style17">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="username required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Password</td>
                                <td class="auto-style17">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="password required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style12">Confirm Password</td>
                                <td class="auto-style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password and confirm password should be same" ControlToCompare="TextBox2" ControlToValidate="TextBox3"></asp:CompareValidator>
                                    <br />
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="password required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td class="auto-style14"></td>
                                <td class="auto-style15"></td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Gender</td>
                                <td class="auto-style17">
                                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g" Text="Female" />
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Language</td>
                                <td class="auto-style18">
                                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style5" Text="Hindi" />
                                    <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                    <asp:CheckBox ID="CheckBox2" runat="server" CssClass="auto-style5" Text="English" />
                                    <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                    <asp:CheckBox ID="CheckBox3" runat="server" CssClass="auto-style5" Text="Telgu" />
                                &nbsp;
                                </td>
                                <td class="auto-style9"></td>
                                <td class="auto-style4"></td>
                            </tr>
                            <tr>
                                <td class="auto-style6">State</td>
                                <td class="auto-style17">
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">City</td>
                                <td class="auto-style17">
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Blood Group</td>
                                <td class="auto-style17">
                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Phone Number</td>
                                <td class="auto-style20">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter valid phno" ControlToValidate="TextBox4" ValidationExpression="[6-9]{1}[0-9]{9}"></asp:RegularExpressionValidator>
                                    <br />
&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="phno required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style21"></td>
                                <td class="auto-style22"></td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Email ID</td>
                                <td class="auto-style17">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="enter valid email" ControlToValidate="TextBox5" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    <br />
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" email required" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style16">&nbsp;<strong><asp:Button ID="Button1" runat="server" CssClass="auto-style7" EnableTheming="False" Height="30px" OnClick="Button1_Click" Text="Register" Width="82px" />
                                    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" CausesValidation="False" CssClass="auto-style7" OnClick="Button2_Click" Text="Clear" />
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                        </span></span></em></strong></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

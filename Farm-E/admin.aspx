<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Farm_E.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Е-Фарм Админ</title>
    <style>
        body{
            background-color:#C7D0D5;
        }
        #banner{
            border:2px solid #EC583A;
            width:766px;
        }
        #about{
            border:2px solid #93B1C6;
            margin-right:5px;
        }
        table{
            background-color:#C7D0D5;
            width:766px;
        }
        #contact{
            border:2px solid #93B1C6;
            margin-right:5px;
        }
        #checkout{
            border:2px solid #93B1C6;
            margin-right:5px;
        }
        #admin{
            border:2px solid #93B1C6;
        }
        .pomest{
            margin-right:40px;
        }
        #Label1{
            margin-right:10px;
            color:#EC583A;
        }
        #Label2{
            margin-right:67px;
            color:#EC583A;
        }
        #TextBox1{
            margin-right:5px;
        }
        #TextBox2{
            margin-right:5px;
        }
        #lst{
            margin-left:2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center">
        <tr>
            <td>
                <image id="banner" src="banner.png"></image>
            </td>
        </tr>
        <tr>
            <td>
                <span>
                    <a href="default.aspx" class="pomest"><image id="about" src="zanas.png"></image></a>
                    <a href="contact.aspx" class="pomest"><image id="contact" src="contact.png"></image></a>
                    <a href="checkout.aspx" class="pomest"><image id="checkout" src="checkout.png"></image></a>
                    <a href="admin.aspx" id="lst"><image id="contact" src="admin.png"></image></a>
                </span> 
            </td>    
        </tr>
        <tr>
            <td style="margin-left: 40px">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Корисничко име:   "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Погрешно корисничко име" ForeColor="#EC583A" ValueToCompare="admin"></asp:CompareValidator>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Лозинка:"></asp:Label>

                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>

                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Погрешна лозинка" ForeColor="#EC583A" ValueToCompare="admin"></asp:CompareValidator>

                <br />
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="#EC583A" ForeColor="#C7D0D5" OnClick="Button1_Click" Text="Логирај се!" />

            </td>
        </tr>
    </table>
    </form>
</body>
</html>

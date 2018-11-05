<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Farm_E.checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Е-Фарм Порачка</title>
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
        .info{
            color:#EC583A;
        }
        .space{
            margin-right:5px;
        }
        #lblIme{
            margin-right:330px;
        }
        #lblPrezime{
            margin-right:300px;
        }
        #lblEMBG{
            margin-right:69px;
        }
        #lblRecept{
            margin-right:242px;
        }
        #lblLek{
            margin-right:235px;
        }
        #lblAdresa{
            margin-right:245px;
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
            <td>
                <p class="info">Во долниот формулар внесете ги вашите податоци. По внесувањето кликнете Изврши порачка.</p>

                <br />
                <asp:Label ID="lblIme" runat="server" Text="Внесете име:" ForeColor="#EC583A"></asp:Label>
                <asp:TextBox ID="tbIme" runat="server" CssClass="space"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Внесете име" ControlToValidate="tbIme" ForeColor="#EC583A"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblPrezime" runat="server" Text="Внесете презиме:" ForeColor="#EC583A"></asp:Label>
                <asp:TextBox ID="tbPrezime" runat="server" CssClass="space"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Внесете адреса на живеење" ForeColor="#EC583A" ControlToValidate="tbAdresa"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblAdresa" runat="server" ForeColor="#EC583A" Text="Внесете ја вашата адреса:"></asp:Label>
                <asp:TextBox ID="tbAdresa" runat="server" CssClass="space"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Внесете презиме" ControlToValidate="tbPrezime" ForeColor="#EC583A"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblEMBG" runat="server" Text="Внесете го вашиот единствен матичен број(ЕМБГ):" ForeColor="#EC583A"></asp:Label>
                <asp:TextBox ID="tbEMBG" runat="server" CssClass="space"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Невалидно внесен ЕМБГ" ValidationExpression="^[0-9]{13}$" ControlToValidate="tbEMBG" ForeColor="#EC583A"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="lblRecept" runat="server" Text="Внесете број на рецептот:" ForeColor="#EC583A"></asp:Label>
                <asp:TextBox ID="tbRecept" runat="server" CssClass="space"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Внесете рецепт(6 цифри)" ValidationExpression="^[0-9]{6}$" ControlToValidate="tbRecept" ForeColor="#EC583A"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="lblLek" runat="server" Text="Внесете го името на лекот:" ForeColor="#EC583A"></asp:Label>
                <asp:TextBox ID="tbLek" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validLek" runat="server" ControlToValidate="tbLek" ForeColor="#EC583A"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblKartica" runat="server" Text="Внесете го бројот на вашата кредитна или дебитна картичка:" ForeColor="#EC583A" CssClass="space"></asp:Label>
                <asp:TextBox ID="tbKartica" runat="server" CssClass="space"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Невалиден број на картичка" ValidationExpression="^[0-9]{16}$" ControlToValidate="tbKartica" ForeColor="#EC583A"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="lblPoraka" runat="server" Font-Bold="True" ForeColor="#EC583A"></asp:Label>
                <br />
                <asp:Button ID="btnPoracka" runat="server" OnClick="btnPoracka_Click" Text="Изврши порачка" BackColor="#EC583A" ForeColor="#C7D0D5" />

            </td>
        </tr>
    </table>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="Farm_E.edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Е-Фарм Админ Конзола</title>
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
        #lblIme{
            margin-right:5px;
        }
        #lblKategorija{
            margin-right:5px;
        }
        #lblLeci{
            margin-right:43px;
        }
        #lblCena{
            margin-right:43px;
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
                <br />
                <asp:ListBox ID="lbLekovi" runat="server" Height="168px" Width="192px" BackColor="#C7D0D5" ForeColor="#EC583A" AutoPostBack="True" OnSelectedIndexChanged="lbLekovi_SelectedIndexChanged"></asp:ListBox>
                <br />
                <br />
                <asp:Label ID="lblPoraka" runat="server" ForeColor="#EC583A"></asp:Label>

                <br />
                <asp:Button ID="promeni" runat="server" BackColor="#EC583A" ForeColor="#C7D0D5" Text="Промени" OnClick="promeni_Click" />
                <asp:Button ID="vnesi" runat="server" BackColor="#EC583A" ForeColor="#C7D0D5" Text="Внеси" OnClick="vnesi_Click" />
                <asp:Button ID="btPolni" runat="server" BackColor="#EC583A" ForeColor="#C7D0D5" OnClick="btPolni_Click" Text="Прочитај податоци" />
                <br />
                <br />
                <asp:Label ID="lblIme" runat="server" ForeColor="#EC583A" Text="Име на лек:"></asp:Label>
                <asp:TextBox ID="tbIme" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblKategorija" runat="server" ForeColor="#EC583A" Text="Категорија:"></asp:Label>
                <asp:TextBox ID="tbKategorija" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblLeci" runat="server" ForeColor="#EC583A" Text="Лечи:"></asp:Label>
                <asp:TextBox ID="tbLeci" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblCena" runat="server" ForeColor="#EC583A" Text="Цена:"></asp:Label>
                <asp:TextBox ID="tbCena" runat="server"></asp:TextBox>

            </td>
        </tr>
    </table>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="Farm_E.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Е-Фарм Пребарување по болка</title>
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
               <p class="info">
                   Во полето внесете го вашиот здравствен проблем. По притискање на копчето
                   Пребарај, ќе ви бидат испишани сите лекови кои помагаат за вашот тип на болка.
               </p>
               <asp:TextBox ID="tbBolka" runat="server"></asp:TextBox>
               <br />
               <br />
               <asp:Button ID="btnSearch" runat="server" BackColor="#EC583A" ForeColor="#C7D0D5" OnClick="btnSearch_Click" Text="Пребарај" />
               <br />
               <br />
               <asp:Label ID="lblPoraka" runat="server" ForeColor="#EC583A"></asp:Label>
               <br />
               <br />
               <asp:Label ID="lblRezultat" runat="server" Font-Bold="True" ForeColor="#EC583A" Text="Адекватни лекови за вашата болка се:"></asp:Label>
               <asp:BulletedList ID="blBolka" runat="server" Font-Bold="True" ForeColor="#EC583A">
               </asp:BulletedList>
               <br />

           </td>
       </tr> 
    </table>
    </form>
</body>
</html>

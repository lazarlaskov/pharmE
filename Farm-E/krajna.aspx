<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="krajna.aspx.cs" Inherits="Farm_E.krajna" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Е-Фарм Плаќање</title>
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

                <asp:Label ID="lblPoracka" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#EC583A" OnLoad="lblPoracka_Load"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblKlient" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#EC583A" OnLoad="lblKlient_Load"></asp:Label>

            </td>
        </tr>
    </table>
    </form>
</body>
</html>

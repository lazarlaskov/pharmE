<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Farm_E.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Е-Фарм Контакт</title>
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
               <h3 class="info">Контакт</h3>
               <p class="info">Телефон: +3892735669</p>
               <p class="info">Email: <a href="lazemail13@gmail.com">kontakt@efarm.com.mk</a></p>
               <p class="info">Адреса: Митрополит Теодосиј Гологанов бб</p>
           </td>
       </tr> 
    </table>
</body>
</html>

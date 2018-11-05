<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Farm_E.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Е-Фарм Почетна</title>
    <style type="text/css">
        body{
            background-color:#C7D0D5;
        }
        #banner{
            border:2px solid #EC583A;
            width:766px;
        }
        #nav{
            position:absolute;
            left:20%;
            width: 766px;
            border:2px solid #EC583A;
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
        #pill{
            border:2px solid #EC583A;
            margin-left:75px;
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
                <asp:Button ID="btnSearch" runat="server" BackColor="#EC583A" ForeColor="#C7D0D5" OnClick="btnSearch_Click" Text="Пребарај по здравствен проблем" />
                <br />
                <h3 class="info">Кратки информации за нас</h3>
                <p class="info">
                    Е-Фарм е компанија која постои веќе една година и за толку кратко време брои неколку илјади
                    задоволни корисници ширум Р. Македонија. Ние сме единствени во она што го работиме,
                    а тоа е обезбедувањето на иновативни медицински услуги за своите клиенти. Поконкретно, Е-Фарм
                    им овозможува на своите клиенти да преку нашиот веб сајт ги порачаат сите лекови за кои
                    имаат рецепта и истите да им бидат доставени во најкраток можен рок. 
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <image id="pill" src="pill.jpg" align="center"></image>
                <br />
                <h3 class="info">Начин на извршување на порачка</h3>
                <p class="info">
                    Извршувањето на порачка на нашите лекови е крајно едноставна. Прв чекор е да притиснете
                    на копчето Порачка што ќе ве однесе до формуларот кој треба да го пополните. Во првите две полиња
                    треба да го внесете вашето име и презиме. Потоа, од вас ќе се бара да го внесете вашиот
                    единствен матичен број (ЕМБГ) и бројот на рецептот добиен од вашиот матичен лекар.
                    По внесувањето на овие податоци, во наредното поле треба да го впишете името на лекот
                    кое можете да го најдете напишано на вашиот рецепт. За сам крај треба да го внесете бројот на
                    вашата кредитна картичка и да притиснете на копчето заврши. Потоа ќе бидете упатени кон потврдување
                    на вашата порачка по што ви преостанува да го чекате нашиот курир, на кој при примање на порачката сте
                    должни да му ја предадете рецептата како доказ за нарачката. За љубопитните, во склоп на нашиот сајт 
                    постои и опција за пребарување на лековите според вашиот здравствен проблем, доколку сакате да се информирате
                    околу лековите кои можат да го решат за вас.
                </p>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

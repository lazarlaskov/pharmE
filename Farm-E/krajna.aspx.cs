using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farm_E
{
    public partial class krajna : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lblKlient_Load(object sender, EventArgs e)
        {
            lblKlient.Text = "Клиентот " + (string)(Session["Ime"]) + " " + (string)(Session["Prezime"]) +
                " со единствен матичен број " + (string)(Session["EMBG"]) + " го внесе рецептот со број " +
                (string)(Session["Recept"]) + " за лекот " + (string)(Session["Lek"]) +
                " . Вашата кредитна картичка со број " + (string)(Session["Kartica"]) +
                " беше успешно валидирана. Ви благодариме за вашата доверба искажана со" +
                " користењето на нашите услуги. Порачаниот лек ќе ви биде доставен на вашата адреса " +
                (string)(Session["Adresa"]) + " 48 часа по регистрирање на вашата уплата.";
        }

        protected void lblPoracka_Load(object sender, EventArgs e)
        {
            WebServisi.smetka smetka = new WebServisi.smetka();
            lblPoracka.Text = "За вашата порачка беше генерирана сметка со број " +
                smetka.Generate().ToString() + ".";
        }
    }
}
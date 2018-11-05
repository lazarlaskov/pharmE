using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farm_E
{
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPoracka_Click(object sender, EventArgs e)
        {
            SqlConnection konekcija = new SqlConnection();
            konekcija.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\lazemail13\Documents\Visual Studio 2015\Projects\E-Farm\WindowsFormsApplication1\Database1.mdf;Integrated Security=True;Connect Timeout=30";
            SqlCommand komanda = new SqlCommand();
            komanda.Connection = konekcija;
            komanda.CommandText = "SELECT ime_lek FROM Drugs WHERE ime_lek=@ime_lek";
            komanda.Parameters.AddWithValue("@ime_lek", this.tbLek.Text);
            try
            {
                konekcija.Open();
                SqlDataReader citac = komanda.ExecuteReader();
                while (citac.Read())
                {
                    if (citac.HasRows == true)
                    {
                        Session["Ime"] = tbIme.Text;
                        Session["Prezime"] = tbPrezime.Text;
                        Session["EMBG"] = tbEMBG.Text;
                        Session["Recept"] = tbRecept.Text;
                        Session["Lek"] = tbLek.Text;
                        Session["Kartica"] = tbKartica.Text;
                        Session["Adresa"] = tbAdresa.Text;
                        Response.Redirect("krajna.aspx");
                    }
                    else
                    {
                        lblPoraka.Text = "Внесениот лек не постои!";
                    }
                }
            }
            catch { }
            finally
            {
                konekcija.Close();
            }
        }

        
    }
}
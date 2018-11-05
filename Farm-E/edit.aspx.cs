using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farm_E
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void PolniLista()
        {
            lbLekovi.Items.Clear();
            SqlConnection konekcija = new SqlConnection();
            konekcija.ConnectionString= @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\lazemail13\Documents\Visual Studio 2015\Projects\E-Farm\WindowsFormsApplication1\Database1.mdf;Integrated Security=True;Connect Timeout=30";
            SqlCommand komanda = new SqlCommand();
            komanda.Connection = konekcija;
            komanda.CommandText = "SELECT ime_lek FROM Drugs";
            try
            {
                konekcija.Open();
                SqlDataReader citac = komanda.ExecuteReader();
                while (citac.Read())
                {
                    ListItem item = new ListItem();
                    item.Text = citac["ime_lek"].ToString();
                    item.Value = citac["ime_lek"].ToString();
                    lbLekovi.Items.Add(item);
                }
                citac.Close();
            }
            catch(Exception err)
            {
                lblPoraka.Text = err.Message;
            }
            finally
            {
                konekcija.Close();
            }
        }

        protected void lbLekovi_SelectedIndexChanged(object sender, EventArgs e)
        {
            selektirajLek(lbLekovi.SelectedValue.ToString());
        }

        protected void selektirajLek(string ime)
        {
            SqlConnection konekcija = new SqlConnection();
            konekcija.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\lazemail13\Documents\Visual Studio 2015\Projects\E-Farm\WindowsFormsApplication1\Database1.mdf;Integrated Security=True;Connect Timeout=30";
            string sqlString = "SELECT * FROM Drugs WHERE ime_lek='" + ime + "'";
            SqlCommand komanda = new SqlCommand(sqlString, konekcija);
            try
            {
                konekcija.Open();
                SqlDataReader citac = komanda.ExecuteReader();
                if (citac.Read())
                {
                    tbIme.Text = citac["ime_lek"].ToString();
                    tbKategorija.Text = citac["kategorija_lek"].ToString();
                    tbLeci.Text = citac["Leci"].ToString();
                    tbCena.Text = citac["cena"].ToString();
                    citac.Close();
                }
            }
            catch(Exception err)
            {
                lblPoraka.Text = err.Message;
            }
            finally
            {
                konekcija.Close();
            }
        }

        protected void promeni_Click(object sender, EventArgs e)
        {
            SqlConnection konekcija = new SqlConnection();
            konekcija.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\lazemail13\Documents\Visual Studio 2015\Projects\E-Farm\WindowsFormsApplication1\Database1.mdf;Integrated Security=True;Connect Timeout=30";
            SqlCommand komanda = new SqlCommand();
            komanda.Connection = konekcija;
            komanda.CommandText = "UPDATE Drugs SET " + "ime_lek='" + tbIme.Text + "',kategorija_lek='" +
                tbKategorija.Text + "',Leci='" + tbLeci.Text + "',cena='" + tbCena.Text + "'" +
                "WHERE ime_lek='" + lbLekovi.SelectedValue + "'";
            try
            {
                konekcija.Open();
                komanda.ExecuteNonQuery();
            }
            catch(Exception err)
            {
                lblPoraka.Text = err.Message;
            }
            finally
            {
                konekcija.Close();
            }
            PolniLista();
        }

        protected void btPolni_Click(object sender, EventArgs e)
        {
            PolniLista();
        }

        protected void vnesi_Click(object sender, EventArgs e)
        {
            SqlConnection konekcija = new SqlConnection();
            konekcija.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\lazemail13\Documents\Visual Studio 2015\Projects\E-Farm\WindowsFormsApplication1\Database1.mdf;Integrated Security=True;Connect Timeout=30";
            SqlCommand komanda = new SqlCommand();
            komanda.Connection = konekcija;
            komanda.CommandText = "INSERT INTO Drugs (ime_lek, kategorija_lek, Leci, cena)" +
                "VALUES(@ime_lek, @kategorija_lek, @Leci, @cena)";
            komanda.Parameters.AddWithValue("@ime_lek", tbIme.Text);
            komanda.Parameters.AddWithValue("@kategorija_lek", tbKategorija.Text);
            komanda.Parameters.AddWithValue("@Leci", tbLeci.Text);
            komanda.Parameters.AddWithValue("@cena", tbCena.Text);
            try
            {
                konekcija.Open();
                komanda.ExecuteNonQuery();
            }
            catch(Exception err)
            {
                lblPoraka.Text = err.Message;
            }
            finally
            {
                konekcija.Close();
            }
            PolniLista();
        }
    }
}
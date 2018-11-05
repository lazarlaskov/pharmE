using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farm_E
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            blBolka.Items.Clear();
            SqlConnection konekcija = new SqlConnection();
            konekcija.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\lazemail13\Documents\Visual Studio 2015\Projects\E-Farm\WindowsFormsApplication1\Database1.mdf;Integrated Security=True;Connect Timeout=30";
            SqlCommand komanda = new SqlCommand();
            komanda.Connection = konekcija;
            komanda.CommandText = "SELECT * FROM Drugs WHERE Leci=@Leci";
            komanda.Parameters.AddWithValue("@Leci", this.tbBolka.Text);
            try
            {
                konekcija.Open();
                SqlDataReader citac = komanda.ExecuteReader();
                while (citac.Read())
                {
                    if (citac.HasRows == true)
                    {
                        ListItem item = new ListItem();
                        item.Text = citac["ime_lek"].ToString();
                        item.Value = citac["Leci"].ToString();
                        blBolka.Items.Add(item);
                    }
                    else
                    {
                        lblPoraka.Text = "Болката не постои во базата.";
                    }
                }
                citac.Close();
            }
            catch { }
            finally
            {
                konekcija.Close();
            }
        }
    }
}
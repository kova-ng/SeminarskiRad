using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;
using System.IO;


public partial class Registracija : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void ButtonRegistracija_Click(object sender, EventArgs e)
    {
        if(this.TextBoxRegIme.Text!=string.Empty && 
            this.TextBoxRegPrezime.Text != string.Empty && 
            this.TextBoxRegUsername.Text != string.Empty && 
            this.TextBoxRegPass1.Text != string.Empty && 
            this.TextBoxRegPass2.Text != string.Empty)
        {
            string konekcijskiString = ConfigurationManager.ConnectionStrings["konekcijaNaBazu"].ConnectionString;

            OleDbConnection koneccija = new OleDbConnection(konekcijskiString);

            try
            {
                koneccija.Open();

                if (this.TextBoxRegPass1.Text != this.TextBoxRegPass2.Text)
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Info", "alert('Lozinke koje ste unijeli nisu iste');", true);
                    koneccija.Close();
                }

                OleDbCommand naredba = new OleDbCommand("INSERT INTO korisnik VALUES (@user,@lozinka,@ime,@prezime)", koneccija);
                naredba.Parameters.AddWithValue("@user", this.TextBoxRegUsername.Text);
                naredba.Parameters.AddWithValue("@lozinka", this.TextBoxRegPass1.Text);
                naredba.Parameters.AddWithValue("@ime", this.TextBoxRegIme.Text);
                naredba.Parameters.AddWithValue("@prezime", this.TextBoxRegPrezime.Text);
                

                int zapisan = naredba.ExecuteNonQuery();

                if (zapisan == 0)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "Info", "alert('Korisničko ime već postoji u bazi!');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Korisnik uspješno kreiran!');window.location ='login.aspx';", true);

                    string directoryPath = Server.MapPath(string.Format("~/Files/{0}/", TextBoxRegUsername.Text.Trim()));
                    if (!Directory.Exists(directoryPath))
                    {
                        Directory.CreateDirectory(directoryPath);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Direktorij već postoji');", true);
                    }

                    
                // Izvor: https://www.aspsnippets.com/Articles/Create-and-delete-folder-directory-in-ASPNet-using-C-and-VBNet.aspx
                }
                

            }
            catch
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Info", "alert('Pogreška u komunikaciji s bazom podataka!!!');", true);
            }
            finally
            {
                koneccija.Close();
            }
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Info", "alert('Sva polja moraju biti popunjena!!!!');", true);
        }
    }
}
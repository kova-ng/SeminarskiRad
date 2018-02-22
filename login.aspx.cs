using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void LoginKorisnik_Authenticate(object sender, AuthenticateEventArgs e)
    {
        
        string konekcijskiString = ConfigurationManager.ConnectionStrings["konekcijaNaBazu"].ConnectionString;

        OleDbConnection koneccija = new OleDbConnection(konekcijskiString);

        try
        {
            koneccija.Open();
            OleDbCommand naredba = new OleDbCommand("SELECT user FROM korisnik WHERE user=@ime AND password=@lozinka", koneccija);
            naredba.Parameters.AddWithValue("@ime", this.LoginKorisnik.UserName);
            naredba.Parameters.AddWithValue("@lozinka", this.LoginKorisnik.Password);
            OleDbDataReader podatak = naredba.ExecuteReader();

            if (podatak.HasRows==true)
            {
                e.Authenticated = true;
            }
            else
            {
                e.Authenticated = false;
            }

            podatak.Close();
        }
        catch
        {
            e.Authenticated = false;
        }
        finally
        {
            koneccija.Close();
        }

        
    }
  
}
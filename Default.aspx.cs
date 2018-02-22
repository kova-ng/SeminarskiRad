using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;
using System.Configuration;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if(User.Identity.IsAuthenticated==false)
        {
            Response.Redirect("~/login.aspx");
        }
        
        this.osvjezi();
        this.LabelVrijeme.Text = DateTime.Now.DayOfWeek.ToString() + ", " + DateTime.Now.Date.Day.ToString() + "." + DateTime.Now.Date.Month.ToString() + "." + DateTime.Now.Date.Year;


    }

    protected void ButtonUpload_Click(object sender, EventArgs e)
    {
        if(this.FileUploadDatoteka.HasFile)
        {
        string korisnikFolder = Page.User.Identity.Name; /* Izvor https://stackoverflow.com/questions/4176659/how-can-i-get-username-or-userid-from-loginname-control */
        string putanja = Server.MapPath("~/Files") + "\\" + korisnikFolder + "\\" + this.FileUploadDatoteka.FileName;
        
        this.FileUploadDatoteka.SaveAs(putanja);
        this.osvjezi();
        }
        
       
    }

    protected void osvjezi()
    {
        this.TableDatoteke.Rows.Clear();
        
        
        string direktorij = Server.MapPath("~/Files" + "\\" + Page.User.Identity.Name);
        DirectoryInfo podaciDirektorij = new DirectoryInfo(direktorij);
        FileInfo[] podaciDatoteke = podaciDirektorij.GetFiles();
        for (int i = 0; i < podaciDatoteke.Length; i++)
        {
            TableRow red = new TableRow();
            for(int j=0; j < 1; j++)
            {
                TableCell celija1 = new TableCell();
                celija1.Text = podaciDatoteke[i].Name;

                TableCell celija2 = new TableCell();

                Button dugme = new Button();
                dugme.ID = "dugme" + i;
                dugme.Text = "Download";
                dugme.ToolTip = podaciDatoteke[i].Name;
                dugme.Click += dajMiDatoteku;

                celija2.Controls.Add(dugme);
                red.Cells.Add(celija1);
                red.Cells.Add(celija2);
            }
                
            this.TableDatoteke.Rows.Add(red);
        }

        
    }
    protected void dajMiDatoteku(object sender, EventArgs e)
    {
        Button temp = ((Button)sender);
        string ime = temp.ToolTip;
        string putanja = Server.MapPath("~/Files" + "\\" + Page.User.Identity.Name + "\\" + ime);

        Response.ContentType = "application/octet-stream";
        Response.AppendHeader("Content-Disposition", "attachment;filename=\"" + ime + "\"");
        Response.TransmitFile(putanja);
        Response.End();
    }
    
   
}
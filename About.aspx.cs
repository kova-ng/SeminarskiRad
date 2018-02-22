using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated == false)
        {
            Response.Redirect("~/login.aspx");
        }

        this.LabelVrijeme.Text = DateTime.Now.DayOfWeek.ToString() + ", " + DateTime.Now.Date.Day.ToString() + "." + DateTime.Now.Date.Month.ToString() + "." + DateTime.Now.Date.Year;



    }

}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Driver_Dashboard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //this.lblLatitude.Text = hfLat.Value;
            //this.lblLongitude.Text = hfLon.Value;
            lblmobile.Text = Session["mobile"].ToString();
        }
        catch (Exception e1)
        {
            //string msg = e1.Message;
        }
    }
}
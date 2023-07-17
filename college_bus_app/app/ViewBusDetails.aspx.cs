using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewBusDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lblmobile.Text = Session["mobile"].ToString();
            GetStudentBusNO();
            GetBusDetails();
        }
        catch (Exception e1)
        {
            //string msg = e1.Message;
        }
    }

    private void GetBusDetails()
    {
        try
        {
            con.Open();
            string Query = String.Format("select bus_no, bus_name, route, driver_name, driver_contact, bus_timetable_image from add_bus where bus_no='" + lblstud_bus_no.Text + "'");
            SqlCommand cmd = new SqlCommand(Query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lbldriver_bus_no.Text = dr["bus_no"].ToString();
                lblbus_name.Text = dr["bus_name"].ToString();
                lblroute.Text = dr["route"].ToString();
                lbldriver_name.Text = dr["driver_name"].ToString();
                lbldriver_no.Text = dr["driver_contact"].ToString();
            }
            dr.Close();
            con.Close();
        }
        catch (Exception ex)
        {
            //System.Windows.Forms.MessageBox.Show("errror" + ex);
        }
        finally
        {
            //Response.Write("<script> alert('Amount Deposited Successfully'); </script>");
        }
    }

    private void GetStudentBusNO()
    {
        try
        {
            con.Open();
            string Query = String.Format("select bus_no from student where mobile='" + lblmobile.Text + "'");
            SqlCommand cmd = new SqlCommand(Query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblstud_bus_no.Text = dr["bus_no"].ToString();
            }
            dr.Close();
            con.Close();
        }
        catch (Exception ex)
        {
            //System.Windows.Forms.MessageBox.Show("errror" + ex);
        }
        finally
        {
            //Response.Write("<script> alert('Amount Deposited Successfully'); </script>");
        }
    }
}
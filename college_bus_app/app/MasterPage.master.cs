using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["mobile"] != null)
            {
                if (Session == Session["mobile"])
                {
                    try
                    {
                        con.Open();
                        string Query = String.Format("select mobile from add_account where and mobile='" + Session["mobile"].ToString() + "'");
                        SqlCommand cmd = new SqlCommand(Query, con);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            lblmobile.Text = dr["mobile"].ToString();
                        }
                        dr.Close();
                        con.Close();
                    }
                    catch (Exception ex)
                    {
                        //System.Windows.Forms.MessageBox.Show("errror" + ex);
                    }
                }
                else
                {
                    try
                    {
                        con.Open();
                        string Query = String.Format("select mobile from add_account where mobile='" + Session["mobile"].ToString() + "'");
                        SqlCommand cmd = new SqlCommand(Query, con);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            lblmobile.Text = dr["mobile"].ToString();
                        }
                        dr.Close();
                        con.Close();
                    }
                    catch (Exception ex)
                    {
                        //System.Windows.Forms.MessageBox.Show("errror" + ex);
                    }
                }
            }
            else
            {
                //lblname.Text = "ADMIN";
            }
        }
        catch (Exception e1)
        {
            //string msg = e1.Message;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class withdrawal : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lblmobile.Text = Session["mobile"].ToString();
            bind_data();
        }
        catch (Exception e1)
        {
            //string msg = e1.Message;
        }
    }

    private void bind_data()
    {
        try
        {
            con.Open();
            string Query = String.Format("select opn_bal from add_account where mobile='" + lblmobile.Text + "'");
            SqlCommand cmd = new SqlCommand(Query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblopn_bal.Text = dr["opn_bal"].ToString();
            }
            dr.Close();
            con.Close();
        }
        catch (Exception ex)
        {
            //System.Windows.Forms.MessageBox.Show("errror" + ex);
        }
    }

    protected void btnwithdrawal_Click(object sender, EventArgs e)
    {
        Cal();
        UpdateData();
        InsertData();
        txtamount.Text = "";
    }

    private void InsertData()
    {
        try
        {
            con.Open();
            string query = String.Format("insert into transactions (mobile_no, withdrawal, deposite, date, time) values (@mobile_no, @withdrawal, @deposite, @date, @time) ");
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@mobile_no", lblmobile.Text);
            cmd.Parameters.AddWithValue("@withdrawal", txtamount.Text);
            cmd.Parameters.AddWithValue("@deposite", "0");
            cmd.Parameters.AddWithValue("@date", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@time", DateTime.Now.ToShortTimeString());

            cmd.ExecuteNonQuery();
        }
        catch (Exception e1)
        {
            string msg = e1.Message;
        }
        finally
        {
            con.Close();
            Response.Write("<script> alert('Amount Deposited Successfully'); </script>");
        }
    }

    private void Cal()
    {
        try
        {
            float opn_bal = 0, withdra = 0, r_bal = 0;

            opn_bal = float.Parse(lblopn_bal.Text.ToString());
            withdra = float.Parse(txtamount.Text.ToString());

            r_bal = opn_bal - withdra;
            lblrem_bal.Text = r_bal.ToString();
        }
        catch (Exception e1)
        {
            //string msg = e1.Message;
        }
    }

    private void UpdateData()
    {
        try
        {
            con.Open();
            string query = String.Format("update add_account set withdrawal=@withdrawal, opn_bal=@opn_bal where mobile = '{0}'", lblmobile.Text);
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@withdrawal", txtamount.Text);
            cmd.Parameters.AddWithValue("@opn_bal", lblrem_bal.Text);
            cmd.Parameters.AddWithValue("@mobile", lblmobile.Text);

            cmd.ExecuteNonQuery();
        }
        catch (Exception e1)
        {
            string msg = e1.Message;
        }
        finally
        {
            con.Close();
            Response.Write("<script> alert('Amount Withdrawal Successfully'); </script>");
        }
    }
}
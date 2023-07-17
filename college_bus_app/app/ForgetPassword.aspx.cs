using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Get_Password();
        }
        catch (Exception e1)
        {
            //string msg = e1.Message;
        }
    }

    private void Get_Password()
    {
        if (txtemail.Text != "")
        {
            try
            {
                string maincon = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
                MySqlConnection sqlcon = new MySqlConnection(maincon);
                sqlcon.Open();
                string Query = String.Format("select password from login where email='" + txtemail.Text + "'");
                MySqlCommand cmd = new MySqlCommand(Query, sqlcon);
                MySqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblpassword.Text = dr["password"].ToString();
                }
                dr.Close();
                sqlcon.Close();
            }
            catch (Exception ex)
            {
                //string msg = ex.Message;
            }
            finally
            {
                //sqlcon.Close();
            }
        }
        else
        {
            //
        }
    }

    protected void btnsend_email_Click(object sender, EventArgs e)
    {
        send_mail();
    }

    private void send_mail()
    {
        try
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("Hello.<br/><br/>");
            sb.Append("Your Password Is:" + lblpassword.Text + "<br/><br/>");
            sb.Append("Thank You For Contact With Us...! <br/><br/>");
            MailMessage message = new System.Net.Mail.MailMessage("info@idealtechinfo.com", txtemail.Text, "Welcome...", sb.ToString());
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "mail.idealtechinfo.com";
            smtp.Port = 25;
            smtp.Credentials = new System.Net.NetworkCredential("info@idealtechinfo.com", "Mpiti@123");
            smtp.EnableSsl = true;
            message.IsBodyHtml = true;
            NEVER_EAT_POISON_Disable_CertificateValidation();
            smtp.Send(message);
        }
        catch (Exception e1)
        {
            //string msg = e1.Message;
        }
        finally
        {
            //con.Close();
            txtemail.Text = "";
            Response.Write("<script>alert('Message Send..');</script>");
        }
    }

    private void NEVER_EAT_POISON_Disable_CertificateValidation()
    {
        // Disabling certificate validation can expose you to a man-in-the-middle attack
        // which may allow your encrypted message to be read by an attacker
        // https://stackoverflow.com/a/14907718/740639
        ServicePointManager.ServerCertificateValidationCallback =
            delegate (
                object s,
                X509Certificate certificate,
                X509Chain chain,
                SslPolicyErrors sslPolicyErrors
            ) {
                return true;
            };
    }
}
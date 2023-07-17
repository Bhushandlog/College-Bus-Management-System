using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Student : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            SqlCommand com;
            string str;

            con.Open();
            str = "select * from student where id='" + GridView1.SelectedRow.Cells[0].Text.Trim() + "'";
            com = new SqlCommand(str, con);
            SqlDataReader rd = com.ExecuteReader();
            if (rd.Read())
            {
                string Id = GridView1.SelectedRow.Cells[0].Text;
                Session["id"] = Id;

                Response.Redirect("Add-Student.aspx");
            }
        }
        catch (Exception e1)
        {
            //string message = e1.Message;
        }
        finally
        {
            con.Close();
        }
    }

    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    Button btn = e.CommandSource as Button;
    //    string text = btn.Text;

    //    if (e.CommandName == "approve")
    //    {
    //        if (btn.Text == "Not Approved")
    //        {
    //            string commandName = e.CommandName;
    //            int rowIndex = Convert.ToInt32(e.CommandArgument);

    //            for (int i = 0; i < GridView1.Rows.Count; i++)
    //            {
    //                GridViewRow gRow = GridView1.Rows[i];
    //                System.Web.UI.WebControls.Button txtbox1 = (System.Web.UI.WebControls.Button)gRow.FindControl("btnapprove");
    //                string boy = txtbox1.Text.Trim();


    //                try
    //                {
    //                    con.Open();
    //                    string query = String.Format("update student set status=@status where id='{0}'", rowIndex);
    //                    SqlCommand cmd = new SqlCommand(query, con);

    //                    cmd.Parameters.AddWithValue("@status", "1");
    //                    cmd.Parameters.AddWithValue("@id", rowIndex);

    //                    cmd.ExecuteNonQuery();
    //                }
    //                catch (Exception e1)
    //                {
    //                    string msg = e1.Message;
    //                }
    //                finally
    //                {
    //                    con.Close();
    //                }

    //                GridViewRow gRow2 = GridView1.Rows[i];
    //                System.Web.UI.WebControls.Button txtbox2 = (System.Web.UI.WebControls.Button)gRow.FindControl("btnapprove");
    //                string boy2 = txtbox2.Text.Trim();

    //                txtbox2.Text = "Approved";
    //                txtbox2.BackColor = System.Drawing.Color.Green;
    //                txtbox2.Enabled = false;

    //                txtbox1.Enabled = false;


    //            }
    //        }
    //    }
    //}

    //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    for (int i = 0; i < GridView1.Rows.Count; i++)
    //    {

    //        GridViewRow gRow = GridView1.Rows[i];
    //        System.Web.UI.WebControls.Button txtbox2 = (System.Web.UI.WebControls.Button)gRow.FindControl("btnapprove");
    //        string s = txtbox2.Text.Trim();

    //        //Button active = (Button)e.Row.FindControl("btnactive");
    //        //active.BackColor = System.Drawing.Color.Green;

    //        if (txtbox2.Text == "Approved")
    //        {
    //            txtbox2.BackColor = System.Drawing.Color.Green;
    //            txtbox2.Enabled = false;
    //        }
    //        else
    //        {
    //            txtbox2.BackColor = System.Drawing.Color.Red;
    //            txtbox2.Enabled = true;
    //        }
    //    }
    //}
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



namespace db_project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-DTRA294\\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True");
            conn.Open();
            string id = TextBox3.Text;
            string password = TextBox2.Text;
            SqlCommand cmd = new SqlCommand("select s_id,pass from student where s_id='" + TextBox3.Text + "'and pass='" + TextBox2.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
               // Response.Write("Login success ");
                string query = "UPDATE student SET logged_in='" + 1 + "' WHERE s_id = '" + id + "'";
                SqlCommand cm = new SqlCommand(query, conn);
                cm.ExecuteNonQuery();
                cm.Dispose();
                Response.Redirect("WebForm4.aspx");
               // System.Diagnostics.Process.Start(NavigateURL='~/WebForm1.aspx');
            }
            else
            {
                SqlCommand cm = new SqlCommand("select id,pass from admin where id='" + TextBox3.Text + "'and pass='" + TextBox2.Text + "'", conn);
                SqlDataAdapter dat = new SqlDataAdapter(cm);
                DataTable dtt = new DataTable();
                dat.Fill(dtt);
                if (dtt.Rows.Count > 0)
                {
                    Response.Write("Login success ");
                    string query = "UPDATE admin SET logged_in='" + 1 + "' WHERE id = '" + id + "'";
                    SqlCommand cmdd = new SqlCommand(query, conn);
                    cmdd.ExecuteNonQuery();
                    cmdd.Dispose();
                    Response.Redirect("WebForm8.aspx");
                    // System.Diagnostics.Process.Start(NavigateURL='~/WebForm1.aspx');
                }
                else
                {
                   

                    Response.Write("Invalid Login please check username and password");
                }
            }
            conn.Close();
        }
    }
}
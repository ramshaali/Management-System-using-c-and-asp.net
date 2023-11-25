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
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string constr = @"Data Source=DESKTOP-DTRA294\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(constr))
            {

                using (SqlCommand cmd = new SqlCommand("SELECT a_name,id FROM admin WHERE  logged_in = 1"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        TextBox39.Text = " " + sdr["a_name"].ToString() + " " + sdr["id"].ToString() + " ";

                    }
                    con.Close();
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-DTRA294\\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True");
            conn.Open();
            SqlCommand cm = new SqlCommand("SELECT id FROM admin WHERE  logged_in = 1");

            cm.Connection = conn;
            //conn.Open();
            cm.ExecuteNonQuery();
            int num = Convert.ToInt32(cm.ExecuteScalar());

            cm.Dispose();



            string t = TextBox23.Text;
            string fy = TextBox24.Text;
            string a = TextBox32.Text;
            string c = TextBox33.Text;



            SqlCommand cmd = new SqlCommand("finance_checking", conn);


            cmd.CommandType = CommandType.StoredProcedure;
            //  @fy INT, @fi INT, @o INT, @a INT,@fa INT, @ffa INT


            cmd.Parameters.Add(new SqlParameter("@fi", fy));

            cmd.Parameters.Add(new SqlParameter("@t", t));

            cmd.Parameters.Add(new SqlParameter("@a", a));

            cmd.Parameters.Add(new SqlParameter("@comm", c));



            // execute the command
            cmd.ExecuteReader();

            conn.Close();
            Response.Write("alert('Token Generated ! ')");
         
            Response.Redirect("Webform8.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform8.aspx");
        }
    }
    }

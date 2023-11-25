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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string constr = @"Data Source=DESKTOP-DTRA294\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT s_name, s_id FROM student WHERE logged_in = 1"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                       TextBox1.Text = "  " +  sdr["s_name"].ToString() + "     " +  sdr["s_id"].ToString();

                    }
                    con.Close();
                }
            }
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

       

        protected void Button4_Click(object sender, EventArgs e)
        {


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-DTRA294\\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True");
            conn.Open();



           // Response.Write("alert('hers! ')");



            SqlCommand cm = new SqlCommand("SELECT f_status FROM student WHERE logged_in = 1", conn);
            cm.ExecuteNonQuery();
            int count = Convert.ToInt32(cm.ExecuteScalar());
            cm.Dispose();
            conn.Close();
            if (count == 0)
            {
                Response.Write("alert('Form  Not Submitted! ')");
                Response.Redirect("WebForm1.aspx");
            }
            else if (count == 4)
            {
                Response.Redirect("WebForm5.aspx");

            }
            else
            {
                Response.Redirect("WebForm6.aspx");
            }

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm7.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-DTRA294\\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True");
            conn.Open();



            // Response.Write("alert('hers! ')");



            SqlCommand cm = new SqlCommand("SELECT f_status FROM student WHERE logged_in = 1", conn);
            cm.ExecuteNonQuery();
            int count = Convert.ToInt32(cm.ExecuteScalar());
            cm.Dispose();
            conn.Close();
            if (count == 4)
            {
                Response.Redirect("WebForm3.aspx");
                
            }
            else 
            {
                Response.Write("alert('Degree not Issued! ')");
                //Response.Redirect("WebForm1.aspx");

            }
            

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-DTRA294\\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True");
            conn.Open();

            SqlCommand cm;





            string query = "UPDATE  student SET logged_in='" + 0 + "' WHERE logged_in = '" + 1 + "'";
            cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();
            cm.Dispose();
            conn.Close();
            Response.Redirect("WebForm2.aspx");
        }
    }
}
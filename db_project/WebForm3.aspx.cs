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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string constr = @"Data Source=DESKTOP-DTRA294\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(constr))
            {

                using (SqlCommand cmd = new SqlCommand("SELECT s_id,s_name FROM student WHERE  logged_in = 1"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        TextBox39.Text = " " + sdr["s_name"].ToString() + " " + sdr["s_id"].ToString() + " ";

                    }
                    con.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-DTRA294\\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True");
            conn.Open();

            SqlCommand cm;
            string name = sname.Text;
            string id = reg.Text;
            string s_cnic = cnic.Text;
            string fs_name = fname.Text;
            string deg_s = deg.Text;
            string maj = major.Text;
            string ssec = sec.Text;
            string year = yr.Text;
            string scgpa = cgpa.Text;

            using (SqlCommand command = conn.CreateCommand())
            {
                command.CommandText = "UPDATE  degree_form SET s_name=@n,  cnic = @c, f_name = @f, degree = @d, majors = @m, section = @s, pass_year = @y,  cgpa = @cg WHERE s_id = @i";
                command.Parameters.AddWithValue("@n", name);
                command.Parameters.AddWithValue("@i", id);
                command.Parameters.AddWithValue("@c", s_cnic);
                command.Parameters.AddWithValue("@f", fs_name);
                command.Parameters.AddWithValue("@d", deg_s);
                command.Parameters.AddWithValue("@m", maj);
                command.Parameters.AddWithValue("@s", ssec);
                command.Parameters.AddWithValue("@y", year);
                command.Parameters.AddWithValue("@cg", scgpa);


                command.ExecuteNonQuery();

            }


             
            conn.Close();
            Response.Write("alert('DATA UPDATED')");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform4.aspx");
        }
    }
}


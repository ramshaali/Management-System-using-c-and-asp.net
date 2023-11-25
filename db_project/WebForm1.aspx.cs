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
    public partial class WebForm1 : System.Web.UI.Page
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
                        TextBox39.Text = "Hi       " + sdr["s_name"].ToString() + "     " + sdr["s_id"].ToString();

                    }
                    con.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
          
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-DTRA294\\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True");
            conn.Open();

            SqlCommand cm;
            string name = TextBox23.Text;
            string id = TextBox24.Text;
            string cnic = TextBox25.Text;
            string f_name = TextBox26.Text;
            string s_add = TextBox27.Text;
            string email = TextBox29.Text;
            string phone = TextBox30.Text;
            string f_date = TextBox31.Text;
            string img = TextBox9.Text;
            string deg = TextBox32.Text;
            string maj = TextBox33.Text;
            string sec = TextBox34.Text;
            string year = TextBox36.Text;
            string ch_no = TextBox38.Text;
            string cgpa = TextBox35.Text;
            string d = "--";

            string query = "Insert into degree_form(s_name, s_id, cnic, f_name, s_add, email,phone_no,f_date,img, degree,majors,section,pass_year, ch_no,cgpa,deg_issue_date ) values ('" + name + "', '" + id + "', '" + cnic + "', '" + f_name + "','" + s_add + "','" + email + "','" + phone + "','" + f_date + "','" + img + "','" + deg + "','" + maj + "','" + sec + "','" + year + "','" + ch_no + "','" + cgpa + "','" + d + "')";
            cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();
            cm.Dispose();

            SqlCommand cd;




            string query2 = "UPDATE student SET f_status='" + 1 + "' WHERE s_id = '" + id + "'";
            cd = new SqlCommand(query2, conn);
            cd.ExecuteNonQuery();
            cd.Dispose();
            conn.Close();
            Response.Write("alert('Form Submitted! ')");
            Response.Redirect("WebForm4.aspx");
        }
    }
}
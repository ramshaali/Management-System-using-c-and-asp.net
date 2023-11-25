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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"Data Source=DESKTOP-DTRA294\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(constr))
            {

                using (SqlCommand cmd = new SqlCommand("SELECT degree_form.s_name,student.s_id, degree_form.degree, degree_form.majors, degree_form.cgpa, deg_issue_date FROM student, degree_form WHERE student.s_id=degree_form.s_id and logged_in = 1"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                       TextBox1.Text= " " + sdr["s_name"].ToString() + " ";
                        TextBox2.Text = " " + sdr["s_id"].ToString() + " ";
                        TextBox3.Text = " " + sdr["degree"].ToString() + sdr["majors"].ToString() + " ";
                        TextBox4.Text = " " + sdr["cgpa"].ToString() + " ";
                        date.Text= " " + sdr["deg_issue_date"].ToString() + " ";
                    }
                    con.Close();
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform4.aspx");
        }
    }
}
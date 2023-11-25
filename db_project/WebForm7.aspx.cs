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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string constr = @"Data Source=DESKTOP-DTRA294\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(constr))
            {

                using (SqlCommand cmd = new SqlCommand("SELECT s_name,s_id, degree, majors, cgpa, section FROM student WHERE  logged_in = 1"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        sname.Text = " " + sdr["s_name"].ToString() + " ";
                        reg.Text = " " + sdr["s_id"].ToString() + " ";
                        deg.Text = " " + sdr["degree"].ToString() + " ";
                        cgpa.Text = " " + sdr["cgpa"].ToString() + " ";
                        sec.Text = " " + sdr["section"].ToString() + " ";
                        major.Text = " " + sdr["majors"].ToString() + " ";
                    }
                    con.Close();
                }



                 
              
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter("select  sd.course as Course_Name ,sd.s_credit as Credit_Hours, sd.grade as Grade from student_course_data sd, student s where s.s_id = sd.s_id and s.logged_in = 1", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView2.DataSource = dt;
                GridView2.DataBind();
                    con.Close();
              
            }
     
    }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("WebForm4.aspx");
        }
    }
}
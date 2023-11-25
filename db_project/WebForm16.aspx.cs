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
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"Data Source=DESKTOP-DTRA294\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(constr))
            {

                using (SqlCommand cmdd = new SqlCommand("SELECT a_name,id FROM admin WHERE  logged_in = 1"))
                {
                    con.Open();
                    cmdd.CommandType = CommandType.Text;
                    cmdd.Connection = con;

                    using (SqlDataReader sdr = cmdd.ExecuteReader())
                    {
                        sdr.Read();
                        TextBox1.Text = " " + sdr["a_name"].ToString() + " " + sdr["id"].ToString() + " ";

                    }
                    DateTime myDateTime = DateTime.Now;
                    string sqlFormattedDate = myDateTime.ToString("yyyy-MM-dd");
                    SqlDataAdapter da = new SqlDataAdapter("select token as Token#, student.s_name as Student_Name, f_status as Form_status from student, one_stop, degree_form, admin where student.s_id = degree_form.s_id and one_stop.form_id = degree_form.s_id  and f_date= '" + sqlFormattedDate + "' and admin.logged_in=1 ", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    con.Close();
                }

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm12.aspx");
        }
    }
}
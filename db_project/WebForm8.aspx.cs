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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string constr = @"Data Source=DESKTOP-DTRA294\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(constr))
            {
                int num;
                using (SqlCommand cmd = new SqlCommand("SELECT dep FROM admin WHERE  logged_in = 1"))
                {
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    num = Convert.ToInt32(cmd.ExecuteScalar());
                    cmd.Dispose();
                  SqlCommand cmdd = new SqlCommand("SELECT a_name,id FROM admin WHERE  logged_in = 1");
                      
                            cmdd.CommandType = CommandType.Text;
                            cmdd.Connection = con;
                          
                            using (SqlDataReader sdr = cmdd.ExecuteReader())
                            {
                                sdr.Read();
                                TextBox1.Text = " " + sdr["a_name"].ToString() + " " + sdr["id"].ToString() + " ";

                            }
                           
                   
                    if (num == 1)
                    {

                        SqlDataAdapter da = new SqlDataAdapter("select s_id as Student_Id, s_name as Student_Name,f_date as Form_Submission_Date from degree_form", con);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        GridView2.DataSource = dt;
                        GridView2.DataBind();
                    } else if (num == 2)
                    {
                        SqlDataAdapter da = new SqlDataAdapter("select student.s_id AS Student_Id, student.s_name as Student_Name, f_date as Form_Submission_Date, f_status as Form_Status, fyp_grade As FYP_GRADE, student.cgpa AS CGPA, token AS TOKEN#, fyp_id AS REQUEST_ID from degree_form, student, one_stop, admin, fyp where student.s_id = degree_form.s_id and one_stop.form_id = degree_form.s_id and  fyp.id = one_stop.fyp_id and fyp.a_id = admin.id and admin.logged_in = 1  and( f_status=2 or fyp.accepted=0)", con);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        GridView2.DataSource = dt;
                        GridView2.DataBind();
                    } else if (num == 3)
                    {
                        SqlDataAdapter da = new SqlDataAdapter("select student.s_id As Student_Id, student.s_name As Student_Name,f_date As Submitted_Date, f_status as Form_Status, dues As Remaining_Dues, ch_no as Degree_Form_Fee, student.cgpa  AS CGPA,token  AS TOKEN#, finance_id AS REQUEST_ID from degree_form, student, one_stop, admin, finance where student.s_id = degree_form.s_id and one_stop.form_id = degree_form.s_id and  finance.id = one_stop.finance_id and finance.a_id = admin.id and admin.logged_in = 1 and (f_status=3 or finance.accepted=0) ", con);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        GridView2.DataSource = dt;
                        GridView2.DataBind();
                    } else if (num == 4)
                    {
                        Response.Redirect("WebForm12.aspx");
                    
                    }



                    con.Close();
                }






            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-DTRA294\\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True");
            conn.Open();

            SqlCommand cm;





            string query = "UPDATE  admin SET logged_in='" + 0 + "' WHERE logged_in = '" + 1 + "'";
            cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();
            cm.Dispose();
            conn.Close();
            Response.Redirect("WebForm2.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string constr = @"Data Source=DESKTOP-DTRA294\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);




            SqlCommand cmd = new SqlCommand("SELECT dep FROM admin WHERE  logged_in = 1");

            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            int num = Convert.ToInt32(cmd.ExecuteScalar());

            cmd.Dispose();
            if (num == 1)
            {
                Response.Redirect("WebForm9.aspx");
            }else if (num == 2)
            {
                Response.Redirect("WebForm10.aspx");
            }else if (num == 3)
            {
                Response.Redirect("WebForm11.aspx");
            }
        }
    }
}
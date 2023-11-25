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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"Data Source=DESKTOP-DTRA294\SQLEXPRESS;Initial Catalog=onestop;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(constr))
            {

                using (SqlCommand cmd = new SqlCommand("SELECT fyp.accepted, f_status,token FROM student, one_stop, degree_form, fyp,finance WHERE student.s_id=degree_form.s_id and degree_form.s_id=one_stop.form_id and  fyp.id = one_stop.fyp_id and finance.id = one_stop.finance_id  and logged_in = 1"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        if (sdr["f_status"].ToString() == "1")
                        {
                            TextBox1.Text = sdr["one_stop.token"].ToString();
                            TextBox2.Text = "ONE STOP";
                            TextBox3.Text = "15 Days";
                        }
                        else if (sdr["f_status"].ToString() == "2")
                        {
                            TextBox1.Text =" "+ sdr["token"].ToString() + " ";
                            TextBox2.Text = "FYP";
                            TextBox3.Text = "10 Days";
                        }
                        else if (sdr["f_status"].ToString() == "3")
                        {
                            TextBox1.Text = sdr["token"].ToString();
                            TextBox2.Text = "FINANCE";
                            TextBox3.Text = "5 Days";
                        }
                        else if (sdr["f_status"].ToString() == "5")
                        {
                            TextBox1.Text = sdr["token"].ToString();
                            TextBox2.Text = "PENDING";

                           


                              if (sdr["accepted"].ToString() == "0")
                            {
                                TextBox3.Text = "Fyp = not clear";
                            }
                            else 
                            {
                               
                                
                                    TextBox3.Text = "Finance = dues not clear";
                             


                            }
                            
                        }
                    }
                    con.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm4.aspx");
        }
    }
}
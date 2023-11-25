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
    public partial class WebForm12 : System.Web.UI.Page
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
                    con.Close();
                }
            }

                }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm15.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm14.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm13.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm16.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm17.aspx");
        }
    }
}
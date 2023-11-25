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
    public partial class WebForm17 : System.Web.UI.Page
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
               
                    SqlDataAdapter da = new SqlDataAdapter("select t_date as Time_Date, t_function as Operation, t_table as On_Table from history ", con);
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
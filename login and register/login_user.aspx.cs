using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace CRIMINAL_MANAGEMENT_SYSTEM.login_and_register
{
    public partial class register_or_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["U_R_ConnectionString"].ConnectionString);
            con.Open();
            String checkuser = "select count (*) from Users_Records where User_Id='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                con.Open();
                String checkPasswordQuery = "select Password from Users_Records where User_Id='" + TextBox1.Text +"'";
                SqlCommand passcom = new SqlCommand(checkPasswordQuery, con);
                String Password = passcom.ExecuteScalar().ToString().Replace(" ","");
                if (Password == TextBox2.Text)
                {
                    Session["Username"] = TextBox1.Text;
                    Response.Redirect("User_Home.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, typeof(Page), "popup", "alert('Login failed!!!')", true);
                }
               
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "popup", "alert('Check Username!!!')", true);
            }
        }
    }
}
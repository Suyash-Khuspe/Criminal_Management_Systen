using Microsoft.Exchange.WebServices.Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRIMINAL_MANAGEMENT_SYSTEM.login_and_register
{
    public partial class User_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    string User_Id = Session["Username"].ToString();

                    FetchUserInfo(User_Id);
                }
            }
        }
        private void FetchUserInfo(string User_Id) 
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["U_R_ConnectionString"].ConnectionString);
                con.Open();
                string checkuser = "select * from Users_Records where User_Id= @userid";
                SqlCommand com = new SqlCommand(checkuser, con);

               com.Parameters.AddWithValue("@userid", User_Id);

                SqlDataReader reader = com.ExecuteReader();

                if (reader.Read())
                {
                    lblIdNum.Text = reader["Id_num"].ToString();
                    lblUserId.Text = reader["User_Id"].ToString();
                    lblName.Text = reader["Name"].ToString();
                    lblGender.Text = reader["Gender"].ToString();
                    lblAge.Text = reader["Age"].ToString();
                    lblCity.Text = reader["City"].ToString();
                    lblState.Text = reader["State"].ToString();
                    
                }
                else
                {

                }
            }
            catch(Exception ex)
            {

            }
        }
    }
}
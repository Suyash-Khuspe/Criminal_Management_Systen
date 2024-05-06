using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRIMINAL_MANAGEMENT_SYSTEM.Admin_Folder
{
    public partial class Add_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateStates();
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["U_R_ConnectionString"].ConnectionString);
            con.Open();
            String checkuser = "select count (*) from Users_Records where Name='" + TextBox3.Text +"'";
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Redirect("User already exists...!");
            }
            con.Close();
        }

        private void PopulateStates()
        {
            List<string> states = new List<string>
            {
                "Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chhattisgarh",
                "Goa", "Gujarat", "Haryana", "Himachal Pradesh", "Jharkhand",
                "Karnataka", "Kerala", "Madhya Pradesh", "Maharashtra", "Manipur",
                "Meghalaya", "Mizoram", "Nagaland", "Odisha", "Punjab", "Rajasthan",
                "Sikkim", "Tamil Nadu", "Telangana", "Tripura", "Uttar Pradesh",
                "Uttarakhand", "West Bengal"
            };

            ddlStates.DataSource = states;
            ddlStates.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["U_R_ConnectionString"].ConnectionString);
                con.Open();
                String insertQuery = "insert into Users_Records (Id_num,User_Id,Name,Gender,Age,City,State,Password) values (@idnum,@userid,@name,@gender,@age,@city,@state,@password)";
                SqlCommand com = new SqlCommand(insertQuery, con);
                com.Parameters.AddWithValue("@idnum", TextBox1.Text);
                com.Parameters.AddWithValue("@userid", TextBox2.Text);
                com.Parameters.AddWithValue("@name", TextBox3.Text);
                com.Parameters.AddWithValue("@gender", DropDownListGender.SelectedItem.ToString());
                com.Parameters.AddWithValue("@age", TextBox4.Text);
                com.Parameters.AddWithValue("@city", TextBox5.Text);
                com.Parameters.AddWithValue("@state", ddlStates.SelectedItem.ToString());
                com.Parameters.AddWithValue("@password", TextBox6.Text);
                com.ExecuteNonQuery();
                Response.Write("Users Details Added successfully....!");
                Response.Redirect("Added_User_Records.aspx");

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());

            }
        }
    }
}
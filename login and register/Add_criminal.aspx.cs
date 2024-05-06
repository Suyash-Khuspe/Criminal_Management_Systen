using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;

namespace CRIMINAL_MANAGEMENT_SYSTEM.login_and_register
{
    public partial class Add_criminal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateStates();
            }
        }

        private void PopulateStates()
        {
            string[] states = {
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
            if (FileUpload1.HasFile)
            {
                string fileName = Path.GetFileName(FileUpload1.FileName);
                string extension = Path.GetExtension(fileName).ToLower();
                string[] allowedExtensions = { ".jpg", ".jpeg", ".png", ".bmp" };

                if (Array.IndexOf(allowedExtensions, extension) != -1)
                {
                    string connectionString = ConfigurationManager.ConnectionStrings["U_R_ConnectionString"].ConnectionString;

                    try
                    {
                        using (SqlConnection con = new SqlConnection(connectionString))
                        {
                            con.Open();

                            string insertQuery = "INSERT INTO Criminal_data (Criminal_Id, Name, Gender, DOB, Age, Crime, State, Bail_Status, Jail_Term, Photo) " +
                                                 "VALUES (@criminalid, @name, @gender, @dob, @age, @crime, @state, @bailstatus, @jailterm, @photo)";

                            using (SqlCommand com = new SqlCommand(insertQuery, con))
                            {
                                com.Parameters.AddWithValue("@criminalid", TextBox1.Text);
                                com.Parameters.AddWithValue("@name", TextBox2.Text);
                                com.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Text);
                                com.Parameters.AddWithValue("@dob", DateTextBox.Text);
                                com.Parameters.AddWithValue("@age", TextBox3.Text);
                                com.Parameters.AddWithValue("@crime", DropDownList2.SelectedItem.Text);
                                com.Parameters.AddWithValue("@state", ddlStates.SelectedItem.Text);
                                com.Parameters.AddWithValue("@bailstatus", DropDownList3.SelectedItem.Text);
                                com.Parameters.AddWithValue("@jailterm", TextBox4.Text);
                                com.Parameters.AddWithValue("@photo", fileName);

                                com.ExecuteNonQuery();

                                string filePath = Server.MapPath("~/Images/" + fileName);
                                FileUpload1.SaveAs(filePath);

                                ClientScript.RegisterStartupScript(GetType(), "Script", "<Script>alert('Image added')</Script>");
                                Response.Redirect("View_C_R.aspx");
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        ClientScript.RegisterStartupScript(GetType(), "Script", $"<Script>alert('Error: {ex.Message}')</Script>");
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "Script", "<Script>alert('Please upload only .jpg, .jpeg, .bmp, or .png files')</Script>");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "Script", "<Script>alert('Please select a file to upload')</Script>");
            }
        }
    }
}

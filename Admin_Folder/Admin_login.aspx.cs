using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRIMINAL_MANAGEMENT_SYSTEM.Admin_Folder
{
    public partial class Admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string fixedUserId = "Admin";
            string fixedPassword = "Admin@123";

            
            string enteredUserId = TextBox1.Text.Trim();
            string enteredPassword = TextBox2.Text.Trim();

            
            if (enteredUserId == fixedUserId && enteredPassword == fixedPassword)
            {
                Session["LoggedIn"] = true;
                Response.Redirect("Admin_Home.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "popup", "alert('Login failed!!!')", true);
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRIMINAL_MANAGEMENT_SYSTEM.login_and_register
{

    public partial class User_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Profile.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            if (Session["Username"] != null)
            {   
                Session.Remove("Username");
            }
            Session.RemoveAll();
            Response.Redirect("login_user.aspx");

        }
    }
}
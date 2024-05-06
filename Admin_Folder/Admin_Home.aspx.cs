using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRIMINAL_MANAGEMENT_SYSTEM.Admin_Folder
{
    public partial class Admin_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Clear(); 
            Session.Abandon();

            Response.Redirect("Admin_login.aspx");
        }
    }
}
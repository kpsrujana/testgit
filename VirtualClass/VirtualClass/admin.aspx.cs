using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualClass
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (admintext.Text=="admin" && passtext.Text=="admin" )
            {
                Response.Redirect("admins.aspx");
            }
            else
            {
                Response.Redirect("admin.aspx");
            }
        }
    }
}
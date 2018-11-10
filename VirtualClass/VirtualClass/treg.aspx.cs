using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace VirtualClass
{
    public partial class treg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection sqlcon = new SqlConnection(connectionString);
            sqlcon.Open();
            String commandString = "insert into treg(tname,cont,address,email,namet,tpassword)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+TextBox4.Text+"','" + teachertext.Text + "','" + passtext.Text + "')";
            SqlCommand sqlcmd = new SqlCommand(commandString, sqlcon);
            sqlcmd.ExecuteNonQuery();
            sqlcmd.Clone();
            sqlcon.Close();
            Label8.Text = "sumitted successfully";
            Response.Redirect("tlogin.aspx");
        }
       

        
       
    }
}
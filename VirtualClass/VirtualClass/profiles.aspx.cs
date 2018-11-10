using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace VirtualClass
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con=new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True");
        string uname;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = Session["id"].ToString();
            if (Session["user"] == null)
            {
                if (Request.Cookies["LoginCookies"] != null)
                {
                    Response.Redirect("tlogin.aspx");
                }
            }
            else
            {
               //Label1.Text = "Hello..." + Session["User"].ToString() + "!";
               //Label1.Text = " welcome.. " + Request.Cookies["LoginCookies"].Value;
               uname = Request.Cookies["LoginCookies"].Value;
               Label1.Text = "Welcome " + uname;
               Label1.ForeColor = System.Drawing.Color.Blue;
              

            }
        }
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("teacher.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("treport.aspx");
        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("tquery.aspx");
        }

        

        

        

        public int tname { get; set; }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            String connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection sqlcon = new SqlConnection(connectionString);
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand(connectionString, sqlcon);
            cmd.CommandText = "select * from treg where namet='"+ uname +"'";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                

                Label2.Text = dr["tname"].ToString();
                TextBox2.Text = dr["cont"].ToString();
                TextBox3.Text = dr["address"].ToString();
                TextBox4.Text = dr["email"].ToString();
                


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            con.Open();
            String commandString = "update treg set cont='" + TextBox2.Text + "',address='" + TextBox3.Text + "',email='" + TextBox4.Text + "' where namet='" + uname + "'";
            SqlCommand sqlcmd = new SqlCommand(commandString, con);
            sqlcmd.ExecuteNonQuery();
            Label3.Text = "updated successfully";
            Label3.ForeColor = System.Drawing.Color.Blue;
            sqlcmd.Clone();
            con.Close();
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
               
                 
          
                    Session.RemoveAll();  
                    Response.Redirect("Default.aspx");  
    
        }
    }
}
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
    public partial class tlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from treg where namet=@namet and tpassword =@tpassword", con);
                cmd.Parameters.AddWithValue("@namet", teachertext.Text);
                cmd.Parameters.AddWithValue("@tpassword", passtext.Text);
                //con.Close();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                //con.Open();
                //int i = cmd.ExecuteNonQuery();
                //con.Close();
                if (dt.Rows.Count > 0)
                {

                    Session["User"] = teachertext.Text;
                    HttpCookie cookies = new HttpCookie("LoginCookies");
                    cookies.Value = teachertext.Text;
                    cookies.Expires = DateTime.Now.AddHours(15);
                    Response.Cookies.Add(cookies);
                    Response.Redirect("profiles.aspx");


                    //Session["id"] = teachertext.Text;  
                    //Session.RemoveAll(); 

                    

                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                }
                con.Close();
            }
            //catch (Exception ex)
            //{
            //    Response.Redirect(ex.Message + "<br/>" + ex.StackTrace);
            //}
            finally
            {
              // con.Close();
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("treg.aspx");
        }



        public HttpCookie LoginCookies { get; set; }
    }
}
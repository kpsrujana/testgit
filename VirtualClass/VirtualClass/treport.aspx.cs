using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Data.SqlClient;
using System.IO;

namespace VirtualClass
{
    public partial class treport : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand(ConString, con);
            //cmd.CommandText = "select * from FilePDF";
            cmd.CommandText = "select * from FilePDF";
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand(ConString, con);
            //cmd.CommandText = "select * from FilePDF";
            cmd.CommandText = "select * from FilePDF1";
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand(ConString, con);
            //cmd.CommandText = "select * from FilePDF";
            cmd.CommandText = "select * from FilePDF2 ";
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand(ConString, con);
            //cmd.CommandText = "select * from FilePDF";
            cmd.CommandText = "select * from FilePDF3 ";
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand(ConString, con);
            //cmd.CommandText = "select * from FilePDF";
            cmd.CommandText = "select * from FilePDF4 ";
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand(ConString, con);
            //cmd.CommandText = "select * from FilePDF";
            cmd.CommandText = "select * from FilePDF5 ";
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

      
    }
}
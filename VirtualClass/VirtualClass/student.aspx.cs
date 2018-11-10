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
    public partial class student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click1(object sender, EventArgs e)
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

        protected void Button2_Click(object sender, EventArgs e)
        {

            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand(ConString, con);
            cmd.CommandText = "select * from FilePDF1";
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand(ConString, con);
            cmd.CommandText = "select * from FilePDF2";
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView3.DataSource = ds;
            GridView3.DataBind();
            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("slogin.aspx");
        }

        
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
             String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select name,type,data from  FilePDF where id=@id",con);
            //cmd.CommandText = "select name,type,data from  FilePDF where id=@id";
            //cmd.CommandType = CommandType.Text;
            //SqlCommand com = new SqlCommand("select Name,type,data from  PDFFiles where id=@id", con);

            cmd.Parameters.AddWithValue("id", GridView1.SelectedRow.Cells[1].Text);

            SqlDataReader dr = cmd.ExecuteReader();




            if (dr.Read())
            {

                Response.Clear();

                Response.Buffer = true;

                Response.ContentType = dr["type"].ToString();

                Response.AddHeader("content-disposition", "attachment;filename=" + dr["name"].ToString());     // to open file prompt Box open or Save file         

                Response.Charset = "";

                Response.Cache.SetCacheability(HttpCacheability.NoCache);

                Response.BinaryWrite((byte[])dr["data"]);
                

                Response.End();
            }
            con.Close();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select name1,type1,data1 from  FilePDF1 where id=@id", con);
            //cmd.CommandText = "select name,type,data from  FilePDF where id=@id";
            //cmd.CommandType = CommandType.Text;
            //SqlCommand com = new SqlCommand("select Name,type,data from  PDFFiles where id=@id", con);

            cmd.Parameters.AddWithValue("id", GridView2.SelectedRow.Cells[1].Text);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Clear();
                Response.Buffer = true;
                Response.ContentType = dr["type1"].ToString();
                Response.AddHeader("content-disposition", "attachment;filename=" + dr["name1"].ToString());     // to open file prompt Box open or Save file         
                Response.Charset = "";
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.BinaryWrite((byte[])dr["data1"]);
                Response.End();
            }
            con.Close();
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select name2,type2,data2 from FilePDF2 where id=@id", con);
            //cmd.CommandText = "select name,type,data from  FilePDF where id=@id";
            //cmd.CommandType = CommandType.Text;
            //SqlCommand com = new SqlCommand("select Name,type,data from  PDFFiles where id=@id", con);

            cmd.Parameters.AddWithValue("id", GridView3.SelectedRow.Cells[1].Text);

            SqlDataReader dr = cmd.ExecuteReader();




            if (dr.Read())
            {

                Response.Clear();

                Response.Buffer = true;

                Response.ContentType = dr["type2"].ToString();

                Response.AddHeader("content-disposition", "attachment;filename=" + dr["name2"].ToString());     // to open file prompt Box open or Save file         

                Response.Charset = "";

                Response.Cache.SetCacheability(HttpCacheability.NoCache);

                Response.BinaryWrite((byte[])dr["data2"]);

                Response.End();
            }
            con.Close();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand(ConString, con);
            cmd.CommandText = "select * from FilePDF3";
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView4.DataSource = ds;
            GridView4.DataBind();
            con.Close();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand(ConString, con);
            cmd.CommandText = "select * from FilePDF4";
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView5.DataSource = ds;
            GridView5.DataBind();
            con.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand(ConString, con);
            cmd.CommandText = "select * from FilePDF5";
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView6.DataSource = ds;
            GridView6.DataBind();
            con.Close();

        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select name3,type3,data3 from  FilePDF3 where id=@id", con);
            //cmd.CommandText = "select name,type,data from  FilePDF where id=@id";
            //cmd.CommandType = CommandType.Text;
            //SqlCommand com = new SqlCommand("select Name,type,data from  PDFFiles where id=@id", con);

            cmd.Parameters.AddWithValue("id", GridView4.SelectedRow.Cells[1].Text);

            SqlDataReader dr = cmd.ExecuteReader();




            if (dr.Read())
            {

                Response.Clear();

                Response.Buffer = true;

                Response.ContentType = dr["type3"].ToString();

                Response.AddHeader("content-disposition", "attachment;filename=" + dr["name3"].ToString());     // to open file prompt Box open or Save file         

                Response.Charset = "";

                Response.Cache.SetCacheability(HttpCacheability.NoCache);

                Response.BinaryWrite((byte[])dr["data3"]);

                Response.End();
            }
            con.Close();
        }

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select name4,type4,data4 from  FilePDF4 where id=@id", con);
            //cmd.CommandText = "select name,type,data from  FilePDF where id=@id";
            //cmd.CommandType = CommandType.Text;
            //SqlCommand com = new SqlCommand("select Name,type,data from  PDFFiles where id=@id", con);

            cmd.Parameters.AddWithValue("id", GridView5.SelectedRow.Cells[1].Text);

            SqlDataReader dr = cmd.ExecuteReader();




            if (dr.Read())
            {

                Response.Clear();

                Response.Buffer = true;

                Response.ContentType = dr["type4"].ToString();

                Response.AddHeader("content-disposition", "attachment;filename=" + dr["name4"].ToString());     // to open file prompt Box open or Save file         

                Response.Charset = "";

                Response.Cache.SetCacheability(HttpCacheability.NoCache);

                Response.BinaryWrite((byte[])dr["data4"]);

                Response.End();
            }
            con.Close();
        }

        protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select name5,type5,data5 from  FilePDF5 where id=@id", con);
            //cmd.CommandText = "select name,type,data from  FilePDF where id=@id";
            //cmd.CommandType = CommandType.Text;
            //SqlCommand com = new SqlCommand("select Name,type,data from  PDFFiles where id=@id", con);

            cmd.Parameters.AddWithValue("id", GridView6.SelectedRow.Cells[1].Text);

            SqlDataReader dr = cmd.ExecuteReader();




            if (dr.Read())
            {

                Response.Clear();

                Response.Buffer = true;

                Response.ContentType = dr["type5"].ToString();

                Response.AddHeader("content-disposition", "attachment;filename=" + dr["name5"].ToString());     // to open file prompt Box open or Save file         

                Response.Charset = "";

                Response.Cache.SetCacheability(HttpCacheability.NoCache);

                Response.BinaryWrite((byte[])dr["data5"]);

                Response.End();
            }
            con.Close();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("squery.aspx");
        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx"); 
        }

        }


    }

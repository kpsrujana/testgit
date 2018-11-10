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
    public partial class teacher : System.Web.UI.Page
    {
        string uname;
        protected void Page_Load(object sender, EventArgs e)
        {
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
                //Label1.Text = "Welcome " + uname;

            }
        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            Label2.Visible = true;
            //DateTime dt=new DateTime();
            string filePath = FileUpload1.PostedFile.FileName;          // getting the file path of uploaded file
            string filename1 = Path.GetFileName(filePath);               // getting the file name of uploaded file
            string ext = Path.GetExtension(filename1);                      // getting the file extension of uploaded file
            string type = String.Empty;
            string dtime = System.DateTime.Now.ToString();
            //dt.ToString("");

            if (!FileUpload1.HasFile)
            {
                Label2.Text = "Please Select File";                          //if file uploader has no file selected
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            else
                if (FileUpload1.HasFile)
                {
                    try
                    {

                        switch (ext)                                         // this switch code validate the files which allow to upload only PDF  file 
                        {
                            case ".pdf":
                                type = "application/pdf";
                                break;
                           


                        }

                        if (type != String.Empty)
                        {
                            //connection();
                            Stream fs = FileUpload1.PostedFile.InputStream;
                            BinaryReader br = new BinaryReader(fs);                                 //reads the   binary files
                            Byte[] bytes = br.ReadBytes((Int32)fs.Length);    //counting the file length into bytes
                            String query = "insert into FilePDF (name,type,data,dtime,uname)values (@name, @type, @data,@dtime,@uname)";   //insert query
                            //String query = "insert into FilePDF (name,type,data)" + " values (@name, @type, @data)";
                            SqlCommand com = new SqlCommand(query, con);
                           //
                            com.Parameters.Add("@name", SqlDbType.VarChar).Value = filename1;
                            com.Parameters.Add("@type", SqlDbType.VarChar).Value = type;
                            com.Parameters.Add("@data", SqlDbType.Binary).Value = bytes;
                            com.Parameters.Add("@dtime", SqlDbType.DateTime).Value=dtime;
                            com.Parameters.Add("@uname", SqlDbType.VarChar).Value = uname;
                            com.ExecuteNonQuery();
                            Label2.ForeColor = System.Drawing.Color.Green;
                            Label2.Text = "File Uploaded Successfully";
                        }
                        else
                        {
                            Label2.ForeColor = System.Drawing.Color.Red;
                            Label2.Text = "Select Only PDF Files  ";                              // if file is other than speified extension 
                        }
                    }
                    catch (Exception ex)
                    {
                        Label2.Text = "Error: " + ex.Message.ToString();
                    }
                }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            Label4.Visible = true;
            //DateTime dt=new DateTime();
            string filePath = FileUpload2.PostedFile.FileName;          // getting the file path of uploaded file
            string filename1 = Path.GetFileName(filePath);               // getting the file name of uploaded file
            string ext = Path.GetExtension(filename1);                      // getting the file extension of uploaded file
            string type = String.Empty;
            string dtime1 = System.DateTime.Now.ToString();
           
            //dt.ToString("");

            if (!FileUpload2.HasFile)
            {
                Label4.Text = "Please Select File"; //if file uploader has no file selected
                Label4.ForeColor = System.Drawing.Color.Red;
            }
            else
                if (FileUpload2.HasFile)
                {
                    try
                    {

                        switch (ext)                                         // this switch code validate the files which allow to upload only PDF  file 
                        {
                            case ".pdf":
                                type = "application/pdf";
                                break;



                        }

                        if (type != String.Empty)
                        {
                            //connection();
                            Stream fs = FileUpload2.PostedFile.InputStream;
                            BinaryReader br = new BinaryReader(fs);                                 //reads the   binary files
                            Byte[] bytes = br.ReadBytes((Int32)fs.Length);    //counting the file length into bytes
                            String query = "insert into FilePDF1 (name1,type1,data1,dtime1,uname)values (@name1, @type1, @data1,@dtime1,@uname)";   //insert query
                            //String query = "insert into FilePDF (name,type,data)" + " values (@name, @type, @data)";
                            SqlCommand com = new SqlCommand(query, con);
                            //
                            com.Parameters.Add("@name1", SqlDbType.VarChar).Value = filename1;
                            com.Parameters.Add("@type1", SqlDbType.VarChar).Value = type;
                            com.Parameters.Add("@data1", SqlDbType.Binary).Value = bytes;
                            com.Parameters.Add("@dtime1", SqlDbType.DateTime).Value = dtime1;
                            com.Parameters.Add("@uname", SqlDbType.VarChar).Value = uname;
                           

                            com.ExecuteNonQuery();
                            Label4.ForeColor = System.Drawing.Color.Green;
                            Label4.Text = "File Uploaded Successfully";
                        }
                        else
                        {
                            Label4.ForeColor = System.Drawing.Color.Red;
                            Label4.Text = "Select Only PDF Files  ";                              // if file is other than speified extension 
                        }
                    }
                    catch (Exception ex)
                    {
                        Label4.Text = "Error: " + ex.Message.ToString();
                    }
                }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            Label6.Visible = true;
            string filePath = FileUpload3.PostedFile.FileName;          // getting the file path of uploaded file
            string filename1 = Path.GetFileName(filePath);               // getting the file name of uploaded file
            string ext = Path.GetExtension(filename1);                      // getting the file extension of uploaded file
            string type = String.Empty;
            string dtime2 = System.DateTime.Now.ToString();

            if (!FileUpload3.HasFile)
            {
               Label6.Text = "Please Select File";                          //if file uploader has no file selected
               Label6.ForeColor = System.Drawing.Color.Red;
            }
            else
                if (FileUpload3.HasFile)
                {
                    try
                    {

                        switch (ext)                                         // this switch code validate the files which allow to upload only PDF  file 
                        {
                            case ".pdf":
                                type = "application/pdf";
                                break;

                        }

                        if (type != String.Empty)
                        {
                            //connection();
                            Stream fs = FileUpload3.PostedFile.InputStream;
                            BinaryReader br = new BinaryReader(fs);                                 //reads the   binary files
                            Byte[] bytes = br.ReadBytes((Int32)fs.Length);    //counting the file length into bytes
                            String query = "insert into FilePDF2 (name2,type2,data2,dtime2,uname)" + " values (@name2, @type2, @data2,@dtime2,@uname)";   //insert query
                            SqlCommand com = new SqlCommand(query, con);
                            com.Parameters.Add("@name2", SqlDbType.VarChar).Value = filename1;
                            com.Parameters.Add("@type2", SqlDbType.VarChar).Value = type;
                            com.Parameters.Add("@data2", SqlDbType.Binary).Value = bytes;
                            com.Parameters.Add("@dtime2", SqlDbType.DateTime).Value = dtime2;
                            com.Parameters.Add("@uname", SqlDbType.VarChar).Value =uname;
                            com.ExecuteNonQuery();
                            Label6.ForeColor = System.Drawing.Color.Green;
                            Label6.Text = "File Uploaded Successfully";
                        }
                        else
                        {
                            Label6.ForeColor = System.Drawing.Color.Red;
                            Label6.Text = "Select Only PDF Files  ";                              // if file is other than speified extension 
                        }
                    }
                    catch (Exception ex)
                    {
                        Label6.Text = "Error: " + ex.Message.ToString();
                    }
                }
        }

       

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("profiles.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            Label10.Visible = true;
            string filePath = FileUpload4.PostedFile.FileName;          // getting the file path of uploaded file
            string filename1 = Path.GetFileName(filePath);               // getting the file name of uploaded file
            string ext = Path.GetExtension(filename1);                      // getting the file extension of uploaded file
            string type = String.Empty;
            string dtime3 = System.DateTime.Now.ToString();

            if (!FileUpload4.HasFile)
            {
                Label10.Text = "Please Select File";                          //if file uploader has no file selected
                Label10.ForeColor = System.Drawing.Color.Red;
            }
            else
                if (FileUpload4.HasFile)
                {
                    try
                    {

                        switch (ext)                                         // this switch code validate the files which allow to upload only PDF  file 
                        {
                            case ".pdf":
                                type = "application/pdf";
                                break;

                        }

                        if (type != String.Empty)
                        {
                            //connection();
                            Stream fs = FileUpload4.PostedFile.InputStream;
                            BinaryReader br = new BinaryReader(fs);                                 //reads the   binary files
                            Byte[] bytes = br.ReadBytes((Int32)fs.Length);    //counting the file length into bytes
                            String query = "insert into FilePDF3 (name3,type3,data3,dtime3,uname)" + " values (@name3, @type3, @data3,@dtime3,@uname)";   //insert query
                            SqlCommand com = new SqlCommand(query, con);
                            com.Parameters.Add("@name3", SqlDbType.VarChar).Value = filename1;
                            com.Parameters.Add("@type3", SqlDbType.VarChar).Value = type;
                            com.Parameters.Add("@data3", SqlDbType.Binary).Value = bytes;
                            com.Parameters.Add("@dtime3", SqlDbType.DateTime).Value = dtime3;
                            com.Parameters.Add("@uname", SqlDbType.VarChar).Value = uname;
                            com.ExecuteNonQuery();
                            Label10.ForeColor = System.Drawing.Color.Green;
                            Label10.Text = "File Uploaded Successfully";
                        }
                        else
                        {
                            Label10.ForeColor = System.Drawing.Color.Red;
                            Label10.Text = "Select Only PDF Files  ";                              // if file is other than speified extension 
                        }
                    }
                    catch (Exception ex)
                    {
                        Label10.Text = "Error: " + ex.Message.ToString();
                    }
                }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            Label11.Visible = true;
            string filePath = FileUpload6.PostedFile.FileName;          // getting the file path of uploaded file
            string filename1 = Path.GetFileName(filePath);               // getting the file name of uploaded file
            string ext = Path.GetExtension(filename1);                      // getting the file extension of uploaded file
            string type = String.Empty;
            string dtime4 = System.DateTime.Now.ToString();

            if (!FileUpload6.HasFile)
            {
                Label11.Text = "Please Select File";                          //if file uploader has no file selected
                Label11.ForeColor = System.Drawing.Color.Red;
            }
            else
                if (FileUpload6.HasFile)
                {
                    try
                    {

                        switch (ext)                                         // this switch code validate the files which allow to upload only PDF  file 
                        {
                            case ".pdf":
                                type = "application/pdf";
                                break;

                        }

                        if (type != String.Empty)
                        {
                            //connection();
                            Stream fs = FileUpload6.PostedFile.InputStream;
                            BinaryReader br = new BinaryReader(fs);                                 //reads the   binary files
                            Byte[] bytes = br.ReadBytes((Int32)fs.Length);    //counting the file length into bytes
                            String query = "insert into FilePDF4 (name4,type4,data4,dtime4,uname)" + " values (@name4, @type4, @data4,@dtime4,@uname)";   //insert query
                            SqlCommand com = new SqlCommand(query, con);
                            com.Parameters.Add("@name4", SqlDbType.VarChar).Value = filename1;
                            com.Parameters.Add("@type4", SqlDbType.VarChar).Value = type;
                            com.Parameters.Add("@data4", SqlDbType.Binary).Value = bytes;
                            com.Parameters.Add("@dtime4", SqlDbType.DateTime).Value = dtime4;
                            com.Parameters.Add("@uname", SqlDbType.VarChar).Value = uname;
                            com.ExecuteNonQuery();
                            Label11.ForeColor = System.Drawing.Color.Green;
                            Label11.Text = "File Uploaded Successfully";
                        }
                        else
                        {
                            Label11.ForeColor = System.Drawing.Color.Red;
                            Label11.Text = "Select Only PDF Files  ";                              // if file is other than speified extension 
                        }
                    }
                    catch (Exception ex)
                    {
                        Label11.Text = "Error: " + ex.Message.ToString();
                    }
                }
        }


        protected void Button6_Click1(object sender, EventArgs e)
        {
           

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            Label12.Visible = true;
            string filePath = FileUpload7.PostedFile.FileName;          // getting the file path of uploaded file
            string filename1 = Path.GetFileName(filePath);               // getting the file name of uploaded file
            string ext = Path.GetExtension(filename1);                      // getting the file extension of uploaded file
            string type = String.Empty;
            string dtime5 = System.DateTime.Now.ToString();

            if (!FileUpload7.HasFile)
            {
                Label12.Text = "Please Select File";                          //if file uploader has no file selected
                Label12.ForeColor = System.Drawing.Color.Red;
            }
            else
                if (FileUpload7.HasFile)
                {
                    try
                    {

                        switch (ext)                                         // this switch code validate the files which allow to upload only PDF  file 
                        {
                            case ".pdf":
                                type = "application/pdf";
                                break;

                        }

                        if (type != String.Empty)
                        {
                            //connection();
                            Stream fs = FileUpload7.PostedFile.InputStream;
                            BinaryReader br = new BinaryReader(fs);                                 //reads the   binary files
                            Byte[] bytes = br.ReadBytes((Int32)fs.Length);    //counting the file length into bytes
                            String query = "insert into FilePDF5 (name5,type5,data5,dtime5,uname)" + " values (@name5, @type5, @data5,@dtime5,@uname)";   //insert query
                            SqlCommand com = new SqlCommand(query, con);
                            com.Parameters.Add("@name5", SqlDbType.VarChar).Value = filename1;
                            com.Parameters.Add("@type5", SqlDbType.VarChar).Value = type;
                            com.Parameters.Add("@data5", SqlDbType.Binary).Value = bytes;
                            com.Parameters.Add("@dtime5", SqlDbType.DateTime).Value = dtime5;
                            com.Parameters.Add("@uname", SqlDbType.VarChar).Value = uname;
                            com.ExecuteNonQuery();
                            Label12.ForeColor = System.Drawing.Color.Green;
                            Label12.Text = "File Uploaded Successfully";
                        }
                        else
                        {
                            Label12.ForeColor = System.Drawing.Color.Red;
                            Label12.Text = "Select Only PDF Files  ";                              // if file is other than speified extension 
                        }
                    }
                    catch (Exception ex)
                    {
                        Label12.Text = "Error: " + ex.Message.ToString();
                    }
                }
        }

        

        
        }
    }

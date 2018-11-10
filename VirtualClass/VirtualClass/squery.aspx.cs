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
    public partial class squery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=G:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
           
            SqlConnection sqlcon = new SqlConnection(connectionString);
            sqlcon.Open();
           
            String commandString = "insert into qry(subject,question)values('"+TextBox1.Text+"','"+TextBox2.Text+"')";
            
            SqlCommand sqlcmd = new SqlCommand(commandString, sqlcon);
            Label5.Text="query submitted succesully";

            sqlcmd.ExecuteNonQuery();
            sqlcmd.Clone();
            sqlcon.Close();
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            String ConString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=G:\proj\VirtualClass\VirtualClass\App_Data\VirtualClass.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            SqlCommand cmd = new SqlCommand(ConString, con);
            //cmd.CommandText = "select * from FilePDF";
            cmd.CommandText = "select * from aqry";
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
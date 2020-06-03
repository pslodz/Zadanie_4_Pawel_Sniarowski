using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Zadanie4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(con.State==ConnectionState.Open)
            {
                con.Close();

            }

            con.Open();

            disp_data();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into table1 values('"+Imie.Text+"','"+Nazwisko.Text+"','"+Kraj.Text+"',' "+Nota.Text+"',' "+Skok.Text+"')";
            cmd.ExecuteNonQuery();

            Imie.Text = "";
            Nazwisko.Text ="";
            Kraj.Text = "";
            Nota.Text = "";
            Skok.Text= "";

            disp_data();

        }

        public void  disp_data()

        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from  table1";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText ="delete from table1 where ID='"+ oldid.Text +"'";
            cmd.ExecuteNonQuery();
            Imie.Text = "";
            disp_data();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update table1 set Imie='"+Imie.Text+"', Nazwisko='"+Nazwisko.Text+"', Kraj='"+Kraj.Text+"', Nota='', Skok=''                           where id=" +Convert.ToInt32(oldid.Text)+"";
            cmd.ExecuteNonQuery();

            Imie.Text = "";
            Nazwisko.Text = "";
            Kraj.Text = "";
            Nota.Text = "";
            Skok.Text = "";

            disp_data();

        }

        
    }
}
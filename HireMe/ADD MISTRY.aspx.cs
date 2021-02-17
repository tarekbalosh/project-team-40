using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using HireMe.Class;

namespace HM
{
    public partial class ADD_MISTRY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lab_pa2.Text = Lab_pa1.Text = Lab_name.Text = Lab_gmail.Text = "*";

        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            string str = @"Data Source=DESKTOP-9TQ6G6V\SQLEXPRESS;Initial Catalog=HireMe;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            string str2 = @"Data Source=DESKTOP-LUTST1O\SQLEXPRESS;Initial Catalog=DB_HM;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection con = new SqlConnection(str);
            string sql = "select ministry_email,ministry_name from tb_ministry";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            var email = gmail.Value;
            Data_Access das = new Data_Access();
            if (das.check_empty(name.Value))
            {

                Lab_name.Text = "this field is empty";
                return;
                
            }
            if (das.check_empty(pa1.Value))
            {
                Lab_pa1.Text = "this field is empty";
                return;
            }
            if (das.check_empty(pa2.Value))
            {
                Lab_pa2.Text = "this field is empty";
                return;
            }
            if (das.check_empty(gmail.Value))
            {
                Lab_gmail.Text = "this field is empty";
                return;
            }
            bool ck_re_pass = false;
            if (pa1.Value == pa2.Value)
                ck_re_pass = true;
            if (ck_re_pass== false)
            {
                Lab_pa2.Text = "password not match";
                return;
            }
           
            for (int i = 0; i < dt.Rows.Count; i++)
            { 
                 if(name.Value == dt.Rows[i][1].ToString())
                {
                    Response.Write("<script>alert('this name already exists')</script>");
                    return;
                }
            }
            if(pa1.Value != pa2.Value)
            {
                 Response.Write("<script>alert('this email already exists')</script>");
                    return;
            }
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (email == dt.Rows[i][0].ToString())
                {
                    Response.Write("<script>alert('this email already exists')</script>");
                    return;
                }
            }
            string insert = "insert into tb_ministry(ministry_email,ministry_name,ministry_password,id_admin)values('"+ email+"','"+ name.Value+"','"+ pa1.Value+"','1')";
            con.Open();

            cmd = new SqlCommand(insert, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('added complet')</script>");
            name.Value = pa1.Value = gmail.Value = pa2.Value = " ";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace HM
{
    public partial class ADD_MISTRY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


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
            name.Value = pa1.Value = gmail.Value = pa2.Value = " ";
        }
    }
}
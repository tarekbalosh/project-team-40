using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Add_University
{
    public partial class Display_Universities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=HireMe;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("select id_university,university_name,university_name,university_email,university_password,university_country from tb_university", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}
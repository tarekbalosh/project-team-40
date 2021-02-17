using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HireMe
{
    public partial class Add_Condition : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*------------------------Add Selct Vacancy----------------------*/
            //string conn = ConfigurationManager.ConnectionStrings["tcc_con"].ConnectionString;
            string conn = @"Data Source=DELL\SQLEXPRESS;Initial Catalog=HireMe;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection sqlConnection = new SqlConnection(conn);
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM tb_vacancy;", sqlConnection);
            sqlConnection.Open();
            select_spec.DataSource = sqlCommand.ExecuteReader();
            select_spec.DataTextField = "vacancy_name";
            select_spec.DataValueField = "id_vacancy";
            select_spec.DataBind();
            sqlConnection.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HireMe.Class;

namespace HireMe
{
    public partial class Add_Condition : System.Web.UI.Page
    {
        Data_Access data_Access;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*------------------------Add Select Vacancy----------------------*/            
            data_Access = new Data_Access();
            var data_access = data_Access.SelectData("SELECT * FROM tb_vacancy;");
            data_Access.open_connection();            
            select_spec.DataSource = data_access;
            select_spec.DataTextField = "vacancy_name";
            select_spec.DataValueField = "id_vacancy";
            select_spec.DataBind();
            data_Access.close_connection();
        }

        protected void btn_addCond_Click(object sender, EventArgs e)
        {
            data_Access = new Data_Access();
            please.Text = "";
            if (data_Access.check_empty(condiname.Text))
            {
                //يرجى اضافة اسم شرط
                please.Text = "Please add a condition name or No number or space can be entered";
                return;
            }

            var data_emp_cond = data_Access.SelectData("SELECT id_vacancy,emp_condition_type FROM tb_emp_condition;");
            //var data_vac_mini = data_Access.SelectData("SELECT id_vacancy FROM tb_vac_mini;");
            data_Access.open_connection();

            string id_vac, cond_type;
            for (int j = 0; j < data_emp_cond.Rows.Count; j++)
            {
                id_vac = data_emp_cond.Rows[j][0].ToString();
                cond_type = data_emp_cond.Rows[j][1].ToString();
            }
            try
            {
                data_Access.EX_Non_Query_Insert("INSERT INTO tb_emp_condition(id_vacancy,emp_condition_name,emp_condition_type) VALUES('" + select_spec.Text + "','" + condiname.Text + "','" + select_type.Value + "')");
                Response.Write("<script>alert('Added')</script>");
                return;
            }
            catch
            {
                Response.Redirect("Add Condition.aspx");
                return;
            }
            finally
            {
                data_Access.close_connection();
            }    
        }

        protected void condiname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("control admin.aspx");
        }
    }
}
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
            var data_emp_cond = data_Access.SelectData("SELECT id_vacancy,emp_condition_type FROM tb_emp_condition;");
            //var data_vac_mini = data_Access.SelectData("SELECT id_vacancy FROM tb_vac_mini;");
            data_Access.open_connection();

            string id_vac, cond_type;
            
            int i = 0;
            do
            {
                id_vac = data_emp_cond.Rows[i][0].ToString();
                cond_type = data_emp_cond.Rows[i][1].ToString();

                if (data_Access.check_empty(condiname.Text))
                {
                    //يرجى اضافة اسم شرط
                    please.Text = "Please add a condition name";
                    return;
                }
                else
                {
                    if (data_Access.check_string(condiname.Text) && data_Access.check_number(condiname.Text) != false) 
                    {
                        if (select_spec.DataValueField == id_vac && select_type.Value == cond_type)
                        {
                            //الشرط موجود
                            Response.Write("<script>alert('Condition exists')</script>");
                            return;
                        }
                        else if (select_spec.DataValueField == id_vac && select_type.Value != cond_type)
                        {
                            //اضافة الشرط
                            data_Access.EX_Non_Query_Insert("INSERT INTO tb_emp_condition(id_vacancy,emp_condition_name,emp_condition_type) VALUES('" + select_spec.Value + "','" + condiname.Text + "','" + select_type.Value + "')");
                            Response.Write("<script>alert('Added')</script>");
                            return;
                        }
                        else
                        {
                            //اضافة الشرط
                            data_Access.EX_Non_Query_Insert("INSERT INTO tb_emp_condition(id_vacancy,emp_condition_name,emp_condition_type) VALUES('" +select_spec.Value + "','" + condiname.Text + "','" + select_type.Value + "')");
                            Response.Write("<script>alert('Added')</script>");
                            return;
                        }
                    }
                    else
                    {
                        //لا يمكن ادخال رقم او فراغ
                        please.Text = "No number or space can be entered";
                        return;
                    }
                }
                i++;
            } while (i < data_emp_cond.Rows.Count);
            data_Access.close_connection();
            
        }

        protected void condiname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_Back_Click(object sender, EventArgs e)
        {

        }
    }
}
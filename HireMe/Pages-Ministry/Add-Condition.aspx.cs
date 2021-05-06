using HireMe.Class;
using System;

namespace HireMe.Pages_Ministry
{
    public partial class Add_Condition : System.Web.UI.Page
    {
        Data_Access da = new Data_Access();
        protected void Page_Load(object sender, EventArgs e)
        {
            var vacancy_name =da.SelectData("select id_vacancy,vacancy_name from tb_vacancy");
            if (!IsPostBack)
            {
            type_specialization_for_cond.DataSource = vacancy_name;
            type_specialization_for_cond.DataTextField = "vacancy_name";
            type_specialization_for_cond.DataValueField = "id_vacancy";
            type_specialization_for_cond.DataBind();
            }
        }

        //-----------------------------------SideBar-------------------------------------//
        protected void function_link_add_vacany(object sender, EventArgs e)
        {
            Response.Redirect("Add-Vacancy.aspx");
        }
        protected void function_link_update_vacany(object sender, EventArgs e)
        {
            Response.Redirect("Update-Vacancy.aspx");
        }
        protected void function_link_add_condition(object sender, EventArgs e)
        {
            Response.Redirect("Add-Condition.aspx");
        }
        protected void function_link_update_condition(object sender, EventArgs e)
        {
            Response.Redirect("Update-Condition.aspx");
        }
        protected void function_link_view_cond_vac(object sender, EventArgs e)
        {
            Response.Redirect("All-View.aspx");
        }

        //-----------------------------------ButtonEvent-------------------------------------//
        protected void function_btn_Add_Condition(object sender, EventArgs e)
        {
            var condation_name = name_condition_new.Text;
            var condition_type = type_condition_new.SelectedValue;
            var vacncy_id = type_specialization_for_cond.SelectedValue;
            da.EX_Non_Query_Insert("insert into emp_condition(emp_condition_name,emp_condition_type,id_vacancy) values(" + condation_name + ","+condition_type+","+ vacncy_id + ")");
        }

        protected void type_specialization_for_cond_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
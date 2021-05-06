using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HireMe.Class;

namespace HireMe.Pages_Ministry
{
    public partial class Add_Vacancy : System.Web.UI.Page
    {
            Data_Access da = new Data_Access();
        protected void Page_Load(object sender, EventArgs e)
        {
            var specialization = da.SelectData("select university_name from tb_university");
            if (!IsPostBack)
            {
            name_specialization_new.DataSource = specialization;
            name_specialization_new.DataTextField = "university_name";
            name_specialization_new.DataValueField = "univercity_name";
            name_specialization_new.DataBind();
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
        protected void function_btn_Add_Vacancy(object sender, EventArgs e)
        {
            var avg = avg_specialization_new.Text;
            var count = count_specialization_new.Text;
            var name = name_specialization_new.SelectedValue;
            var type = type_specialization_new.SelectedValue;
            da.EX_Non_Query_Insert("insert into tb_vacancy(vacancy_count,vacancy_avg,vacancy_name,vacancy_type) values(" + count+","+avg+","+name+","+type+")");
        }

        protected void name_specialization_new_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
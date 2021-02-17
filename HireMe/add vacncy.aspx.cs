using HireMe.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HireMe
{
    public partial class add_vacncy : System.Web.UI.Page
    {
        Data_Access ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label_avg.Text = Label_count.Text = Label_spec.Text = Label_type.Text = "*";
        }

        protected void id_btn_add_Click(object sender, EventArgs e)
        {
            ds = new Data_Access();
            if (ds.check_empty(id_spec.Text))
            {
                Label_spec.Text = "هذا الحقل فارغ";
                return;
            }
            if (ds.check_empty(id_avg.Text))
            {
                Label_avg.Text = "هذا الحقل فارغ";
                return;
            }
            if (ds.check_empty(id_count.Text))
            {
                Label_count.Text = "هذا الحقل فارغ";
                return;
            }

            var dt = ds.SelectData("select vacancy_name,vacancy_type from tb_vacancy");
            string spec;
            string type;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                spec = dt.Rows[i][0].ToString();
                type = dt.Rows[i][1].ToString();
                if (spec == id_spec.Text)
                {
                    if (type == id_type.SelectedValue)
                    {
                        Response.Write("<script>alert('هذا النوع موجود لنفس الاختصاص')</script>");
                        return;
                    }
                }
            }
            try
            {
                ds.open_connection();
                ds.EX_Non_Query("insert into tb_vacancy (vacancy_name,vacancy_count,vacancy_avg,vacancy_type) values('" + id_spec.Text + "','" + id_count.Text + "','" + id_avg.Text + "','" + id_type.Text + "');");
                Response.Write("<script>alert('تمت الاضافة')</script>");
                return;

            }
            catch
            {
                Response.Redirect("add vacancy.aspx");
                return;
            }
            finally
            {
                ds.close_connection();
            }
        }
    }
}









    
using HireMe.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace monta
{
    public partial class Add_student : System.Web.UI.Page
    {
        Data_Access das;
        protected void Page_Load(object sender, EventArgs e)
        {
            Lab_ck_avg.Text = Lab_ck_cma.Text = Lab_ck_country.Text = Lab_ck_datep.Text = Lab_ck_idh.Text = Lab_ck_nfather.Text = Lab_ck_nfirst.Text = Lab_ck_stu_profi.Text = Lab_ck_nlast.Text = Lab_ck_nfirst.Text = "*";    

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            das = new Data_Access();
            if ( das.check_empty(num_idh.Text))
            {
                Lab_ck_idh.Text = "this field is empty ";
                return;
            }
            if (das.check_empty(n_first.Text))
            {
                Lab_ck_nfirst.Text = "this field is empty";
                return;
            }
            if (das.check_empty(n_last.Text))
            {
                Lab_ck_nlast.Text = "this field is empty";
                return;
            }
            if (das.check_empty(n_father.Text))
            {
                Lab_ck_nfather.Text = "this field is empty";
                return;
            }
            if (das.check_empty(n_mather.Text))
            {
                Lab_ck_cma.Text = "this field is empty";
                return;
            }
            if (das.check_empty(date_porn.Text))
            {
                Lab_ck_datep.Text = "this field is empty";
                return;                                
            }                                          
            if (das.check_empty(avg.Text))           
            {
                Lab_ck_avg.Text = "this field is empty ";
                return;
            }
            if (das.check_empty(country.Text))
            {
                Lab_ck_country.Text = "this field is empty";
                return;
            }
            if (das.check_empty(stu_pro.Text))
            {
                Lab_ck_stu_profi.Text = "this field is empty";
                return;
            }
            
            var dt = das.SelectData("select * from tb_students_name");
            string num_id;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                num_id = dt.Rows[i][2].ToString();
                if (num_idh.Text == num_id)
                {
                    Response.Write("<script>alert('this number is exists')</script>");
                    return;
                }
            }

            try
            {
                das.open_connection();
                das.EX_Non_Query("insert into tb_students_name (id_university,student_id_number,students_first_name,students_last_name,students_father_name,students_mother_name,students_date,students_avg,students_profession,students_resident_country,students_shahid) values(' 1','" + num_idh.Text + "','" + n_first.Text + "','" + n_last.Text + "','" + n_father.Text + "','" + n_mather.Text + "','" + date_porn.Text + "','" + avg.Text + "','" + stu_pro.Text + "','" + country.Text + "','" + DropDownList1.Text + "');");
                Response.Write("<script>alert('add complet')</script>");
                return;
            }
            catch 
            {
                Response.Redirect("Add_student.aspx");
                return;

            }
            finally
            {
                das.close_connection();
            }
            num_idh.Text = n_first.Text = n_last.Text = n_father.Text = n_mather.Text = date_porn.Text = avg.Text = stu_pro.Text = country.Text = "";
        }
    }
}
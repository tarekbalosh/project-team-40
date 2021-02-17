using HireMe.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace HireMe
{
    public partial class display_student : System.Web.UI.Page
    {
        Data_Access das;
        protected void Page_Load(object sender, EventArgs e)
        {
            das = new Data_Access();
            var dt_dis_stu = das.SelectData("select * from tb_students_name");
            dt_dis_stu.Columns.RemoveAt(0);
            GV_dis_stu.DataSource = dt_dis_stu;
            GV_dis_stu.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("control admin.aspx");
        }
    }
}
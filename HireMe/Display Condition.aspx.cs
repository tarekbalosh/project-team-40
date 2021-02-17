using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HireMe.Class;

namespace HireMe
{
    public partial class Display_Condition : System.Web.UI.Page
    {
        Data_Access data_access;
        protected void Page_Load(object sender, EventArgs e)
        {
            data_access = new Data_Access();
            var data_cond = data_access.SelectData("SELECT * FROM tb_emp_condition;");
            data_cond.Columns.RemoveAt(0);
            GridView_cond.DataSource = data_cond;
            GridView_cond.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("control admin.aspx");
        }
    }
}
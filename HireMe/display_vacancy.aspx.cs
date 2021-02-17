using HireMe.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HireMe
{
    public partial class display_vacancy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Data_Access ds = new Data_Access();
            var dt = ds.SelectData("select * from tb_vacancy");
            dt.Columns.RemoveAt(0);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}
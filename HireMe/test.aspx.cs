using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HireMe.Class;

namespace HireMe
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            C_HireMe hm = new C_HireMe();
            var x = hm.check_vacancy(70, "هندسة معلوماتية");
            GridView1.DataSource = x;
            GridView1.DataBind();
        }

    }
}
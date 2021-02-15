using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HireMe
{
    public partial class control_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_ministry_Click(object sender, EventArgs e)
        {
            Response.Redirect("ADD MISTRY.aspx");
        }

        protected void btn_display_ministry_Click(object sender, EventArgs e)
        {
            Response.Redirect("display_ministry.aspx");
        }
    }
}
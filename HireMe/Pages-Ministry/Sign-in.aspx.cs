using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HireMe.Pages_Ministry
{
    public partial class Sign_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void functionSignUp(object sender, EventArgs e)
        {
            Response.Write("Hello World!!!");
        }
        protected void functionCreateAccount(object sender, EventArgs e)
        {
            Response.Redirect("Create-Account.aspx");            
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace levanhongan_tuan10_apsx.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["dangnhap"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}
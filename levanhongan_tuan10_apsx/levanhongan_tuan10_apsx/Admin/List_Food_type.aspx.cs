using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace levanhongan_tuan10_apsx.Admin
{
    public partial class List_Food_type : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "s")
            {
                string value = e.CommandArgument.ToString();
                string mahoa = Server.UrlEncode(value);
                Response.Redirect("Edit-Food-Type.aspx?id=" + mahoa);
            }
        }
    }
}
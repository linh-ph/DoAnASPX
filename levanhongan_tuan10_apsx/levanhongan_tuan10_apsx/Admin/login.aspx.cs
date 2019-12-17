using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using levanhongan_tuan10_apsx.App_Code;

namespace levanhongan_tuan10_apsx.Admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string user = txtEmail.Text;
            string pass = txtPass.Text;
            DataTable tb = new DataTable();

            tb = MemberClass.Login(user, pass);
            if (tb.Rows.Count > 0)
            {
                Session["dangnhap"] = user;
                Response.Redirect("Default.aspx");
            }
            else
            {
                error.InnerHtml = "Dang Nhap That Bai";
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alterMessage", "Swal.fire({icon: 'error',text: 'Dang Nhap That Bai'})",true);
                txtEmail.Focus();
            }
        }
    }
}
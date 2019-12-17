using levanhongan_tuan10_apsx.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace levanhongan_tuan10_apsx.Admin
{
    public partial class Register : System.Web.UI.Page
    {
        private int id;
        private string user_temp;
        private string name_temp;
        private string email_temp;
        private string pass_temp;
        private string phone_temp;
        private string status_temp;
        private string role_temp;
        protected void Page_Load(object sender, EventArgs e)
        {
            btnUpdate.Visible = false;
            if (Request.QueryString["id"] != null )
            {
                lblTitle.Text = "Chỉnh Sửa Member";
                btnUpdate.Visible = true;
                Visible();


                string id_nhan = Request["id"].ToString();
                string id_giai = HttpUtility.UrlDecode(id_nhan);
                id = Convert.ToInt32(id_giai);
                string sQuery = "SELECT *FROM [dbo].[member_2]WHERE id =" + id;
                DataTable dt = new DataTable();
                dt = DataProvideCS.getData(sQuery);
                foreach (DataRow row in dt.Rows)
                {
                     user_temp = row["username"].ToString();
                     name_temp = row["name"].ToString();
                     email_temp = row["email"].ToString();
                     pass_temp = row["pass"].ToString();

                     phone_temp = row["phone"].ToString();
                     status_temp = row["status"].ToString();
                     role_temp = row["role"].ToString();
                }
                if (IsPostBack != null)
                {
                    Userame.Text = user_temp;
                    Name.Text = name_temp;
                    InputPassword.Text = pass_temp;
                    exampleRepeatPassword.Text = pass_temp;
                    InputEmail.Text = email_temp;
                    PhoneNumber.Text = phone_temp;
                    DDLStatus.SelectedValue = status_temp;
                    DDLRole.SelectedValue = role_temp;
                }

            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string user = Userame.Text;
            string name = Name.Text;
            string pass = InputPassword.Text;
            string email = InputEmail.Text;
            string phone = PhoneNumber.Text;
            int status = Convert.ToInt32(DDLStatus.SelectedValue);
            int role = Convert.ToInt32(DDLRole.SelectedValue);
            //ToUpper Username
            user = user.First().ToString().ToUpper() + user.Substring(1);

            MemberClass acc = new MemberClass(user, name, pass, email, phone, status, role);
            if (acc.UserMember(user) == false && acc.AddMember() == true)
            {

                txtResuilt.InnerHtml = "Thanh Cong";


            }
            else
            {
                txtResuilt.InnerHtml = "Username đã tồn tại";
            }
        }
        private void Visible()
        {
            InputPassword.Enabled = false;
            exampleRepeatPassword.Enabled = false;
            lblForgotPass.Visible = false;
            lblLogin.Visible = false;
            btnRegister.Visible = false;
            btnGoogle.Visible = false;
            btnfb.Visible = false;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string user = Userame.Text;
            string name = Name.Text;
            string pass = InputPassword.Text;
            string email = InputEmail.Text;
            string phone = PhoneNumber.Text;
            int status = Convert.ToInt32(DDLStatus.SelectedValue);
            int role = Convert.ToInt32(DDLRole.SelectedValue);
            //ToUpper Username
            user = user.First().ToString().ToUpper() + user.Substring(1);
            MemberClass Update = new MemberClass(user, name, pass, email, phone, status, role);
            if (Update.UpMember(id))
            {
                txtResuilt.InnerHtml = "Cập Nhật Thành Công";
            }
            else
            {
                txtResuilt.InnerHtml = "Cập Nhật Thất Bại";
            }
        }
    }
}
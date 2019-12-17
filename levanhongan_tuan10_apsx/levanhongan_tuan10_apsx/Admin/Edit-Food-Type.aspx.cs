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
    public partial class Edit_Food_Type : System.Web.UI.Page
    {
        private int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                string nhanURL = Request.QueryString["id"].ToString();
                string result = HttpUtility.UrlDecode(nhanURL);
                id = Convert.ToInt32(result);
                FoodType type = new FoodType();

                //phai tra ve cai gi chu , no tao xong no huy luon nen type ben duoi ko co gia tri
                type =  type.CaiDatType(id); 
                //ong viet sai ròi

                //co du lieu rồi do phan con lại ong tu update
                type_name.Text = type.Type_name;
                type_pos.Text =type.Type_pos.ToString();
                string imgPath = type.Type_img;
                type_img.ImageUrl = "~/Admin/img/" + imgPath;
                DDlStatus.SelectedValue = type.Status.ToString();
                user.Text = type.Username;
                Modified.Text = type.Modified.ToString();


            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string name = type_name.Text;
            int post = Convert.ToInt32(type_pos.Text);
            string img;
            if (FileUpload1.HasFile)
            {
                img = FileUpload1.FileName;
            }
            else
            {
               string url = type_img.ImageUrl.ToString();
                img = url.Substring(12);
            }
            
            int status = Convert.ToInt32(DDlStatus.SelectedValue);
            string username = user.Text;
            DateTime modifi = Convert.ToDateTime(Modified.Text);
            FoodType food = new FoodType(name, post, img, status, username, modifi);
            if (food.UpFoodType(id))
            {
                txtResuilt.InnerHtml = "Cập Nhật Thành Công !!!";
            }
            else
            {
                txtResuilt.InnerHtml = "Cập Nhật Thất Bại !!!";
            }
        }
    }
}
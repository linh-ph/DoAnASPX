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
    public partial class Add_list_food_type : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void LuuHinh(string tenHinh)
        {
            string s = Server.MapPath(tenHinh);
            // Lấy địa chỉ vật lý cho tập tin của ứng dụng

            FileUpload1.SaveAs(s);
            // Lưu tập tin vào thư mục hình

          
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string img = FileUpload1.FileName;
            if (FileUpload1.HasFile)//kiểm tra có chọn file hay không
            {
                string tenHinh = "~/Admin/img/" + FileUpload1.FileName;
                 LuuHinh(tenHinh);
               
                // Trả về tên hình

            }
            string name = type_name.Text;
            int pos = Convert.ToInt32(type_pos.Text);
            int status = Convert.ToInt32(DDlStatus.SelectedValue);
            string user = type_user.Text;
            DateTime modifi = Convert.ToDateTime(t_modified.Text);
            FoodType food = new FoodType(name, pos, img, status, user, modifi);

            if (food.AddFoodType())
            {
                txtResuilt.InnerHtml = "Them Thanh Cong";
            }
            else
            {
                txtResuilt.InnerHtml = "Them That Bai";
            }
        }
    }
}
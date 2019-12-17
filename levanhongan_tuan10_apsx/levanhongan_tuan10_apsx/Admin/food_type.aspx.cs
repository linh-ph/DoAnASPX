//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using levanhongan_tuan10_apsx.App_Code;

//namespace food_shop.admin
//{
//    public partial class food_type : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }

//        protected void txtThemMoi_Click(object sender, EventArgs e)
//        {
//            string sTypeName = txtTypeName.Text;
//            int sTypePos = Convert.ToInt32(txtTypePos.Text);
//            string sTypeImg = txtTypeImg.Text;
//            int sStatus = Convert.ToInt32(txtStatus.SelectedValue);
//            string sUsername = txtUsername.Text;
//            DateTime sModified = DateTime.Parse(txtModified.Text);

//            FoodType foodType = new FoodType(sTypeName, sTypePos, sTypeImg, sStatus, sUsername, sModified);
//            if (foodType.AddFoodType() == true)
//            {
//                txtkq.InnerHtml = "Thêm thành công!";
//            }
//        }
//    }
//}
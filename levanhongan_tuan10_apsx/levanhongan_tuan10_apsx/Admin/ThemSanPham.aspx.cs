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
    public partial class ThemSanPham : System.Web.UI.Page
    {
        private void Page_Load(object sender, EventArgs e)
        {
            if(Request["id"] != null)
            {
                lbl_title.Text = "Sửa Sản Phẩm";
                btnThem.Text = "Cập Nhật";
                string sQuery = "SELECT [id] ,[name] ,[description] ,[price] ,[price_promo] ,[thumb] ,[img] ,[unit] ,[percent_promo] ,[rating] ,[sold] ,[point] ,[type] ,[status] ,[username] ,[modified] FROM [dbo].[food] WHERE id = "+Request["id"]+"";
                DataTable tb = new DataTable();
                tb = FoodClass.FoodInfo(sQuery);

                Name.Text = tb.Rows[0]["name"].ToString();
                Des.Text = tb.Rows[0]["description"].ToString();
                Price.Text= tb.Rows[0]["price"].ToString();
                Price_promo.Text = tb.Rows[0]["price_promo"].ToString();
                Thump.Text = tb.Rows[0]["thumb"].ToString();
                Img.Text = tb.Rows[0]["img"].ToString();
                Unit.Text = tb.Rows[0]["unit"].ToString();
                Percent_promo.Text = tb.Rows[0]["percent_promo"].ToString();
                Rating.Text = tb.Rows[0]["rating"].ToString();
                Sold.Text = tb.Rows[0]["sold"].ToString();
                Type.Text = tb.Rows[0]["type"].ToString();
                DDL_status.SelectedValue = tb.Rows[0]["status"].ToString();
                User.Text = tb.Rows[0]["username"].ToString();
                Modified.Text = tb.Rows[0]["modified"].ToString();

            }

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string name = Name.Text;
            string decs = Des.Text;
            int price = Convert.ToInt32(Price.Text);
            int price_promo = Convert.ToInt32(Price_promo.Text);
            string thump = Thump.Text;
            string img = Img.Text;
            string unit = Unit.Text;
            int percent = Convert.ToInt32(Percent_promo.Text);
            int rating = Convert.ToInt32(Rating.Text);
            int sold = Convert.ToInt32(Sold.Text);
            int point = Convert.ToInt32(Point.Text);
            int type = Convert.ToInt32(Type.Text);
            int status = Convert.ToInt32(DDL_status.SelectedValue);
            string username = User.Text;
            DateTime modified = DateTime.Parse(Modified.Text);

            FoodClass food = new FoodClass(name, decs, price, price_promo, thump, img, unit, percent, rating, sold, point, type, status, username, modified);
            if (food.AddFood() == true)
            {
                txtResuilt.InnerHtml = "Thêm Thành Công";

            }
            else
            {
                txtResuilt.InnerHtml = "Thêm Thất Bại";

            }


        }
    }
}
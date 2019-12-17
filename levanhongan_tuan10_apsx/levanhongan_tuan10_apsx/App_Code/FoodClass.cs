using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace levanhongan_tuan10_apsx.App_Code
{
    public class FoodClass
    {
        private string _name;

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        private string _des;

        public string Des
        {
            get { return _des; }
            set { _des = value; }
        }
        private int _price;

        public int Price
        {
            get { return _price; }
            set { _price = value; }
        }
        private int _price_promo;

        public int Price_promo
        {
            get { return _price_promo; }
            set { _price_promo = value; }
        }
        private string _thump;

        public string Thump
        {
            get { return _thump; }
            set { _thump = value; }
        }
        private string _img;

        public string Img
        {
            get { return _img; }
            set { _img = value; }
        }
        private string _unit;

        public string Unit
        {
            get { return _unit; }
            set { _unit = value; }
        }
        private int _precent_promo;

        public int Precent_promo
        {
            get { return _precent_promo; }
            set { _precent_promo = value; }
        }
        private int _rating;

        public int Rating
        {
            get { return _rating; }
            set { _rating = value; }
        }
        private int _sold;

        public int Sold
        {
            get { return _sold; }
            set { _sold = value; }
        }
        private int _point;

        public int Point
        {
            get { return _point; }
            set { _point = value; }
        }
        private int _type;

        public int Type
        {
            get { return _type; }
            set { _type = value; }
        }
        private int _status;

        public int Status
        {
            get { return _status; }
            set { _status = value; }
        }
        private string _username;

        public string Username
        {
            get { return _username; }
            set { _username = value; }
        }
        private DateTime _modified;

        public DateTime Modified
        {
            get { return _modified; }
            set { _modified = value; }
        }

       //them food
        public FoodClass(string name, string desc, int price, int price_promo, string thump, string img, string unit, int precent_promo, int rating, int sold, int point, int type, int status, string username, DateTime modified)
        {
            this._name = name;
            this._des = desc;
            this._price = price;
            this._price_promo = price_promo;
            this._thump = thump;
            this._img = img;
            this._unit = unit;
            this._precent_promo = precent_promo;
            this._rating = rating;
            this._sold = sold;
            this._point = point;
            this._type = type;
            this._status = status;
            this._username = username;
            this._modified = modified;
        }

        //ketnoidatabase
        public bool AddFood()
        {
            string ketnoi = "INSERT INTO [VEGEFOODS].[dbo].[food] ([name] ,[description] ,[price] ,[price_promo] ,[thumb] ,[img] ,[unit] ,[percent_promo] ,[rating] ,[sold] ,[point] ,[type] ,[status] ,[username] ,[modified]) VALUES(@name,@desc ,@price ,@price_promo ,@thump ,@img ,@unit,@precent ,@rating ,@sold,@point ,@type,@status,@username ,@modified)";
            SqlParameter[] paras = {
               new SqlParameter("@name", SqlDbType.NVarChar, 50){ Value = this.Name },
               new SqlParameter("@desc", SqlDbType.NVarChar,50){ Value = this.Des},
               new SqlParameter("@price", SqlDbType.Int){ Value = this.Price},
               new SqlParameter("@price_promo", SqlDbType.Int){ Value = this.Price_promo},
               new SqlParameter("@thump", SqlDbType.NVarChar, 255){ Value = this.Thump},
               new SqlParameter("@img", SqlDbType.NVarChar, 255){ Value = this.Img},
               new SqlParameter("@unit", SqlDbType.NVarChar,50){ Value = this.Unit},
               new SqlParameter("@precent",SqlDbType.Int){Value=this.Precent_promo},
               new SqlParameter("@rating",SqlDbType.Int){Value=this.Rating},
               new SqlParameter("@sold",SqlDbType.Int){Value=this.Sold},
               new SqlParameter("@point",SqlDbType.Int){Value=this.Point},
               new SqlParameter("@type",SqlDbType.Int){Value=this.Type},
               new SqlParameter("@status",SqlDbType.Int){Value=this.Status},
               new SqlParameter("@username",SqlDbType.NVarChar, 255){Value=this.Username},
               new SqlParameter("@modified",SqlDbType.DateTime){Value=this.Modified},

                 };

            return DataProvideCS.excuteNonQuery(ketnoi, paras);
        }

        public static DataTable FoodInfo(string sQuery)
        {
            return DataProvideCS.getData(sQuery);
        }
        public bool UpdateFood(int id)
        {
            string sQuery = "UPDATE [dbo].[food] SET [name] = '"+Name+"' ,[description] = '' ,[price] = null ,[price_promo] = null ,[thumb] = '' ,[img] = '' ,[unit] = '' ,[percent_promo] = null ,[rating] = null ,[sold] = null ,[point] = null ,[type] = null ,[status] = null ,[username] = 'abc' ,[modified] = '' WHERE id =";
            return true;
        }
    }
}
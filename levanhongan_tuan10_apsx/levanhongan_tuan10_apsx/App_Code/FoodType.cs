using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using levanhongan_tuan10_apsx.App_Code;

namespace levanhongan_tuan10_apsx.App_Code
{
    public class FoodType
    {
        private string _Type_name;
        private int _Type_pos;
        private string _Type_img;
        private int _Status;
        private string _Username;
        private DateTime _Modified;

        public string Type_name
        {
            get
            {
                return _Type_name;
            }

            set
            {
                _Type_name = value;
            }
        }

        public int Type_pos
        {
            get
            {
                return _Type_pos;
            }

            set
            {
                _Type_pos = value;
            }
        }

        public string Type_img
        {
            get
            {
                return _Type_img;
            }

            set
            {
                _Type_img = value;
            }
        }

        public int Status
        {
            get
            {
                return _Status;
            }

            set
            {
                _Status = value;
            }
        }

        public string Username
        {
            get
            {
                return _Username;
            }

            set
            {
                _Username = value;
            }
        }

        public DateTime Modified
        {
            get
            {
                return _Modified;
            }

            set
            {
                _Modified = value;
            }
        }

        public FoodType(string sTypeName, int sTypePost, string sTypeImg, int sStatus, string sUsername, DateTime sModified)
        {
            this.Type_name = sTypeName;
            this.Type_pos = sTypePost;
            this.Type_img = sTypeImg;
            this.Status = sStatus;
            this.Username = sUsername;
            this.Modified = sModified;
        }
        public FoodType()
        {
            this.Type_name ="";
            this.Type_pos = 0;
            this.Type_img = "";
            this.Status = 0 ;
            this.Username = "";
            this.Modified = Convert.ToDateTime("1/1/1");
        }
        public FoodType CaiDatType(int id)
        {
            string name;
            int pos;
            string imgPath;
            int status;
            string user;
            DateTime modifi;
            string sQuery = "SELECT * FROM [food_type] WHERE ([type_id] =" + id+")";

            DataTable dt = new DataTable();
            dt = DataProvideCS.getData(sQuery);
            FoodType ft = new FoodType();
            foreach (DataRow row in dt.Rows)
            {
                 name = row["type_name"].ToString();
                 pos = Convert.ToInt32(row["type_pos"].ToString());
                 imgPath = row["type_img"].ToString();

                 status = Convert.ToInt32(row["status"].ToString());
                 user = row["username"].ToString();
                 modifi = Convert.ToDateTime(row["modified"].ToString());
                 ft = new FoodType(name, pos, imgPath, status, user, modifi);
            }
            return ft;
             
        }
        public bool AddFoodType()
        {
            string sQuery = "INSERT INTO [dbo].[food_type] ([type_name] ,[type_pos] ,[type_img] ,[status] ,[username] ,[modified]) VALUES (@type_name, @type_pos, @type_img, @status, @username, @modified)";

            SqlParameter[] paras = {
                                                new SqlParameter("@type_name", SqlDbType.NVarChar, 50){ Value = this.Type_name },
                                                new SqlParameter("@type_pos", SqlDbType.Int){ Value = this.Type_pos },
                                                new SqlParameter("@type_img", SqlDbType.VarChar, 255){ Value = this.Type_img},
                                                new SqlParameter("@status", SqlDbType.Int){ Value = this.Status },
                                                new SqlParameter("@username", SqlDbType.VarChar, 50){ Value = this.Username },
                                                new SqlParameter("@modified", SqlDbType.DateTime){ Value = this.Modified },
                                           };
            return DataProvideCS.excuteNonQuery(sQuery, paras);
        }
        public bool UpFoodType(int id)
        {
            string sQuery = "UPDATE [dbo].[food_type] SET [type_name] = '@type_name', [type_pos] = '@type_pos', [type_img] = '@type_img', [status] = @status, [username] = '@username', [modified] = '@modified' WHERE id =" + id;

            SqlParameter[] paras = {
                                                new SqlParameter("@type_name", SqlDbType.NVarChar, 50){ Value = this.Type_name },
                                                new SqlParameter("@type_pos", SqlDbType.Int){ Value = this.Type_pos },
                                                new SqlParameter("@type_img", SqlDbType.VarChar, 255){ Value = this.Type_img},
                                                new SqlParameter("@status", SqlDbType.Int){ Value = this.Status },
                                                new SqlParameter("@username", SqlDbType.VarChar, 50){ Value = this.Username },
                                                new SqlParameter("@modified", SqlDbType.DateTime){ Value = this.Modified },
                                           };
            return DataProvideCS.excuteNonQuery(sQuery, paras);
        }

    }
}
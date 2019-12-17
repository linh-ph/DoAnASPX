using levanhongan_tuan10_apsx.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace levanhongan_tuan10_apsx.App_Code
{
    public class MemberClass
    {
        private string _username;

        public string Username
        {
            get { return _username; }
            set { _username = value; }
        }
        private string _pass;

        public string Pass
        {
            get { return _pass; }
            set { _pass = value; }
        }
        private string _name;


        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        private string _phone;

        public string Phone
        {
            get { return _phone; }
            set { _phone = value; }
        }
        private int _role;

        public int Role
        {
            get { return _role; }
            set { _role = value; }
        }
        private int status;

        public int Status
        {
            get { return status; }
            set { status = value; }
        }
        private string _email;

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        public MemberClass(string user, string name, string pass, string email, string phone, int stt, int role)
        {
            this._username = user;
            this._name = name;
            this._pass = pass;
            this._phone = phone;
            this._email = email;
            this.status = stt;
            this._role = role;

        }
        public bool AddMember()
        {
            string ketnoi = " INSERT INTO [dbo].[member_2] ([username],[pass],[name],[phone],[role],[status],[email])VALUES(@us,@pass,@name,@phone,@role,@status,@email)";

               SqlParameter[] paras = {
             new SqlParameter("@us", SqlDbType.NVarChar, 50){ Value = this.Username },
             new SqlParameter("@pass", SqlDbType.NVarChar,50){ Value = this.Pass },
              new SqlParameter("@name", SqlDbType.NVarChar, 255){ Value = this.Name},
               new SqlParameter("@phone", SqlDbType.NVarChar,10){ Value = this.Phone },
                new SqlParameter("@role", SqlDbType.Int){ Value = this.Role },
              new SqlParameter("@status", SqlDbType.Int){ Value = this.Status },
               new SqlParameter("@email", SqlDbType.NVarChar,50){ Value = this.Email },
                 };


            //Looix framwork cua phien ban visual
            return DataProvideCS.excuteNonQuery(ketnoi, paras);

            // return true;


        }
        public bool UpMember(int id)
        {
            string ketnoi = "UPDATE [dbo].[member_2] SET [username] = @us ,[pass] = @pass, [name] = @name, [phone] = @phone, [role] = @role, [status] = @status, [email] = @email WHERE id="+id;
            SqlParameter[] paras ={
                new SqlParameter("@us",SqlDbType.NVarChar,50){Value=this.Username},
                new SqlParameter("@pass",SqlDbType.NVarChar,50){Value=this.Pass},
                new SqlParameter("@name",SqlDbType.NVarChar,50){Value=this.Name},
                new SqlParameter("@phone",SqlDbType.NVarChar,10){Value=this.Phone},
                new SqlParameter("@role",SqlDbType.Int){Value=this.Role},
                new SqlParameter("@status",SqlDbType.Int){Value=this.Status},
                new SqlParameter("@email",SqlDbType.NVarChar,50){Value=this.Email},
            };

            //goi phuong thuc thuc thi cau truy van 
            return DataProvideCS.excuteNonQuery(ketnoi, paras);
        }
        public bool UserMember(string usertemp)
        {
            string ketnoi = "SELECT [username] FROM [dbo].[member_2] ";
            DataTable tb = new DataTable();
            
           tb = DataProvideCS.getData(ketnoi);

            foreach(DataRow row in tb.Rows)
            {
                string user = row[0].ToString();
                if(usertemp == user)
                {
                    return true;
                }
            }

            return false;
        }

        public static DataTable Login(string username, string password)
        {
            string ketnoi = "SELECT [username],[pass]  FROM [dbo].[member]  WHERE username='" + username + "' and pass = '" + password + "'";

            DataTable tb = new DataTable();

            tb = DataProvideCS.getData(ketnoi);

            
          

            return tb;
        }
      


    }
}
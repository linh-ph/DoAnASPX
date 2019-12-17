﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace levanhongan_tuan10_apsx.App_Code
{
    public  class DataProvide
    {
        private static string ChuoiKetNoi = @"Data Source=DESKTOP-0IOHU7R;Initial Catalog=VEGEFOODS;Integrated Security=True";
        private static SqlConnection conn = new SqlConnection(ChuoiKetNoi);

        private static void connect()
        {
            if (conn.State == ConnectionState.Closed || conn.State == ConnectionState.Broken)
            {
                conn.Open();
            }
        }

        public static bool excuteNonQuery(string sQuery, SqlParameter[] paras)
        {
            try
            {
                connect();
                SqlCommand cmd = new SqlCommand(sQuery, conn);
                cmd.Parameters.AddRange(paras);
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception ex)
            {
                return false;
               
            }
        }

        //tự động cập nhật id
        public static int excuteScalar(string sQuery, SqlParameter[] paras)
        {
            try
            {
                connect();
                SqlCommand cmd = new SqlCommand(sQuery, conn);
                cmd.Parameters.AddRange(paras);
                cmd.ExecuteNonQuery();
                sQuery = "select @identity";
                cmd = new SqlCommand(sQuery, conn);
                int id = (int)cmd.ExecuteScalar();
                conn.Close();
                return id;
            }
            catch (Exception )
            {
                throw;
            }
        }

        public static DataTable getData(string sQuery, SqlParameter[] paras)
        {
            try
            {
                connect();
                SqlDataAdapter da = new SqlDataAdapter(sQuery, conn);
                DataTable tb = new DataTable();
                da.Fill(tb);
                return tb;
            }
            catch (Exception ex)
            {
                throw;
                //write_logDB(err.Message);
               
            }
            
        }

       

        
    }
}
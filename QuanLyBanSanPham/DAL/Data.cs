using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Data
    {
        public SqlConnection getConnect()
        {
            return new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=QuanLyBanSanPham;Integrated Security=True");
        }
        public DataTable getTable(string sql)
        {
            SqlConnection con = getConnect();
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(sql,con);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            return dt;
        }

        
    }
    }


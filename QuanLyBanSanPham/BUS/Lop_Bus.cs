using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DTO;
using DAL;
namespace BUS
{
    

    public class Lop_Bus
    {
        Data da = new Data();
        Data da_sp = new Data();
        Lop_DTO L = new Lop_DTO();
        
        public DataTable HienThiDTGV()
        {
            string sql = "select SanPham3.MaSanPham , TenSanPham,HangSanXuat,ChiTietHD3.SoLuongBan, DonGiaBan ,  SoLuongBan * DonGiaBan as ThanhTien FROM SanPham3  INNER JOIN ChiTietHD3 ON SanPham3.MaSanPham = ChiTietHD3.MaSanPham; ";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }

       
    }
}

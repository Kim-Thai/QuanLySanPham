using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Lop_DTO
    {
        String MaSanPham_, TenSanPham_, HangSanXuat;
        int DonGiaBan_;

        public string MaSanPham_1
        {
            get
            {
                return MaSanPham_;
            }

            set
            {
                MaSanPham_ = value;
            }
        }

        public string TenSanPham_1
        {
            get
            {
                return TenSanPham_;
            }

            set
            {
                TenSanPham_ = value;
            }
        }

        public string HangSanXuat1
        {
            get
            {
                return HangSanXuat;
            }

            set
            {
                HangSanXuat = value;
            }
        }

        public int DonGiaBan_1
        {
            get
            {
                return DonGiaBan_;
            }

            set
            {
                DonGiaBan_ = value;
            }
        }
    }
}

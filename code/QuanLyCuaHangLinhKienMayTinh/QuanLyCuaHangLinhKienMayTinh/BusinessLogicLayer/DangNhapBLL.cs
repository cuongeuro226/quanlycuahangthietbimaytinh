using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;
using QuanLyCuaHangLinhKienMayTinh.DataAccessLayer;

namespace QuanLyCuaHangLinhKienMayTinh.BusinessLogicLayer
{
    class DangNhapBLL
    {
        DangNhapDAL dan = new DangNhapDAL();
        public bool CheckDangNhap(string manv, string matkhau)
        {
            DataTable d= dan.LayMatKhauNhanVien(manv);
            if(d.Rows.Count==0)
            {
                return false;
            }
            else
            {
                if (d.Rows[0].ItemArray[0].ToString() == matkhau)
                {
                    XuLySauKhiDangNhapThanhCong(manv);
                    return true;
                }
                else
                    return false;
            }
        }

        public void XuLySauKhiDangNhapThanhCong(string manv)
        {
            dan.CapNhatTinhTrang(manv);
        }


    }
}

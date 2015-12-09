using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCuaHangLinhKienMayTinh.DataAccessLayer
{
    class DangNhapDAL
    {
        DataConnection con =   DataConnection.getInstance();

        // lay mat khau nhan vien
        public DataTable LayMatKhauNhanVien(string manv)
        {
            string sql = "select MatKhau from TAIKHOAN where MaNV='"+manv+"'";
            return con.Read(sql);
            
        }

        public void CapNhatTinhTrang(string manv)
        {
            string sql = "update TAIKHOAN set DangSuDung =N'1'  where MaNV='" + manv + "'";
             con.Write(sql);

        }




    }
}

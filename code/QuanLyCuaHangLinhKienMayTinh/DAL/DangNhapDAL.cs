using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{ 
    public class DangNhapDAL
    {
        DataConnection con =   DataConnection.getInstance();

        // lay mat khau nhan vien
        public DataTable LayMatKhauNhanVien(string manv)
        {
            string sql = "select MatKhau from TAIKHOAN where MaNV='"+manv+"'";
            return con.Read(sql);
            
        }

        ///// <summary>
        ///// cap nhat ma lich su dang nhap
        ///// malsdn =0 // da thoat, khong dang su dung
        ///// #0 dang su dung
        ///// </summary>
        ///// <param name="manv"></param>
        ///// <param name="malsdn"></param>
        //public void CapNhatTinhTrang(string manv,string malsdn)
        //{
        //    string sql = "update TAIKHOAN set DangSuDung =N'"+malsdn+"'  where MaNV='" + manv + "'";
        //     con.Write(sql);
        //}




    }
}

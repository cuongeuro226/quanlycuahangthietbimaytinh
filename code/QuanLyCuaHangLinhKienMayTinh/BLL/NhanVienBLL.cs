using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class NhanVienBLL
    {
        NhanVienDAL nhan = new NhanVienDAL();
        public string TaoMaNhanVien()
        {
            string Soluong = nhan.LaySoLuongNhanVien().Rows[0].ItemArray[0].ToString();
            // length <7  thi them so 0 truoc
            string sub = "";
            if (Soluong.Length<4)
            {
                int def = 4 - Soluong.Length;
                
                // tao chuoi phu
                for(int i=0; i<def; i++)
                {
                    sub = sub+"0";
                }
            }
            return ("MNV"+sub+Soluong);


        }








    }
}

using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{

   public class NhanVienDAL
    {
        DataConnection _connect = DataConnection.getInstance();

        ///
        public DataTable LaySoLuongNhanVien()
        {
            string connectstring = @"Select count(*)
                                    from NHANVIEN ";

            return _connect.Read(connectstring);
        }


    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;

namespace DAL
{
   public class InfoEmployeeDAL
    {
        DataConnection _connect = DataConnection.getInstance();

        public InfoEmployeeDAL()
        {
            DAL.DataConnection.getInstance().SetupConnection("LTN", "QLBH_CuaHangBanMayTinh-LinhKien");
        }

        public DataTable GetEmployee(string EmployeeID)
        {
            DataTable data = new DataTable();
            try
            {
                string sql = @"Select * 
                                    from NHANVIEN 
                                where DaXoa=N'0' and MaNV=N'"+EmployeeID+"'";

                data = _connect.Read(sql);
                return data;
            }
            catch (Exception e)
            {
                throw e;
            }

        }

        public DataTable GetPositionName(string positionID)
        {
            DataTable data = new DataTable();
            try
            {
                string sql = @"Select TenChucVu
                                    from CHUCVU
                                    where MaChucVu =N'" + positionID + @"'
                                            and DaXoa='0' ";

                data = _connect.Read(sql);
                return data;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public DataTable GetListPosition()
        {

            DataTable data = new DataTable();
            try
            {
                string sql = @"Select *
                                    from CHUCVU
                                             where DaXoa='0'";

                data = _connect.Read(sql);
                return data;
            }
            catch (Exception e)
            {
                throw e;
            }


        }
        public void UpdateEmployee(string manv, string ten, string gioitinh, string cmnd, string sdt,
                         string ngaysinh, string diachi, string noisinh, string tuoi, string chucvu,
                         string luong, string ngayVaoLam, string pass, string trangthai)
        {
            try
            {
                string sql = @"update NHANVIEN SET Ten=N'{0}',GioiTinh=N'{1}',CMND=N'{2}',SDT=N'{3}',
                                NgaySinh=N'{4}',DiaChi=N'{5}',NoiSinh=N'{6}',Tuoi=N'{7}',ChucVu=N'{8}',
                                Luong=N'{9}',NgayVaoLam=N'{10}',TrangThai=N'{11}',PassWord=N'{12}',DaXoa=N'{13}'
                               where MaNV=N'{14}'";
                Console.WriteLine(string.Format(sql, ten, gioitinh, cmnd, sdt, ngaysinh, diachi, noisinh, tuoi, chucvu, luong, ngayVaoLam, trangthai, pass, manv));

                DataConnection.getInstance().Write(string.Format(sql, ten, gioitinh, cmnd, sdt, ngaysinh, diachi, noisinh, tuoi, chucvu, luong, ngayVaoLam, trangthai, pass, manv));
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}

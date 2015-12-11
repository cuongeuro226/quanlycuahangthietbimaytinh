using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace DAL
{

   public class EmployeeDAL
    {
        DataConnection _connect = DataConnection.getInstance();
        public EmployeeDAL()
        {
            DAL.DataConnection.getInstance().SetupConnection("LTN", "QLBH_CuaHangBanMayTinh-LinhKien");
        }
        ///
        public DataTable GetEmployeeCount()
        {
            DataTable data = new DataTable();
            try
            {
                string sql = @"Select count(*)
                                    from NHANVIEN ";

                data= _connect.Read(sql);
                return data;
            }
            catch (Exception e)
            {
                throw e;
            }
 
        }


        public void Save(string manv, string ten, string gioitinh, string cmnd, string sdt,
                         string ngaysinh, string diachi, string noisinh, string tuoi, string chucvu,
                         string luong, string ngayVaoLam, MemoryStream anhThe,string pass, string trangthai)
        {
            try
            {
                string sql = "insert into NHANVIEN values(N'{0}',N'{1}',N'{2}',N'{3}',N'{4}',N'{5}',N'{6}',N'{7}',N'{8}',N'{9}',N'{10}',N'{11}',@Img,N'{12}',N'{13}',N'{14}')";

                Console.WriteLine(string.Format(sql, manv, ten, gioitinh, cmnd, sdt, ngaysinh, diachi, noisinh, tuoi, chucvu, luong, ngayVaoLam, anhThe.ToArray(), trangthai,pass,manv));

                DataConnection.getInstance().WriteImage(string.Format(sql, manv, ten, gioitinh, cmnd, sdt, ngaysinh, diachi, noisinh, tuoi, chucvu, luong, ngayVaoLam, trangthai,pass,manv),anhThe);
            }
            catch(Exception e)
            {
                throw e;
            }
        }
        public void UpdateEmployee(string manv, string ten, string gioitinh, string cmnd, string sdt,
                         string ngaysinh, string diachi, string noisinh, string tuoi, string chucvu,
                         string luong, string ngayVaoLam, MemoryStream anhThe, string pass, string trangthai)
        {
            try
            {
                string sql = @"update NHANVIEN SET Ten=N'{0}',GioiTinh=N'{1}',CMND=N'{2}',SDT=N'{3}',
                                NgaySinh=N'{4}',DiaChi=N'{5}',NoiSinh=N'{6}',Tuoi=N'{7}',ChucVu=N'{8}',
                                Luong=N'{9}',NgayVaoLam=N'{10}',AnhThe=@Img,TrangThai=N'{12}',PassWord=N'{13}' 
                               where MaNV=N'{15}'";
                Console.WriteLine(string.Format(sql, ten, gioitinh, cmnd, sdt, ngaysinh, diachi, noisinh, tuoi, chucvu, luong, ngayVaoLam, anhThe, trangthai, pass, manv));

                DataConnection.getInstance().WriteImage(string.Format(sql, ten, gioitinh, cmnd, sdt, ngaysinh, diachi, noisinh, tuoi, chucvu, luong, ngayVaoLam, anhThe.ToArray(), trangthai, pass, manv),anhThe);
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
       

        public DataTable GetAllEmployee()
        {
            DataTable data = new DataTable();
            try
            {
                string sql = @"Select * 
                                    from NHANVIEN ";

                data = _connect.Read(sql);
                return data;
            }
            catch (Exception e)
            {
                throw e;
            }
  
        }

        public DataTable GetImage(string EmployeeID)
        {
            DataTable data = new DataTable();
            try
            {
                string sql = @"Select AnhThe
                                    from NHANVIEN 
                                    where MaNV =N'"+EmployeeID+"'";

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
                                    where MaChucVu =N'"+positionID+"'and DaXoa='0'";

                data = _connect.Read(sql);
                return data;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
         
        public DataTable GetPosition(string positionID)
        {
            DataTable data = new DataTable();
            try
            {
                string sql = @"Select *
                                    from CHUCVU
                                    where MaChucVu =N'" + positionID + @"' 
                                            and DaXoa='0'";

                data = _connect.Read(sql);
                return data;
            }
            catch (Exception e)
            {
                throw e;
            }
        }


    }
}

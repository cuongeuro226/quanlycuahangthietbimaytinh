using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class PositionDAL
    {
        DataConnection _connect = DataConnection.getInstance();
        public PositionDAL()
        {
            DAL.DataConnection.getInstance().SetupConnection("LTN", "QLBH_CuaHangBanMayTinh-LinhKien");
        }
        ///
        public DataTable GetPositionCount()
        {
            DataTable data = new DataTable();
            try
            {
                string sql = @"Select count(*)
                                    from CHUCVU ";

                data = _connect.Read(sql);
                return data;
            }
            catch (Exception e)
            {
                throw e;
            }

        }
        public DataTable GetAllPosition()
        {
            DataTable data = new DataTable();
            try
            {
                string sql = @"Select *
                                    from CHUCVU ";

                data = _connect.Read(sql);
                return data;
            }
            catch (Exception e)
            {
                throw e;
            }

        }
        public DataTable GetFuntion(string ControlID)
        {
            DataTable data = new DataTable();
            try
            {
                string sql = @"Select *
                                    from CHUCNANG
                                               where MaCN=N'"+ ControlID + "'";

                data = _connect.Read(sql);
                return data;
            }
            catch (Exception e)
            {
                throw e;
            }

        }

        public void Save(string PositionID,string PositionName, string Salary, string ControlID)
        {
            try
            {
                string sql = "insert into CHUCVU values(N'{0}',N'{1}',N'{2}',N'{3}','0')";
               
                DataConnection.getInstance().Write(string.Format(sql,PositionID,PositionName,Salary,ControlID));
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void Update(string PositionID, string PositionName, string Salary, string ControlID, string IsDelete)
        {
            try
            {
                string sql = @"update CHUCVU SET  TenChucVu=N'{0}',Luong=N'{1}',MaCN=N'{2}',
                                DaXoa=N'{3}'
                               where MaChucVu=N'{4}'";
                Console.WriteLine(string.Format(sql, PositionID,PositionName,Salary,ControlID,IsDelete));

                DataConnection.getInstance().Write(string.Format(sql, PositionID, PositionName, Salary, ControlID, IsDelete));

            }
            catch(Exception e)
            {
                throw e;
            }

            }
    }
}

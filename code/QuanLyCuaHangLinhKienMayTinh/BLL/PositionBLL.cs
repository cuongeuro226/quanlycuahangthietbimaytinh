using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;
using System.Data;

namespace BLL
{
    class PositionBLL
    {
        PositionDAL positionDAL = new PositionDAL();
        public string CreatPositionID()
        {
            try
            {
                string PositionID;
                DataTable d = positionDAL.GetPositionCount();
                PositionID = d.Rows[0][0].ToString();
                while (PositionID.Length < 3)
                {
                    PositionID = "0" + PositionID;
                }
                PositionID = "MVT" + PositionID;
                return PositionID;
            }
            catch (Exception e)
            {
                throw e;
            }

        }

        public List<position> GetAllPosition()
        {
            List<position> pos = new List<position>();
            try
            {
                DataTable data = positionDAL.GetAllPosition();
                foreach (DataRow r in data.Rows)
                {
                    position p = new position();
                    p.PositionNumber = r.ItemArray[0].ToString();
                    p.PositionName = r.ItemArray[1].ToString();
                    p.Salary = r.ItemArray[2].ToString();
                    pos.Add(p);
                }
                return pos;
            }
            catch (Exception e)
            {
                throw e;
            }

        }
        public DataTable GetFuntion(string PositionID)
        {
            
            try
            {
                return positionDAL.GetFuntion(PositionID);
            }
            catch (Exception e)
            {
                throw e;
            }

        }
    }
}

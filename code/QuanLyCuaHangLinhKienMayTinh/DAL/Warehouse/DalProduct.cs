using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CommonLayer;
using Microsoft.ApplicationBlocks.Data;

namespace DAL.Warehouse
{
    public class DalProduct
    {
        public DataTable GetListProducts()
        {
            return SqlHelper.ExecuteDataset(Constants.ConnectionString,
                CommandType.StoredProcedure,
                "GetListProducts").Tables[0];
        }


    }
}

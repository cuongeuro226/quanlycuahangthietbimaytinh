using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.Warehouse;

namespace BLL.Warehouse
{
    public class BllProduct
    {
        private DalProduct _dalProduct;

        public BllProduct()
        {
            _dalProduct = new DalProduct();
        }
        public DataTable GetListProducts()
        {
            return _dalProduct.GetListProducts();
        }
    }
}

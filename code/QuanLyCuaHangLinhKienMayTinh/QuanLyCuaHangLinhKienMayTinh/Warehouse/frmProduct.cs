using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL.Warehouse;
using DevExpress.XtraPrinting.Native;

namespace QuanLyCuaHangLinhKienMayTinh.Warehouse
{
    public partial class frmProduct : Form
    {
        private BllProduct _bllProduct;


        public frmProduct()
        {
            InitializeComponent();

            _bllProduct = new BllProduct();
        }

        private async void frmProduct_Load(object sender, EventArgs e)
        {
            await FillListProduct(_bllProduct.GetListProducts());
        }

        private async Task FillListProduct(DataTable dt)
        {
            int index = 0;
            foreach (DataRow row in dt.Rows)
            {
                dgListProduct.Rows.Add(
                    row[0].ToString(), 
                    row[1].ToString(),
                    row[2].ToString(),
                    row[4].ToString(),
                    row[5].ToString(),
                    row[7].ToString(),
                    row[8].ToString(),
                    row[9].ToString(),
                    row[10].ToString(),
                    row[12].ToString(),
                    row[14].ToString(),
                    row[15].ToString()
                    );
                index++;
            }
        }

        private void Clear()
        {
            dgListProduct.Rows.Clear();
        }

        private async void btnRefresh_Click(object sender, EventArgs e)
        {
            Clear();
            await FillListProduct(_bllProduct.GetListProducts());           
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            btnSearch.Enabled = !txtSearch.Text.IsEmpty();

        }

        private void dgListProduct_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 13)
            {
                
            }
        }
    }
}

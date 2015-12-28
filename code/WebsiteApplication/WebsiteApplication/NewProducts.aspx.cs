using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;

namespace WebsiteApplication
{
    public partial class NewProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            Response.Redirect("Products.aspx");
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            try
            {
                SqlDataReader dr = null;
                SqlConnection sql = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                sql.Open();
                SqlCommand cmd = new SqlCommand("select * from SANPHAM where MaSanPham='" + e.Values[0].ToString() + "'",sql);
                dr =  cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    lblNotify.Text = "Dữ liệu đã tồn tại";
                    e.Cancel = true;
                }
            }
            catch (SqlException ex)
            {
                lblNotify.Text = "Lỗi truy vấn sql kết nối csd. " + ex.Message ;
                e.Cancel = true;
            }
            
        }
    }
}
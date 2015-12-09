using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;
using QuanLyCuaHangLinhKienMayTinh.BusinessLogicLayer;

namespace QuanLyCuaHangLinhKienMayTinh.GUI
{
    public partial class DangNhap : Form
    {
        public int _exit = 0;
        DangNhapBLL d = new DangNhapBLL();
        public DangNhap()
        {
            InitializeComponent();
        }

        private void btn_thoat_Click(object sender, EventArgs e)
        {
            _exit = 1;
            this.Close();
        }

        private void btn_quenmatkhau_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Liên hệ trực tiếp với quản lý để được cấp tài khoản");
        }

        private void btn_dangnhap_Click(object sender, EventArgs e)
        {
            XuLyDangNhap();

        }


        private void DangNhap_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.KeyCode == Keys.Enter)
            {
                XuLyDangNhap();
            }
        }


        public void XuLyDangNhap()
        {
            if (txt_manv.Text.Trim().Length == 0 || txt_matkhau.Text.Trim().Length == 0)
            {
                lb_loi.Text = "Lỗi ! Nhập sai mã nhân viên hoặc sai mật khẩu...";
            }
            else
            {
                if (d.CheckDangNhap(txt_manv.Text, txt_matkhau.Text))
                {
                    lb_loi.Text = "Đăng nhập thành công.!";
                    //this.Close();
                }
                else
                {
                    lb_loi.Text = "Lỗi ! Nhập sai mã nhân viên hoặc sai mật khẩu...";
                }
            }
        }
    }
}

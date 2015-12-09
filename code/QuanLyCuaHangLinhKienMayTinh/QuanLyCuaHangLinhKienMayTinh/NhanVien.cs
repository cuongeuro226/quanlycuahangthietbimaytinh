using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;

namespace QuanLyCuaHangLinhKienMayTinh
{
    public partial class NhanVien : Form
    {
        NhanVienBLL nvbll = new NhanVienBLL();
        public NhanVien()
        {
            InitializeComponent();
        }

        private void NhanVien_Load(object sender, EventArgs e)
        {

        }

        private void btn_xoa_Click(object sender, EventArgs e)
        {

        }

        private void buttonX5_Click(object sender, EventArgs e)
        {

        }

        private void btn_themmoi_Click(object sender, EventArgs e)
        {
            txb_manv.Text = nvbll.TaoMaNhanVien();
        }

        private void btm_timkhiem_Click(object sender, EventArgs e)
        {

        }

        private void btn_luu_Click(object sender, EventArgs e)
        {
            if (CheckBeforeSave() == true)
            {

            }
            else
            {
                MessageBox.Show("Lỗi nhập dữ liệu, có thể bạn đã nhập sai hoặc thiếu các trường được đánh dấu đỏ");
            }

        }





        public bool CheckBeforeSave()
        {
            bool check = true;
            List<Control> textbox = new List<Control>();
            List<Control> label = new List<Control>();
            textbox.Add(txb_manv);
            textbox.Add(txb_tennv);
            textbox.Add(cbox_gioitinh);
            textbox.Add(txb_cmnd);
            textbox.Add(txb_sdt);
            textbox.Add(dtp_ngaysinh);
            textbox.Add(txb_diachi);
            textbox.Add(txb_noisinh);
            textbox.Add(cbx_chucvu);
            textbox.Add(txb_Luong);
            textbox.Add(txb_anhthe);
            textbox.Add(txb_matkhau);
            //
            label.Add(lb_manv);
            label.Add(lb_tennv);
            label.Add(lb_gioitinh);
            label.Add(lb_cmnd);
            label.Add(lb_sdt);
            label.Add(lb_ngaysinh);
            label.Add(lb_diachi);
            label.Add(lb_noisinh);
            label.Add(lb_chucvu);
            label.Add(lb_luong);
            label.Add(lb_anhthe);
            label.Add(lb_matkhau);
            for(int i=0; i< textbox.Count; i++)
            {
                if(textbox[i].Text.Trim().Length==0)
                {
                    label[i].ForeColor = Color.Red;
                    check = false;
                }

            }
            //  ngay sinh
            if(dtp_ngaysinh.Value>= DateTime.Now)
            {
                check = false;
                lb_ngaysinh.ForeColor = Color.Red;
            }
            // ngay vao lam
            if (dtp_Ngayvaolam.Value > DateTime.Now || dtp_Ngayvaolam.Value < dtp_ngaysinh.Value)
            {
                check = false;
                lb_ngayvaolam.ForeColor = Color.Red;
            }
            return check;
        }

        private void txb_manv_Layout(object sender, LayoutEventArgs e)
        {
            // length==0
            if(((Control)sender).Text.Trim().Length==0)
            {
                Control[] la= this.Controls.Find(((Control)sender).Tag.ToString(),true);
                foreach(Control a in la)
                {
                    a.ForeColor = Color.Red;
                }

            }
            // type!=number
            if (((Control)sender).Name== "txb_cmnd"|| ((Control)sender).Name == "txb_sdt")
            {
                Control[] la = this.Controls.Find(((Control)sender).Tag.ToString(), true);
                foreach (Control a in la)
                {
                    a.ForeColor = Color.Red;
                }
            }
        }

        private void txb_manv_TextChanged(object sender, EventArgs e)
        {
            
            // length==0
            if (((Control)sender).Text.Trim().Length == 0)
            {
                Control[] la = this.Controls.Find(((Control)sender).Tag.ToString(), true);
                foreach (Control a in la)
                {
                    a.ForeColor = Color.Red;
                }

            }
            // lenghth!=0
            if (((Control)sender).Text.Trim().Length != 0)
            {
                Control[] la = this.Controls.Find(((Control)sender).Tag.ToString(), true);
                foreach (Control a in la)
                {
                    a.ForeColor = Color.Black;
                }
                // type=number
                if (((Control)sender).Name == "txb_cmnd" || ((Control)sender).Name == "txb_sdt" || ((Control)sender).Name == "txb_Luong")
                {
                    rule r = new rule();
                    if (r.check_number(((Control)sender).Text) == true)
                    {
                        la = this.Controls.Find(((Control)sender).Tag.ToString(), true);
                        foreach (Control a in la)
                        {
                            a.ForeColor = Color.Black;
                        }
                    }
                    else
                    {
                        la = this.Controls.Find(((Control)sender).Tag.ToString(), true);
                        foreach (Control a in la)
                        {
                            a.ForeColor = Color.Red;
                        }
                    }
                }
            }

        }
    }
}

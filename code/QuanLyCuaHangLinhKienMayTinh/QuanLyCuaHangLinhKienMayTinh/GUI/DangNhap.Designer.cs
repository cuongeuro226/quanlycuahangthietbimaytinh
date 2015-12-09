namespace QuanLyCuaHangLinhKienMayTinh.GUI
{
    partial class DangNhap
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txt_manv = new System.Windows.Forms.TextBox();
            this.txt_matkhau = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.btn_dangnhap = new DevComponents.DotNetBar.ButtonX();
            this.btn_quenmatkhau = new DevComponents.DotNetBar.ButtonX();
            this.btn_thoat = new DevComponents.DotNetBar.ButtonX();
            this.lb_loi = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txt_manv
            // 
            this.txt_manv.Location = new System.Drawing.Point(119, 39);
            this.txt_manv.Name = "txt_manv";
            this.txt_manv.Size = new System.Drawing.Size(244, 20);
            this.txt_manv.TabIndex = 1;
            this.txt_manv.KeyDown += new System.Windows.Forms.KeyEventHandler(this.DangNhap_KeyDown);
            // 
            // txt_matkhau
            // 
            this.txt_matkhau.Location = new System.Drawing.Point(119, 68);
            this.txt_matkhau.Name = "txt_matkhau";
            this.txt_matkhau.Size = new System.Drawing.Size(244, 20);
            this.txt_matkhau.TabIndex = 2;
            this.txt_matkhau.KeyDown += new System.Windows.Forms.KeyEventHandler(this.DangNhap_KeyDown);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(169, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(62, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Đăng Nhập";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(28, 42);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(75, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "Mã nhân viên:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(28, 71);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Mật Khẩu:";
            // 
            // btn_dangnhap
            // 
            this.btn_dangnhap.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btn_dangnhap.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btn_dangnhap.Location = new System.Drawing.Point(117, 128);
            this.btn_dangnhap.Name = "btn_dangnhap";
            this.btn_dangnhap.Size = new System.Drawing.Size(75, 23);
            this.btn_dangnhap.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btn_dangnhap.TabIndex = 3;
            this.btn_dangnhap.Text = "Đăng nhập";
            this.btn_dangnhap.Click += new System.EventHandler(this.btn_dangnhap_Click);
            // 
            // btn_quenmatkhau
            // 
            this.btn_quenmatkhau.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btn_quenmatkhau.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btn_quenmatkhau.Location = new System.Drawing.Point(198, 128);
            this.btn_quenmatkhau.Name = "btn_quenmatkhau";
            this.btn_quenmatkhau.Size = new System.Drawing.Size(101, 23);
            this.btn_quenmatkhau.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btn_quenmatkhau.TabIndex = 4;
            this.btn_quenmatkhau.Text = "Quên Mật Khẩu";
            this.btn_quenmatkhau.Click += new System.EventHandler(this.btn_quenmatkhau_Click);
            // 
            // btn_thoat
            // 
            this.btn_thoat.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btn_thoat.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btn_thoat.Location = new System.Drawing.Point(306, 128);
            this.btn_thoat.Name = "btn_thoat";
            this.btn_thoat.Size = new System.Drawing.Size(63, 23);
            this.btn_thoat.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btn_thoat.SubItemsExpandWidth = 25;
            this.btn_thoat.TabIndex = 5;
            this.btn_thoat.Text = "Thoát";
            this.btn_thoat.Click += new System.EventHandler(this.btn_thoat_Click);
            // 
            // lb_loi
            // 
            this.lb_loi.AutoSize = true;
            this.lb_loi.ForeColor = System.Drawing.Color.Red;
            this.lb_loi.Location = new System.Drawing.Point(195, 100);
            this.lb_loi.Name = "lb_loi";
            this.lb_loi.Size = new System.Drawing.Size(0, 13);
            this.lb_loi.TabIndex = 3;
            // 
            // DangNhap
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(398, 166);
            this.Controls.Add(this.lb_loi);
            this.Controls.Add(this.btn_thoat);
            this.Controls.Add(this.btn_quenmatkhau);
            this.Controls.Add(this.btn_dangnhap);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txt_matkhau);
            this.Controls.Add(this.txt_manv);
            this.Name = "DangNhap";
            this.ShowIcon = false;
            this.Text = "Đăng nhập hệ thống";
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.DangNhap_KeyDown);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txt_manv;
        private System.Windows.Forms.TextBox txt_matkhau;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private DevComponents.DotNetBar.ButtonX btn_dangnhap;
        private DevComponents.DotNetBar.ButtonX btn_quenmatkhau;
        private DevComponents.DotNetBar.ButtonX btn_thoat;
        private System.Windows.Forms.Label lb_loi;
    }
}
namespace QuanLyCuaHangLinhKienMayTinh.Warehouse
{
    partial class frmProduct
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.dgListProduct = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.labelX1 = new DevComponents.DotNetBar.LabelX();
            this.labelX2 = new DevComponents.DotNetBar.LabelX();
            this.txtSearch = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.btnSearch = new DevComponents.DotNetBar.ButtonX();
            this.btnAdd = new DevComponents.DotNetBar.ButtonX();
            this.btnRefresh = new DevComponents.DotNetBar.ButtonX();
            this.clmProductID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmProductName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmMadeIn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmDistributor = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmDateOfPro = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmAccede = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmPrice = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmQuantilies = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmUnit = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmState = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmWarehouse = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmNote = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmEdit = new DevComponents.DotNetBar.Controls.DataGridViewButtonXColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgListProduct)).BeginInit();
            this.SuspendLayout();
            // 
            // dgListProduct
            // 
            this.dgListProduct.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgListProduct.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.clmProductID,
            this.clmProductName,
            this.clmMadeIn,
            this.clmDistributor,
            this.clmDateOfPro,
            this.clmAccede,
            this.clmPrice,
            this.clmQuantilies,
            this.clmUnit,
            this.clmState,
            this.clmWarehouse,
            this.clmNote,
            this.clmEdit});
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgListProduct.DefaultCellStyle = dataGridViewCellStyle1;
            this.dgListProduct.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dgListProduct.Location = new System.Drawing.Point(12, 215);
            this.dgListProduct.Name = "dgListProduct";
            this.dgListProduct.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.dgListProduct.Size = new System.Drawing.Size(900, 371);
            this.dgListProduct.TabIndex = 4;
            this.dgListProduct.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgListProduct_CellClick);
            // 
            // labelX1
            // 
            // 
            // 
            // 
            this.labelX1.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.labelX1.Font = new System.Drawing.Font("Microsoft Sans Serif", 48F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelX1.Location = new System.Drawing.Point(97, 12);
            this.labelX1.Name = "labelX1";
            this.labelX1.Size = new System.Drawing.Size(653, 119);
            this.labelX1.TabIndex = 1;
            this.labelX1.Text = "Danh Sách Sản Phẩm";
            // 
            // labelX2
            // 
            // 
            // 
            // 
            this.labelX2.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.labelX2.Location = new System.Drawing.Point(12, 134);
            this.labelX2.Name = "labelX2";
            this.labelX2.Size = new System.Drawing.Size(59, 23);
            this.labelX2.TabIndex = 2;
            this.labelX2.Text = "Tìm Kiếm";
            // 
            // txtSearch
            // 
            // 
            // 
            // 
            this.txtSearch.Border.Class = "TextBoxBorder";
            this.txtSearch.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.txtSearch.Location = new System.Drawing.Point(68, 135);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(250, 20);
            this.txtSearch.TabIndex = 0;
            this.txtSearch.TextChanged += new System.EventHandler(this.txtSearch_TextChanged);
            // 
            // btnSearch
            // 
            this.btnSearch.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnSearch.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnSearch.Enabled = false;
            this.btnSearch.Location = new System.Drawing.Point(337, 134);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(53, 23);
            this.btnSearch.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnSearch.TabIndex = 1;
            this.btnSearch.Text = "Tìm";
            // 
            // btnAdd
            // 
            this.btnAdd.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnAdd.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnAdd.Location = new System.Drawing.Point(782, 132);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(53, 23);
            this.btnAdd.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnAdd.TabIndex = 2;
            this.btnAdd.Text = "Thêm";
            // 
            // btnRefresh
            // 
            this.btnRefresh.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnRefresh.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnRefresh.Location = new System.Drawing.Point(12, 176);
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(53, 23);
            this.btnRefresh.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.btnRefresh.TabIndex = 3;
            this.btnRefresh.Text = "Làm Tươi";
            this.btnRefresh.Click += new System.EventHandler(this.btnRefresh_Click);
            // 
            // clmProductID
            // 
            this.clmProductID.HeaderText = "Mã Sản Phẩm";
            this.clmProductID.Name = "clmProductID";
            this.clmProductID.ReadOnly = true;
            this.clmProductID.Width = 91;
            // 
            // clmProductName
            // 
            this.clmProductName.HeaderText = "Tên Sản Phẩm";
            this.clmProductName.Name = "clmProductName";
            this.clmProductName.ReadOnly = true;
            this.clmProductName.Width = 95;
            // 
            // clmMadeIn
            // 
            this.clmMadeIn.HeaderText = "Xuất Xứ";
            this.clmMadeIn.Name = "clmMadeIn";
            this.clmMadeIn.ReadOnly = true;
            this.clmMadeIn.Width = 65;
            // 
            // clmDistributor
            // 
            this.clmDistributor.HeaderText = "Nhà Phân Phối";
            this.clmDistributor.Name = "clmDistributor";
            this.clmDistributor.ReadOnly = true;
            this.clmDistributor.Width = 96;
            // 
            // clmDateOfPro
            // 
            this.clmDateOfPro.HeaderText = "Ngày Sản Xuất";
            this.clmDateOfPro.Name = "clmDateOfPro";
            this.clmDateOfPro.ReadOnly = true;
            this.clmDateOfPro.Width = 76;
            // 
            // clmAccede
            // 
            this.clmAccede.HeaderText = "Giá Nhập";
            this.clmAccede.Name = "clmAccede";
            this.clmAccede.ReadOnly = true;
            this.clmAccede.Width = 71;
            // 
            // clmPrice
            // 
            this.clmPrice.HeaderText = "Giá Bán";
            this.clmPrice.Name = "clmPrice";
            this.clmPrice.ReadOnly = true;
            this.clmPrice.Width = 65;
            // 
            // clmQuantilies
            // 
            this.clmQuantilies.HeaderText = "Số Lượng";
            this.clmQuantilies.Name = "clmQuantilies";
            this.clmQuantilies.ReadOnly = true;
            this.clmQuantilies.Width = 72;
            // 
            // clmUnit
            // 
            this.clmUnit.HeaderText = "Đơn Vị Tính";
            this.clmUnit.Name = "clmUnit";
            this.clmUnit.ReadOnly = true;
            this.clmUnit.Width = 83;
            // 
            // clmState
            // 
            this.clmState.HeaderText = "Tình Trạng";
            this.clmState.Name = "clmState";
            this.clmState.ReadOnly = true;
            this.clmState.Width = 78;
            // 
            // clmWarehouse
            // 
            this.clmWarehouse.HeaderText = "Kho";
            this.clmWarehouse.Name = "clmWarehouse";
            this.clmWarehouse.ReadOnly = true;
            this.clmWarehouse.Width = 51;
            // 
            // clmNote
            // 
            this.clmNote.HeaderText = "Ghi Chú";
            this.clmNote.Name = "clmNote";
            this.clmNote.ReadOnly = true;
            this.clmNote.Width = 65;
            // 
            // clmEdit
            // 
            this.clmEdit.HeaderText = "";
            this.clmEdit.Name = "clmEdit";
            this.clmEdit.ReadOnly = true;
            this.clmEdit.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.clmEdit.Text = "Sửa";
            this.clmEdit.UseColumnTextForButtonValue = true;
            this.clmEdit.Width = 50;
            // 
            // frmProduct
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(924, 598);
            this.ControlBox = false;
            this.Controls.Add(this.btnAdd);
            this.Controls.Add(this.btnRefresh);
            this.Controls.Add(this.btnSearch);
            this.Controls.Add(this.txtSearch);
            this.Controls.Add(this.labelX2);
            this.Controls.Add(this.labelX1);
            this.Controls.Add(this.dgListProduct);
            this.Name = "frmProduct";
            this.Load += new System.EventHandler(this.frmProduct_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgListProduct)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.Controls.DataGridViewX dgListProduct;
        private DevComponents.DotNetBar.LabelX labelX1;
        private DevComponents.DotNetBar.LabelX labelX2;
        private DevComponents.DotNetBar.Controls.TextBoxX txtSearch;
        private DevComponents.DotNetBar.ButtonX btnSearch;
        private DevComponents.DotNetBar.ButtonX btnAdd;
        private DevComponents.DotNetBar.ButtonX btnRefresh;
        private DevComponents.DotNetBar.Controls.DataGridViewButtonXColumn clmEdit;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmNote;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmWarehouse;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmState;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmUnit;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmQuantilies;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmPrice;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmAccede;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmDateOfPro;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmDistributor;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmMadeIn;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmProductName;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmProductID;
    }
}
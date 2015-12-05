using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyCuaHangLinhKienMayTinh
{
    public partial class frm_main : Form
    {


        public frm_main()
        {
            InitializeComponent();

        }

        private void button_chucnang_click(object sender, EventArgs e)
        {
            
            //form
            Form s = new sub1();
            s.TopLevel = false;
            s.Visible = true;
            s.Location = new Point(0, 0);
            //add form to panel
            Panel pa = new Panel();
            pa.Dock = DockStyle.Fill;
            pa.AutoScroll = true;
            pa.Controls.Add(s);
            pa.Size = s.Size;
            pa.Resize += new EventHandler(pa_resize);
            //add form to group
            DevComponents.DotNetBar.Controls.GroupPanel g=new DevComponents.DotNetBar.Controls.GroupPanel();
            g.Dock = DockStyle.Fill;
            ///// set group box
            g.Text = ((DevComponents.DotNetBar.ButtonX)sender).Text;
            g.CanvasColor = System.Drawing.SystemColors.Control;
            g.ColorSchemeStyle = DevComponents.DotNetBar.eDotNetBarStyle.Office2007;
            //g.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            g.DrawTitleBox = false;
            g.Location = new System.Drawing.Point(1, 1);
            g.Name = "gpnel_content";
            g.ShowFocusRectangle = true;
            g.Dock = DockStyle.Fill;
            g.Style.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground2;
            g.Style.BackColorGradientAngle = 90;
            g.Style.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground;
            g.Style.BorderBottom = DevComponents.DotNetBar.eStyleBorderType.Solid;
            g.Style.BorderBottomWidth = 1;
            g.Style.BorderColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBorder;
            g.Style.BorderLeft = DevComponents.DotNetBar.eStyleBorderType.Solid;
            g.Style.BorderLeftWidth = 1;
            g.Style.BorderRight = DevComponents.DotNetBar.eStyleBorderType.Solid;
            g.Style.BorderRightWidth = 1;
            g.Style.BorderTop = DevComponents.DotNetBar.eStyleBorderType.Solid;
            g.Style.BorderTopWidth = 1;
            g.Style.CornerDiameter = 4;
            g.Style.CornerType = DevComponents.DotNetBar.eCornerType.Rounded;
            g.Style.TextAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Center;
            g.Style.TextColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelText;
            g.Style.TextLineAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Near;
            g.StyleMouseDown.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            g.StyleMouseOver.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            g.AutoSize = true;
            //////////////
            g.TabIndex = 0;
            g.Controls.Add(pa);
            //add group to tabpage
            DevComponents.DotNetBar.TabControlPanel p = new DevComponents.DotNetBar.TabControlPanel();
            p.Dock = DockStyle.Fill;
            p.Controls.Add(g);
            DevComponents.DotNetBar.TabItem t = new DevComponents.DotNetBar.TabItem();
            t.Text = ((DevComponents.DotNetBar.ButtonX)sender).Text;
            t.AttachedControl=p;
            t.Icon = ((System.Drawing.Icon)(tab_item_trangchu.Icon));
            // add tab_item to tab
            tapcol_content.Tabs.Add(t);
            // refesh
            tapcol_content.Refresh();
            this.Refresh();



            //foreach (Control c in tapcol_content.Tabs[0].AttachedControl.Controls)
            //{
            //    foreach (Control d in c.Controls)
            //    {
            //        Console.WriteLine("a" + d.Name);
            //    }
                
            //}


            //Console.WriteLine("b"+tapcol_content.Tabs[0].AttachedControl);

        }






        #region ui
        
        /// <summary>
        /// ktra du lieu truoc khi dong page
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void tabControl1_TabItemClose(object sender, DevComponents.DotNetBar.TabStripActionEventArgs e)
        {

            Console.WriteLine(((DevComponents.DotNetBar.TabControl)sender).SelectedTab.Name);
        }
        /// <summary>
        /// mo rong khi click vao menu
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void stab_menu_TabStripMouseClick(object sender, MouseEventArgs e)
        {
            if (pnel_top.Height == 50)
            {
                pnel_top.Height = 150;
                pnel_image.Width = 200;
                btn_morong.BackgroundImage.RotateFlip(RotateFlipType.Rotate180FlipX);
            }
        }
        /// <summary>
        /// click mo rong
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btn_morong_Click(object sender, EventArgs e)
        {
            if(pnel_top.Height == 150)
            {
                pnel_top.Height = 50;
                pnel_image.Width = 0;
            }
            else
            {
                pnel_top.Height = 150;
                pnel_image.Width = 200;
            }
            

            btn_morong.BackgroundImage.RotateFlip(RotateFlipType.Rotate180FlipX);
        }
        /// <summary>
        /// resize sub_frm
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void pa_resize(object sender, EventArgs e)
        {
            Console.WriteLine("resizing");
            Control n = (Control)sender;
            foreach( Control c in n.Controls)
            {

                if(n.Width > c.Width)
                {
                    c.Width = n.Width;
                }
                if(n.Height > c.Height)
                {
                    c.Height = n.Height;
                }
                if (c.Width >= c.MinimumSize.Width && c.Width > n.Width)
                {
                    Console.WriteLine("w:" + c.Width + ";m_w:" + c.MinimumSize.Width + ";n_w:" + n.Width);
                    c.Width = n.Width;
                }
                if (c.Height >= c.MinimumSize.Height && c.Height > n.Height)
                {
                    Console.WriteLine("h:" + c.Height + ";m_h:" + c.MinimumSize.Height + ";n_h:" + n.Height);
                    c.Height = n.Height;
                }



            }



        }
        #endregion
    }
}

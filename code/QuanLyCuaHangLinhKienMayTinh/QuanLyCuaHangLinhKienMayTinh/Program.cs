﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyCuaHangLinhKienMayTinh
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            DataAccessLayer.DataConnection.getInstance().SetupConnection("LTN", "QLBH_CuaHangBanMayTinh-LinhKien");
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new GUI.frm_main());
            //Application.Run(new sub1());
        }
    }
}
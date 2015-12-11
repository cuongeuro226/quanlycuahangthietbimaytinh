using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommonLayer
{
    public class Constants
    {
        public static string ConnectionStrnig =
            ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        public static string MsgExceptionSql = "Lỗi kết nối";

        public static string MsgExceptionError = "Lỗi hệ thống";
    }
}

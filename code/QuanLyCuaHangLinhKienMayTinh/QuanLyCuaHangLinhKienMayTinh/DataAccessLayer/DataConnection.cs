using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace QuanLyCuaHangLinhKienMayTinh.DataAccessLayer
{
    public class DataConnection
    {

        private static DataConnection instance;
        string strConnection;
        SqlConnection _con;

        private DataConnection()
        {

        }
        public void SetDateFormat()
        {
            try {
                SqlConnection sql_con = OpenConnnection();
                SqlCommand sql_cmd = new SqlCommand("set dateformat dmy", sql_con);
                sql_cmd.ExecuteNonQuery();
                sql_cmd.Dispose();
            }
            catch (Exception e)
            {
                MessageBox.Show("Lỗi setup_csdl!");
            }
        }

        public static DataConnection getInstance()
        {
             
                if (instance == null)
                    instance = new DataConnection();
                return instance;
            
        }

        public void SetupConnection(string path, string databaseName)
        {
            try {

                strConnection = @"Data Source=" + path + "; Initial Catalog =" + databaseName + ";Integrated Security=True";
                _con = new SqlConnection(strConnection);
            }
            catch(Exception e)
            {
                MessageBox.Show("Lỗi setup_csdl!");
            }
        }

        public void SetupConnection(string path)
        {
            try {
                strConnection = @"Data Source=" + path + ";Integrated Security=True";
                _con = new SqlConnection(strConnection);
            }
            catch (Exception e)
            {
                MessageBox.Show("Lỗi setup_csdl!");
            }
        }

        private SqlConnection OpenConnnection()
        {
            try {
                if (_con.State != System.Data.ConnectionState.Open)
                {
                    _con.Open();
                }
                return _con;
            }
            catch (Exception e)
            {
                MessageBox.Show("Lỗi setup_csdl!");
                return _con;
            }
        }
        //ghi xuống database
        public DataTable Read(string sql_query)
        {
            try {
                //mo ket noi
                SqlConnection sql_con = OpenConnnection();
                DataTable data_table = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter(sql_query, sql_con);
                adapter.Fill(data_table);
                adapter.Dispose();
                return data_table;
            }
            catch (Exception e)
            {
                MessageBox.Show("Lỗi setup_csdl!");
                return new DataTable();
            }
        }
        public DataSet Read(string sql_query, string table_name)
        {
            try {
                SqlConnection sql_con = OpenConnnection();
                DataSet data_set = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(sql_query, sql_con);
                adapter.Fill(data_set, table_name);
                adapter.Dispose();
                return data_set;

            }
            catch (Exception e)
            {
                MessageBox.Show("Lỗi setup_csdl!");
                return new DataSet();
            }
        }
        public void Write(string sql_query)
        {
            try {
                SqlConnection sql_con = OpenConnnection();
                SqlCommand sql_cmd = new SqlCommand(sql_query, sql_con);
                sql_cmd.ExecuteNonQuery();
                sql_cmd.Dispose();
            }
            catch (Exception e)
            {
                MessageBox.Show("Lỗi setup_csdl!");
            }
        }
    }
}

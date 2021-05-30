
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HireMe.Class
{
    public class Data_Access
    {

        string constring;
        SqlConnection connection;
        SqlCommand sqlcmd;
        public Data_Access()
        {
            constring = ConfigurationManager.ConnectionStrings["tcc_con"].ConnectionString;
            connection = new SqlConnection(constring);
        }
        public void open_connection()
        {
            if (connection.State == ConnectionState.Closed)
            {
                connection.Open();
            }
        }
        public DataTable SelectData(string Query)
        {
            sqlcmd = new SqlCommand(Query, connection);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlcmd);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            return dataTable;
        }
        public int EX_Non_Query(string Query)
        {
            
            sqlcmd = new SqlCommand(Query, connection);
            return sqlcmd.ExecuteNonQuery();
        }
        public void EX_Non_Query_Insert(string insert)
        {
            sqlcmd = new SqlCommand(insert, connection);
            sqlcmd.ExecuteNonQuery();
        }
        public void close_connection()
        {
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
        }
        public bool check_empty(string text)
        {
            if (string.IsNullOrEmpty(text))
            {
                return true;
            }
            return false;
        }
        public bool check_number(string text)
        {
            for (int i = 0; i < text.Length; i++)
            {
                if (text[i] >= 49 && text[i] <= 57)
                    return false; 
            }
            return true;
        }
        public bool check_string(string text)
        {
            for (int i = 0; i < text.Length; i++)
            {
                if (text[i] <= 'A' || text[i] >= 'z')
                    return true;
            }
            return false;
        }
    }


}
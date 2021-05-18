using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HireMe.Class;
using System.Data;

namespace HireMe.Class
{
    public class C_HireMe
    {
        DataTable order;

        public DataTable Order { get => order; set => order = value; }

        public void AVG_Sort()
        {
            string q = "select * from tb_graduate order by graduate_avg desc";
            Data_Access ds = new Data_Access();
            Order= ds.SelectData(q);  
        }
        public DataTable check_vacancy(int avg ,string prof)
        {
            string q = "select ministry_name from tb_ministry,tb_vacancy where tb_vacancy.id_ministry=tb_ministry.id_ministry and tb_vacancy.vacancy_avg>='"+avg+"'and tb_vacancy.vacancy_name='"+prof+"';";
            Data_Access ds = new Data_Access();
            DataTable dt = ds.SelectData(q);
            return dt ;
        }
        public void choice()
        {
            Data_Access ds = new Data_Access();
            DataTable dt = new DataTable();
            for (int i = 0; i < Order.Rows.Count; i++)
            {
                int x = (int)order.Rows[i][0];
                for (int j = 1; j < 6; j++)
                {
                string q = "select id_vacancy from tb_desire where id_graduate='" + x + "' and des_order='" + j + "'";
                var x1 =  ds.SelectData(q);
                 var s = ds.SelectData("select vacancy_count from tb_vacancy where id_vacancy='"+x1.Rows[0][0]+"'");
                    var x2 = ds.SelectData("select * from tb_result where id_ministry='" + x1 + "'");
                    if (x2.Rows.Count <(int) s.Rows[0][0])
                    {
                        
                    }
                }

            }

        }
        
        
    }
}
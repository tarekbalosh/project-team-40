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

    }
}
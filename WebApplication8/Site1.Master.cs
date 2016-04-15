using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<Employee> SelectEmployees()
        {
            Northwind40Entities db = new Northwind40Entities();
            var data = from e in db.Employees
                       orderby e.Employee_ID ascending
                       select e;
            return data.ToList();



        }
    }

}
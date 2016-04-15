using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class ChildFilters : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //we are just playing/messing around here for now....
        public int SelectTomEmployees()
        {
            /*List<int> blah2;
            List<string> stringblah;

            blah2.Add(3);
            Northwind40Entities gt = new Northwind40Entities();
            var data = from e in gt.Categories
                       select e;
            foreach(var obj in data)
            {
                blah2.Add(obj.Category_ID);
                stringblah.Add(obj.Category_Name);
            }
            int asdf = blah2.Min();
            return 6;
            return data;*/

            /*
            public List<Employee> SelectEmployees()
            {
            NorthwindEntities db=new NorthwindEntities();
            var data = from e in db.Employees
            orderby e.EmployeeID ascending
            select e;
            return data.ToList();
            }*/
            return 3;


        }
    }
}
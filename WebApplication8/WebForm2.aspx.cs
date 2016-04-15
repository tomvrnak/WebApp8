using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Windows.Forms;

namespace WebApplication8
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //*****************************************************************************//
            //Here will programatically add HTML tags:

            HtmlGenericControl pcontrol = new HtmlGenericControl("p");
            pcontrol.Attributes["id"] = "Test";
            pcontrol.InnerHtml = "asdf";
            Form.Controls.Add(pcontrol);

            HtmlGenericControl d = new HtmlGenericControl
            {
                TagName = "div",
                ID = "div1",
                InnerHtml = "Hello from div1"
            };
            this.Controls.Add(pcontrol);
            this.Controls.Add(d);

            //HtmlGenericControl pcontrol = new HtmlGenericControl("p");
            //pcontrol.Attributes.Add("src", Page.ResolveUrl("~/scripts/jquery-2.0.3.min.js"));
            //control.Attributes.Add("type", "text/javascript");
            //Page.Header.Controls.Add(control);
            //*****************************************************************************//
            System.Web.UI.HtmlControls.HtmlGenericControl dynDiv =
    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            dynDiv.ID = "dynDivCode";
            dynDiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "Gray");
            dynDiv.Style.Add(HtmlTextWriterStyle.Height, "20px");
            dynDiv.Style.Add(HtmlTextWriterStyle.Width, "300px");
            dynDiv.InnerHtml = "I was created using Code Behind";
            this.Controls.Add(dynDiv);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
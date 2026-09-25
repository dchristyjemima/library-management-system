using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplib1
{
    public partial class library : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIssue_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            GridView1.DataBind();
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            GridView1.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            GridView1.DataBind();
        }
    }
}
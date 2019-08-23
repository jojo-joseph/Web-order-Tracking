using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace web_order_tracking.COMPANY
{
    public partial class view_orderdetails : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            dbo.fillgrid("select * from tbl_order inner join tbl_companyreg on tbl_order.cid=tbl_companyreg.cid",GridView1);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string tid = GridView1.DataKeys[e.RowIndex].Value.ToString();
            dbo.exenonquery("delete  from tbl_order where orderid=" + tid + "");
            dbo.fillgrid("Select * from tbl_order", GridView1);
        }
    }
}
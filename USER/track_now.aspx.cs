using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace web_order_tracking.USER
{
    public partial class track_now : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable dt = dbo.exetable("select * from tbl_userreg where Lid=" + Session["Lid"].ToString() + "");
                txt_orderno.Text = dt.Rows[0]["OrderNumber"].ToString();
            }
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            dbo.fillgrid("select * from tbl_addstatus where OrderNumber=" + txt_orderno.Text + "", GridView1);
           // dbo.fillgrid("select * from tbl_addstatus",GridView1);
        }
    }
}
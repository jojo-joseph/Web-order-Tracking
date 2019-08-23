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
    public partial class company_feedback : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = dbo.exetable("select * from tbl_companyreg where Lid=" + Session["Lid"].ToString() + "");
            txt_from.Text = dt.Rows[0]["CompanyName"].ToString();
           
        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            int i = dbo.exenonquery("insert into tbl_feedback values('"+txt_from.Text+"','"+txt_to.Text+"','"+txt_sub.Text+"','"+txt_msg.Text+"')");
            Response.Write("<script>alert('feedback send successfully')</script>");
        }
    }
}
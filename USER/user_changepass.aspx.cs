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
    
    public partial class user_changepass : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = dbo.exetable("select * from tbl_login where Lid=" + Session["Lid"].ToString() + "");
            txt_uname.Text = dt.Rows[0]["username"].ToString();
        
        }

        protected void btn_change_Click(object sender, EventArgs e)
        {
            dbo.exenonquery("update tbl_login set password='" + txt_cpwd.Text + "' where Lid=" + Session["Lid"] + "");
            Response.Write("<script>alert('change successfully')</script>");

        }
    }
}
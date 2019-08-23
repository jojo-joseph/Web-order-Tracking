using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace web_order_tracking.BRANCH
{
    public partial class add_status : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                dbo.fillddl("select * from tbl_userreg", DropDownList1, "OrderNumber", "OrderNumber");

                DataTable dt = dbo.exetable("select * from tbl_branch where Lid=" + Session["Lid"].ToString() + "");
                txt_bname.Text = dt.Rows[0]["branchname"].ToString();
        
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            dbo.exenonquery("insert into tbl_addstatus values('"+DropDownList1.SelectedValue+"','"+txt_bname.Text+"','"+DropDownList2.SelectedValue+"','"+txt_description.Text+"','"+txt_date.Text+"')");
            Response.Write("<script>alert('status added successfully')</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dbo.fillgrid("select * from tbl_order where OrderNumber=" + DropDownList1.SelectedValue + "", GridView1);
        }
    }
}
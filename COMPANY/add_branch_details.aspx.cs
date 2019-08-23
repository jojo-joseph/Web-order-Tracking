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
    public partial class add_branch_details : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            dbo.fillddl("select * from tbl_district",DropDownList1,"district","did");
            }
        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_branch_details.aspx");
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            object ob = dbo.exescalar("insert into tbl_login values('"+txt_uname.Text+"','"+txt_pwd.Text+"','branch',1)select @@identity");
            dbo.exenonquery("insert into tbl_branch values('" + txt_bname.Text + "','" + DropDownList1.SelectedValue + "','"+txt_location.Text+"','" + txt_address.Text + "','" + txt_phone.Text + "','" + txt_email.Text + "','" + txt_established.Text + "','"+Convert.ToInt32(ob)+"')");
            Response.Write("<script>alert('add successfully')</script>");
 
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace web_order_tracking.REGISTRATION
{
    public partial class company_reg : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            dbo.fillddl("select * from tbl_district",DropDownList1,"district","did");
            }
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            object ob = dbo.exescalar("insert into tbl_login values('" + txt_uname.Text + "','" + txt_pwd.Text + "','company',0)select @@identity");
            int a = Convert.ToInt32(ob);
            dbo.exenonquery("insert into tbl_companyreg values('" +txt_cname.Text + "','"+DropDownList1.SelectedValue+"','" + txt_address.Text + "','" + txt_phone.Text + "','" + txt_email.Text + "','"+txt_description.Text+"'," + a + ")");
            Response.Write("<script>alert('insert successfully')</script>");
 
      
        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            Response.Redirect("company_reg.aspx");
        }
    }
}
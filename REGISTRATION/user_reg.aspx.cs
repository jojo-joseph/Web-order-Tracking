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
    public partial class user_reg : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        static Random random = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                dbo.fillddl("select * from tbl_district",DropDownList1,"district","did");
            }
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            object ob = dbo.exescalar("insert into tbl_login values('" + txt_uname.Text + "','" + txt_pwd.Text + "','user',0)select @@identity");
            int a = Convert.ToInt32(ob);
            dbo.exenonquery("insert into tbl_userreg values('" + txt_name.Text + "','"+txt_ordno.Text+"','" + DropDownList1.SelectedValue + "','" + txt_address.Text + "','" + txt_phn.Text + "','" + txt_email.Text + "'," + a + ")");
            Response.Write("<script>alert('insert successfully')</script>");
 
        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_reg.aspx");
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            for (int j = 0; j < 2; j++)
            {
                //Label1.Text = "your order number is" + (Convert.ToString(random.Next(10000, 99999)));
                txt_ordno.Text = (Convert.ToString(random.Next(10000, 99999)));
            }
        }
    }
}
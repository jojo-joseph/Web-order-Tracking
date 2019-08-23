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
    public partial class login : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_reg.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("company_reg.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            DataTable dt = dbo.exetable("select * from tbl_login where username='" + txt_uname.Text + "' and password='" + txt_pwd.Text + "'");
            if (dt.Rows.Count == 1)
            {
                Session["uname"] = dt.Rows[0]["Username"].ToString();
                Session["lid"] = dt.Rows[0]["lid"].ToString();
                if (dt.Rows[0]["role"].ToString() == "user")
                {
                    Response.Redirect("~/USER/user_home.aspx");
                }
                else if ((dt.Rows[0]["role"].ToString() == "company" && dt.Rows[0]["status"].ToString() == "1"))
                {
                    Response.Redirect("~/COMPANY/company_home.aspx");
                }

                else if ((dt.Rows[0]["role"].ToString() == "admin" && dt.Rows[0]["status"].ToString() == "1"))
                {
                    Response.Redirect("~/ADMIN/admin_home.aspx");
                }
                else if ((dt.Rows[0]["role"].ToString() == "employee" && dt.Rows[0]["status"].ToString() == "0"))
                {
                    Response.Redirect("~/EMPLOYEE/employee_home.aspx");
                   
                }
                else if ((dt.Rows[0]["role"].ToString() == "branch" && dt.Rows[0]["status"].ToString() == "1"))
                {
                    Response.Redirect("~/BRANCH/branch_home.aspx");

                }



                else
                {
                    Response.Write("<script>alert('invalid login')</script>");

                }

            }

        }

        protected void btn_fpswd_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgot_password.aspx");
        }
    }
}
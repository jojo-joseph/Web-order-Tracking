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
    public partial class user_editprof : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dbo.fillddl("select * from tbl_district",DropDownList1,"district","did");


                DataTable dt = dbo.exetable("select * from tbl_userreg where Lid=" + Session["Lid"].ToString() + "");
                txt_name.Text = dt.Rows[0]["Name"].ToString();
                txt_ordno.Text = dt.Rows[0]["OrderNumber"].ToString();
               DropDownList1 .SelectedValue = dt.Rows[0]["did"].ToString();
                txt_address.Text = dt.Rows[0]["Address"].ToString();
               
                txt_phn.Text = dt.Rows[0]["Phone"].ToString();
                txt_email.Text = dt.Rows[0]["Email"].ToString();


            }
        }

        

        protected void btn_update_Click(object sender, EventArgs e)
        {
            dbo.exenonquery("update tbl_userreg set Name='" + txt_name.Text + "',did='" + DropDownList1.SelectedValue + "',Address='" + txt_address.Text + "',Phone='" + txt_phn.Text + "',Email='" + txt_email.Text + "' where Lid='" + Session["Lid"].ToString() + "'");

            Response.Write("<Script>alert('Profile Updated')</script>");
        }
    }
}
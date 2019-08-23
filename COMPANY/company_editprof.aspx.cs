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
    public partial class company_editprof : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dbo.fillddl("select * from tbl_district", DropDownList1, "district", "did");


                DataTable dt = dbo.exetable("select * from tbl_companyreg where Lid=" + Session["Lid"].ToString() + "");
                txt_cname.Text = dt.Rows[0]["CompanyName"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["did"].ToString();
                
               
                txt_address.Text = dt.Rows[0]["Address"].ToString();

                txt_phone.Text = dt.Rows[0]["Phone"].ToString();
                txt_email.Text = dt.Rows[0]["Email"].ToString();
                txt_description.Text = dt.Rows[0]["Description"].ToString();


            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            dbo.exenonquery("update tbl_companyreg set CompanyName='" + txt_cname.Text + "',did='" + DropDownList1.SelectedValue + "',Address='" + txt_address.Text + "',Phone='" + txt_phone.Text + "',Email='" + txt_email.Text + "',Description='"+txt_description.Text+"' where Lid='" + Session["Lid"].ToString() + "'");

            Response.Write("<Script>alert('Profile Updated')</script>");
        }
    }
}
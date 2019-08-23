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
    public partial class order : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        static Random random = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            dbo.fillddl("select * from tbl_companyreg",DropDownList5,"CompanyName","cid");
            //dbo.fillddl("select * from tbl_package",DropDownList2,"packagename","packageid");

            dbo.fillddl("select * from tbl_district", DropDownList3, "district", "did");
            dbo.fillddl("select * from tbl_district", DropDownList4, "district", "did");



            DataTable dt = dbo.exetable("select * from tbl_userreg where Lid=" + Session["Lid"].ToString() + "");
            TextBox1.Text = dt.Rows[0]["OrderNumber"].ToString();
            txt_name.Text = dt.Rows[0]["Name"].ToString();

            //DataTable dt1 = dbo.exetable("select * from tbl_companyreg where Lid=" + Session["Lid"].ToString() + "");
            //TextBox2.Text = dt1.Rows[0]["CompanyName"].ToString();
         
            }
        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            dbo.exenonquery("insert into tbl_order values('"+txt_name.Text+"','"+TextBox1.Text+"','"+DropDownList5.Text+"','"+DropDownList2.SelectedValue+"','"+txt_noofitems.Text+"','"+txt_weigth.Text+"','"+txt_date.Text+"','"+txt_toaddr.Text+"','"+DropDownList3.SelectedValue+"','"+txt_tocity.Text+"','"+txt_fromaddr.Text+"','"+DropDownList4.SelectedValue+"','"+txt_fromcity.Text+"')");
            Response.Write("<script>alert('order send successfully')</script>");
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            //for (int j = 0; j < 2; j++)
            //{
            //    //Label1.Text = "your order number is" + (Convert.ToString(random.Next(10000, 99999)));
            //    TextBox1.Text = (Convert.ToString(random.Next(10000, 99999)));
            //}
        }
        

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            dbo.fillddl("select * from tbl_package where cid='"+ DropDownList5.SelectedValue+ "'", DropDownList2, "packagename", "packageid");
    
        }
    }
}
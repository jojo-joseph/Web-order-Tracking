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
    public partial class add_package : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                dbo.fillddl("select * from tbl_companyreg",DropDownList1,"CompanyName","cid");
                
                DataTable dt = dbo.exetable("select * from tbl_companyreg where Lid=" + Session["Lid"].ToString() + "");
                DropDownList1.SelectedValue = dt.Rows[0]["CompanyName"].ToString();

                dbo.fillgrid("select * from tbl_package", GridView1);
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            dbo.exenonquery("insert into tbl_package values('"+DropDownList1.SelectedValue+"','"+txt_pname.Text+"','"+txt_rate.Text+"','"+txt_description.Text+"')");
            Response.Write("<script>alert('add successfully')</script>");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            dbo.fillgrid("Select * from tbl_package", GridView1);
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string tid = GridView1.DataKeys[e.RowIndex].Value.ToString();
            TextBox txt = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
            TextBox txt1 = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
            TextBox txt2 = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0];
            TextBox txt3 = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0];
            //TextBox txt1 = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
            dbo.exenonquery("update tbl_package set cid='"+txt3.Text+"',packagename='" + txt.Text + "',rate='"+txt1.Text+"',description='"+txt2.Text+"' where packageid=" + tid + "");
            GridView1.EditIndex = -1;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string tid = GridView1.DataKeys[e.RowIndex].Value.ToString();
            dbo.exenonquery("delete  from tbl_package where packageid=" + tid + "");
            dbo.fillgrid("Select * from tbl_package", GridView1);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            dbo.fillgrid("Select * from tbl_package", GridView1);
        }
    }
}
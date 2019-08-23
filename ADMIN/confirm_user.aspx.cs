using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace web_order_tracking.ADMIN
{
    public partial class confirm_user : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            //dbo.fillgrid("select * from tbl_userreg inner join tbl_login on tbl_userreg.Lid=tbl_login.Lid where tbl_login.status=0",GridView1);
            dbo.fillgrid("select * from tbl_userreg inner join tbl_login on tbl_userreg.Lid=tbl_login.Lid where tbl_login.status=0", GridView1);
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();

            dbo.exenonquery("update tbl_login set status=1 where Lid=" + id + "");
            dbo.fillgrid("select * from tbl_userreg inner join tbl_login on tbl_userreg.Lid=tbl_login.Lid where tbl_login.status=0", GridView1);
           

        }
    }
}
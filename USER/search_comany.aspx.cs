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
    public partial class search_comany : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            dbo.fillddl("select * from tbl_district",DropDownList1,"district","did");
            }





            //if (!IsPostBack)
            //{
            //    dbo.fillgrid("select * from tbl_companyreg inner join tbl_district on tbl_companyreg.did=tbl_district.did ", GridView1);
            //}
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
           dbo.fillgrid("select * from tbl_companyreg where did=" + DropDownList1.SelectedValue + "", GridView1);
           // dbo.fillgrid("select CompanyName,district,description from tbl_companyreg inner join tbl_district on tbl_companyreg.did=tbl_district.did where did=" + DropDownList1.SelectedValue + "", GridView1);
           // dbo.fillgrid("select * from tbl_companyreg inner join tbl_district on tbl_companyreg.did=tbl_district.did where did=" + DropDownList1.SelectedValue + " ", GridView1);
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
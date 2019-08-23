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
     
    public partial class view_company_more : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = Request.QueryString["id"];
                
                dbo.fillgrid("select * from tbl_companyreg where cid = "+s+"",GridView1);
            }
        }
    }
}
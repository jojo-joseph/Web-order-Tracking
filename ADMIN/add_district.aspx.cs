﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace web_order_tracking.ADMIN
{
    public partial class add_district : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            int i = dbo.exenonquery("insert into tbl_district values('"+txt_district.Text+"')");
            Response.Write("<script>alert('insert successfully')</script>");
        }
    }
}
using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DBoperation
/// </summary>
public class DBoperation
{
    public   SqlConnection con;
    public  SqlCommand cmd;
	public DBoperation()
    {
        con = new SqlConnection("Data Source=.;Initial Catalog=order;Integrated Security=True");
        cmd = new SqlCommand();
        cmd.Connection = con;
	}
    public SqlConnection getcon()
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        } 
        return con;
    }
    public void dbclose()
    {
        con.Close();
    }
    public int exenonquery(String sql)
    {
        getcon();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql;
        int i = cmd.ExecuteNonQuery();
        return i;
    }
    public object exescalar(String sql)
    {
        getcon();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql;
        object ob = cmd.ExecuteScalar();
        return ob;
    }
    public SqlDataReader exereader(String sql)
    {
         getcon();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql;
        SqlDataReader dr = cmd.ExecuteReader();
        return dr;
    }
    public DataSet exedataset(String sql)
    {
       // cmd.Connection = getcon();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }


    public DataTable exetable(String sql)
    {
        //cmd.Connection = getcon();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public void fillgrid(String sql, GridView dv)
    {
        dv.DataSource = exedataset(sql);
        dv.DataBind();
    }
    public void filldlist(String sql, DataList dl)
    {
        dl.DataSource = exedataset(sql);
        dl.DataBind();
    }
    public void filldetailsview(String sql, DetailsView dv)
    {
        dv.DataSource = exedataset(sql);
        dv.DataBind();
    }


    public void filllistview(String sql, ListView dl)
    {
        dl.DataSource = exedataset(sql);
        dl.DataBind();
    }

    public void formfill(String sql, FormView fl)
    {
        fl.DataSource = exedataset(sql);
        fl.DataBind();
    }
    public void fillddl(String sql, DropDownList ddl, String txt, String val)
    {
        ddl.DataTextField = txt;
        ddl.DataValueField = val;
        ddl.DataSource = exedataset(sql);
        ddl.DataBind();
        ddl.Items.Insert(0, new ListItem("---select---", "0"));
    }
    public void fillrbl(String sql, RadioButtonList rbl, String txt, String val)
    {
        rbl.DataTextField = txt;
        rbl.DataValueField = val;
        rbl.DataSource = exedataset(sql);
        rbl.DataBind();
    }
    public void exec_sp(SqlCommand cmd1)
    {
        cmd1.Connection = con;
        con.Open();
        cmd1.ExecuteNonQuery();
    }

   


}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

namespace web_order_tracking.REGISTRATION
{
    public partial class forgot_password : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlDataReader dr;
        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
          // SqlDataReader dr = dbo.exereader("SELECT tbl_user.*,tbl_login.* from tbl_user inner join tbl_login on tbl_user.user_id=tbl_login.userid where tbl_user.email_id='" + txtemail.Text + "'");
            SqlDataReader dr = dbo.exereader("SELECT * from tbl_userreg inner join tbl_login on tbl_userreg.Lid=tbl_login.Lid where tbl_login.username='" + txt_email.Text + "'");
          
            
            if (dr.Read())
            {
                Session["pwd"] = dr["password"].ToString();
                dr.Close();
                string mFrom = "foripsrt@gmail.com";  //foripsrt","ipsr123456"
                // string mPwd = "ipsr123456";
                MailMessage msg1 = new MailMessage();
                msg1.From = new MailAddress(mFrom);
                msg1.To.Add(new MailAddress(txt_email.Text));
                msg1.Subject = "Forgot password information";
                msg1.Body = "Your password is '" + Session["pwd"] + "'";
                msg1.IsBodyHtml = true;
                SmtpClient smtpc = new SmtpClient("smtp.gmail.com", 587);
                System.Net.NetworkCredential basicAuthentication = new System.Net.NetworkCredential("foripsrt", "ipsr123456");
                smtpc.EnableSsl = true;
                smtpc.UseDefaultCredentials = false;
                smtpc.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpc.Credentials = basicAuthentication;
                smtpc.Send(msg1);
                Response.Write("<script>alert('Password has been send to your Email ID')</script>");
            }
            else
            {
                Response.Write("<script>alert('Not a Registered Email ID')</script>");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

namespace web_order_tracking.USER
{
    public partial class enquiry_form : System.Web.UI.Page
    {
        DBoperation dbo = new DBoperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(txt_from.Text);
            msg.To.Add(new MailAddress(this.txt_to.Text));
            msg.Subject = this.txt_sub.Text.ToString();
            msg.Body = "Hi '" + txt_to.Text + "' a messase has sent you by '" + txt_from.Text + "'" + this.txt_to.Text.ToString();
           

            SmtpClient s = new SmtpClient();
            s.Host = "smtp.gmail.com";
            s.Port = 587;
            System.Net.NetworkCredential cred = new
            System.Net.NetworkCredential("foripsrt", "ipsr123456");
            s.Credentials = cred;
            s.EnableSsl = true;
            s.Send(msg);
            Response.Write("<script>alert('email has been send successfully')</script>");

        }
    }
}
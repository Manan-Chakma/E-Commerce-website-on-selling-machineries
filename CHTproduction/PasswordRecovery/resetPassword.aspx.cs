using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Text;
using System.Data;

public partial class PasswordRecovery_resetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["UserInfo"];

        if (cookie == null)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("~/AfterSignUp/DefaultMainPage.aspx");
            }
        }
        else
        {
            Response.Redirect("~/AfterSignUp/DefaultMainPage.aspx");
        }
    }

    protected void resetPasswordButton_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("spResetPassword", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter paramUsername = new SqlParameter("@UserName", resetUsername.Text);

            cmd.Parameters.Add(paramUsername);

            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                if (Convert.ToBoolean(rdr["ReturnCode"]))
                {
                    SendPasswordResetEmail(rdr["Email"].ToString(), resetUsername.Text, rdr["UniqueId"].ToString());
                    Label2.Text = "An email with instructions to reset your password is sent to your registered email";
                    Label2.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    Label2.ForeColor = System.Drawing.Color.Red;
                    Label2.Text = "Username not found!";
                    Label2.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }


    private void SendPasswordResetEmail(string ToEmail, string UserName, string UniqueId)
    {
        // MailMessage class is present is System.Net.Mail namespace
        MailMessage mailMessage = new MailMessage("chtproduction2017@gmail.com", ToEmail);


        // StringBuilder class is present in System.Text namespace
        StringBuilder sbEmailBody = new StringBuilder();
        sbEmailBody.Append("Dear " + UserName + ",<br/><br/>");
        sbEmailBody.Append("Please click on the following link to reset your password");
        sbEmailBody.Append("<br/>"); sbEmailBody.Append("http://localhost/IISvirtualDirectory/CHTproduction/PasswordRecovery/ChangePassword.aspx?uid=" + UniqueId);
        sbEmailBody.Append("<br/><br/>");
        sbEmailBody.Append("<b>CHTproduction</b>");

        mailMessage.IsBodyHtml = true;

        mailMessage.Body = sbEmailBody.ToString();
        mailMessage.Subject = "Reset Your Password";
        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

        smtpClient.Credentials = new System.Net.NetworkCredential()
        {
            UserName = "chtproduction2017@gmail.com",
            Password = "*****"//hidden for purpose
        };

        smtpClient.EnableSsl = true;
        smtpClient.Send(mailMessage);
    }
}
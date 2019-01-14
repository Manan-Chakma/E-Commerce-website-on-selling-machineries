using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["UserInfo"];

        if (cookie ==null)
        {
            if(Session["user"] != null)
            {
                Response.Redirect("~/AfterSignUp/DefaultMainPage.aspx");
            }
        }
        else
        {
            Response.Redirect("~/AfterSignUp/DefaultMainPage.aspx");
        }
    }

    protected void SignUpButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Registration/Registration.aspx");
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login/Login.aspx");
    }

    protected void adminPanel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/controlLogin.aspx");
    }
}
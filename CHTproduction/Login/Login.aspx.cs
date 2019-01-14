using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class Login_Login : System.Web.UI.Page
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

    protected void loginButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select COUNT(*)FROM registration WHERE username='" + loginUN.Text + "' and password='" + loginPW.Text + "'");
        cmd.Connection = con;
        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
        if (OBJ > 0)
        {
            if (CheckBox1.Checked) {
                HttpCookie cookie = new HttpCookie("UserInfo");
                cookie["name"] = loginUN.Text; 

                cookie.Expires = DateTime.Now.AddMinutes(3);
                Response.Cookies.Add(cookie);
                Response.Redirect("~/AfterSignUp/DefaultMainPage.aspx");
            }
            else
            {
                Session["user"] = loginUN.Text;
                Response.Redirect("~/AfterSignUp/DefaultMainPage.aspx");
            }


        }
        else
        {
            Label3.Text="username or password wrong";
            
        }
    }
}
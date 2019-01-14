using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class Profile_userProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        HttpCookie cookie = Request.Cookies["UserInfo"];
        if (cookie != null)
        {
            Session["user"] = cookie["name"];
            funct();
        }
        else
        {
            if (Session["user"] != null)
            {
                funct();
            }
            else
            {
                Response.Redirect("~/Login/Login.aspx");
            }

        }



    }


    protected void funct()
    {
        sessionUserName.Text = Session["user"].ToString();
        Label1.Text = "Hey " + Session["user"].ToString() + " Welcome to your dashboard.Here you can manage your request. For any problem or information contact us at  XXXXX";
        BindGrid();
    }

    protected void BindGrid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString);
        // productName, catagoryOfProduct, quantityOfProduct, price, dateOfOrder
        con.Open();
        SqlCommand cmd = new SqlCommand("select productName, catagoryOfProduct, quantityOfProduct, price, dateOfOrder from duplicateCart where buyerName='" + Session["User"].ToString() + "'", con);
        SqlDataReader da = cmd.ExecuteReader();
        GridView2.DataSource = da;
        GridView2.DataBind();



    }

    protected void mainpageviewCartButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AfterSignUp/Cart/addToCart.aspx");
    }

    protected void page1logoutbutton_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["UserInfo"];
        if (cookie != null)
        {
            cookie.Expires = DateTime.Now.AddMinutes(-3);
            Response.Cookies.Add(cookie);
            Session["user"] = null;

            Response.Redirect("~/index.aspx");

        }
        else
        {
            if (Session["user"] != null)
            {
                Session["user"] = null;
                Response.Redirect("~/index.aspx");
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/rat/WebForm1.aspx");
    }
}
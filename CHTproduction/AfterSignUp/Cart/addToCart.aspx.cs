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

public partial class AfterSignUp_Cart_addToCart : System.Web.UI.Page
{




    int total = 0;

    int a;

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
        if (Session["addedIntoCart"] != null)
        {
            if (!IsPostBack)
            {
                BindGrid();
                var footlbl = GridView1.FooterRow.FindControl("totalAmount") as Label;

                if (footlbl != null)
                {
                    footlbl.Text = total.ToString();
                }
                else
                {
                    Response.Write("Something Went Wrong");
                }


            }
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select productName, catagoryOfProduct, quantityOfProduct, price, dateOfOrder from cartTable where buyerName='" + Session["User"].ToString() + "'", con);




            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                BindGrid();
                var footlbl = GridView1.FooterRow.FindControl("totalAmount") as Label;

                if (footlbl != null)
                {
                    footlbl.Text = total.ToString();
                }
                else
                {
                    Response.Write("Something Went Wrong");
                }
            }
            else
            {
                Label7.Text = "Cart is empty";
                addCartBuyButton.Visible = !addCartBuyButton.Visible;
                clearCartButton.Visible = !clearCartButton.Visible;
            }
            con.Close();
        }
    }

    protected void BindGrid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString);
        
        con.Open();
         SqlCommand cmd = new SqlCommand("select productName, catagoryOfProduct, quantityOfProduct, price, dateOfOrder from cartTable where buyerName='" + Session["User"].ToString() + "'", con);
         SqlDataReader da = cmd.ExecuteReader();
         GridView1.DataSource = da;
         GridView1.DataBind();



    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            var sallbl = e.Row.FindControl("Label1") as Label;

            if (sallbl != null)
            {
                total += int.Parse(sallbl.Text);
                Session["Amount"] = total.ToString();



            }

        }
    }


    protected void addCartBuyButton_Click(object sender, EventArgs e)
    {


       
        Session["fromCartAllBuy"] = Label7.Text;
        Response.Redirect("~/AfterSignUp/Buy/buy.aspx");
        




        
    }

    protected void clearCartButton_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Delete from cartTable where buyerName='" + Session["User"].ToString() + "'";
        
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Session["addedIntoCart"] = null;
        Response.Redirect(Request.RawUrl);
    }

    protected void page1logoutbutton_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["UserInfo"];
        if (cookie != null)
        {
            cookie.Expires = DateTime.Now.AddDays(-30d);
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
}
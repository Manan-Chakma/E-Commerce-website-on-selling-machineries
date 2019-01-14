using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AfterSignUp_Buy_buy : System.Web.UI.Page
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
        if (Session["Amount"] != null)
        {
            Label13.Text = Session["Amount"].ToString();



        }
        else
        {
            Response.Redirect("~/AfterSignUp/DefaultMainPage.aspx");
        }
    }

    protected void BuyBuyButton_Click(object sender, EventArgs e)
    {

        if (Session["fromCartAllBuy"] !=null)
        {
            if (Session["singleItem"] != null) {
                func();
                Session["singleItem"] = null;
            }
            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString);

                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into duplicateCart(buyerName, productName, catagoryOfProduct, quantityOfProduct, price, dateOfOrder) select buyerName, productName, catagoryOfProduct, quantityOfProduct, price, dateOfOrder from cartTable where buyerName='" + Session["User"].ToString() + "'", con);

                SqlDataReader dr = cmd.ExecuteReader();

                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "Delete from cartTable where buyerName='" + Session["User"].ToString() + "'";

                cmd1.Connection = con;
                cmd1.ExecuteNonQuery();
                Session["addedIntoCart"] = null;
                Session["fromCartAllBuy"] = null;




            }


            //con.Close();
        }
        else if (Session["singleItem"] !=null)
        {

            func();
            Session["singleItem"] = null;
        }
        else
        {
            Response.Redirect("~/index.aspx");
        }


        string cs1 = ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString;

        

        using (SqlConnection conn2 = new SqlConnection(cs1))
        {
            using (SqlCommand cmd2 = new SqlCommand("INSERT INTO infoTable(sessionName, fullName, fullAddress, phoneNumber, amountSentFrom, amountSent, time) VALUES(@sessionName, @fullName, @fullAddress, @phoneNumber, @amountSentFrom, @amountSent, @time)"))
            {
                cmd2.Connection = conn2;
                cmd2.Parameters.AddWithValue("@sessionName", Session["user"].ToString());
                cmd2.Parameters.AddWithValue("@fullName", TextBoxfullname.Text);
                cmd2.Parameters.AddWithValue("@fullAddress", TextBoxdeliveryaddress.Text);
                cmd2.Parameters.AddWithValue("@phoneNumber", TextBoxphonenumber.Text);
                cmd2.Parameters.AddWithValue("@amountSentFrom", TextBoxamountsent.Text);
                cmd2.Parameters.AddWithValue("@amountSent", Session["Amount"].ToString());
                cmd2.Parameters.AddWithValue("@time", DateTime.Now);
                conn2.Open();
                int a = cmd2.ExecuteNonQuery();
                if (a == 1)
                {
                    Label15.Text = "The Item will be delivered to the address within one week check your profile to see the order";
                    Label15.ForeColor = System.Drawing.Color.Green;
                    Session["Amount"] = null;
                }
                else
                {
                    Label15.Text = "something went wrong";
                }
                conn2.Close();



            }
        }
    }

    public void func() {
        string cs = ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);

        using (SqlConnection conn = new SqlConnection(cs))
        {
            using (SqlCommand cmd1 = new SqlCommand("INSERT INTO duplicateCart(buyerName, productName, catagoryOfProduct, quantityOfProduct, price, dateOfOrder) VALUES(@buyerName, @productName, @catagoryOfProduct, @quantityOfProduct, @price, @dateOfOrder)"))
            {
                cmd1.Connection = conn;
                cmd1.Parameters.AddWithValue("@buyerName", Session["user"].ToString());
                cmd1.Parameters.AddWithValue("@productName", Session["1t"].ToString());
                cmd1.Parameters.AddWithValue("@catagoryOfProduct", Session["2c"].ToString());
                cmd1.Parameters.AddWithValue("@quantityOfProduct", Session["3q"].ToString());
                cmd1.Parameters.AddWithValue("@price", Session["4p"].ToString());
                cmd1.Parameters.AddWithValue("@dateOfOrder", Session["5"].ToString());
                conn.Open();
                int a = cmd1.ExecuteNonQuery();
                if (a == 1)
                {

                }
                else
                {

                }
                //conn.Close();



            }
        }






        Session["1t"] = null;
        Session["2c"] = null;
        Session["3q"] = null;
        Session["4p"] = null;
        Session["5"] = null;

        
    }
}
    

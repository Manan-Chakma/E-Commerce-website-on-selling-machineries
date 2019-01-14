using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Web;


public partial class AfterSignUp_Page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        HttpCookie cookie = Request.Cookies["UserInfo"];
        if (cookie != null)
        {
            Session["user"] = cookie["name"];
            func();
        }
        else
        {
            if (Session["user"] != null)
            {
                func();
            }
            else
            {
                Response.Redirect("~/Login/Login.aspx");
            }

        }



    }

    protected void func()
    {
        sessionUserName.Text = Session["user"].ToString();


        SqlParameter[] parameters = new SqlParameter[1];
        parameters[0] = new SqlParameter("@Id", SqlDbType.Int) { Value = Convert.ToInt32(Request.QueryString["ID"]) };

        DataTable dt = this.GetDataTableFromSproc("spGetImageId", parameters);



        string title = dt.Rows[0]["title"].ToString();
        Label1.Text = title;

        this.Title = title;

        string description = dt.Rows[0]["description"].ToString();
        Label2.Text = description;
        string catagory = dt.Rows[0]["catagory"].ToString();
        Label3.Text = catagory;
        string quantityAvailabale = dt.Rows[0]["quantityAvailable"].ToString();
        Label4.Text = quantityAvailabale;
        string pricePerunit = dt.Rows[0]["pricePerUnit"].ToString();
        Label5.Text = pricePerunit;
        Image1.ImageUrl = "data:Image/png;base64," + Convert.ToBase64String((byte[])dt.Rows[0]["imageData"]);
    }


    public string ConnectionString
    {
        get
        {
            return ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString;
        }
    }

    public DataTable GetDataTableFromSproc(string spGetImageId, SqlParameter[] parameters)
    {
        using (SqlConnection con = new SqlConnection(this.ConnectionString))
        using (SqlCommand cmd = new SqlCommand(spGetImageId, con) { CommandType = CommandType.StoredProcedure })
        using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
        {
            con.Open();
            cmd.Parameters.AddRange(parameters);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }
    }

    protected void cartButton_Click(object sender, EventArgs e)
    {


        if(Session["user"] != null)
        {
            string cs = ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);


            con.Open();

            using (SqlConnection conn = new SqlConnection(cs))
            {
                using (SqlCommand cmd1 = new SqlCommand("INSERT INTO cartTable(buyerName, productName, catagoryOfProduct, quantityOfProduct, Price, dateOfOrder) VALUES(@buyerName, @productName, @catagoryOfProduct, @quantityOfProduct, @price, @dateOfOrder)"))
                {
                    cmd1.Connection = con;
                    cmd1.Parameters.AddWithValue("@buyerName", Session["user"].ToString());
                    cmd1.Parameters.AddWithValue("@productName", Label1.Text);
                    cmd1.Parameters.AddWithValue("@catagoryOfProduct", Label3.Text);
                    cmd1.Parameters.AddWithValue("@quantityOfProduct",orderedQuantity.SelectedValue);

                    int i = Convert.ToInt32(orderedQuantity.SelectedValue.ToString());
                    int j = Convert.ToInt32(Label5.Text);
                    int k = i * j;
                    string result = k.ToString();

                    cmd1.Parameters.AddWithValue("@price", result);
                    cmd1.Parameters.AddWithValue("@dateOfOrder", DateTime.Now);

                    conn.Open();
                    int a = cmd1.ExecuteNonQuery();
                    if (a == 1)
                    {

                        Label13.Text = "successfully added to the cart to view go to view cart";
                        Label13.ForeColor = System.Drawing.Color.Green;
                        Session["addedIntoCart"] = "somethingAddedIntoCart";
                    }
                    else
                    {
                        Label13.Text = "something went wrong";
                        Label13.ForeColor = System.Drawing.Color.Red;
                    }
                    conn.Close();
                }
            }

            con.Close();
        }






    }


    protected void buyButton_Click(object sender, EventArgs e)
    {
        int i = Convert.ToInt32(orderedQuantity.SelectedValue.ToString());
        int j = Convert.ToInt32(Label5.Text);
        int k = i * j;
        string result = k.ToString();
        Session["Amount"] = result;
        Session["singleItem"]= Label1.Text;


        Session["1t"] = Label1.Text;
        Session["2c"] = Label3.Text;
        Session["3q"] = orderedQuantity.SelectedValue;
        Session["4p"] = Label5.Text;
        Session["5"] = DateTime.Now;









        Response.Redirect("~/AfterSignUp/Buy/buy.aspx");
    }

    protected void viewCartButton_Click(object sender, EventArgs e)
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
}

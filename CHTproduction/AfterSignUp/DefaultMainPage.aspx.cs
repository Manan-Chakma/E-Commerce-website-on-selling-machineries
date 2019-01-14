using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;
using System.Data.OleDb;

public partial class AfterSignUp_DefaultMainPage : System.Web.UI.Page
{


    static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString);
    static SqlDataAdapter da;
    static DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {

        HttpCookie cookie = Request.Cookies["UserInfo"];

        if (cookie != null)
        {
            Session["user"] = cookie["name"];


            sessionUserName.Text = Session["user"].ToString();
            fnc();

        }
        else
        {
            if (Session["user"] != null)
            {
                fnc();
            }
            else
            {
                Response.Redirect("~/Login/Login.aspx");
            }


        }



    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetSearch(string prefixText)
    {
        DataTable Result = new DataTable();
        string str = "select title from uploadTable where title like '" + prefixText + "%'";
        da = new SqlDataAdapter(str, con);
        dt = new DataTable();
        da.Fill(dt);
        List<string> Output = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
            Output.Add(dt.Rows[i][0].ToString());
        return Output;
    }





    protected void fnc()
    {
        sessionUserName.Text = Session["user"].ToString();



        if (Session["catagory"] == null || Session["catagory"].ToString() == "All")
        {
            if (Session["searchedProduct"] != null)
            {
                SqlDataAdapter sda = new SqlDataAdapter("select ID, title, imageData from uploadTable where title='" + Session["searchedProduct"].ToString() + "'", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = dt;

                GridView1.DataBind();
            }
            else
            {
                SqlDataAdapter sda = new SqlDataAdapter("select ID, title, imageData from uploadTable", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = dt;

                GridView1.DataBind();
            }



        }
        else
        {


            SqlDataAdapter sda = new SqlDataAdapter("select ID, title, imageData from uploadTable where catagory='" + Session["catagory"].ToString() + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;

            GridView1.DataBind();

        }
    }






    protected void mainpagesubmit_Click(object sender, EventArgs e)
    {




        Session["catagory"] = mainpageDropDownList.SelectedValue;
        Session["searchedProduct"] = null;

        Response.Redirect(Request.RawUrl, true);

    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void mainpageviewCartButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AfterSignUp/Cart/addToCart.aspx");
    }

    protected void page1logoutbutton_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["UserInfo"];
        if(cookie != null) {
            cookie.Expires = DateTime.Now.AddMinutes(-3);
            Response.Cookies.Add(cookie);
            Session["user"] = null;

            Response.Redirect("~/index.aspx");
            
        }
        else
        {
            if(Session["user"] != null)
            {
                Session["user"] = null;
                Response.Redirect("~/index.aspx");
            }
        }
    }

    protected void search_Click(object sender, EventArgs e)
    {
        Session["searchedProduct"] = TextBox1.Text;
        Session["catagory"] = null;
        Response.Redirect(Request.RawUrl, true);
    }
}
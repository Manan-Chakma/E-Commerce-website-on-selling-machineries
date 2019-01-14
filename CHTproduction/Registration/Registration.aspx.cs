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


public partial class Registration_Registration : System.Web.UI.Page
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
            else
            {
                signupUNLabelMessage.Visible = false;
                signupUNLabelMessage.Visible = false;
            }
        }
        else
        {
            Response.Redirect("~/AfterSignUp/DefaultMainPage.aspx");
        }



    }

    protected void signupButton_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);


        con.Open();
        SqlCommand cmd = new SqlCommand("select * from registration where username='" + signupUN.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0 || Label11.Text !="")
        {
            Label12.Text = "There is a field missing";
            
        }
        else
        {
            using (SqlConnection conn = new SqlConnection(cs))
            {
                using (SqlCommand cmd1 = new SqlCommand("INSERT INTO registration(username, password, email, gender, idOpenDate) VALUES(@username, @password, @email, @gender, @idOpenDate)"))
                {
                    cmd1.Connection = conn;
                    cmd1.Parameters.AddWithValue("@username", signupUN.Text);
                    cmd1.Parameters.AddWithValue("@password", signupPW.Text);
                    cmd1.Parameters.AddWithValue("@email", signupEmail.Text);
                    cmd1.Parameters.AddWithValue("@gender", signupGender.SelectedValue);
                    cmd1.Parameters.AddWithValue("@idOpenDate", DateTime.Now);
                   
                    conn.Open();
                    int a = cmd1.ExecuteNonQuery();
                    if (a == 1)
                    {

                        HttpCookie cookie = new HttpCookie("UserInfo");
                        cookie["name"] = signupUN.Text;
                        
                        cookie.Expires = DateTime.Now.AddMinutes(3);
                        Response.Cookies.Add(cookie);

                        Session["user"] = signupUN.Text;
                        Response.Redirect("~/AfterSignUp/DefaultMainPage.aspx");
                    }
                    else
                    {
                        Label12.Text = "not inserted into database";
                    }
                    conn.Close();
                }
            }



        }
        con.Close();

    }

    protected void signupUN_TextChanged(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true)
        {

            string cs = ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);


            con.Open();
            SqlCommand cmd = new SqlCommand("select * from registration where username='" + signupUN.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                signupUNLabelMessage.Visible = true;

                signupUNLabelMessage.Text = "Username already exists.";
                signupUNLabelMessage.ForeColor = System.Drawing.Color.Red;
            }
            else
            {

                signupUNLabelMessage.Visible = false;

            }
        }
    }




}
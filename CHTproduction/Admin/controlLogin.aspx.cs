using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_controlLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "Manan" && TextBox2.Text=="check") {
            Response.Redirect("~/Admin/controPanel.aspx");
        }
        else
        {
            Label3.Text = "YOU ARE NOT ADMIN";
            Label3.ForeColor = System.Drawing.Color.Red;
            
        }
    }
}
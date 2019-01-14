using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class PasswordRecovery_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {




        if (!IsPostBack)
        {
            if (!IsPasswordResetLinkValid())
            {
                
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = "Password Reset link has expired or is invalid";
            }
        }
    }

    protected void saveChangedPassword_Click(object sender, EventArgs e)
    {
        if ( Label6.Text == "")
        {
            if (ChangeUserPassword())
            {
                Label3.Text = "Password Changed Successfully!";
            }
            else
            {
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = "Password Reset link has expired or is invalid";
            }
        }
        else
        {
            Label7.Text = "There is a field missing";
        }
        

        
    }
    

    private bool ExecuteSP(string SPName, List<SqlParameter> SPParameters)
    {
        string CS = ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand(SPName, con);
            cmd.CommandType = CommandType.StoredProcedure;

            foreach (SqlParameter parameter in SPParameters)
            {
                cmd.Parameters.Add(parameter);
            }

            con.Open();
            return Convert.ToBoolean(cmd.ExecuteScalar());
        }
    }

    private bool IsPasswordResetLinkValid()
    {
        List<SqlParameter> paramList = new List<SqlParameter>()
    {
        new SqlParameter()
        {
            ParameterName = "@GUID",
            Value = Request.QueryString["uid"]
        }
    };

        return ExecuteSP("spIsPasswordResetLinkValid", paramList);
    }

    private bool ChangeUserPassword()
    {
        List<SqlParameter> paramList = new List<SqlParameter>()
    {
        new SqlParameter()
        {
            ParameterName = "@GUID",
            Value = Request.QueryString["uid"]
        },
        new SqlParameter()
        {
            ParameterName = "@Password",
            Value = newPW.Text
        }
    };

        return ExecuteSP("spChangePassword", paramList);
    }
    

}
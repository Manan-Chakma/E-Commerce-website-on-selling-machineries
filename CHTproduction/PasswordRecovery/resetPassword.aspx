<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resetPassword.aspx.cs" Inherits="PasswordRecovery_resetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Password Recovery</title>


    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <style>
        .right{
            float:right;
        }

        .bothbutton{
            background-color: darkorange; /* Green */
            border: none;
            color: white;
            width:auto;
            height:35px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-family:'Lucida Sans Unicode';
            margin: 4px 2px;
            cursor: pointer;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
          }

          .bothbutton:hover {
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
            color:#333;
        }


    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="../Index.aspx">CHTproduction</a>
                    </div>
                </div>
            </nav>
        </div>
        <div>
            <table style="width: 100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Enter Username :" Font-Bold="True" CssClass="right"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="resetUsername" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 30%;">&nbsp;</td>
                    <td style="width: 30%;">&nbsp;</td>
                    <td style="width: 30%;">&nbsp;</td>

                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="resetPasswordButton" CssClass="bothbutton" runat="server" Text="Reset Password" Font-Bold="True" OnClick="resetPasswordButton_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>


    </form>
</body>
</html>

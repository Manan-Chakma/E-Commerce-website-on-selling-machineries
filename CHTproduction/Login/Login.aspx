<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {
            $('#txthdnPassword').hide();
            $('#txthdnPassword').attr('readonly', 'readonly');
            $('#loginPW').blur(function () {
                $('#txthdnPassword').val($(this).val());
            });

            $('#togglePassword').change(function () {
                var isChecked = $(this).prop('checked');
                if (isChecked) {
                    $('#loginPW').hide();
                    $('#txthdnPassword').show();
                }
                else {
                    $('#loginPW').show();
                    $('#txthdnPassword').hide();
                }
            });
        });

    </script>

    <style>
        .contentcenter{
            
            width:100%;
            
        }
        .wid1{
            width:10%;
        }
        .wid2{
            width:20%;
        }
        .wid3{
            width:30%;
        }
        .wid4{
            width:40%;
        }
        .margin50{
            margin-top:5%;
        }

        
        .bothbutton{
            background-color: darkorange; /* Green */
            border: none;
            color: #333;
            width:70px;
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

        .right{
            float:right;
        }
        footer{
              position:fixed;
              bottom:0px;
              padding:20px;
          }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="contentcenter">
        <div>
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="../Index.aspx">CHTproduction</a>
                    </div>
                </div>
            </nav>
        </div>
        
            <table style="width: 100%;" class="margin50" border="0">
                <tr>
                    <td class="wid1">&nbsp;</td>
                    <td class="wid2">&nbsp;</td>
                    <td class="wid3">&nbsp;</td>
                    <td class="wid4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username :" CssClass="right" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="loginUN" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="loginUN" ErrorMessage="username required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password :" CssClass="right" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="loginPW" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:TextBox ID="txthdnPassword" runat="server"></asp:TextBox>
                        <asp:CheckBox ID="togglePassword" runat="server" Text="Show Password" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loginPW" ErrorMessage="password required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" ForeColor="Red" Font-Size="Smaller"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PasswordRecovery/resetPassword.aspx">forgot password ?</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="loginButton" CssClass="bothbutton" runat="server" Text="Login" Font-Bold="True" OnClick="loginButton_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration/Registration.aspx">open an account.</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        

    </div>
        <footer>
            &copy 2017,KUET. All Rights Reserved
        </footer>
    </form>
</body>
</html>

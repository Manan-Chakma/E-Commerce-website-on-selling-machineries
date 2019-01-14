<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>

      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="../Script/jquery-1.11.2.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $('#txthdnPassword').hide();
            $('#txthdnPassword').attr('readonly', 'readonly');
            $('#signupPW').blur(function () {
                $('#txthdnPassword').val($(this).val());
            });

            $('#togglePassword').change(function () {
                var isChecked = $(this).prop('checked');
                if (isChecked) {
                    $('#signupPW').hide();
                    $('#txthdnPassword').show();
                }
                else {
                    $('#signupPW').show();
                    $('#txthdnPassword').hide();
                }
            });
        });

    </script>






    <style type="text/css">

        .right{
            float:right;
        }

        .wid10{
            width:10%;
        }
        .wid30{
            width:30%;

        }
        .wid40{
            width:30%;
        }
        .wid20{
            width:30%;
        }

        .displayblock{
            display:block;
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
            margin-left:70px;
          }

          .bothbutton:hover {
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
            color:#333;
        }

          .pad15{
              padding-left:5%;
          }
          .margin5{
              margin-left:5%;
          }
          footer{
              position:fixed;
              bottom:0px;
              padding:20px;
          }

        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            padding-left: 5%;
            height: 20px;
        }

    </style>


</head>
<body>
    <form id="form1" name="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

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

        <table style="width: 100%;" border="0">

            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="SIGN UP" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="wid10">&nbsp;</td>
                <td class="wid30">&nbsp;</td>
                <td class="wid40">&nbsp;</td>
                <td class="wid20">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label9" runat="server" CssClass="displayblock" Text="Open an ID and happy buy and sell" Font-Size="Smaller" Font-Underline="True"></asp:Label>
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
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Username :" Font-Bold="True" CssClass="right"></asp:Label>
                </td>
                <td class="pad15">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="signupUN" runat="server" AutoPostBack="true" OnTextChanged="signupUN_TextChanged"></asp:TextBox>
                            <asp:Label ID="signupUNLabelMessage" runat="server"></asp:Label>

                        </ContentTemplate>
                            
                        
                    </asp:UpdatePanel>

                    

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="signupUN" ErrorMessage="Username Required" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
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
                <td class="pad15">
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Password :" Font-Bold="True" CssClass="right"></asp:Label>
                </td>
                <td class="pad15">
                    <asp:TextBox ID="signupPW" runat="server" TextMode="Password" onkeyup="CheckPasswordStrength()" ></asp:TextBox><asp:TextBox ID="txthdnPassword" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="togglePassword" runat="server" Text="Show Password" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="signupPW" ErrorMessage="Password Required" ForeColor="Red" Font-Size="Small" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style2">
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="pad15">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True"></asp:Label>
                   

                    
                   
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Confirm Password :" Font-Bold="True" CssClass="right"></asp:Label>
                </td>
                <td class="pad15">
                    <asp:TextBox ID="signupCPW" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="signupCPW" ErrorMessage="Confirm Password" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
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
                <td class="pad15">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="signupPW" ControlToValidate="signupCPW" ErrorMessage="Password do not match" ForeColor="Red" Font-Size="Small"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Email :" Font-Bold="True" CssClass="right"></asp:Label>
                </td>
                <td class="pad15">
                    <asp:TextBox ID="signupEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="signupEmail" ErrorMessage="Email Required" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td ></td>
                <td></td>
                <td class="pad15">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Format doesn't match" ControlToValidate="signupEmail" ForeColor="Red" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td ></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Gender :" Font-Bold="True" CssClass="right"></asp:Label>
                </td>
                <td class="pad15">
                    <asp:DropDownList ID="signupGender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
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
                    <asp:Button ID="signupButton" CssClass="bothbutton" runat="server" Text="SIGN UP" Font-Bold="True" OnClick="signupButton_Click" />
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
                <td class="pad15">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login/Login.aspx">have an account ?</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label12" runat="server" Font-Size="X-Small" ForeColor="Red"></asp:Label>
                </td>
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

        </div>
        <footer>
            &copy 2017,KUET. All Rights Reserved
        </footer>

    <script type="text/javascript">

        document.getElementById('<%=signupUN.ClientID %>').focus();

        function CheckPasswordStrength() {
            var passwordTextBox = document.getElementById("signupPW");
            var password = passwordTextBox.value;
            var specialCharacters = "~!@#$%^&*?";
            var passwordScore = 0;
            var lowercase = "abcdefghijklmnopqrstuvwxyz";
            var uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            var number = "0123456789";


                

                for (var i = 0; i < password.length; i++) {
                    if (specialCharacters.indexOf(password.charAt(i)) > -1) {
                        passwordScore += 20;
 
                    }
    
            }


                var uppercasecount;
                var lowercasecount;
                var numbercount;
              

                    

                    if (/[a-z]/.test(password)) {
                        passwordScore += 20;
                        lowercasecount = 1;
                    }
                    if (/[A-Z]/.test(password)) {
                        passwordScore += 20;
                        uppercasecount = 1;
                    }
                    if (/[0-9]/.test(password)) {
                        passwordScore += 20;
                        numbercount = 1;
                    }
                    if (password.length >= 8) {
                        passwordScore += 40;
                    }

                    var strength = "";
                    var color = "";

                    if (passwordScore >= 100) {
                        strength = "strong";
                        color = "green";
                    }
                    else if (passwordScore >= 80) {
                        strength = "Medium";
                        color = "#FFBF00";
                    }
                    else if (passwordScore >= 60) {
                        strength = "Weak";
                        color = "maroon";
                    }
                    else {
                        strength = "very weak";
                        color = "red";
                    }


                    document.getElementById("Label6").innerHTML = strength;
                    document.getElementById("Label6").style.color = color;
                     

                        if ((uppercasecount + lowercasecount + numbercount) != 3 || password.length<8) {
                            document.getElementById("Label11").innerHTML = "an uppercase, lowercase, integer and minimum 8 character required";
                            document.getElementById("Label11").style.fontSize = "smaller";
                            document.getElementById("Label11").style.color = "red";
                            
                        }
                        else {
                            document.getElementById("Label11").innerHTML = "";
                            ;
                            
                        }
                   
    }
    </script>




    </form>
</body>
</html>

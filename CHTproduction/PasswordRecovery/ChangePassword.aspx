<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="PasswordRecovery_ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="../Script/jquery-1.11.2.js"></script>






    <style>
        .right{
            float:right;
        }
        .padtop{
            padding-top:30px;
        }
        .bothbutton{
            background-color: darkorange; /* Green */
            border: none;
            color: black;
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
        <table style="width: 100%;" class="padtop">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width:30%;">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="New Password :" CssClass="right"></asp:Label>
                </td>
                <td style="width: 30%;">
                    <asp:TextBox ID="newPW" runat="server" TextMode="Password" onkeyup="CheckPasswordStrength()"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="newPW" Display="Dynamic" ErrorMessage="new username required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 30%;">
                    <asp:Label ID="Label6" runat="server" Font-Size="Small"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Italic="False" Font-Size="Small"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Confirm Password :" CssClass="right"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="confirmNPW" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="confirmNPW" ErrorMessage="confirm password" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="newPW" ControlToValidate="confirmNPW" Display="Dynamic" ErrorMessage="password do not match" ForeColor="Red"></asp:CompareValidator>
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
                    <asp:Label ID="Label3" runat="server" ForeColor="Green"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
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
                    <asp:Button ID="saveChangedPassword" CssClass="bothbutton" runat="server" Text="Save Password" Font-Bold="True" OnClick="saveChangedPassword_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>


        <script type="text/javascript">

        document.getElementById('<%=newPW.ClientID %>').focus();

        function CheckPasswordStrength() {
            var passwordTextBox = document.getElementById("newPW");
            var password = passwordTextBox.value;
            var specialCharacters = "~!@#$%^&*?";
            var passwordScore = 0;
            var lowercase = "abcdefghijklmnopqrstuvwxyz";
            var uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            var number = "0123456789";


                

                for (var i = 0; i < password.length; i++) {
                    if (specialCharacters.indexOf(password.charAt(i)) > -1) {
                        passwordScore += 30;
 
                    }

    
            }


                var uppercasecount;
                var lowercasecount;
                var numbercount;
              

                    

                    if (/[a-z]/.test(password)) {
                        passwordScore += 10;
                        lowercasecount = 1;
                    }
                    if (/[A-Z]/.test(password)) {
                        passwordScore += 40;
                        uppercasecount = 1;
                    }
                    if (/[0-9]/.test(password)) {
                        passwordScore += 20;
                        numbercount = 1;
                    }
                    if (password.length >= 8) {
                        passwordScore += 10;
                    }

                    var strength = "";
                    var color = "";

                    if (passwordScore >= 90) {
                        strength = "strong";
                        color = "green";
                    }
                    else if (passwordScore >= 70) {
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

                   
                        
                     

                        if ((uppercasecount + lowercasecount + numbercount) != 3 || password.length<8) {
                            document.getElementById("Label6").innerHTML = "an uppercase, lowercase, integer and minimum 8 character required";
                            document.getElementById("Label6").style.color = "red";
                            
                            document.getElementById("Label5").style.visibility = "hidden";
                        }
                        else {
                            document.getElementById("Label6").innerHTML = "";
                            document.getElementById("Label5").style.visibility = "visible";
                            document.getElementById("Label5").innerHTML = strength;
                            document.getElementById("Label5").style.color = color;
                        }
                   
    }
        </script>


    </form>
</body>
</html>

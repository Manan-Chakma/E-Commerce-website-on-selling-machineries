<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buy.aspx.cs" Inherits="AfterSignUp_Buy_buy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




    <link rel="stylesheet" href="../Stylesheet/mainpageStylesheet.css" />


    <style>
        .buypageflrt{
            text-align:center;
        }
        .auto-style1 {
            width: 100%;
            height: 354px;
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
                        <a class="navbar-brand" href="../DefaultMainPage.aspx">CHTproduction</a>
                    </div>

                </div>
            </nav>
        </div>


        <table style="width: 100%;" border="0">
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
                <td style="width:20%;" class="buypageflrt">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Amount To Be Paid:"></asp:Label>
                </td>
                <td style="width:30%;">
                    <asp:Label ID="Label13" runat="server" Font-Names="Calibri" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" Text="Taka"></asp:Label>
                </td>
                <td style="width:50%;">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>
                </td>
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
                <td class="buypageflrt">
                    <asp:Label ID="Label1" runat="server" Text="Full Name :" Font-Bold="True" Font-Names="Calibri"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxfullname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="HOW TO PAY" Font-Bold="True" Font-Names="Calibri" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="full name required" Font-Size="Smaller" ForeColor="Red" ControlToValidate="TextBoxfullname"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td rowspan="11">
                    <img src="../../Images/bkash.jpg" class="auto-style1"/>
                </td>
            </tr>
            <tr>
                <td class="buypageflrt">
                    <asp:Label ID="Label2" runat="server" Text="Delivery Address :" Font-Bold="True" Font-Names="Calibri"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxdeliveryaddress" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter delivery address" Font-Size="Smaller" ForeColor="Red" ControlToValidate="TextBoxdeliveryaddress"></asp:RequiredFieldValidator>
                </td>
                

            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td class="buypageflrt">
                    <asp:Label ID="Label3" runat="server" Text="Phone Number :" Font-Bold="True" Font-Names="Calibri"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxphonenumber" runat="server" TextMode="Number"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="phone number required" Font-Size="Smaller" ForeColor="Red" ControlToValidate="TextBoxphonenumber"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td class="buypageflrt">
                    <asp:Label ID="Label4" runat="server" Text="bKash Wallet No:" Font-Bold="True" Font-Names="Calibri"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="01820326128" Font-Names="Calibri"></asp:Label>
                </td>
               
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
                <td class="buypageflrt">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Calibri" Text="Delivery System:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Home Delivery" Font-Names="Calibri"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>

            </tr>
            <tr>
                <td class="buypageflrt">
                    <asp:Label ID="Label8" runat="server" Text="Amount Sent From :" Font-Bold="True" Font-Names="Calibri"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxamountsent" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Calibri" Text="Note:"></asp:Label>
                    <asp:Label ID="Label11" runat="server" Font-Names="Calibri" Text="Follow the above rule and Send us the number from where the money is sent."></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="how much amount sent" Font-Size="Smaller" ForeColor="Red" ControlToValidate="TextBoxamountsent"></asp:RequiredFieldValidator>
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
                <td>&nbsp;</td>
                <td>&nbsp;</td>

            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BuyBuyButton" runat="server" CssClass="btn btn-danger navbar-btn" Font-Bold="True" Font-Size="Large" Height="35px" Text="BUY" Width="40%" OnClick="BuyBuyButton_Click" />
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
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

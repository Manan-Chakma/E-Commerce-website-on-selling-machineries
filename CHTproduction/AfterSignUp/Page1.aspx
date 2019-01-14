<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="AfterSignUp_Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../Stylesheet/cart.css" />
    <link rel="stylesheet" href="../Stylesheet/cart.css" />
    <style>
        .page1display{
            display:block;
        }
        .page1right{
            float:left;
        }
        .page1floatright{
            float:right;
        }
        .page1fontfam{
            font-family:Tahoma;
        }
        body{
            background-color:whitesmoke;
        }
        .pagw1tahoma{
            font-family:Tahoma;
        }

      .page1button{
            background-color:forestgreen; /* Green */
            border: none;
            border-radius:5px;
            color:white;
            width:200px;
            height:70px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-family:Tahoma;
            margin: 4px 2px;
            cursor: pointer;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
          }

          .page1button:hover {
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
            color:#333;
        }
          .page1nav{
              position:fixed;
              width:100%;
          }

          .page1tablebackground{
              background-color:white;
          }


          .page1button2{
            background-color:white; /* Green */
            
            border-color:rebeccapurple;
            color:black;
            border-radius:5px;
            width:150px;
            height:70px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-family:Tahoma;
            margin: 4px 2px;
            cursor: pointer;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
          }

          .page1dropdown{
              border:none;
              height:50px;
              width:80px;
          }

          .page1viewcart{
              margin-right:10px;
          }
 







    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse page1nav">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="DefaultMainPage.aspx">CHTproduction</a>
                </div>
                <div style="width: auto; float: right; padding: 10px; text-align: center;">
                    <div style="border-radius: 5px; text-align: center">
                        <asp:HyperLink ID="sessionUserName" runat="server" Font-Bold="True" ForeColor="White" NavigateUrl="~/Profile/userProfile.aspx">[sessionUserName]</asp:HyperLink>
                    </div>

                </div>

                <asp:Button ID="page1logoutbutton" CssClass="btn btn-danger navbar-btn page1floatright" runat="server" Text="Logout" OnClick="page1logoutbutton_Click" />
                <asp:Button ID="viewCartButton" CssClass="btn btn-danger navbar-btn page1floatright page1viewcart" runat="server" Text="View Cart" OnClick="viewCartButton_Click" />
                <div class="icon-cart" style="float: right; width: 50px">
                    <div class="cart-line-1" style="background-color: white"></div>
                    <div class="cart-line-2" style="background-color: white"></div>
                    <div class="cart-line-3" style="background-color: white"></div>
                    <div class="cart-wheel" style="background-color: white"></div>
                </div>
                
            </div>
        </nav>
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width:10%;">&nbsp;</td>
                <td style="width:50%;">&nbsp;</td>
                <td style="width:40%;">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="page1tablebackground">
                    <asp:Image ID="Image1" runat="server" Width="80%" Height="300px" /></td>
                <td class="page1tablebackground">
                    
                    <asp:Label ID="Label1" runat="server" CssClass="page1display pagw1tahoma" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                    <asp:Label ID="Label12" runat="server" Text="By CHTproduction.com" Font-Bold="True"></asp:Label>
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
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Description:" CssClass="page1right page1fontfam" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="page1tablebackground">
                    <asp:Label ID="Label2" runat="server"  CssClass="page1display"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>

                    <div class="icon-cart" style="float: right">
                        <div class="cart-line-1" style="background-color: black"></div>
                        <div class="cart-line-2" style="background-color: black"></div>
                        <div class="cart-line-3" style="background-color: black"></div>
                        <div class="cart-wheel" style="background-color: black"></div>
                    </div>

                </td>
                <td>
                    
                    <asp:Button ID="cartButton" runat="server" Text="ADD TO CART" CssClass="page1button" Font-Bold="True" Font-Size="Large" OnClick="cartButton_Click"/>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Catagory:" CssClass="page1right page1fontfam" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="page1tablebackground">
                    <asp:Label ID="Label3" runat="server" CssClass="page1display"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label13" runat="server"></asp:Label>
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
                    <asp:DropDownList ID="orderedQuantity" CssClass="page1dropdown" runat="server" AutoPostBack="True" Font-Bold="True" Font-Size="Large">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Avilable Quantity:" CssClass="page1right page1fontfam" Font-Size="X-Large"></asp:Label>
                </td>

            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="page1tablebackground">
                    <asp:Label ID="Label4" runat="server" CssClass="page1display"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="buyButton" runat="server" Text="BUY" CssClass="page1button2" Font-Bold="True" Font-Size="XX-Large" Font-Underline="False" OnClick="buyButton_Click" />
                </td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Price Per Unit(In Taka):" CssClass="page1right page1fontfam" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="page1tablebackground">
                    <asp:Label ID="Label5" runat="server" CssClass="page1display"></asp:Label>
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
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

        </table>
        
    </div>
    </form>
</body>
</html>

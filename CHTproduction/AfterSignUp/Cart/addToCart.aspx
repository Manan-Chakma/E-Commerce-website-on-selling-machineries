<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addToCart.aspx.cs" Inherits="AfterSignUp_Cart_addToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../Stylesheet/cart.css" />
    <link rel="stylesheet" href="../../Stylesheet/mainpageStylesheet.css" />

    <style>
        .cartdiv{
            padding:15px;
            width:100%;
            
            
        }
        .grid{
            font-family:'Lucida Console';
        }
        .g{
            margin-left:10%;
        }
        .cartItems{
            margin:20px;
        }
        .cartTab{
            text-align:center;
        }
        .removecartButton{
            width:auto;
            height:auto;
            border:0;
            background-color:blueviolet;

        }

    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-inverse mainpagenav">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="../DefaultMainPage.aspx">CHTproduction</a>
                </div>
                <div style="width: auto; float: right; padding: 10px; text-align: center;">
                    <div style="border-radius: 5px; text-align: center">
                        <asp:HyperLink ID="sessionUserName" runat="server" Font-Bold="True" ForeColor="White" NavigateUrl="~/Profile/userProfile.aspx">[sessionUserName]</asp:HyperLink>
                    </div>

                </div>

                <asp:Button ID="page1logoutbutton" CssClass="btn btn-danger navbar-btn mainpagefloatright" runat="server" Text="Logout" OnClick="page1logoutbutton_Click" />
                <asp:Button ID="mainpageviewCartButton" CssClass="btn btn-danger navbar-btn mainpageviewcart mainpagefloatright" runat="server" Text="View Cart" />
                <div class="icon-cart" style="float: right; width: 50px">
                    <div class="cart-line-1" style="background-color: white"></div>
                    <div class="cart-line-2" style="background-color: white"></div>
                    <div class="cart-line-3" style="background-color: white"></div>
                    <div class="cart-wheel" style="background-color: white"></div>
                </div>

            </div>
        </nav>

<div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" GridLines="None" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" Width="80%" CssClass="g" >
        <Columns>
            



            

            <asp:TemplateField HeaderText="Product Name">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("productName") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:Label ID="Label6" Font-Bold="true" runat="server" Text="Total :"></asp:Label>
                </FooterTemplate>

            </asp:TemplateField>


            <asp:TemplateField HeaderText="Catagory">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("catagoryOfProduct") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:Label ID="t3" runat="server" Text=""></asp:Label>
                </FooterTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("quantityOfProduct") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:Label ID="t4" runat="server" Text=""></asp:Label>
                </FooterTemplate>

            </asp:TemplateField>


            <asp:TemplateField HeaderText="Price">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:Label ID="totalAmount" Font-Bold="true" runat="server" Text=""></asp:Label>
                </FooterTemplate>

            </asp:TemplateField>

            <asp:TemplateField HeaderText="Date and Time">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("dateOfOrder") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:Label ID="t5" runat="server" Text=""></asp:Label>
                </FooterTemplate>

            </asp:TemplateField>
            
     

        </Columns>
    </asp:GridView>
</div>
        <div class="cartdiv">
            <table style="width: 100%;" border="0">
                <tr>
                    <td>&nbsp;</td>
                    <td class="cartTab">
                        <asp:Button ID="clearCartButton" CssClass="btn btn-danger navbar-btn" runat="server" Text="Clear" OnClick="clearCartButton_Click" />
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                        <asp:Button ID="addCartBuyButton" runat="server" CssClass="btn btn-danger navbar-btn" Text="BUY" OnClick="addCartBuyButton_Click" />
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>

            </table>
        </div>
    </div>

    </form>
</body>
</html>

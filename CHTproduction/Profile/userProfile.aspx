<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userProfile.aspx.cs" Inherits="Profile_userProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../Stylesheet/cart.css" />

    <link rel="stylesheet" href="../Stylesheet/mainpageStylesheet.css" />

    <style>

        body {
    background-color:white;
}

        .mainpagefloatright{
            float:right;
        }
                .mainpageviewcart{
              margin-right:10px;
          }
              .mainpageSubmitButton{

                  margin-left:10px
              }
           .mainpageDropdownList{
               border:none;
               height:30px;
               margin-bottom:5px;
           }
           .mainpagetable{
               background-color:WhiteSmoke  ;
               margin-top:50px;
               position:fixed
           }

           .mainpage {
                text-decoration: none;
                font-family: Arial, Helvetica, sans-serif;
                color: black;
                
            }
           .mainpagepad {
                padding-top: 100px;
                
            }
           .mainpagenav{
             position:fixed; 
              width:100%;
          }
           .d{
               
           }
           .d:hover{

               box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
           }

           .profile{
               display:inline;
           }
           .gd{
               margin-left:20%;
           }
           
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-inverse mainpagenav">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="../AfterSignUp/DefaultMainPage.aspx">CHTproduction</a>
                </div>
                <div style="width: auto; float: right; padding: 10px; text-align: center;">
                    <div style="border-radius: 5px; text-align: center">
                        <asp:HyperLink ID="sessionUserName" runat="server" Font-Bold="True" ForeColor="White">[sessionUserName]</asp:HyperLink>
                    </div>

                </div>

                <asp:Button ID="page1logoutbutton" CssClass="btn btn-danger navbar-btn mainpagefloatright" runat="server" Text="Logout" OnClick="page1logoutbutton_Click" />
                <asp:Button ID="mainpageviewCartButton" CssClass="btn btn-danger navbar-btn mainpageviewcart mainpagefloatright" runat="server" Text="View Cart" OnClick="mainpageviewCartButton_Click" />
                <div class="icon-cart" style="float: right; width: 50px">
                    <div class="cart-line-1" style="background-color: white"></div>
                    <div class="cart-line-2" style="background-color: white"></div>
                    <div class="cart-line-3" style="background-color: white"></div>
                    <div class="cart-wheel" style="background-color: white"></div>
                </div>

                

            </div>
        </nav>
        
    </div>
        <div style="padding-top: 100px; text-align:center;border-bottom:dotted; border-bottom-color:Highlight">
            <asp:Label ID="Label1" CssClass="profile" runat="server" Font-Bold="True" Font-Names="Lucida Sans" Font-Size="Large" Font-Underline="False" ForeColor="#3399FF"></asp:Label><asp:Button ID="Button1" CssClass="btn btn-danger navbar-btn" runat="server" Text="Rate Us" OnClick="Button1_Click" />
        </div>


        <div>
            <asp:GridView ID="GridView2" CssClass="gd" runat="server" AutoGenerateColumns="false" AllowSorting="true">
                <Columns>


                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("productName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Catagory">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("catagoryOfProduct") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("quantityOfProduct") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Date Of Order">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("dateOfOrder") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

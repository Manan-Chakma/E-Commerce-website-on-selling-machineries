<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DefaultMainPage.aspx.cs" Inherits="AfterSignUp_DefaultMainPage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css"
        rel="Stylesheet" type="text/css" />
      <link rel="stylesheet" href="../Stylesheet/cart.css" />
    <link rel="stylesheet" href="../Stylesheet/mainpageStylesheet.css" />
    

    <script src="../jquery/jquery-ui.js"></script>
    <script src="../jquery/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="../jquery/jquery-ui.css" />
    

    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.8.0.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.22/jquery-ui.js"></script>







    <style>

        .mainpageSubmitButton{
            margin-left:10px;
        }
        
        .mainpagepad{
            padding-top:20px;
            padding-bottom:20px;
        }
           
    </style>


</head>
<body>
    <form id="form1" runat="server">
    <div>

        <nav class="navbar navbar-inverse mainpagenav">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="DefaultMainPage.aspx">CHTproduction</a>
                </div>
                <div style="width: auto; float: right; padding: 10px; text-align: center;">
                    <div style=" border-radius:5px;text-align:center">
                        <asp:HyperLink ID="sessionUserName" runat="server" Font-Bold="True" ForeColor="White" NavigateUrl="~/Profile/userProfile.aspx">[sessionUserName]</asp:HyperLink>
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

        <table style="width: 100%;" class="mainpagetable" border="0">
            <tr>
                <td style="width: 30%;">
                    <asp:Label ID="mainpageLabelcat" CssClass="mainpagefloatright" runat="server" Text="Catagory:" Font-Bold="True"></asp:Label></td>
                <td style="width: 30%;">
                    <asp:DropDownList ID="mainpageDropDownList" CssClass="mainpageDropdownList" runat="server">
                        <asp:ListItem>All</asp:ListItem>
                        <asp:ListItem>Tractor and power</asp:ListItem>
                        <asp:ListItem>Soil cultivation</asp:ListItem>
                        <asp:ListItem>Fertilizing &amp; Pest Control</asp:ListItem>
                        <asp:ListItem>Irrigation</asp:ListItem>
                        
                        <asp:ListItem>Harvesting / post-harvest</asp:ListItem>
                        <asp:ListItem>Hand harvesting</asp:ListItem>
                        <asp:ListItem>Hay making</asp:ListItem>
                        <asp:ListItem>Loading</asp:ListItem>
                        <asp:ListItem>Milking</asp:ListItem>
                        <asp:ListItem>Animal Feeding</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList><asp:Button ID="mainpagesubmit" CssClass="mainpageSubmitButton btn btn-danger navbar-btn" runat="server" Text="submit" OnClick="mainpagesubmit_Click" />
                </td>




                <td style="width: 30%;">

                    

                    <asp:ScriptManager ID="ScriptManager1" runat="server" ></asp:ScriptManager>
                    <ajaxToolkit:AutoCompleteExtender ServiceMethod="GetSearch" MinimumPrefixLength="1" CompletionInterval="10"
                        EnableCaching="false" CompletionSetCount="10" TargetControlID="TextBox1" ID="AutoCompleteExtender1"
                        runat="server" FirstRowSelected="false"></ajaxToolkit:AutoCompleteExtender>
                    
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>


                    <asp:Button ID="search" runat="server" Text="Search" CssClass="btn btn-danger navbar-btn" OnClick="search_Click" />
                </td>
            </tr>

        </table>






        <asp:GridView ID="GridView1" runat="server" CssClass="gridview mainpagepad" GridLines="None" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" >
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="ID" ItemStyle-Width="40%" ItemStyle-HorizontalAlign="Center" ControlStyle-Font-Bold="true" ControlStyle-CssClass="mainpage" ControlStyle-Width="90%" DataNavigateUrlFormatString="Page1.aspx?Id={0}" DataTextField="title">
                    <ControlStyle Width="90%"></ControlStyle>
                    <ItemStyle  BackColor="WhiteSmoke"/>
                </asp:HyperLinkField>
                <asp:TemplateField ItemStyle-Width="40%" ItemStyle-HorizontalAlign="Center">
                    <ItemStyle CssClass="mainpagepad" BackColor="WhiteSmoke " />
                    <ItemTemplate>
                        <div>
                            <asp:Image ID="Image1" runat="server" CssClass="d" Height="180px" Width="250px" ImageUrl='<%#"data:Image/png;base64," +Convert.ToBase64String((byte[])Eval("imageData")) %>' />
                        </div>
                        
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle BackColor="#003300" ForeColor="White" HorizontalAlign="Center" />
        </asp:GridView>





    </div>






    </form>
</body>
</html>

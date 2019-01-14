<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addcart.aspx.cs" Inherits="viewDatabase_addcart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="buyerName" HeaderText="buyerName" SortExpression="buyerName" />
                <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
                <asp:BoundField DataField="catagoryOfProduct" HeaderText="catagoryOfProduct" SortExpression="catagoryOfProduct" />
                <asp:BoundField DataField="quantityOfProduct" HeaderText="quantityOfProduct" SortExpression="quantityOfProduct" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="dateOfOrder" HeaderText="dateOfOrder" SortExpression="dateOfOrder" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CHTproductionConnectionString %>" SelectCommand="SELECT * FROM [cartTable]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Duplicatecart.aspx.cs" Inherits="viewDatabase_Duplicatecart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bought From Cart</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; display: block">
            <asp:Label ID="Label1" runat="server" Text="Bought From Cart Or Multiple Item At A Time" Font-Bold="True" Font-Names="Calibri" Font-Size="XX-Large" ForeColor="#006600"></asp:Label>
        </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center" PageSize="20">
            <Columns>
                <asp:BoundField DataField="buyerName" HeaderText="buyerName" SortExpression="buyerName" />
                <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
                <asp:BoundField DataField="catagoryOfProduct" HeaderText="catagoryOfProduct" SortExpression="catagoryOfProduct" />
                <asp:BoundField DataField="quantityOfProduct" HeaderText="quantityOfProduct" SortExpression="quantityOfProduct" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="dateOfOrder" HeaderText="dateOfOrder" SortExpression="dateOfOrder" />
            </Columns>
            <HeaderStyle Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#0066FF" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CHTproductionConnectionString %>" SelectCommand="SELECT * FROM [duplicateCart]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

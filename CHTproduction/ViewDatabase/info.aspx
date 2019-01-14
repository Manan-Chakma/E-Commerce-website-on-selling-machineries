<%@ Page Language="C#" AutoEventWireup="true" CodeFile="info.aspx.cs" Inherits="viewDatabase_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Orders</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;display:block;">
            <asp:Label ID="Label1" runat="server" Text="ORDERS" Font-Bold="True" Font-Names="Calibri" Font-Underline="True" ForeColor="#006600" Font-Size="XX-Large"></asp:Label>
        </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center" PageSize="15">
            <Columns>
                <asp:BoundField DataField="sessionName" HeaderText="sessionName" SortExpression="sessionName" />
                <asp:BoundField DataField="fullName" HeaderText="fullName" SortExpression="fullName" />
                <asp:BoundField DataField="fullAddress" HeaderText="fullAddress" SortExpression="fullAddress" />
                <asp:BoundField DataField="phoneNumber" HeaderText="phoneNumber" SortExpression="phoneNumber" />
                <asp:BoundField DataField="amountSentFrom" HeaderText="amountSentFrom" SortExpression="amountSentFrom" />
                <asp:BoundField DataField="amountSent" HeaderText="amountSent" SortExpression="amountSent" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            </Columns>
            <HeaderStyle Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#3366FF" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CHTproductionConnectionString %>" SelectCommand="SELECT * FROM [infoTable]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

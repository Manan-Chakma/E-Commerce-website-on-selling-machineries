<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="viewDatabase_upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CHTproductionConnectionString %>" SelectCommand="SELECT * FROM [uploadTable]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="imageName" HeaderText="imageName" SortExpression="imageName" />
                <asp:BoundField DataField="imageSize" HeaderText="imageSize" SortExpression="imageSize" />
                <asp:BoundField DataField="catagory" HeaderText="catagory" SortExpression="catagory" />
                <asp:BoundField DataField="quantityAvailable" HeaderText="quantityAvailable" SortExpression="quantityAvailable" />
                <asp:BoundField DataField="pricePerUnit" HeaderText="pricePerUnit" SortExpression="pricePerUnit" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>

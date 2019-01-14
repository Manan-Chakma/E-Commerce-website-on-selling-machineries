<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pp.aspx.cs" Inherits="viewDatabase_pp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Users</title>
    <style>
        .fl{
            margin-left:28%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;display:block">
            <asp:Label ID="Label1" runat="server" Text="REGISTERED USERS" Font-Bold="True" Font-Names="Calibri" Font-Size="XX-Large" ForeColor="#006600" ></asp:Label>
        </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" CssClass="fl" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#333333" BorderStyle="Solid" DataKeyNames="ID" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Names="Calibri">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="idOpenDate" HeaderText="idOpenDate" SortExpression="idOpenDate" />
            </Columns>
            <HeaderStyle ForeColor="#6666FF" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CHTproductionConnectionString %>" SelectCommand="SELECT * FROM [registration]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

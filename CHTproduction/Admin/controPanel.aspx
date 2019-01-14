<%@ Page Language="C#" AutoEventWireup="true" CodeFile="controPanel.aspx.cs" Inherits="Admin_controPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Control Panel</title>
    <style>
        .bothbutton:hover {
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 30%;">&nbsp;</td>
                <td style="width: 30%;">&nbsp;</td>
                <td style="width: 30%;">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Upload Product" BackColor="#FF3300" BorderStyle="None" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" Height="35px" CssClass="bothbutton" OnClick="Button1_Click" Width="250px" />
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
                    <asp:Button ID="Button2" runat="server" Text="View Authenticated Users" BackColor="#FF3300" BorderStyle="None" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#333333" Height="35px" CssClass="bothbutton" OnClick="Button2_Click" Width="250px" />
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
                    <asp:Button ID="Button3" runat="server" BackColor="#FF3300" BorderStyle="None" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#333333" Height="35px" Text="View Orders" CssClass="bothbutton" OnClick="Button3_Click" Width="250px" />
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
                    <asp:Button ID="Button4" runat="server" BackColor="#FF3300" BorderStyle="None" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#333333" Height="35px" Text="Cart" CssClass="bothbutton" Width="250px" OnClick="Button4_Click" />
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
                <td><asp:Button ID="Button5" runat="server" BackColor="#FF3300" BorderStyle="None" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#333333" Height="35px" Text="Delivery Entry" CssClass="bothbutton" Width="250px" OnClick="Button5_Click" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

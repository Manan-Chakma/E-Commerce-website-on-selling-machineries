<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uploadSell.aspx.cs" Inherits="UploadAndSell_upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sell From Here</title>
    <style>
        .uploadSellRight{
            float:right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width:20%;">&nbsp;</td>
                <td style="width: 50%;">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="XX-Large" ForeColor="#006600" Text="Must Fill All The Conditions  Below And Image In .jpg/.png/.jpeg Format Acceptable"></asp:Label>
                </td>
                <td style="width:30%;">&nbsp;</td>
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
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Title :" Font-Bold="True" CssClass="uploadSellRight" Font-Names="Calibri"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="titleup" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="titleup" ErrorMessage="fill here" ForeColor="Red"></asp:RequiredFieldValidator>
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
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Secification/Desctiption: " Font-Bold="True" CssClass="uploadSellRight" Font-Names="Calibri"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="descriptionup" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
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
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Catagory" Font-Bold="True" CssClass="uploadSellRight" Font-Names="Calibri"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="catagoryup" runat="server" AutoPostBack="True">
                        <asp:ListItem>Tractor and power</asp:ListItem>
                        <asp:ListItem>Soil cultivation</asp:ListItem>
                        <asp:ListItem>Fertilizing &amp; Pest Control</asp:ListItem>
                        <asp:ListItem>Irrigation</asp:ListItem>
                        <asp:ListItem>Produce sorter</asp:ListItem>
                        <asp:ListItem>Harvesting / post-harvest</asp:ListItem>
                        <asp:ListItem>Hand harvesting</asp:ListItem>
                        <asp:ListItem>Hay making</asp:ListItem>
                        <asp:ListItem>Loading</asp:ListItem>
                        <asp:ListItem>Milking</asp:ListItem>
                        <asp:ListItem>Animal Feeding</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
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
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Quantity Available :" CssClass="uploadSellRight" Font-Names="Calibri"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="quantityup" runat="server" AutoPostBack="True">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>more than 10</asp:ListItem>
                    </asp:DropDownList>
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
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Price Per Unit(in Taka):" CssClass="uploadSellRight" Font-Names="Calibri"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="priceup" runat="server" TextMode="Number"></asp:TextBox>
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
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Product Image:" Font-Bold="True" CssClass="uploadSellRight" Font-Names="Calibri"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="imageuploadup" runat="server" />
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
                    <asp:Button ID="uploadbutton" runat="server" Font-Bold="True" Text="Upload" OnClick="uploadbutton_Click" BackColor="White" BorderColor="Red" BorderStyle="Solid" Font-Names="Calibri" Font-Size="Larger" Height="35px" />
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
                <td>
                    <asp:Label ID="Label7" runat="server"></asp:Label>
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
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server">view uploaded image</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

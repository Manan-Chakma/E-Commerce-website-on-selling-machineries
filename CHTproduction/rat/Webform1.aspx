<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Webform1.aspx.cs" Inherits="rat_Webform1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .Empty
        {
            background: url("../rat/Empty.gif") no-repeat right top;
            
        }
        .Empty:hover
        {
            background: url("../rat/Filled.gif") no-repeat right top;
            
        }
        .Filled
        {
            background: url("../rat/Filled.gif") no-repeat right top;
            
        }
    </style>
    <script type="text/javascript">

        function Decide(option) {
            var temp = "";
            document.getElementById('lblRate').innerText = "";
            if (option == 1) {
                document.getElementById('Rating1').className = "Filled";
                document.getElementById('Rating2').className = "Empty";
                document.getElementById('Rating3').className = "Empty";
                document.getElementById('Rating4').className = "Empty";
                document.getElementById('Rating5').className = "Empty";
                temp = "Sir You Have Rated 1";
            }
            if (option == 2) {
                document.getElementById('Rating1').className = "Filled";
                document.getElementById('Rating2').className = "Filled";
                document.getElementById('Rating3').className = "Empty";
                document.getElementById('Rating4').className = "Empty";
                document.getElementById('Rating5').className = "Empty";
                temp = "Sir You Have Rated 2";

            }
            if (option == 3) {
                document.getElementById('Rating1').className = "Filled";
                document.getElementById('Rating2').className = "Filled";
                document.getElementById('Rating3').className = "Filled";
                document.getElementById('Rating4').className = "Empty";
                document.getElementById('Rating5').className = "Empty";
                temp = "Sir You Have Rated 3";
            }
            if (option == 4) {
                document.getElementById('Rating1').className = "Filled";
                document.getElementById('Rating2').className = "Filled";
                document.getElementById('Rating3').className = "Filled";
                document.getElementById('Rating4').className = "Filled";
                document.getElementById('Rating5').className = "Empty";
                temp = "Sir You Have Rated 4";
            }
            if (option == 5) {
                document.getElementById('Rating1').className = "Filled";
                document.getElementById('Rating2').className = "Filled";
                document.getElementById('Rating3').className = "Filled";
                document.getElementById('Rating4').className = "Filled";
                document.getElementById('Rating5').className = "Filled";
                temp = "Sir You Have Rated 5";
            }
            document.getElementById('lblRate').innerText = temp;
            return false;
        }

      

    </script>
    <style>
        
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div style="background-color:rebeccapurple; width:100%; height:200px;">

            <div style="background-color:white; width:10%;margin-left:40%;padding-left:30px; ">
                <asp:Button BorderStyle="None" ID="Rating1" onmouseover="" OnClientClick="return Decide(1);"
                    Height="20px" Width="20px" CssClass="Empty" runat="server" />
                <asp:Button BorderStyle="None" ID="Rating2" onmouseover="" OnClientClick="return Decide(2);"
                    Height="20px" Width="20px" CssClass="Empty" runat="server" />
                <asp:Button BorderStyle="None" ID="Rating3" onmouseover="" OnClientClick="return Decide(3);"
                    Height="20px" Width="20px" CssClass="Empty" runat="server" />
                <asp:Button BorderStyle="None" ID="Rating4" onmouseover="" OnClientClick="return Decide(4);"
                    Height="20px" Width="20px" CssClass="Empty" runat="server" />
                <asp:Button BorderStyle="None" ID="Rating5" onmouseover="" OnClientClick="return Decide(5);"
                    Height="20px" Width="20px" CssClass="Empty" runat="server" />
            </div>

        </div>
        
        <br />
        <br />
        <div style="text-align: center">
            <img src="thankYou.gif" />
        </div>
        <div style="text-align:center">
            <asp:Label ID="lblRate" runat="server" Text=""></asp:Label>
        </div>
        
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>CHTproduction</title>
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
   

      <style>
          .borderDiv{
             border-left:double;
             border-right:double;
             margin-left:20px;
             margin-right:20px;
          }
          .firstimage:hover{
             opacity: 0.8;
             filter: alpha(opacity=50);
          }
          .wid100{
              width:100%;
          }
          .fit{
              left:0px;
              right:0px;
              top:0px;
          }
          .relative{
              position:relative;

          }
          .fixed{
              position:fixed;
          }
          .firstimage{
              width:70%;
              height:400px;
              margin-left:15%;
          }
          .absolute{
              position:absolute;
          }
          .buttton1DivPosition{
             top:45%;
             
             padding-left:45%;
             
          }
          .buttton2DivPosition{
             top:60%;
             
             padding-left:45%;
             
          }

          .buttton3DivPosition{
             top:80%;
             
             padding-left:45%;
             
          }


          .bothbutton{
            background-color: darkorange; /* Green */
            border: none;
            color: white;
            width:70px;
            height:35px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-family:'Lucida Sans Unicode';
            margin: 4px 2px;
            cursor: pointer;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
          }

          .bothbutton:hover {
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
            color:#333;
        }





          .footerbackground {
    background-color: darkorange;    
    width: 100%;
   
   bottom:0px;
    padding: 20px;
    height: 190px;
}

        .maindiv {
            position: relative;
            width: 100%;
        }

        .div1 {
            position: absolute;
            width: 25%;
            border-color: rebeccapurple;
            left: 15%;
            height: inherit;
            display: block;
        }

        .div2 {
            position: absolute;
            width: 25%;
            border-color: red;
            height: inherit;
            left: 40%;
            display: block;
        }

        .div3 {
            position: absolute;
            width: 20%;
            border-color: yellow;
            height: inherit;
            right: 15%;
            display: block;
        }

        .left {
            float: left;
        }

        .footerheader {
            font-family:Arial;
            font-size: large;
            color: black;
        }
        

        .footercolor {
            color: black;
        }

            .footercolor:hover {
                color: #333;
            }

        .pad5 {
            padding-left: 8px;
        }

        .footera {
            font-size: 11px;
        }

        .footerb {
            color: green;
            padding: 5px;
        }

        .footerc {
            color: #333;
        }

        .fa{
            color:black;
        }
        .fa:hover {
            color: darkgreen;
        }

        h1{
            font-family:Impact;
            padding:23px;
        }
        h1:hover{
            color:orangered;
        }

        p{
            display:block;
            font-family:Calibri;
            margin-left:20px;
        }

          .auto-style1 {
              text-align:center;
              height: 20px;
              width:30%;
          }



      </style>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="Index.aspx">CHTproduction</a>
                        </div>
                 </div>
                </nav>           
            </div>

            <div class="wid100">
                <div class="borderDiv relative">
                    <asp:Image ID="Image1" ImageUrl="~/Images/truck1.jpg" CssClass="firstimage" runat="server" />
                    
                    <div class="buttton1DivPosition absolute">
                        <span class="glyphicon glyphicon-user"></span>
                        <asp:Button ID="SignUpButton" CssClass="bothbutton" runat="server" Text="Sign Up" OnClick="SignUpButton_Click"  />

                    </div>
                    <div class="buttton2DivPosition absolute">
                        <span class="glyphicon glyphicon-log-in"></span>
                        <asp:Button ID="LoginButton" CssClass="bothbutton" runat="server" Text="Login" OnClick="LoginButton_Click" />

                    </div>
                    <div class="buttton3DivPosition absolute">
                        
                        <asp:Button ID="adminPanel" CssClass="bothbutton" Width="100px" runat="server" Text="Admin Panel" OnClick="adminPanel_Click"/>

                    </div>

                </div>
                    

            </div>

            <div>
                <h1>Agriculture in BANGLADESH</h1>
                <p>
                    Agriculture is the largest employment sector in Bangladesh. As of 2016, it employs 47% of
                    the total labour force and comprises 16% of the country's GDP.The performance of this
                    sector has an overwhelming impact on major macroeconomic objectives like employment 
                    generation, poverty alleviation, human resources development and food security.

A plurality of Bangladeshis earn their living from agriculture. Although rice and jute are the primary crops, 
                    wheat is assuming greater importance. Tea is grown in the northeast. Because of 
                    Bangladesh's fertile soil and normally ample water supply, rice can be grown and 
                    harvested three times a year in many areas. Due to a number of factors, Bangladesh's
                    labour-intensive agriculture has achieved steady increases in food grain production
                    despite the often unfavorable weather conditions. These include better flood control
                    and irrigation, a generally more efficient use of fertilizers, and the establishment of 
                    better distribution and rural credit networks. With 35.8 million metric tons produced in
                    2000, rice is Bangladesh's principal crop. National sales of the classes of insecticide
                    used on rice, including granular carbofuran, synthetic pyrethroids, and malathion exceeded
                    13,000 tons of formulated product in 2003.The insecticides not only represent an 
                    environmental threat, but are a significant expenditure to poor rice farmers. 
                    The Bangladesh Rice Research Institute is working with various NGOs and international
                    organisations to reduce insecticide use in rice.

In comparison to rice, wheat output in 1999 was 1.9 million metric tons. Population pressure continues
                    to place a severe burden on productive capacity, creating a food deficit, especially 
                    of wheat. Foreign assistance and commercial imports fill the gap. Underemployment
                    remains a serious problem, and a growing concern for Bangladesh's agricultural sector
                    will be its ability to absorb additional manpower. Finding alternative sources of
                    employment will continue to be a daunting problem for future governments, particularly
                    with the increasing numbers of landless peasants who already account for about half the
                    rural labour force.
                </p>
                <h1>Agriculure Eqipment In BANGLADESH</h1>
                <table style="width: 90%;">
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label1" runat="server" Text="Reaper" ForeColor="#3366FF"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label12" runat="server" ForeColor="#3366FF" Text="Power Tiller"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label13" runat="server" ForeColor="#3366FF" Text="Combine Harvester"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" >
                            <asp:Label ID="Label2" runat="server" Text="Thresher" ForeColor="#3366FF"></asp:Label>
                        </td>
                        <td class="auto-style1" >
                            <asp:Label ID="Label15" runat="server" ForeColor="#3366FF" Text="Tiller"></asp:Label>
                        </td>
                        <td class="auto-style1" >
                            <asp:Label ID="Label14" runat="server" ForeColor="#3366FF" Text="Cattle Feed Plant"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="#3366FF"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label16" runat="server" ForeColor="#3366FF" Text="Sprayer"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label17" runat="server" ForeColor="#3366FF" Text="Agricultural Equipment"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label4" runat="server" ForeColor="#3366FF" Text="Poultry Equipment"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label18" runat="server" ForeColor="#3366FF" Text="Soil Testing Kit"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label19" runat="server" ForeColor="#3366FF" Text="Paddy Cutting Machine"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label5" runat="server" ForeColor="#3366FF" Text="Farm Equipment"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label27" runat="server" ForeColor="#3366FF" Text="Micro Irrigation System"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label20" runat="server" ForeColor="#3366FF" Text="Rice Planting Machine"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label6" runat="server" ForeColor="#3366FF" Text="Potato Planter"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label28" runat="server" ForeColor="#3366FF" Text="Poultry Farming Equipment"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label23" runat="server" ForeColor="#3366FF" Text="Paddy Thresher Machine"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label7" runat="server" ForeColor="#3366FF" Text="Harvesters"></asp:Label>
                        </td>
                        <td class="auto-style1" >
                            <asp:Label ID="Label29" runat="server" ForeColor="#3366FF" Text="Poultry Feed Plant"></asp:Label>
                        </td>
                        <td class="auto-style1" >
                            <asp:Label ID="Label24" runat="server" ForeColor="#3366FF" Text="Pest Control Equipment"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label8" runat="server" ForeColor="#3366FF" Text="Crop Cutting Machine"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label30" runat="server" ForeColor="#3366FF" Text="Seed Cleaning Machine"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label22" runat="server" ForeColor="#3366FF" Text="Rotary Tiller Blades"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label9" runat="server" ForeColor="#3366FF" Text="Reaper Machine"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label31" runat="server" ForeColor="#3366FF" Text="Mini Combine Harvester"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label26" runat="server" ForeColor="#3366FF" Text="Agriculture Cutting Machine"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label10" runat="server" ForeColor="#3366FF" Text="Rice Harvester"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label33" runat="server" ForeColor="#3366FF" Text="Automatic Potato Planter"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label25" runat="server" ForeColor="#3366FF" Text="Agricultural Machinery Parts"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label11" runat="server" ForeColor="#3366FF" Text="Rotavator Spare Parts"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label32" runat="server" ForeColor="#3366FF" Text="Agricultural Hand Tools"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label21" runat="server" ForeColor="#3366FF" Text="etc."></asp:Label>
                        </td>
                    </tr>
                </table>

                <h1>How to use this website</h1>
                <video controls>
                    <source src="Video/projectVideo.mp4" style="width:80%; margin-left:20px;height:200px;" />
                </video controls>
                
                <h1>FAQ</h1>
                <p><b>Question:</b>How to shop online?</p>
                <p><b>Answer:</b>Follow the above procedure through the video.</p>
                <br />
                <p><b>Question:</b>Are the items vat and carrying charge included?</p>
                <p><b>Answer:</b>Yes</p>
                <br />
                <p><b>Question:</b>What is the delivery system?</p>
                <p><b>Answer:</b>Home delivery</p>
                <br />
                <p><b>Question:</b>How many days will it take to be delivered?</p>
                <p><b>Answer:</b>Within a week the item will be delivered</p>
                <br />

                <br />
                <br />
                <br />
                <p><b>FOR ANY QUERY CONTACT IN OUR ADDRESS OR CALL US</b></p>
                <h1>OUR ADDRESS</h1>
                <p><b>SHONADANGA,KHULNA</b></p>
                <p><b>2nd Floor, Building no:5</b></p>
                <p><b>Opposite Of Kamal Tower</b></p>
                <p><b>Contact Us :</b>XXXXXXXXXXX</p>
                


            </div>
           
        </div>
        

        <footer class="footerbackground">
            <div class="maindiv">
                <div class="div1">
                    <h1 class="footerheader footercolor">
                        <b>CHT</b>production
                    </h1>
                    <p class="footera footerc">
                        Connect with us. Be first to hear our new announcment
                        and offers. Stay tuned.
                        
                    </p>
                    <p class="footera footerb">
                        &copy 2017,KUET. All Rights Reserved;
                    </p>

                </div>
                <div class="div2">

                    <ul style="list-style-type: none">
                        <li><a href="#" class="footera">Photography</a></li>
                        <li><a href="#" class="footera">Support</a></li>
                        <li><a href="#" class="footera">Blog</a></li>
                        <li><a href="#" class="footera">News</a></li>
                        <li><a href="#" class="footera">Contact</a></li>
                        <li><a href="#" class="footera">About Us</a></li>
                        <li><a href="#" class="footera">Help</a></li>

                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>

                    </ul>

                </div>
                <div class="div3">
                    <h1 class="footerheader footercolor">
                        <b>follow us</b>
                    </h1>
                    <i class="fa fa-facebook-official pad5" style="font-size: 15px"></i>
                    <i class="fa fa-linkedin-square pad5" style="font-size: 15px"></i>
                    <i class="fa fa-pinterest pad5" style="font-size: 15px"></i>
                    <i class="fa fa-twitter pad5" style="font-size: 15px"></i>
                    <i class="fa fa-whatsapp pad5" style="font-size: 15px"></i>
                    <i class="fa fa-instagram pad5" style="font-size: 15px"></i>
                    <i class="fa fa-youtube-play pad5" style="font-size: 15px"></i>
                </div>

            </div>
        </footer>

        
    </form>
</body>
</html>

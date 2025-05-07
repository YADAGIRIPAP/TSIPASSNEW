<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewHome2.aspx.cs" Inherits="Home2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="TS iPASS" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>:: TS-iPASS ::</title>
    <link href="style2.css" rel="stylesheet" type="text/css" />
    <link href="responsive2.css" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet'
        type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i"
        rel="stylesheet">

    <script src="jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $(".menu_trigger").click(function() {
                $(".nav>ul").slideToggle();
            });


            $(".submenu1").click(function() {
                $(".submenu1 ul").slideToggle();
            });

            $(".submenu2").click(function() {
                $(".submenu2 ul").slideToggle();
            });

            $(".submenu3").click(function() {
                $(".submenu3 ul").slideToggle();
            });


            $(".submenu4").click(function() {
                $(".submenu4 ul").slideToggle();
            });

            $(".submenu5").click(function() {
                $(".submenu5 ul").slideToggle();
            });
            $(".submenu5").click(function() {
                $(".submenu5 ul").slideToggle();
            });


        });

        function AnotherFunction() {
            document.getElementById('id01').style.display = 'block';
        }
    </script>

    <style>
        /* Full-width input fields */input[type=text], input[type=password]
        {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        /* Set a style for all buttons */.loginbutton
        {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        button
        {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        /* Extra styles for the cancel button */.cancelbtn
        {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }
        /* Center the image and position the close button */.imgcontainer
        {
            text-align: center;
            margin: 24px 0 12px 0;
            position: relative;
        }
        img.avatar
        {
            width: 20%;
            border-radius: 50%;
        }
        .container
        {
            padding: 2%;
            padding-left: 5%;
            margin: auto;
            padding-right: 5%;
        }
        span.psw
        {
            float: right;
            padding-top: 16px;
        }
        /* The Modal (background) */.modal
        {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 99999; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            padding-top: 60px;
        }
        /* Modal Content/Box */.modal-content
        {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */
            max-width: 400px;
            border-radius: 15px;
        }
        /* The Close Button (x) */.close
        {
            position: absolute;
            right: 25px;
            top: 0;
            color: #000;
            font-size: 35px;
            font-weight: bold;
        }
        .close:hover, .close:focus
        {
            color: red;
            cursor: pointer;
        }
        /* Add Zoom Animation */.animate
        {
            -webkit-animation: animatezoom 0.6s;
            animation: animatezoom 0.6s;
        }
        @-webkit-keyframes@-webkit-keyframes@-webkit-keyframes@-webkit-keyframes@-webkit-keyframes@-webkit-keyframes@-webkit-keyframes@-webkit-keyframes@-webkit-keyframes@-webkit-keyframes@-webkit-keyframes@-webkit-keyframes@-webkit-keyframes@-webkit-keyframes@-webkit-keyframesanimatezoom{from{-webkit-transform:scale(0)}
        to
        {
            -webkit-transform: scale(1);
        }
        }@keyframesanimatezoom{from{transform:scale(0)}
        to
        {
            transform: scale(1);
        }
        }/* Change styles for span and cancel button on extra small screens */@mediascreenand(max-width:300px){span.psw{display:block;float:none;}
        .cancelbtn
        {
            width: 100%;
        }
        }</style>
</head>
<body>
    <div class="mid_wrap">
        <div class="header">
            <div class="header-logo">
                <div class="logo">
                    <img src="images/F3_03.png" />
                </div>
            </div>
            <div class="vip">
                <ul>
                    <li>
                        <!--<div class="v-left">
                            
                        </div>-->
                        <div class="v-right">
                            <img style="padding-left: 35%;" src="images/F3_06.png" />
                            <h3>
                                Sri. K.Chandrasekhar Rao</h3>
                            <p>
                                Hon'ble Chief Minister</p>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </li>
                    <li>
                        <div class="v-right">
                            <img style="padding-left: 35%;" src="images/F3_08.png" />
                            <h3>
                                Sri. K. T. Rama Rao</h3>
                            <p>
                                Hon'ble Minister for Industries</p>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </li>
                    <div class="clear_fix">
                    </div>
                </ul>
            </div>
            <div class="clear_fix">
            </div>
        </div>
        <div class="menu">
            <div class="nav">
                <div class="menu_trigger">
                    <!--menu_trigger-->
                    <img src="images/nav_icon.png" alt="">
                </div>
                <!--menu_trigger-->
                <ul>
                    <li class="submenu1"><a href="#">Home</a> </li>
                    <li class="submenu2"><a href="about.aspx">About Us</a></li>
                    <li class="submenu3"><a href="#">Services</a>
                        <ul>
                            <li><a target="_blank" href="UI/TSiPASS/frmCFEcertificateProcess.aspx">TS-iPASS Verification</a></li>
                            <li><a target="_blank" href="UI/TSiPASS/AddNewInspectionUser.aspx">Inspection</a></li>
                            <li><a target="_blank" href="IncentiveRegistrationViewDocs.aspx">Incentive Check</a></li>
                            <li><a target="_blank" href="UI/TSiPASS/AddnewuserRegistration.aspx">Raw Material Allocation</a></li>
                            <li><a target="_blank" href="UI/TSiPASS/GuestGrievance.aspx">Grievance Registration</a></li>
                            <li><a target="_blank" href="UI/TSiPASS/GuestInsturction.aspx">Bank Loan Application</a></li>
                            <li><a target="_blank" href="http://udyogaadhaar.gov.in/">Udyog Aadhaar</a></li>
                        </ul>
                    </li>
                    <li class="submenu4"><a href="links.aspx">Related Departments</a></li>
                    <li class="submenu5"><a href="Contacts.aspx">Contact Us</a></li>
                    <div class="p-left">
                        <a href="#"><span>
                            <img src="images/doc_17.png" /></span>7306-600-600</a>
                    </div>
                    <div class="clear_fix">
                    </div>
                </ul>
            </div>
            <!--<div class="phone">
                <div class="p-left">
                    <a href="#"><span>
                        <img src="images/doc_17.png" /></span>7306-600-600</a>
                </div>
                <div class="p-right">
                    <a target="_blank" href="UI/TSiPASS/AddnewuserRegistration.aspx">
                        <input type="submit" class="register" value="REGISTER" /></a> <a target="_blank"
                            href="Index.aspx">
                            <input type="submit" class="login2" value="LOGIN" /></a>
                </div>
                <div class="clear_fix">
                </div>
            </div>-->
            <div class="clear_fix">
            </div>
        </div>
        <div class="banner_part">
            <div class="banner">
                <div id="main" role="main">
                    <section class="slider">
        <div class="flexslider">
          <ul class="slides">
            <li>
  	    	    <img src="images/f2_03.png" />
  	    		</li>
  	    		<li>
  	    	    <img src="images/f2_02.jpeg" />
  	    		</li>
  	    		<li>
  	    	    <img src="images/f2_03.png" />
  	    		</li>
 
          </ul>
        </div>
      </section>
                </div>
            </div>
            <div class="apply">
                <div class="apply_in">
                    <p>
                        Get Industrial Project Approvals by a Single Click</p>
                    <ul>
                        <li style="padding-left: 25%; padding-top: 10px;"><a target="_blank" href="UI/TSiPASS/AddnewuserRegistration.aspx">
                            <input type="submit" class="register" value="REGISTER" /></a> </li>
                        <li style="padding-left: 26%; padding-top: 10px;">
                            <input onclick="document.getElementById('id01').style.display='block'" style="width: auto;"
                                type="submit" class="login2" value="LOGIN" /></li>
                    </ul>
                </div>
            </div>
        </div>
        <div>
            <div id="id01" class="modal">
                <form id="Form1" class="modal-content animate" runat="server">
                <div class="imgcontainer">
                    <span onclick="document.getElementById('id01').style.display='none'" class="close"
                        title="Close Modal">&times;</span>
                    <img src="images/logo.png" alt="Avatar" class="avatar">
                </div>
                <div id="lgn" runat="server" class="container">
                    <label>
                        <b>Username</b></label>
                    <asp:TextBox runat="server" ID="txtuname" />
                    <label>
                        <b>Password</b></label>
                    <asp:TextBox runat="server" TextMode="password" ID="txtpsw" />
                    <asp:Button OnClick="btnSignIn_Click" class="loginbutton" ID="btnSignIn" runat="server"
                        Text="Login"></asp:Button>
                    <asp:Label ID="lblmsg" Text="" runat="server" Style="color: #d74995;" Font-Size="12pt"
                        ForeColor="#1DB7FF"></asp:Label>
                    <div class="container">
                        <button runat="server" type="button" onclick="document.getElementById('id01').style.display='none'"
                            class="cancelbtn">
                            Cancel</button>
                        <span class="psw">
                            <asp:LinkButton runat="server" OnClick="Btnpwd_Click">Forgot password?</asp:LinkButton></span>
                    </div>
                </div>
                <div id="pwd" visible="false" runat="server" class="container">
                    <label>
                        <b>Enter your E-Mail</b></label><asp:RequiredFieldValidator ID="RequiredFieldValidator15"
                            runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter Email"
                            ValidationGroup="group1">*</asp:RequiredFieldValidator>
                    <asp:TextBox runat="server" ID="txtEmail" />
                    <label>
                        <b>Mobile No.</b></label><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            runat="server" ControlToValidate="txtMobile" ErrorMessage="Please Enter Mobile No."
                            ValidationGroup="group1">*</asp:RequiredFieldValidator>
                    <asp:TextBox runat="server" ID="txtMobile" />
                    <label>
                        <b>User Name</b></label><asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            runat="server" ControlToValidate="txtuserid" ErrorMessage="Please Enter User Name"
                            ValidationGroup="group1">*</asp:RequiredFieldValidator>
                    <asp:TextBox runat="server" ID="txtuserid" />
                    <asp:Button OnClick="BtnPassword_Click" ValidationGroup="group" class="loginbutton"
                        ID="Button1" runat="server" Text="Submit"></asp:Button>
                    <asp:Label ID="lblmsg0" Text="" runat="server" Style="color: #d74995;" Font-Size="10pt"
                        ForeColor="#1DB7FF"></asp:Label>
                    <div class="container">
                        <button id="Button2" runat="server" type="button" onclick="document.getElementById('id01').style.display='none'"
                            class="cancelbtn">
                            Cancel</button>
                        <span class="psw">
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="BtnLogin_Click">Login</asp:LinkButton></span>
                    </div>
                </div>
                </form>
            </div>

            <script>
                // Get the modal
                var modal = document.getElementById('id01');

                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function(event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
               
            </script>

            <!--<div class="latest2">
            <div class="latest2-news">
                <h2>
                    Latest News</h2>
                <div class="inner">
                    <div class="i-text">
                        <p>
                            Telangana clears 16 industrial proposals worth 1,046 cr</p>
                    </div>
                    <img src="images/latest_08.png" />
                </div>
            </div>
            <div class="latest2-video">
                <h2>
                    Photos &Videos</h2>
                <div class="inner">
                    <div class="i-text">
                        <p>
                            IT Minister KTR Speech At Inauguration Of Apple Development Center</p>
                    </div>
                    <img src="images/latest_11.png" />
                </div>
            </div>
        </div>-->
            <div class="clear_fix">
            </div>
            <div class="news">
                <div class="latest_news">
                    <p>
                        LATEST NEWS</p>
                </div>
                <div class="marque">
                    <marquee>
    <a href="#">Telangana State Hon'ble Chief Minister Sri.K. Chandrasekar Rao has launched Telangana Industrial Policies</a>
    <a href="#">Hon'ble Chief Minister Sri.K. Chandrasekar Rao has launched TS-iPASS</a></marquee>
                </div>
                <div class="clear_fix">
                </div>
            </div>
            <!--<div class="register5">
            <ul>
                <li class="r1">
                    <h2>
                        INCENTIVES</h2>
                    <a href="IncentiveRegistrationViewDocs.aspx" target="_blank"><span>
                        <img src="images/arrow_03.png" /></span>Register</a> </li>
                <li class="r2">
                    <h2>
                        GRIEVANCES</h2>
                    <a href="UI/TSiPASS/GuestGrievance.aspx" target="_blank"><span>
                        <img src="images/arrow_03.png" /></span>Register</a> </li>
                <li class="r3">
                    <h2>
                        INSPECTION</h2>
                    <a target="_blank" href="UI/TSiPASS/AddNewInspectionUser.aspx"><span>
                        <img src="images/arrow_03.png" /></span>Register</a> </li>
                <li class="r4">
                    <h2>
                        UDYOG AADHAAR</h2>
                    <a target="_blank" href="http://udyogaadhaar.gov.in/UA/UdyogAadhar-New.aspx"><span>
                        <img src="images/arrow_03.png" /></span>Register</a> </li>
                <div class="clear_fix">
                </div>
            </ul>
        </div>-->
            <div class="copyright">
                <p>
                    © Copyrights and all rights reserved by Industries Chasing Cell
                    <%--<img style="float:right; padding-right:2%;" src="http://www.reliablecounter.com/count.php?page=https://ipass.telangana.gov.in/&digit=style/plain/6/&reloads=1"
                            alt="ipass.telangana.gov.in" title="ipass.telangana.gov.in" border="0">--%></p>
            </div>
            <link rel="stylesheet" href="css/demo.css" type="text/css" media="screen" />
            <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

            <script defer src="js/jquery.flexslider.js"></script>

            <script type="text/javascript">
                $(function() {
                    SyntaxHighlighter.all();
                });
                $(window).load(function() {
                    $('.flexslider').flexslider({
                        animation: "slide",
                        start: function(slider) {
                            $('body').removeClass('loading');
                        }
                    });
                });
            </script>

            <script>
                (function(i, s, o, g, r, a, m) {
                    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function() {
                        (i[r].q = i[r].q || []).push(arguments)
                    }, i[r].l = 1 * new Date(); a = s.createElement(o),
  m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
                })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

                ga('create', 'UA-77279258-1', 'auto');
                ga('send', 'pageview');

            </script>

        </div>
</body>
</html>

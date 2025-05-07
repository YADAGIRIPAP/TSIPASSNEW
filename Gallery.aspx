<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

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


        });
    </script>

    <style>
        div.img
        {
            margin: 5px;
            border: 1px solid #ccc;
            float: left;
            width: 180px;
        }
        div.img:hover
        {
            border: 1px solid #777;
        }
        div.img img
        {
            width: 100%;
            height: auto;
        }
        div.desc
        {
            padding: 15px;
            text-align: center;
            height: 40px;
            background-color: #2fb4c2;
        }
    </style>
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
                            <img style="padding-left: 35%;" src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/Masterfiles/images/Revanth Reddy CM.JPG" />
                            <h3>
                                Sri. A.Revanth Reddy</h3>
                            <p>
                                Hon'ble Chief Minister</p>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </li>
                    <li>
                        <div class="v-right">
                            <img style="padding-left: 35%;" src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/Masterfiles/images/IT Minister.JPG" />
                            <h3>
                                Sri. D.Sridhar Babu</h3>
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
                    <li class="submenu1"><a href="Home2.aspx">Home</a> </li>
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
                    <div class="p-left" runat="server" visible="false">
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
        <div style="width: 100%; padding-left: 10px;" class="banner">
            <!--<div id="main" role="main">
                <section class="slider">
        <div class="flexslider">
          <ul class="slides">
            <li>
  	    	    <img src="images/f2_03.png" />
  	    		</li>
  	    		<li>
  	    	    <img src="images/f2_03.png" />
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
            <p>
                GET INDUSTRIAL PROJECT APPROVALS BY A SINGLE CLICK</p>
            <ul>
                <li style="padding-left: 23%;"><a target="_blank" href="UI/TSiPASS/AddnewuserRegistration.aspx">
                    <input type="submit" class="register" value="REGISTER" /></a> </li>
                <li style="padding-left: 24%; padding-top: 10px;"><a target="_blank" href="Index.aspx">
                    <input type="submit" class="login2" value="LOGIN" /></a> </li>
            </ul>-->
            <div class="img">
                <a target="_blank" href="https://www.youtube.com/watch?v=02zJb5nwxGE">
                    <img src="images/video.jpg" alt="Introduction to TS-IPASS" width="300" height="200">
                </a>
                <div class="desc">
                    Introduction to TS-IPASS</div>
            </div>
            <div class="img">
                <a target="_blank" href="https://www.youtube.com/watch?v=jo9cXfBEKO0">
                    <img src="images/video.jpg" alt="How to Use Help Desk" width="600" height="400">
                </a>
                <div class="desc">
                    How to Use Help Desk
                </div>
            </div>
            <div class="img">
                <a target="_blank" href="https://www.youtube.com/watch?v=0tDrGPokitQ">
                    <img src="images/video.jpg" alt="How to Register Grievance" width="600" height="400">
                </a>
                <div class="desc">
                    How to Register Grievance</div>
            </div>
            <div class="img">
                <a target="_blank" href="https://www.youtube.com/watch?v=IkFHf9l5oGc">
                    <img src="images/video.jpg" alt="Pre-Scrutiny Process for Department" width="600"
                        height="400">
                </a>
                <div class="desc">
                    Pre-Scrutiny Process for Department</div>
            </div>
            <div class="img">
                <a target="_blank" href="https://www.youtube.com/watch?v=ohrsKIH580k">
                    <img src="images/video.jpg" alt="Approval Process for Department" width="300" height="200">
                </a>
                <div class="desc">
                    Approval Process for Department</div>
            </div>
            <div class="img">
                <a target="_blank" href="https://www.youtube.com/watch?v=pJoYvCv9Zqw">
                    <img src="images/video.jpg" alt="How to Apply Incentives Applications" width="600"
                        height="400">
                </a>
                <div class="desc">
                    How to Apply Incentives Applications</div>
            </div>
            <div class="img">
                <a target="_blank" href="https://www.youtube.com/watch?v=wGancm_ThMw">
                    <img src="images/video.jpg" alt="How to track your application" width="600" height="400">
                </a>
                <div class="desc">
                    How to track your application</div>
            </div>
            <div class="img">
                <a target="_blank" href="https://www.youtube.com/watch?v=-nTZLlxMxYE">
                    <img src="images/video.jpg" alt="Common Application Form" width="600" height="400">
                </a>
                <div class="desc">
                    How to Fill Common Application Form</div>
            </div>
            <div class="img">
                <a target="_blank" href="https://www.youtube.com/watch?v=GWg-FdS0mkY">
                    <img src="images/video.jpg" alt="CFE Quessionaire" width="600" height="400">
                </a>
                <div class="desc">
                    How to Register / Login and Filling CFE Quessionaire</div>
            </div>
            <div class="img">
                <a target="_blank" href="https://www.youtube.com/watch?v=ESkhqQDzUXA">
                    <img src="images/video.jpg" alt="CFO Quessionaire" width="600" height="400">
                </a>
                <div class="desc">
                    How to Register / Login and Filling CFO Quessionaire</div>
            </div>
            <div class="img">
                <a target="_blank" href="https://www.youtube.com/watch?v=863_1J2eDgM">
                    <img src="images/video.jpg" alt="Mountains" width="600" height="400">
                </a>
                <div class="desc">
                    How to Register / Login and Filling Raw Meterial Application</div>
            </div>
        </div>
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
                © Copyrights and all rights reserved by Industries Chasing Cell</p>
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

    </div>
</body>
</html>

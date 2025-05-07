<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HMDAChecklistCLU.aspx.cs" Inherits="Gallery" %>

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
        $(document).ready(function () {
            $(".menu_trigger").click(function () {
                $(".nav>ul").slideToggle();
            });


            $(".submenu1").click(function () {
                $(".submenu1 ul").slideToggle();
            });

            $(".submenu2").click(function () {
                $(".submenu2 ul").slideToggle();
            });

            $(".submenu3").click(function () {
                $(".submenu3 ul").slideToggle();
            });


            $(".submenu4").click(function () {
                $(".submenu4 ul").slideToggle();
            });

            $(".submenu5").click(function () {
                $(".submenu5 ul").slideToggle();
            });


        });
    </script>

    <style>
        table, td, th {
            border: 1px solid #ddd;
            text-align: left;
            font-size: 14px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            font-size: 14px;
        }

        th, td {
            padding: 15px;
            font-size: 14px;
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
                            <img style="padding-left: 35%;" src="images/F3_06.png" />
                            <h3>Sri. K.Chandrasekhar Rao</h3>
                            <p>
                                Hon'ble Chief Minister
                            </p>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </li>
                    <li>
                        <div class="v-right">
                            <img style="padding-left: 35%;" src="images/F3_08.png" />
                            <h3>Sri. K. T. Rama Rao</h3>
                            <p>
                                Hon'ble Minister for Industries
                            </p>
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
        <div style="width: 95%; margin: auto;">
            <h2 style="padding-bottom: 4px; border-bottom: 1px solid #ddd;">HMDA – CHANGE OF LAND USE APPROVAL</h2>
            <%--<p style="font-size: 14px; font-weight: bold;">
                HMDA ENCLOSURES – BUILDING PLAN--%>
            </p>
             <table>
                <tr>
                    <th style="text-align: center;">S.No.
                    </th>
                    <th>ENCLOSURES
                    </th>
                    <th>Sample Document 
                    </th>
                </tr>
                <tr>
                    <td style="text-align: center;">1
                    </td>
                    <td>Master Plan highlighting the proposed land.
                    </td>

                    <td>
                        <a style="color: Blue;" target="_blank" href="docs/Extract Master Plan-1.pdf">View</a>
                    </td>
                </tr>

                <tr>
                    <td style="text-align: center;">2
                    </td>
                    <td>If the site is located within 100 mts boundary of water body & 50 mts from nala, NOC from Executive Engineer, Irrigation Dept and NOC from Joint Collector showing the distance from FTL boundary.
                    </td>
                    <td>
                                                <a style="color: Blue;" target="_blank" href="docs/NOC-COLLECTOR.PDF">1.View</a>,
                        <a style="color: Blue;" target="_blank" href="docs/NOC-IRRIGATION.PDF">2.View</a>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">3
                    </td>
                    <td>Location Map: If the site for which the applicant is seeking CLU is a part survey number, then the applicant has to show site location in the Revenue sketch.
                    </td>
                    <td>
                        <a style="color: Blue;" target="_blank" href="docs/revenuesketch.pdf">View</a>
                    </td>
                </tr>

            </table>
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
                    LATEST NEWS
                </p>
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
            </p>
        </div>
        <link rel="stylesheet" href="css/demo.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

        <script defer src="js/jquery.flexslider.js"></script>

        <script type="text/javascript">
            $(function () {
                SyntaxHighlighter.all();
            });
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    start: function (slider) {
                        $('body').removeClass('loading');
                    }
                });
            });
        </script>

    </div>
</body>
</html>

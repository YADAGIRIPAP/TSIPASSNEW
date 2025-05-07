<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TSHome.aspx.cs" Inherits="TSHome" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-gb" class="no-js">
<head runat="server">
    <meta http-equiv="content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>TS-iPASS</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/shortcodes.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/layerslider.css" type="text/css" media="all" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="skins/maroon/style.css" rel="stylesheet" media="all" />
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,900italic,900,700italic,700,400italic,300italic,300'
        rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Domine:400,700' rel='stylesheet'
        type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Noto+Serif:400,700,400italic,700italic'
        rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
        rel='stylesheet' type='text/css'>
    <script src="js/modernizr-2.6.2.min.js"></script>
    <script>
        function UserDeleteConfirmation() {
            return confirm("This is external link. Are you sure you want to continue?");
        }
    </script>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="js/jquery.font-accessibility.min.js"></script>
     <script>
        $(function () {
            /* Basic demo */
            $('#font-setting-basic').easyView({
                container: '#basic'
            });

            /* Custom buttons */
            $('#font-setting-buttons').easyView({
                container: '#buttons',
                increaseSelector: '.increase-me',
                decreaseSelector: '.decrease-me',
                normalSelector: '.reset-me',

            });

        });
    </script>
    <style>
        .blink_text {

    animation:1s blinker linear infinite;
    -webkit-animation:1s blinker linear infinite;
    -moz-animation:1s blinker linear infinite;

     color: white;
     background-color: red;
    }

    @-moz-keyframes blinker {  
     0% { opacity: 1.0; }
     50% { opacity: 0.5; }
     100% { opacity: 10.5; }
     }

    @-webkit-keyframes blinker {  
     0% { opacity: 1.0; }
     50% { opacity: 0.5; }
     100% { opacity: 10.5; }
     }

    @keyframes blinker {  
     0% { opacity: 1.0; }
     50% { opacity: 0.5; }
     100% { opacity: 10.5; }
     }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="inner-wrapper">
            <header>
                <div class="top-bar">
                    <div class="container">
                        <span id="clock" style="font-size: 12px;"></span>
                     <%--   <div id="font-setting-buttons">
                            <div class="btn-group">
                                <a class="btn btn-default decrease-me" href="javascript:void(0)" id="minus" title="Decrease Font Size">
                                    <i class="fa fa-font size1">
                                        <i class="fa fa-minus minus"></i>
                                    </i>
                                </a>
                                <a class="btn btn-default reset-me" href="javascript:void(0)" id="actual" title="Actual Font Size">
                                    <i class="fa fa-font size1"></i>
                                </a>
                                <a class="btn btn-default increase-me" href="javascript:void(0)" id="plus" title="Increase Font Size">
                                    <i class="fa fa-font size1">
                                        <i class="fa fa-plus plus"></i>
                                    </i>
                                </a>
                            </div>
                        </div>--%>
                        <div class="dt-sc-contact-number">
                            <ul class="dt-sc-social-icons">
                                <li><span class="fa fa-phone"></span><b>Call us: 040-23441636</b></li>
                              <%--  <li><a href="https://www.facebook.com/profile.php?id=100011131938859" target="_blank" title="Facebook"><span class="fa fa-facebook"></span></a></li>
                                <li><a href="#" title="Google Plus"><span class="fa fa-google-plus"></span></a></li>
                                <li><a href="#" title="Youtube"><span class="fa fa-youtube"></span></a></li>--%>
                            </ul>

                        </div>
                    </div>
                </div>

                <div class="container">
                    <div class="logo">
                        <a href="TSHOME.ASPX">
                            <img src="images/logo.jpg" alt="Tsipass Logo"/></a>
                    </div>
                    <div class="top-head" style="display:none">
                        <div class="top-img">
                            <img src="images/sri-k-chandrasekhar-rao.png" id="imgcm" runat="server"/>

                            <h5 class="top-names">Sri. K.Chandrasekhar Rao</h5>
                            <p class="top-names1">Hon'ble Chief Minister</p>
                        </div>
                        <div class="top-img mr0">
                            <img src="images/sri-k-t-rama-rao.png" id="imgitm" runat="server"/>

                            <h5 class="top-names">Sri. K. T. Rama Rao</h5>
                            <p class="top-names1">Hon'ble Minister for Industries</p>
                        </div>
                    </div>
                </div>

                <div id="menu-container">
                    <div class="container">
                        <nav id="main-menu">
                            <div class="dt-menu-toggle" id="dt-menu-toggle">Menu<span class="dt-menu-toggle-icon"></span></div>
                            <ul id="menu-main-menu" class="menu">
                                <li class="current_page_item"><a href="TSHome.aspx">Home</a></li>
                                <li><a href="about.aspx">About Us</a></li>
                                <li class="menu-item-simple-parent menu-item-depth-0"><a href="#x">Services</a>
                                    <ul class="sub-menu">
                                      <%--  <li><a target="_blank" href="UI/TSiPASS/AmmendamentUserRegistration.aspx">Inspection</a></li>--%>
                                        <li><a target="_blank" href="UI/TSiPASS/frmCFEcertificateProcess.aspx">TS-iPass Certificate Verification</a></li>
                                        <%--<li><a target="_blank" href="UI/TSiPASS/AddNewInspectionUser.aspx">Inspection</a></li>--%>
                                        <li class="menu-item-simple-parent menu-item-depth-0"><a target="_blank" href="IncentiveRegistrationViewDocsNew.aspx">Incentive</a></li>
                                        <%-- <li class="menu-item-simple-parent menu-item-depth-0"><a target="_blank" href="#">Incentive</a>
                                                <ul class="sub-menu">
                                                    <li><a target="_blank" href="IncentiveRegistrationViewDocs.aspx">Incentive Check</a></li>
                                                    <li><a target="_blank" href="IpassLogin.aspx">Apply For Incentive</a></li>
                                                </ul>
                                            </li>--%>
                                        <li><a target="_blank" href="http://industries.telangana.gov.in/">Raw Material Allocation</a></li>
                                        <li><a target="_blank" href="UI/TSiPASS/GuestGrievance.aspx">Grievance/Feedback</a></li>
                                        <li><a target="_blank" href="UI/TSiPASS/IFCHomepage.aspx">Investor Facilitation Cell</a></li>
                                        <%--<li><a target="_blank" href="UI/TSiPASS/GuestInsturction.aspx">Bank Loan Application</a></li>--%>
                                        <li><a target="_blank" onclick="if ( ! UserDeleteConfirmation()) return false;" href="http://udyogaadhaar.gov.in/">Udyog Aadhaar</a></li>
                                        <li><a target="_blank" href="UI/TSiPASS/MisreportDashboard.aspx">Mis Reports</a></li>
                                        <%--<li><a href="ClusterAbstractReportPublic.aspx">Central Inspection Report</a></li>--%>
                                    </ul>
                                </li>
                                <li><a href="links.aspx">Related Departments</a></li>
                                <li><a href="Information.aspx">Information Wizard</a></li>

                                <li><a href="Downloads.aspx">Act & Rules</a></li>
                                <li><a href="UseCommentsOnAmmendments.aspx" >Business Regulations</a> </li>
                                
                                <li><a href="Contacts.aspx">Contact us</a></li>
                                <%-- <li><a href="#x">Related Departments</a></li>
                                <li><a href="#x">Testimonials</a></li>
                                <li><a href="#x">Latest News</a></li>
                                <li><a href="#x">Contact Us</a></li>--%>
                                <li><a href="IpassLogin.aspx"><i class="fa fa-lock"></i>Login</a></li>
                                <%--<li><a href="UI/TSiPASS/AddnewuserRegistration.aspx"><i class="fa fa-pencil"></i>Register</a></li>--%>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="clearfix"></div>
            </header>
            <div id="main">
                <div id="slider">
                    <div id="layerslider_2" class="ls-wp-container" style="width: 100%; height: 400px;
                        margin: 0 auto; margin-bottom: 0px;" runat="server">
                       <%-- <div class="ls-slide" data-ls=" transition2d: all;">
                            <img src="images/TS-iPASS Launch (2).jpg" class="ls-bg" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                             <p class="ls-l caption-1" style="top: 300px; left: 7px; font-weight: 400; font-size: 16px; padding: 15px 50px 15px 25px; line-height: 27px; white-space: nowrap;" data-ls="delayin:2000;skewxin:80;">
                                Telangana State Industrial Project Approval<br>
                                and Self-Certification System (TS-iPASS) Act, 2014
                            </p>
                        </div>--%>
                        <%--<div class="ls-slide">
                            <img src="images/3rd.jpg" class="ls-bg" style="top: 100px;" />
                            <h2 class="ls-l caption-1" style="top: 270px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                        </div>
                        <div class="ls-slide" data-ls=" transition2d: all;">
                            <img src="images/Japansnew.jpg" class="ls-bg" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                            <p class="ls-l caption-1" style="top: 300px; left: 7px; font-weight: 400; font-size: 16px;
                                padding: 15px 50px 15px 25px; line-height: 27px; white-space: nowrap;" data-ls="delayin:2000;skewxin:80;">
                                Hon’ble Minister Sri K.T.Rama Rao invited the Daegu Automotive Industry reps to
                                visit Telangana state & evaluate investment opportunities. Mr Choi Woon Back, Director
                                General,
                                <br />
                                Future Industrial Promotion Bureau, Daegu City led the Daegu Metropolitan Automotive
                                Industry delegation
                            </p>
                        </div>
                        <div class="ls-slide">
                            <img src="images/1st.jpg" class="ls-bg" style="transform: scale(0.999) !important;
                                top: 100px;" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                            <p class="ls-l caption-1" style="top: 300px; left: 7px; font-weight: 400; font-size: 16px;
                                padding: 15px 50px 15px 25px; line-height: 27px; white-space: nowrap;" data-ls="delayin:2000;skewxin:80;">
                                Hon’ble Minister Sri K T RAMA RAO meets Mr Anthony Fernandes, CEO and Ms Aireen
                                Omar, Dy CEO of AirAsia Berhad at the Telangana pavilion at World Economic Forum,<br />
                                Davos, Switzerland on 23rd Jan 2018 today and discussed the prospects of setting
                                up AirAsia's Tech Center & running innovation programs to support startups in aerospace
                                sector.
                            </p>
                        </div>
                        <div class="ls-slide">
                            <img src="images/2nd.jpg" class="ls-bg" style="transform: scale(0.99) !important;
                                top: 90px;" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                            <p class="ls-l caption-1" style="top: 300px; left: 7px; font-weight: 400; font-size: 16px;
                                padding: 15px 50px 15px 25px; line-height: 27px; white-space: nowrap;" data-ls="delayin:2000;skewxin:80;">
                                The Telangana delegation headed by Hon’ble Minister Sri K T RAMA RAO meets Ms Petra
                                Laux, Head Global and Public Affairs Novartis at the state pavilion Davos,<br />
                                Switzerland on 23rd Jan 2018 and discussed about the expansion of operations of
                                Novartis at Hyderabad. Minister also explained the progress of Hyderabad Pharma
                                City project.
                            </p>
                        </div>
                        <div class="ls-slide">
                            <img src="images/11.jpg" class="ls-bg" style="transform: scale(0.668) !important;" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                            <p class="ls-l caption-1" style="top: 300px; left: 7px; font-weight: 400; font-size: 16px;
                                padding: 15px 50px 15px 25px; line-height: 27px; white-space: nowrap;" data-ls="delayin:2000;skewxin:80;">
                                Hon’ble Minister Sri. K.T.Rama Rao Business meeting with Takuma Co. Ltd, Japan -
                                Exploring waste management and smartcity
                            </p>
                        </div>
                        <div class="ls-slide" data-ls=" transition2d:all;">
                            <img src="images/22.jpg" class="ls-bg" style="transform: scale(0.668) !important;
                                top: -150px;" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                            <p class="ls-l caption-1" style="top: 300px; left: 7px; font-weight: 400; font-size: 16px;
                                padding: 15px 50px 15px 25px; line-height: 27px; white-space: nowrap;" data-ls="delayin:2000;skewxin:80;">
                                Hon’ble Minister Sri. K.T.Rama Rao Business meeting with with ISE Foods Inc., Japan
                                for investements in Food processing and Renewable sectors
                            </p>
                        </div>
                        <div class="ls-slide" data-ls=" transition2d: all;" style="transform: scale(0.9999) !important;">
                            <img src="images/33.jpg" class="ls-bg" style="transform: scale(0.9999) !important;" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                            <p class="ls-l caption-1" style="top: 300px; left: 7px; font-weight: 400; font-size: 16px;
                                padding: 15px 50px 15px 25px; line-height: 27px; white-space: nowrap;" data-ls="delayin:2000;skewxin:80;">
                                Minister Sri. K.T.Rama Rao along with a team of delegates from Telangana state met
                                Mr. Mitsunobu Yamamoto, Deputy Director, Minebea Corporation, Japan
                            </p>
                        </div>
                        <div class="ls-slide" data-ls=" transition2d: all;">
                            <img src="images/44.jpg" class="ls-bg" style="transform: scale(1) !important; top: 120px;" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                            <p class="ls-l caption-1" style="top: 300px; left: 7px; font-weight: 400; font-size: 16px;
                                padding: 15px 50px 15px 25px; line-height: 27px; white-space: nowrap;" data-ls="delayin:2000;skewxin:80;">
                                Minister Sri. K.T.Rama Rao met with Mr. Shinya Katafuchi, Meiji Seika Pharma in
                                Japan on 17-01-2018.</br> Meiji Seika Pharma Co., Ltd. handles business in manufacturing
                                and sales of ethical pharmaceuticals, agricultural chemicals and veterinary drugs
                            </p>
                        </div>--%>
                        <%-- <div class="ls-slide" data-ls=" transition2d: all;">
                            <img src="images/CM KCR at WEF China (6).jpg" class="ls-bg" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                          
                        </div>--%>
                        <%--<div class="ls-slide" data-ls=" transition2d: all;">
                            <img src="images/eodb.jpg" class="ls-bg" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                        </div>--%>
                        <div class="ls-slide" data-ls=" transition2d: all;">
                            <img src="images/NewHomeImg.jpeg" class="ls-bg" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                       </div>
                     <%--    <div class="ls-slide" data-ls=" transition2d: all;">
                            <img src="images/SHRE2149.JPG" class="ls-bg" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                        </div>
                        <div class="ls-slide" data-ls=" transition2d: all;">
                            <img src="images/SHRE2274.JPG" class="ls-bg" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                        </div>
                        <div class="ls-slide" data-ls=" transition2d: all;">
                            <img src="images/SHRE7209.JPG" class="ls-bg" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                        </div>
                        <div class="ls-slide" data-ls=" transition2d: all;">
                            <img src="images/SHRE7328.JPG" class="ls-bg" style="margin-top: -75px !important;" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TS-iPass
                            </h2>
                        </div>--%>
                        <%--<div class="ls-slide" data-ls=" transition2d: all;">
                            <img src="images/banner3.jpg" class="ls-bg" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px; white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">Get Industrial Project Approvals by a single click </h2>
                            <p class="ls-l caption-1" style="top: 300px; left: 7px; font-weight: 400; font-size: 16px; padding: 15px 50px 15px 25px; line-height: 27px; white-space: nowrap;" data-ls="delayin:2000;skewxin:80;">

                                <a href="IpassLogin.aspx" class="dt-sc-bordered-button small">Login </a><a href="UI/TSiPASS/AddnewuserRegistration.aspx" class="dt-sc-bordered-button small">Register </a>
                            </p>
                        </div>--%>
                        <%--<div class="ls-slide" data-ls=" transition2d: all;">
                            <img src="images/ts-ipass1.jpg" class="ls-bg" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px; white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">Welcome to TS-iPass </h2>
                            <p class="ls-l caption-1" style="top: 300px; left: 7px; font-weight: 400; font-size: 16px; padding: 15px 50px 15px 25px; line-height: 27px; white-space: nowrap;" data-ls="delayin:2000;skewxin:80;">
                                Telangana State Industrial Project Approval<br>
                                and Self-Certification System (TS-iPASS) Act, 2014
                            </p>
                        </div>--%>
                    </div>
                    <div class="container-fluid news-wrap">
                        <div class="container pr">
                            <div class="newsheading">
                                Announcements</div>
                            <div class="marque" style="margin-left: 180px;" id="divNews" runat="server">
                                <marquee>
    Telangana State Hon'ble Chief Minister Sri.K. Chandrasekar Rao has launched Telangana Industrial Policies&nbsp; | &nbsp;Hon'ble Chief Minister Sri.K. Chandrasekar Rao has launched TS-iPASS</marquee>
                            </div>
                        </div>
                    </div>
                </div>
                <section id="primary" class="content-full-width">
                    <div class="container">
                       <%-- <h3 class="aligncenter no-transform">TSiPASS : The “Telangana State Industrial Project Approval<br>
                            and Self- Certification System (TS-iPASS) Act, 2014” (Act 3 of 2014)</h3>--%>
                        <div class="dt-sc-hr-invisible-very-small"></div>
                        <p class="aligncenter" style="font-size: 16px;">The Telangana Government has enacted the “Telangana State Industrial Project Approval and Self-Certification System (TS-iPASS) Act, 2014” (Act No.3 of 2014) for speedy processing of applications for issue of various clearances required for setting up of industries at a single point based on the self-certificate provided by the entrepreneur and also to create investor friendly environment in the State of Telangana. </p>

                        <div class="dt-sc-hr-invisible-very-small"></div>

                        <div class="dt-sc-hr-image"></div>

                      <%--  <div class="dt-sc-hr-invisible"></div>--%>


                        <%--  <h2 align="center">Our Services </h2>
                        <div class="dt-sc-one-fourth column first">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="UI/TSiPASS/frmCFEcertificateProcess.aspx" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="UI/TSiPASS/frmCFEcertificateProcess.aspx" target="_blank">TS-iPass Verification</a></h5>
                            </div>
                        </div>

                        <div class="dt-sc-one-fourth column">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="UI/TSiPASS/AddNewInspectionUser.aspx" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="UI/TSiPASS/AddNewInspectionUser.aspx" target="_blank">Inspection</a></h5>
                            </div>
                        </div>

                        <div class="dt-sc-one-fourth column">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="IncentiveRegistrationViewDocs.aspx" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="IncentiveRegistrationViewDocs.aspx" target="_blank">Incentive Check</a></h5>
                            </div>
                        </div>

                        <div class="dt-sc-one-fourth column">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="http://udyogaadhaar.gov.in/UA/UAM_Registration.aspx" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="http://udyogaadhaar.gov.in/UA/UAM_Registration.aspx" target="_blank">Udyog Aadhaar</a></h5>
                            </div>
                        </div>


                        <div class="dt-sc-hr-invisible"></div>
                        <div class="dt-sc-clear"></div>

                        <div class="dt-sc-one-fourth column first">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="UI/TSiPASS/GuestGrievance.aspx" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="UI/TSiPASS/GuestGrievance.aspx" target="_blank">Grievance Registration</a></h5>
                            </div>
                        </div>
                        <div class="dt-sc-one-fourth column">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="UI/TSiPASS/AddnewuserRegistration.aspx" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="UI/TSiPASS/AddnewuserRegistration.aspx" target="_blank">Raw Material Allocation</a></h5>
                            </div>
                        </div>
                        <div class="dt-sc-one-fourth column">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="UI/TSiPASS/GuestInsturction.aspx" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="UI/TSiPASS/GuestInsturction.aspx" target="_blank">Bank Loan Application</a></h5>
                            </div>
                        </div>

                        <div class="dt-sc-one-fourth column">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="#">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="#">List of Related Departments</a></h5>
                            </div>
                        </div>--%>
                        <div class="dt-sc-clear"></div>

                    </div>
                </section>
                <div class="container">
                    <section id="primary" class="page-with-sidebar with-right-sidebar">
                        <div class="dt-sc-one-column dt-sc-three-sixth">
                            <a href="http://www.industries.telangana.gov.in" onclick="return confirm('You are being redirected to an external link.');" target="_blank">
                                <img src="images/Industriesimg.png" style="border: thin solid !important;" alt="Commissioner of Industries"></a>
                        </div>
                        <div class="dt-sc-one-column dt-sc-three-sixth">
                            <a href="https://udyogaadhaar.gov.in/UA/UAM_Registration.aspx" onclick="return confirm('You are being redirected to an external link.');" target="_blank">
                                <img src="images/UdyogAdhar.png" alt="Udyog Aadhaar" style="border: thin solid !important;"></a>
                        </div>
                        <div class="dt-sc-one-column dt-sc-three-sixth">
                            <a href="http://www.telangana.gov.in/" onclick="return confirm('You are being redirected to an external link.');" target="_blank">
                                <img src="images/Telangana State Portal.png" alt="Telangana State Portla" style="border: thin solid !important;"></a>
                        </div>
                      <%--  <div class="dt-sc-one-column dt-sc-three-sixth">
                            <a href="http://harithaharam.telangana.gov.in/">
                                <img src="images/1.jpg"></a>
                        </div>
                        <div class="dt-sc-one-column dt-sc-three-sixth">
                            <a href="http://www.telangana.gov.in/news/2016/05/06/harvest-rainwater">
                                <img src="images/2.jpg"></a>
                        </div>
                        <div class="dt-sc-one-column dt-sc-three-sixth">
                            <a href="http://missionkakatiya.cgg.gov.in/">
                                <img src="images/3.jpg"></a>
                        </div>
                        <div class="dt-sc-one-column dt-sc-three-sixth">
                            <a href="http://www.it.telangana.gov.in/investor-info/it-policy/">
                                <img src="images/4.jpg"></a>
                        </div>--%>
                    </section>
                    <%--   <section id="primary" class="page-with-sidebar with-right-sidebar">
                        <div class="dt-sc-one-column dt-sc-three-sixth">
                            <a href="http://harithaharam.telangana.gov.in/">
                                <img src="images/1.jpg"></a>
                        </div>
                        <div class="dt-sc-one-column dt-sc-three-sixth">
                            <a href="http://www.telangana.gov.in/news/2016/05/06/harvest-rainwater">
                                <img src="images/2.jpg"></a>
                        </div>
                        <div class="dt-sc-one-column dt-sc-three-sixth">
                            <a href="http://missionkakatiya.cgg.gov.in/">
                                <img src="images/3.jpg"></a>
                        </div>
                        <div class="dt-sc-one-column dt-sc-three-sixth">
                            <a href="http://www.it.telangana.gov.in/investor-info/it-policy/">
                                <img src="images/4.jpg"></a>
                        </div>
                    </section>

                    <section id="secondary" class="type2">
                        <aside class="widget widget_categories">
                            <h3 class="widgettitle"><span class="fa fa-download"></span>Downloads</h3>
                            <ul class="dt-sc-fancy-list caret">
                                <li><a href="docs/TS-iPASS.pdf" target="_blank">TS-iPass ACT </a></li>
                                <li><a target="_blank" href="docs/TS-iPassupdated.pdf">TS-iPass Guidelines </a></li>
                                <li><a target="_blank" href="docs/TimeLines.pdf">Timelines / Clearances </a></li>
                                <li><a target="_blank" href="docs/How to apply for clearances under TS.pdf">How to Apply </a></li>
                                <li><a target="_blank" href="Checklist.aspx">Checklist for Application </a></li>
                                <li><a target="_blank" href="HMDAChecklist.aspx">Checklist for Building Plan Approval </a></li>
                                <li><a target="_blank" href="HMDAChecklistCLU.aspx">Checklist for HMDA CLU </a></li>
                                <li><a target="_blank" href="Gallery.aspx">Videos Manuals Online Applications </a></li>
                            </ul>
                        </aside>
                    </section>--%>
                    <div class="dt-sc-hr-invisible">
                    </div>
                </div>
                <div class="sticky-container" style="display:none">
                    <ul class="sticky">
                        <li class="Regnnew"><a href="UI/TSIPASS/AddnewuserRegistration.aspx" target="_blank">
                            <img width="32" height="32" title="" alt="" src="images/new_userNew.png" />
                            <p>
                                Registration</p>
                        </a></li>
                        <li class="Newlogn"><a href="IpassLogin.aspx" target="_blank">
                            <img width="32" height="32" title="" alt="" src="images/Loginnew.jpg" />
                            <p>
                                Login</p>
                        </a></li>
                        <li class="facebook"><a href="https://www.facebook.com/profile.php?id=100011131938859"
                            target="_blank">
                            <img width="32" height="32" title="" alt="" src="images/FacebookNew.png" />
                            <p>
                                Facebook</p>
                        </a></li>
                    </ul>
                </div>
            </div>
            <%-- <footer>
                <div class="copyright">
                    <div class="container">
                        <div class="col-1 white">
                            <script type="text/javascript">                                document.write("&copy; " + new Date().getFullYear() + ". Copyright " + new Date().getFullYear() + " Government of Telangana. all rights reserved by Industries Chasing Cell..");</script>
                        </div>
                        <div class="col-2 white">
                        <span style="font-weight:bold"> Last Update: 11-05-2018</span>
                         
                        </div>
                    </div>
                </div>
            </footer>--%>
            <footer>
                <div class="copyright">
                    <div class="container">
                        <div class="col-1 white">
                            <script type="text/javascript">document.write("&copy; " + new Date().getFullYear() + ". Copyright " + new Date().getFullYear() + " Government of Telangana. all rights reserved by Industries Chasing Cell..");</script>
                        </div>
                        <div class="col-1 white">
                            <a href="Contacts.aspx" title="Contact Us" target="_blank">Contact Us</a> |
                            <a href="UI/TSIPASS/TermsConditions.aspx" title="Terms of Use" target="_blank">Terms of Use</a> |
                            <a href="UI/TSIPASS/Privacypolicy.aspx" title="Privacy Policy" target="_blank">Privacy</a>
                        </div>
                        <div class="col-2 white">
                             <span style="font-weight: bold"><asp:Label ID="lbllastupdat" runat="server" Text=""></asp:Label></span>
                            <%--Designed By <a href="http://www.bitranet.com/" title="Website Designed by BitraNet Pvt. Ltd.," target="_blank">BitraNet</a>--%>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <a href="#" title="Go to Top" class="back-to-top"><span class="fa fa-angle-up"></span>
    </a>
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-114319492-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-114319492-1');
    </script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery-migrate.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/jquery-easing-1.3.js"></script>
    <script type="text/javascript" src="js/jquery.sticky.js"></script>
    <script type="text/javascript" src="js/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="js/jquery.smartresize.js"></script>
    <script type="text/javascript" src="js/shortcodes.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <script type="text/javascript" src="js/date.js"></script>
    <script type="text/javascript" src="js/jquery-transit-modified.js"></script>
    <script type="text/javascript" src="js/layerslider.kreaturamedia.jquery.js"></script>
    <script type='text/javascript' src="js/greensock.js"></script>
    <script type='text/javascript' src="js/layerslider.transitions.js"></script>
    <script type="text/javascript">        var lsjQuery = jQuery;</script>
    <script type="text/javascript">        lsjQuery(document).ready(function () { if (typeof lsjQuery.fn.layerSlider == "undefined") { lsShowNotice('layerslider_2', 'jquery'); } else { lsjQuery("#layerslider_2").layerSlider({ responsiveUnder: 1240, layersContainer: 1170, skinsPath: 'js/layerslider/skins/' }) } }); </script>
    <style>
        .sticky-container
        {
            /*background-color: #333;*/
            padding: 0px;
            margin: 0px;
            position: fixed;
            right: -154px;
            top: 48px;
            width: 200px;
            z-index: 9999;
        }
        
        .sticky li
        {
            list-style-type: none;
            background-color: #333;
            color: #efefef;
            height: 43px;
            padding: 0px;
            margin: 0px 0px 1px 0px;
            -webkit-transition: all 0.25s ease-in-out;
            -moz-transition: all 0.25s ease-in-out;
            -o-transition: all 0.25s ease-in-out;
            transition: all 0.25s ease-in-out;
            cursor: pointer;
            filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'grayscale\'><feColorMatrix type=\'matrix\' values=\'0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0 0 0 1 0\'/></filter></svg>#grayscale");
            filter: gray;
            -webkit-filter: grayscale(100%);
        }
        
        .sticky li:hover
        {
            margin-left: -115px; /*-webkit-transform: translateX(-115px);
		-moz-transform: translateX(-115px);
		-o-transform: translateX(-115px);
		-ms-transform: translateX(-115px);
		transform:translateX(-115px);*/ /*background-color: #8e44ad;*/
            filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'grayscale\'><feColorMatrix type=\'matrix\' values=\'1 0 0 0 0, 0 1 0 0 0, 0 0 1 0 0, 0 0 0 1 0\'/></filter></svg>#grayscale");
            -webkit-filter: grayscale(0%);
        }
        
        .sticky li img
        {
            float: left;
            margin: 5px 5px;
            margin-right: 10px;
        }
        
        .sticky li p
        {
            padding: 0px;
            margin: 0px;
            text-transform: uppercase;
            line-height: 43px;
        }
        
        .sticky li a p
        {
            color: #fff;
        }
        
        .facebook
        {
            background: #3B5998 !important;
            color: white !important;
            background-color: #3B5998;
        }
        
        .Newlogn
        {
            background: #32bda5 !important;
            color: white !important;
            background-color: #32bda5;
        }
        
        .Regnnew
        {
            background: #157dc3 !important;
            color: white !important;
            background-color: #157dc3;
        }
    </style>
</body>
</html>

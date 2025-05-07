<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TSHome.aspx.cs" Inherits="TSHome" %>

<%--<%@ OutputCache Duration = "60" VaryByParam = "*" %>--%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-gb" class="no-js">
<head id="Head1" runat="server">
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
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
        rel="stylesheet">
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
            animation: 1s blinker linear infinite;
            -webkit-animation: 1s blinker linear infinite;
            -moz-animation: 1s blinker linear infinite;
            color: white;
            background-color: red;
        }

        @-moz-keyframes blinker {
            0% {
                opacity: 1.0;
            }

            50% {
                opacity: 0.5;
            }

            100% {
                opacity: 10.5;
            }
        }

        @-webkit-keyframes blinker {
            0% {
                opacity: 1.0;
            }

            50% {
                opacity: 0.5;
            }

            100% {
                opacity: 10.5;
            }
        }

        @keyframes blinker {
            0% {
                opacity: 1.0;
            }

            50% {
                opacity: 0.5;
            }

            100% {
                opacity: 10.5;
            }
        }

        .btn {
            padding: 0px 10px !important;
        }

        header .dt-sc-contact-number {
            font-size: 14px !important;
        }


        #grdDetails tr, th, td {
            background: #f7eddb !important;
            color: #000 !important;
            font-weight: 600;
            border: 1px solid #000 !important;
            font-size: 12px;
            text-align: center;
        }
    </style>
    <style>
        img.ls-bg.ls-preloaded {
            margin-top: 0px !important;
            height: 450px !important;
        }
    </style>
</head>
<body id="buttons">
    <div class="wrapper">
        <div class="inner-wrapper">
            <header>
                <div class="top-bar">
                    <div class="container">
                        <span id="clock" style="font-size: 12px;"></span>
                        <div id="font-setting-buttons" style="float: right;padding-left: 40px;">
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
                        </div>
                        <div class="dt-sc-contact-number">
                            <ul class="dt-sc-social-icons">
                                <li><i class="fa fa-phone"><b>Call us: 040 - 23441636</b></i></li>
                                <li><a href="https://www.facebook.com/profile.php?id=100011131938859" target="_blank" title="Facebook"><span class="fa fa-facebook"></span></a></li>
                                <li><a href="#" title="Google Plus"><span class="fa fa-google-plus"></span></a></li>
                                <li><a href="#" title="Youtube"><span class="fa fa-youtube"></span></a></li>
                            </ul>

                        </div>
                    </div>
                </div>

                <div class="container">
                    <div class="logo">
                        <a href="TSHOME.ASPX">
                            <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/logo.jpg" alt="Tsipass Logo"/></a>
                    </div>
                    <div class="top-head" >
                                        <div class="top-img">
                                            <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/Masterfiles/images/Revanth Reddy CM.JPG">
                                            <h5 class="top-names">Sri. A.Revanth Reddy</h5>
                                            <p class="top-names1">
                                                Hon'ble Chief Minister
                                            </p>
                                        </div>
                                        <div class="top-img mr0">
                                            <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/Masterfiles/images/IT Minister.JPG">
                                            <h5 class="top-names">Sri. D.Sridhar Babu</h5>
                                            <p class="top-names1">
                                                Hon'ble Minister for Industries
                                            </p>
                                        </div>
                                    </div>
                    <div class="top-head" >
                        <div class="top-img" style="display:none">
                            <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/sri-k-chandrasekhar-rao.png" id="imgcm" runat="server"/>

                            <h5 class="top-names">Sri. K.Chandrasekhar Rao</h5>
                            <p class="top-names1">Hon'ble Chief Minister</p>
                        </div>
                        <div class="top-img mr0" style="display:none">
                            <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/sri-k-t-rama-rao.png" id="imgitm" runat="server"/>

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
                                        <li><a target="_blank" onclick="if ( ! UserDeleteConfirmation()) return false;" href="https://udyamregistration.gov.in">Udyam Registration</a></li>
                                        <li><a target="_blank" href="UI/TSiPASS/CISDashboard.aspx">Central Inspection System</a></li>
                                        <li><a target="_blank" href="UI/TSiPASS/MisreportDashboard.aspx">EODB Reports</a></li>
                                        <li><a target="_blank" href="UI/TSiPASS/frmcapturemsmenew.aspx">MSME Catelogue</a></li>
                                        <%--<li><a href="ClusterAbstractReportPublic.aspx">Central Inspection Report</a></li>--%>
                                    </ul>
                                </li>
                                <li><a href="links.aspx">Related Departments</a></li>
                                <li><a href="Information.aspx">Information Wizard</a></li>

                                <li><a href="Downloads.aspx">Act & Rules</a></li>
                                <li><a href="UseCommentsOnAmmendments.aspx" >Business Regulations</a> </li>
                                <li class="menu-item-simple-parent menu-item-depth-0"><a href="#x">NSWS</a>
                                    <ul class="sub-menu">
                                        <li><a target="_blank" href="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/docs/NSWS_Note.pdf">About NSWS</a></li>
                                        <li><a target="_blank" href="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/docs/Approvals_Covered.pdf">Approvals List</a></li>
                                        <li><a target="_blank" href="https://www.nsws.gov.in/">Login</a></li>
                                    </ul>
                                </li>


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
                                Hon�ble Minister Sri K.T.Rama Rao invited the Daegu Automotive Industry reps to
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
                                Hon�ble Minister Sri K T RAMA RAO meets Mr Anthony Fernandes, CEO and Ms Aireen
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
                                The Telangana delegation headed by Hon�ble Minister Sri K T RAMA RAO meets Ms Petra
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
                                Hon�ble Minister Sri. K.T.Rama Rao Business meeting with Takuma Co. Ltd, Japan -
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
                                Hon�ble Minister Sri. K.T.Rama Rao Business meeting with with ISE Foods Inc., Japan
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
                        <div runat="server" visible="false" class="ls-slide" data-ls=" transition2d: all;">
                            <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/NewHomeImg.jpg" class="ls-bg" />
                            <h2 class="ls-l caption-1" style="top: 230px; left: 7px; font-size: 25px; padding: 15px 30px 15px 25px;
                                white-space: nowrap;" data-ls="offsetxin:-80;delayin:1000;skewxin:-80;">
                                Welcome to TG-iPass
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
                                <%--<marquee>
    Telangana State Hon'ble Chief Minister Sri.K. Chandrasekar Rao has launched Telangana Industrial Policies&nbsp; | &nbsp;Hon'ble Chief Minister Sri.K. Chandrasekar Rao has launched TS-iPASS</marquee>--%>
                                <marquee><b>Telangana declared the No.1 state for Industry and Commerce</b> in the Good Governance Report given by Department of Administrative Reforms and Public Grievances, Govt of India for the year 2020-21</marquee>
                            </div>
                        </div>
                    </div>
                </div>
                <section id="primary" class="content-full-width">
                    <div class="container">
                       <%-- <h3 class="aligncenter no-transform">TSiPASS : The �Telangana State Industrial Project Approval<br>
                            and Self- Certification System (TS-iPASS) Act, 2014� (Act 3 of 2014)</h3>--%>
                        <div class="dt-sc-hr-invisible-very-small"></div>
                        <%--<p class="aligncenter" style="font-size: 16px;">The Telangana Government has enacted the �Telangana State Industrial Project Approval and Self-Certification System (TS-iPASS) Act, 2014� (Act No.3 of 2014) for speedy processing of applications for issue of various clearances required for setting up of industries at a single point based on the self-certificate provided by the entrepreneur and also to create investor friendly environment in the State of Telangana. </p>--%>

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
                <div  >
                    <div class="container" runat="server" visible="false">
                        <div class="row">
                            <section id="primary1" class="page-with-sidebar with-right-sidebar" style="width: 1140px">
                            <h1><b><a href="howtoapply.aspx">How to apply for Clearance in TG-iPASS</a>   </b></h1>
                                </section>
                        </div>
                        <div class="row">
                        </div>
                    </div>
                    <div class="container">
                            <h3><b><a href="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/docs/MSME Policy Booklet Telugu.pdf" target="_blank">MSME Policy Booklet Telugu <img src="docs/newimg.gif"></a>   </b></h3>
                        </div>
                        <div class="container" >
                            <h3><b><a href="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/docs/MSME Policy Booklet English.pdf" target="_blank">MSME Policy Booklet English <img src="docs\newimg.gif"> </a>   </b></h3>
                        </div>
                </div>
                <div class="container">
                    <section id="primary" class="page-with-sidebar with-right-sidebar" style="width: 1140px">
                        <div class="dt-sc-one-column dt-sc-three-sixth" style="width:225px">
                            <a href="http://www.industries.telangana.gov.in" onclick="return confirm('You are being redirected to an external link.');" target="_blank">
                                <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/Industriesimg.png" alt="Commissioner of Industries" style="border: thin solid !important;width:275px;height:165px""></a>
                        </div>
                       <div class="dt-sc-one-column dt-sc-three-sixth" style="width:225px">
                            <a href="https://udyamregistration.gov.in/Government-of-India/Ministry-of-MSME/online-registration.htm" onclick="return confirm('You are being redirected to an external link.');" target="_blank">
                                <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/UDYAM REG FINAL.png" alt="Telangana State Portla" style="border-style: solid; border-color: inherit; border-width: thin;width:275px;height:165px" ></a>
                        </div>
                        <div class="dt-sc-one-column dt-sc-three-sixth" style="width:225px">
                            <a href="http://www.telangana.gov.in/" onclick="return confirm('You are being redirected to an external link.');" target="_blank">
                                <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/Telangana State Portal.png" alt="Telangana State Portla" style="border: thin solid !important;width:275px;height:165px""></a>
                        </div>
                        
                       <div class="dt-sc-one-column dt-sc-three-sixth" style="width:225px">
                            <a href="http://www.nsws.gov.in/" onclick="return confirm('You are being redirected to an external link.');" target="_blank">
                                <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/NSWS_Logo.png" alt="NSWS" style="border-style: solid; border-color: inherit; border-width: thin;width:275px;height:165px" ></a>
                        </div>
                         <div class="dt-sc-one-column dt-sc-three-sixth" style="width:225px">
                            <a href="https://xhtmlreviews.com/udyam/" onclick="return confirm('You are being redirected to an external link.');" target="_blank">
                                <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/Udyamika.jpeg" alt="Udyamika" style="border: thin solid !important;width:275px;height:165px""></a>
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
                <div>
                    <form runat="server" id="f1">
                    <div class="container">
                        <div class="row">
                            <h4>
                                <b>Approvals Issued under TG-iPASS </b>
                            </h4>
                        </div>
                        <div class="row">
                            <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                OnRowDataBound="grdDetails_RowDataBound" Width="100%" OnPageIndexChanging="grdDetails_PageIndexChanging"
                                ShowFooter="True" OnRowCreated="grdDetails_RowCreated">
                                <HeaderStyle ForeColor="#FFFFFF" BackColor="#009688" Height="40px" CssClass="GridviewScrollC1Header" />
                                <RowStyle Height="40px" CssClass="GridviewScrollC1Item" />
                                <PagerStyle CssClass="GridviewScrollC1Pager" />
                                <FooterStyle ForeColor="#FFFFFF" BackColor="#009688" Height="40px" CssClass="GridviewScrollC1Footer" />
                                <AlternatingRowStyle Height="40px" CssClass="GridviewScrollC1Item2" />
                                <Columns>
                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S.No">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex +1 %>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:HyperLinkField HeaderText="Financial Year" DataTextField="FinYear" />
                                    <asp:HyperLinkField HeaderText="No Of Industries" DataTextField="Total Application received">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="No Of Manufacturing Sector" DataTextField="ManufacturingTotal">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="No Of Service Sector" DataTextField="ServiceTotal">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="Total Investments (Rs Crores)" DataTextField="Total Investments">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="Total Employment" DataTextField="Total Empolyment">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="Micro" DataTextField="ManufacturingMicro">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="Small" DataTextField="ManufacturingSmall">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="Medium" DataTextField="ManufacturingMedium">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="Large" DataTextField="ManufacturingLarge">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="Mega" DataTextField="ManufacturingMega">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="Micro" DataTextField="ServiceMicro">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="Small" DataTextField="ServiceSmall">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="Medium" DataTextField="ServiceMedium">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="Large" DataTextField="ServiceLarge">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                    <asp:HyperLinkField HeaderText="Mega" DataTextField="ServiceMega">
                                        <FooterStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                    </asp:HyperLinkField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    </form>
                </div>
                <div class="sticky-container">
                    <ul class="sticky">
                        <li class="Regnnew"><a href="UI/TSIPASS/AddnewuserRegistration.aspx" target="_blank">
                            <img width="32" height="32" title="" alt="" src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/new_userNew.png" />
                            <p>
                                Registration</p>
                        </a></li>
                        <li class="Newlogn"><a href="IpassLogin.aspx" target="_blank">
                            <img width="32" height="32" title="" alt="" src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/Loginnew.jpg" />
                            <p>
                                Login</p>
                        </a></li>
                        <li class="facebook"><a href="https://www.facebook.com/profile.php?id=100011131938859"
                            target="_blank">
                            <img width="32" height="32" title="" alt="" src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/FacebookNew.png" />
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
                            <script type="text/javascript">                                document.write("&copy; " + new Date().getFullYear() + ". Copyright " + new Date().getFullYear() + " Government of Telangana. all rights reserved by Industries Chasing Cell..");</script>
                        </div>
                        <div class="col-1 white">
                            <a href="Contacts.aspx" title="Contact Us" target="_blank">Contact Us</a> |
                            <a href="UI/TSIPASS/TermsConditions.aspx" title="Terms of Use" target="_blank">Terms of Use</a> |
                            <a href="UI/TSIPASS/Privacypolicy.aspx" title="Privacy Policy" target="_blank">Privacy</a> |
                             <a href="UI/TSIPASS/IpassSitemap.aspx" title="Privacy Policy" target="_blank">Site Map</a>
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
        .sticky-container {
            /*background-color: #333;*/
            padding: 0px;
            margin: 0px;
            position: fixed;
            right: -154px;
            top: 48px;
            width: 200px;
            z-index: 9999;
        }

        .sticky li {
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

            .sticky li:hover {
                margin-left: -115px; /*-webkit-transform: translateX(-115px);
		-moz-transform: translateX(-115px);
		-o-transform: translateX(-115px);
		-ms-transform: translateX(-115px);
		transform:translateX(-115px);*/ /*background-color: #8e44ad;*/
                filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'grayscale\'><feColorMatrix type=\'matrix\' values=\'1 0 0 0 0, 0 1 0 0 0, 0 0 1 0 0, 0 0 0 1 0\'/></filter></svg>#grayscale");
                -webkit-filter: grayscale(0%);
            }

            .sticky li img {
                float: left;
                margin: 5px 5px;
                margin-right: 10px;
            }

            .sticky li p {
                padding: 0px;
                margin: 0px;
                text-transform: uppercase;
                line-height: 43px;
            }

            .sticky li a p {
                color: #fff;
            }

        .facebook {
            background: #3B5998 !important;
            color: white !important;
            background-color: #3B5998;
        }

        .Newlogn {
            background: #32bda5 !important;
            color: white !important;
            background-color: #32bda5;
        }

        .Regnnew {
            background: #157dc3 !important;
            color: white !important;
            background-color: #157dc3;
        }
    </style>
</body>
</html>

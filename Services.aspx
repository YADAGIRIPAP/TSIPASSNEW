<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,900italic,900,700italic,700,400italic,300italic,300'
        rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Domine:400,700' rel='stylesheet'
        type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Noto+Serif:400,700,400italic,700italic'
        rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
        rel='stylesheet' type='text/css'>
    <script src="js/modernizr-2.6.2.min.js"></script>
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

                        <div class="dt-sc-contact-number">
                            <ul class="dt-sc-social-icons">
                                <li><span class="fa fa-phone"></span>Call us: 040-23441636</li>
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
                            <img src="images/logo.jpg"></a>
                    </div>
                    <div class="top-head">
                        <div class="top-img">
                            <img src="images/sri-k-chandrasekhar-rao.png" id="imgcm" runat="server">

                            <h5 class="top-names">Sri. K.Chandrasekhar Rao</h5>
                            <p class="top-names1">Hon'ble Chief Minister</p>
                        </div>
                        <div class="top-img mr0">
                            <img src="images/sri-k-t-rama-rao.png" id="imgitm" runat="server">

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
                                        <li><a target="_blank" href="RawMatirialLink.aspx">Raw Material Allocation</a></li>
                                        <li><a target="_blank" href="UI/TSiPASS/GuestGrievance.aspx">Grievance/Feedback</a></li>
                                        <li><a target="_blank" href="UI/TSiPASS/IFCHomepage.aspx">Investor Facilitation Cell</a></li>
                                        <%--<li><a target="_blank" href="UI/TSiPASS/GuestInsturction.aspx">Bank Loan Application</a></li>--%>
                                        <li><a target="_blank" href="http://udyogaadhaar.gov.in/">Udyog Aadhaar</a></li>
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
               
                <section id="primary" class="content-full-width">
                    <div class="container">
                     
                          <h2 align="center">Our Services </h2>
                        <div class="dt-sc-one-fourth column first">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="UI/TSiPASS/frmCFEcertificateProcess.aspx" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="UI/TSiPASS/frmCFEcertificateProcess.aspx" target="_blank">TS-iPass Certificate Verification</a></h5>
                            </div>
                        </div>

                        <div class="dt-sc-one-fourth column">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="IncentiveRegistrationViewDocsNew.aspx" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="IncentiveRegistrationViewDocsNew.aspx" target="_blank">Incentive</a></h5>
                            </div>
                        </div>

                        <div class="dt-sc-one-fourth column">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="RawMatirialLink.aspx" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="RawMatirialLink.aspx" target="_blank">Raw Material Allocation</a></h5>
                            </div>
                        </div>

                        <div class="dt-sc-one-fourth column">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="UI/TSiPASS/GuestGrievance.aspx" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="UI/TSiPASS/GuestGrievance.aspx" target="_blank">Grievance/Feedback</a></h5>
                            </div>
                        </div>


                        <div class="dt-sc-hr-invisible"></div>
                        <div class="dt-sc-clear"></div>

                        <div class="dt-sc-one-fourth column first">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="UI/TSiPASS/IFCHomepage.aspx" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="UI/TSiPASS/IFCHomepage.aspx" target="_blank">Investor Facilitation Cell</a></h5>
                            </div>
                        </div>
                        <div class="dt-sc-one-fourth column">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="http://udyogaadhaar.gov.in/" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="http://udyogaadhaar.gov.in/" target="_blank">Udyog Aadhaar</a></h5>
                            </div>
                        </div>
                        <div class="dt-sc-one-fourth column">
                            <div class="dt-sc-ico-content type1">
                                <div class="icon">
                                    <a href="UI/TSiPASS/MisreportDashboard.aspx" target="_blank">
                                        <img src="images/practice_icon4.png"></a>
                                </div>
                                <h5><a href="UI/TSiPASS/MisreportDashboard.aspx" target="_blank">Mis Reports</a></h5>
                            </div>
                        </div>

                        <div class="dt-sc-clear"></div>

                    </div>
                </section>
                <div class="container">
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
            </div>
            <footer>
                <div class="copyright">
                    <div class="container">
                        <div class="col-1 white">
                            <script type="text/javascript">                                document.write("&copy; " + new Date().getFullYear() + ". Copyright 2017 Government of Telangana. all rights reserved by Industries Chasing Cell..");</script>
                        </div>
                        <div class="col-2 white">
                            <%--Designed By <a href="http://www.bitranet.com/" title="Website Designed by BitraNet Pvt. Ltd.," target="_blank">BitraNet</a>--%>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <a href="#" title="Go to Top" class="back-to-top"><span class="fa fa-angle-up"></span>
    </a>
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
</body>
</html>

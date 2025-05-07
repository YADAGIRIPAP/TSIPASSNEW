<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TspcbCfeInfo.aspx.cs" Inherits="UI_TSiPASS_InformationTabPages_TspcbCfeInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <meta http-equiv="content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>:: TS-iPASS ::</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <link id="default-css" href="../../../css/style.css" rel="stylesheet" type="text/css">
    <link id="shortcodes-css" href="../../../css/shortcodes.css" rel="stylesheet" type="text/css">
    <link href="../../../css/responsive.css" rel="stylesheet" type="text/css">
    <link rel='stylesheet' id='layerslider-css' href="../../../css/layerslider.css" type='text/css' media='all' />
    <link href="../../../css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link id="skin-css" href="../../../skins/maroon/style.css" rel="stylesheet" media="all" />

    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,900italic,900,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Domine:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Noto+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <script src="js/modernizr-2.6.2.min.js"></script>
    <style>
        #primary.page-with-sidebar {
            width: 1110px;
            margin: 70px 30px 0px 0px;
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
                        <a href="index.html">
                            <img src="../../../images/logo.jpg"></a>
                    </div>
                    <div class="top-head">
                        <div class="top-img">
                            <img src="~/images/sri-k-chandrasekhar-rao.png" id="imgcm" runat="server">

                            <h5 class="top-names">Sri. K.Chandrasekhar Rao</h5>
                            <p class="top-names1">Hon'ble Chief Minister</p>
                        </div>
                        <div class="top-img mr0">
                            <img src="~/images/sri-k-t-rama-rao.png" id="imgitm" runat="server">

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
                                <li><a href="TSHome.aspx">Home</a></li>
                                <li class="current_page_item"><a href="about.aspx">About Us</a></li>
                                <li class="menu-item-simple-parent menu-item-depth-0"><a href="#x">Services</a>
                                    <ul class="sub-menu">
                                        <li><a target="_blank" href="../frmCFEcertificateProcess.aspx">TS-iPass Verification</a></li>
                                        <%--<li><a target="_blank" href="UI/TSiPASS/AddNewInspectionUser.aspx">Inspection</a></li>--%>
                                        <li><a target="_blank" href="../../../IncentiveRegistrationViewDocs.aspx">Incentive Check</a></li>
                                        <li><a target="_blank" href="../../../IpassLogin.aspx">Raw Material Allocation</a></li>
                                        <li><a target="_blank" href="../GuestGrievance.aspx">Grievance Registration</a></li>
                                        <li><a target="_blank" href="../GuestInsturction.aspx">Bank Loan Application</a></li>
                                        <li><a target="_blank" href="http://udyogaadhaar.gov.in/">Udyog Aadhaar</a></li>
                                    </ul>
                                </li>
                                <li><a href="../../../links.aspx">Related Departments</a></li>
                                <li><a href="../../../Information.aspx">Information</a></li>
                                <li><a href="../../../Downloads.aspx">Act & Rules</a></li>
                                <li><a href="../../../UseCommentsOnAmmendments.aspx">Business Regulations</a></li>
                                <li><a href="../../../Contacts.aspx">Contact us</a></li>
                                <%-- <li><a href="#x">Related Departments</a></li>
                                <li><a href="#x">Testimonials</a></li>
                                <li><a href="#x">Latest News</a></li>
                                <li><a href="#x">Contact Us</a></li>--%>

                                <li><a href="../../../IpassLogin.aspx"><i class="fa fa-lock"></i>Login</a></li>
                                <li><a href="../AddnewuserRegistration.aspx"><i class="fa fa-pencil"></i>Register</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="clearfix"></div>
            </header>

            <div id="main">
                <div class="container">
                    <section id="primary2" class="page-with-sidebar with-right-sidebar">

                        <h3>Consent for Establishment (CFE) from TS Pollution Control Board</h3>

                        <div class="dt-sc-hr-invisible-very-small"></div>
                        <h4>Application for Consent for Establishment (CFE): </h4>

                        <div class="column">
                            <ul class="dt-sc-fancy-list chocolate check-circle">
                                <li><span>The Proponent shall submit CFE Application on-line through TS-iPASS (https://ipass.telangana.gov.in).</span></li>
                                <li><span>The CFE applications are pre-scrutinized online at TS-iPASS to verify that the application is in full form with all required enclosures.</span></li>
                                <li><span>The deficiencies in the application will be informed by the scrutinizing officers. The nodal agency will obtain the information / documents from the proponent and send the applications in full form online to the respective Regional Office (RO) of the Board.</span></li>

                            </ul>
                        </div>
                        <div class="dt-sc-hr-invisible-very-small"></div>
                        <h4>Processing of the Application: </h4>
                        <div class="column">
                            <ul class="dt-sc-fancy-list chocolate check-circle">
                                <li><span>After receipt of the application in full form from the nodal agency, the Regional Office of TSPCB will inspect the industry as per the procedure prescribed below.</span></li>
                                <li><span>On receipt of an application for consent under Section 25 or Section 26 of Water Act & under Section 21 of Air Act, the State Board may depute any of its officers accompanied by as many assistants as many be necessary to visit the premises of the applicant to which such application relates, for the purpose of verifying the correctness or otherwise of the particular furnished in the application or for obtaining such further particulars or information as such officer may consider necessary.</span></li>
                                <li><span>Such officer may for that purpose inspect any place where water or sewage or trade effluent is discharged by the applicant or treatment plants, purification works or disposal systems of the applicant, and may require the applicant to furnish to him any plants, specifications and other data relating to such treatment plants, purification works or disposal systems or any part thereof that he considers necessary.</span></li>
                                <li><span>The officer may inspect any place or premises, their emission from the chimney or fugitive emission from any location within the premises of the industry as also any control devices installed in the said premises, Such officer may for that purpose, inspect any place or premises under the control of the applicant or occupier and may require the applicant to furnish to him any plant specification or other data relating to control equipment or systems or any part thereof that he considers necessary.</span></li>
                                <li><span>The applicant shall furnish to such officer all information and provide facilities to conduct the inspection.</span></li>
                                <li><span>An officer of the State Board may, before or after carrying out an inspection as above, require the applicant to furnish to him, orally or in writing such additional information or clarification, or to produce before him such documents as he may consider necessary for the purpose of investigation of the application and may for that purpose summon the applicant or his authorized agent to the office of the State Board.</span></li>
                                <li><span>After inspection, the RO will process the application or forward the inspection report along with application and its enclosures to the Zonal Office (ZO)/ Head Office (HO) for processing the application, as per the delegated powers.</span></li>
                                <li><span>The decision on the application is taken based on the recommendations of the Consent for Establishment (CFE) Committees at RO/ZO/HO.</span></li>
                                <li><span>The officials of RO/ZO/HO will prepare an agenda enumerating details of the proposed project, observations and remarks of inspecting officer & Regional Office. The agenda   will be placed before the CFE Committee for examination and to take a decision.</span></li>
                                <li><span>The CFE Committee will give recommendations on the application.</span></li>
                                <li><span>The Board will issue CFE order based on the recommendations of the CFE Committee within the stipulated timelines which is valid for a period of 5 years</span></li>
                            </ul>
                        </div>
                        <div class="dt-sc-hr-invisible-very-small"></div>
                        <h4>Checklist: </h4>
                        <div class="column">
                            <ul class="dt-sc-fancy-list chocolate check-circle">
                                <li><span>For Orange and Green Category Industries:
                                                                <br />
                                    a.	Site Plan
                                                                <br />
                                    b.	Process Flow Chart (Diagram)<br />
                                    c.	Consent Fee<br />
                                </span>

                                </li>
                                <li><span>For Red Category Industries:
                                                                <br />
                                    a.	Site Plan
                                                                <br />
                                    b.	Process Flow Chart (Diagram)
                                                                <br />
                                    c.	Environment Management Plan (EMP)
                                                                <br />
                                    d.	Consent Fee
                                                                <br />
                                </span>
                                </li>
                                <li><span>For EIA – 2016 category Industries:
                                                                <br />
                                    a.  Site Plan
                                                                <br />
                                    b.	Process Flow Chart (Diagram)
                                                                <br />
                                    c.	EIA Report along with EC
                                                                <br />
                                    d.	Consent Fee
                                                                <br />
                                </span>
                                </li>
                                <h4>Time Limits: </h4>

                                <li><span>Red       : 21 days</span> </li>
                                <li><span>Orange : 14 days</span> </li>
                                <li><span>Green   : 7 days</span> </li>

                            </ul>
                        </div>
                        <div class="dt-sc-hr-invisible-very-small"></div>



                    </section>
                </div>

            </div>

            <footer>
                <div class="copyright">
                    <div class="container">
                        <div class="col-1 white">
                            <script type="text/javascript">document.write("&copy; " + new Date().getFullYear() + ". Copyright 2017 Government of Telangana. all rights reserved by Industries Chasing Cell..");</script>
                        </div>
                        <div class="col-2 white">
                            <%--  Designed By <a href="http://www.bitranet.com/" title="Website Designed by BitraNet Pvt. Ltd.," target="_blank">BitraNet</a>--%>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>

    <a href="#" title="Go to Top" class="back-to-top"><span class="fa fa-angle-up"></span></a>
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

    <script type="text/javascript">var lsjQuery = jQuery;</script>
    <script type="text/javascript"> lsjQuery(document).ready(function () { if (typeof lsjQuery.fn.layerSlider == "undefined") { lsShowNotice('layerslider_2', 'jquery'); } else { lsjQuery("#layerslider_2").layerSlider({ responsiveUnder: 1240, layersContainer: 1170, skinsPath: 'js/layerslider/skins/' }) } }); </script>

</body>

</html>

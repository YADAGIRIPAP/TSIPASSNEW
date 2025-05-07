<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MetrologyCfoInfo.aspx.cs" Inherits="UI_TSiPASS_InformationTabPages_MetrologyCfoInfo" %>

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
                                                <section class="page-with-sidebar with-right-sidebar">
                                                    <h3>Pre-Operational Approvals(CFO)</h3>
                                                    <h4>Manufacturer, Importer, Packer, Repairer, Dealer License/Registration from Controller of Legal Metrology</h4>
                                                    <div class="dt-sc-hr-invisible-very-small"></div>
                                                    <div class="column">
                                                        <h4>Application for Manufacturer, Importer, Packer, Repairer, Dealer License</h4>
                                                        <ul class="dt-sc-fancy-list chocolate check-circle">
                                                            <li><span>The Proponent shall submitApplication on-line through TS-iPASS (https://ipass.telangana.gov.in).</span></li>
                                                            <li><span>The applications are pre-scrutinized online at TS-iPASS to verify that the application is in full form with all required enclosures.</span></li>
                                                            <li><span>The deficiencies in the application will be informed by the scrutinizing officers to the applicant.</span></li>
                                                        </ul>
                                                        <%-- </div>
                                                    <div class="dt-sc-hr-invisible-very-small"></div>--%>
                                                        <h4>Processing of the Application: </h4>
                                                        <%-- <div class="column">--%>
                                                        <ul class="dt-sc-fancy-list chocolate check-circle">
                                                            <li><span>If the application is found to be in order, the department will allocate an inspector to inspect the Establishment premises.</span></li>
                                                            <li><span>The inspector then uploads the inspection report with their recommendation to the Department based on the inspection, which is sent to the Assistant Controller.</span></li>
                                                            <li><span>The Assistant Controller then reviews the submitted recommendation and along with submitted application. They then recommend for approval or rejection to the Controller of Legal Metrology.</span></li>
                                                            <li><span>Controller of Legal Metrology reviews the recommendations and if all are in order then the certificate signed and shared in the user’s login space.</span></li>
                                                            <li><span>The user can view and download the digital copy of the certificate in his login.</span></li>

                                                        </ul>
                                                        <%-- </div>
                                                    <div class="dt-sc-hr-invisible-very-small"></div>--%>
                                                        <h4>Checklist of Documents to be submitted with the Application</h4>
                                                        <%--  <div class="column">--%>
                                                        <ul class="dt-sc-fancy-list chocolate check-circle">
                                                            <li><span>Manufacturer</span><br />
                                                                a.	Photographs of Proprietor - in case of Proprietorship /Managing Partner - in case of Partnership firm /Managing Director - in case of Limited Company.<br />
                                                                b.	Copy of Certificate indicating Number and date of registration number of current shop/establishment/municipal trade licence Sales tax registration certificate i.e. CST/APGST or exemption declaration by the applicant.<br />
                                                                c.	Labour Department Certificate.<br />
                                                                d.	Copy of the valid existing license document in case of Renewal.<br />
                                                                e.	Partnership deed in case of Partnership firm or Memorandum of articles in case of company.<br />
                                                                f.	Copies of Approval of Model Certificates.<br />
                                                                g.	Security Deposit for Rs.10,000/- in the form of NSC( Copy of the NSC in case of Renewal of License).<br />
                                                                h.	Lease/rental/ownership deed of premises.<br />
                                                                i.	Solemn Affirmation declaration by the applicant on Rs.10/- bond paper.<br />
                                                                j.	Address proof of the applicant.<br />
                                                                k.	Id-Proof of the applicant.<br />
                                                                l.	A declaration from the applicant stating that periodical returns are submitted and registers are maintained up to date in case of Renewal.<br />
                                                                m.	Monogram/Trade Mark of the Manufacturer.<br />
                                                            </li>
                                                            <li><span>Dealer License</span>
                                                                a.	Photographs of Proprietor - in case of Proprietorship/Managing Partner - in case of Partnership firm/Managing Director - in case of Limited Company.<br />
                                                                b.	Copy of Certificate indicating Number and date of registration number of current shop/establishment/municipal trade license.<br />
                                                                c.	Group photo of applicant(s) and skilled worker(s).<br />
                                                                d.	Partnership deed in case of Partnership firm or Memorandum of articles in case of company.<br />
                                                                e.	Copy of the valid existing license document in case of Renewal.<br />
                                                                f.	Security Deposit for Rs.2000/- in the form of NSC (Copy of the NSC in Case of Renewal of License).<br />
                                                                g.	Lease/rental/ownership deed of premises.<br />
                                                                h.	Solemn Affirmation declaration by the applicant on Rs.10/- bond Paper.<br />
                                                                i.	Address proof of the applicant.<br />
                                                                j.	Id-Proof of the applicant.<br />
                                                                k.	Copy of the skilled worker certificate(s).<br />
                                                                l.	List of Loan articles.<br />
                                                                m.	List of Test weights.<br />
                                                                n.	List of tools.<br />
                                                                o.	Undertaking from the skilled worker(s) indicating willingness to work in the firm.<br />
                                                            </li>
                                                            <li><span>Repairer License</span>.<br />
                                                                a.	Photographs of Proprietor - in case of Proprietorship/Managing Partner - in case of Partnership firm/Managing Director - in case of Limited Company.<br />
                                                                b.	Copy of Certificate indicating Number and date of registration number of current shop/establishment/municipal trade licence.<br />
                                                                c.	Group photo of applicant(s) and skilled worker(s).<br />
                                                                d.	Partnership deed in case of Partnership firm or Memorandum of articles in case of company.<br />
                                                                e.	Copy of the valid existing license document in case of Renewal.<br />
                                                                f.	Security Deposit for Rs.5000/- in the form of NSC (Copy of the NSC inCase of Renewal of License).<br />
                                                                g.	Lease/rental/ownership deed of premises.<br />
                                                                h.	Solemn Affirmation declaration by the applicant on Rs.10/- bond Paper.<br />
                                                                i.	Address proof of the applicant.<br />
                                                                j.	Id-Proof of the applicant.<br />
                                                                k.	Copy of the skilled worker certificate(s).<br />
                                                                l.	List of Loan articles.<br />
                                                                m.	List of Test weights.<br />
                                                                n.	List of tools.<br />
                                                                o.	Undertaking from the skilled worker(s) indicating willingness to work in the firm.<br />
                                                            </li>
                                                            <li><span>For Registration of Manufacturer/Packer/Importer</span>.<br />
                                                                a.	Municipal or Gram Panchayat Trade License.<br />
                                                                b.	Sales Tax registration Copy with TIN.<br />
                                                                c.	Sample copy of Trade mark for Manufacturer and Label in case ofImporter/Packer.<br />
                                                                d.	If applicant is an authorized signatory, proof thereto.<br />
                                                                e.	Registered partnership deed or articles in case of partnership firm orregistered company.<br />
                                                                f.	Filled Application Form with Photo.<br />
                                                                g.	Aadhar Proof copy.<br />
                                                            </li>
                                                        </ul>
                                                        <%--</div>
                                                   <div class="dt-sc-hr-invisible-very-small"></div>
                                                    <h4>Time Limits: </h4>
                                                   
                                                    <div class="column">--%>
                                                        <h4>Timelines for Approvals: </h4>
                                                        <ul class="dt-sc-fancy-list chocolate check-circle">
                                                            <li><span>For all registrations/Licenses : 15 days</span></li>
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

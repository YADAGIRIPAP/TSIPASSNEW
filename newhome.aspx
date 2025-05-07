<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewHome.aspx.cs" Inherits="newhome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="TS iPASS" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>:: TS-iPASS ::</title>
    <link href="style1.css" rel="stylesheet" type="text/css" />
    <link href="responsive1.css" rel="stylesheet" type="text/css" />
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
                        <div class="v-left">
                            <img src="images/F3_06.png" />
                        </div>
                        <div class="v-right">
                            <h3>
                                Sri. K.Chandrasekhar Rao</h3>
                            <p>
                                Hon'ble Chief Minister</p>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </li>
                    <li>
                        <div class="v-left">
                            <img src="images/F3_08.png" />
                        </div>
                        <div class="v-right">
                            <h3>
                                Sri. K.Taraka Rama Rao</h3>
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
                    <li class="submenu1"><a href="WebiPASS.aspx">TS-iPASS</a>
                        <ul>
                            <li><a target="_blank" href="docs/TS-iPASS.pdf">ACT</a></li>
                            <li><a target="_blank" href="docs/TS-iPassupdated.pdf">Guidelines</a></li>
                            <li><a target="_blank" href="docs/TimeLines.pdf">Timelines / Clearances</a></li>
                            <li><a target="_blank" href="docs/CAF.pdf">Common Application Form</a></li>
                            <li><a target="_blank" href="UI/TSiPASS/AddnewuserRegistration.aspx">Raw Material Allocation</a></li>
                        </ul>
                    </li>
                    <li class="submenu3"><a href='#'>Video Manuals</a>
                        <ul>
                            <li><a target="_blank" href="https://youtu.be/02zJb5nwxGE">TS-iPASS Introduction </a>
                            </li>
                            <li><a target="_blank" href="docs/How to apply for clearances under TS.pdf">How to Apply</a></li>
                            <li><a target="_blank" href="https://youtu.be/jo9cXfBEKO0">User / Department Help Desk</a></li>
                            <li><a target="_blank" href="https://youtu.be/0tDrGPokitQ">Grievance</a></li>
                            <li><a target="_blank" href="https://youtu.be/IkFHf9l5oGc">Department Pre-Scrutiny</a></li>
                            <li><a target="_blank" href="https://youtu.be/ohrsKIH580k">Department Approvals</a></li>
                            <li><a target="_blank" href="https://youtu.be/pJoYvCv9Zqw">Incentives</a></li>
                            <li><a target="_blank" href="https://youtu.be/wGancm_ThMw">Application Tracking </a>
                            </li>
                            <li><a target="_blank" href="https://youtu.be/GWg-FdS0mkY/">CFE Quessionaire </a>
                            </li>
                            <li><a target="_blank" href="https://youtu.be/-nTZLlxMxYE">CFE CAF </a></li>
                            <li><a target="_blank" href="https://youtu.be/ESkhqQDzUXA">CFO </a></li>
                            <li><a target="_blank" href="https://youtu.be/863_1J2eDgM">Raw Material </a></li>
                        </ul>
                    </li>
                    <li class="submenu2"><a href="#">Checklist</a>
                        <ul>
                            <li><a target="_blank" href="frmQuesstionniareRegNew.aspx">Show Questionnaire</a></li>
                            <li><a target="_blank" href="docs/revised_checkslip_01_09_15.doc">Description</a></li>
                            <li><a target="_blank" href="docs/CAF.pdf">Common Application Form</a></li>
                            <li><a target="_blank" href="docs/self certification.docx.doc">Self Certification</a></li>
                            <li><a target="_blank" href="docs/NoC from Gram Panchayat.docx">Grama Panchayat NOC</a></li>
                            <li><a target="_blank" href="docs/Combined Site Plan.pdf">Combined Site Plan</a></li>
                            <li><a target="_blank" href="docs/buildingplan.pdf">Detailed Building Plan</a></li>
                            <li><a target="_blank" href="docs/Mutation Document.pdf">Mutation Copy</a></li>
                            <li><a target="_blank" href="docs/CoI.pdf">Certificate of Incorporation</a></li>
                            <li><a target="_blank" href="docs/flowchart.pdf">Process Flow Chart</a></li>
                            <li><a target="_blank" href="docs/Additional Enclosures for HMDA.docx">HMDA Enclosures</a></li>
                            <li><a target="_blank" href="docs/C5.pdf">C5 for Red category</a></li>
                        </ul>
                    </li>
                    <li class="submenu7"><a href="#">Other Services</a>
                        <ul>
                            <li><a target="_blank" href="UI/TSiPASS/frmCFEcertificateProcess.aspx">TS-iPASS Verification</a></li>
                            <li><a target="_blank" href="UI/TSiPASS/RptInspectionRptDrillDown.aspx">Inspection</a></li>
                            <li><a target="_blank" href="UI/TSiPASS/GuestInsturction.aspx">Bank Loan</a></li>
                            <li><a target="_blank" href="docs/CFE and CFO Clearances_Revised.pdf">Approval Clearances</a></li>
                        </ul>
                    </li>
                    <li class="submenu5"><a href="#">Related Sites</a>
                        <ul>
                            <li><a target="_blank" href="http://industries.telangana.gov.in/">Industries</a></li>
                            <li><a target="_blank" href="http://tsiic.telangana.gov.in/">TSIIC</a></li>
                            <li><a target="_blank" href="http://www.hmda.gov.in/">HMDA </a></li>
                            <li><a target="_blank" href="http://www.tgct.gov.in/tgportal/">Commercial Taxes </a>
                            </li>
                            <li><a target="_blank" href="http://www.dtcp.telangana.gov.in/">DTCP </a></li>
                            <li><a target="_blank" href="http://tspcb.cgg.gov.in/default.aspx">Pollution Control
                                Board </a></li>
                            <li><a target="_blank" href="http://registration.telangana.gov.in/">Stamps & Registration
                            </a></li>
                            <li><a target="_blank" href="https://labour.telangana.gov.in/home.do">Labour Department</a></li>
                            <li><a target="_blank" href="http://udyogaadhaar.gov.in/UA/UdyogAadhar-New.aspx">Udyog
                                Aadhaar</a></li>
                        </ul>
                    </li>
                    <li class="submenu6"><a href="Contact.aspx">Contact Us</a></li>
                    <div class="clear_fix">
                    </div>
                </ul>
            </div>
            <div class="phone">
                <div class="p-left">
                    <a href="#"><span>
                        <img src="images/doc_17.png" /></span>7306 - 600 - 600</a>
                </div>
                <div class="p-right">
                    <a target="_blank" href="UI/TSiPASS/AddnewuserRegistration.aspx"><input type="submit" class="register" value="REGISTER"/></a>
                    <a target="_blank" href="Index.aspx"><input type="submit" class="login2" value="LOGIN" /></a>
                </div>
                <div class="clear_fix">
                </div>
            </div>
            <div class="clear_fix">
            </div>
        </div>
        <div class="banner">
            <div id="main" role="main">
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
                <a target="_blank" href="UI/TSiPASS/AddnewuserRegistration.aspx">
            <input type="submit" class="app" value="APPLY NOW" /></a>
        </div>
        <div class="latest2">
            <div class="latest2-news">
                <h2>
                    Latest News</h2>
                <div class="inner">
                    <div class="i-text">
                        <p>
                            Telangana clears industrial proposals With in the time</p>
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
                            Minister KTR Speech At Inauguration Of Apple Development Center</p>
                    </div>
                    <img src="images/latest_11.png" />
                </div>
            </div>
        </div>
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
        <div class="register5">
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
        </div>
        <div class="copyright">
            <p >
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

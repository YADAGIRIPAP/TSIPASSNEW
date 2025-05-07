<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebiPASS.aspx.cs" Inherits="WebiPASS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>:: TS-iPASS ::</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="responsive.css" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet'
        type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900,900italic'
        rel='stylesheet' type='text/css'/>

    <script src="jquery.min.js" type="text/javascript"></script>

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
            $(".submenu7").click(function() {
                $(".submenu7 ul").slideToggle();
            });

        });
    </script>

    <style>
        .style12
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="header-logo">
            <div class="logo">
                <img src="images/Ipass-2_08.png" />
            </div>
        </div>
        <div class="header-login">
            <!--<ul>
        	<li>
            	<div class="depart"><h4>DEPARTMENT</h4></div>
                <div class="txtfields">
                	<input type="text" class="username" placeholder="USER NAME" />
                    <input type="password" class="password" placeholder="PASSWORD" />
                    <input type="submit" class="login" value="Login" />  
                </div>
                <div class="clear_fix"></div>
            </li>
            <li>
            	<div class="depart"><h4>ENTERPRENEUR</h4></div>
                <div class="txtfields">
                	<input type="text" class="username" placeholder="USER NAME" />
                    <input type="password" class="password" placeholder="PASSWORD" />
                    <input type="submit" class="login" value="Login" />  
                </div>
                <div class="clear_fix"></div>
            </li>
        </ul>-->
            <ul class="loginbtns">
                <li><a target="_blank" href="UI/TSiPASS/AddnewuserRegistration.aspx">
                    <img src="images/register.jpg" /></a></li>
                <li><a target="_blank" href="Index.aspx">
                    <img src="images/login.jpg" /></a></li>
            </ul>
        </div>
        <div class="vip">
            <ul>
                <li>
                    <img src="images/Ipass-2_03.png" />
                    <h3>
                        Sri. K.Chandrashekar Rao</h3>
                    <p>
                        Hon'ble Chief Minister</p>
                </li>
                <li>
                    <img src="images/Ipass-2_05.png" />
                    <h3>
                        Sri. K.Taraka Rama Rao</h3>
                    <p>
                        Hon'ble Minister for Industries</p>
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
                <li class="submenu1"><a href="#">TS-iPASS</a>
                    <ul>
                        <li><a target="_blank" href="docs/TS-iPASS.pdf">ACT</a></li>
                        <li><a target="_blank" href="docs/TS-iPassupdated.pdf">Guidelines</a></li>
                        <li><a target="_blank" href="docs/TimeLines.pdf">Timelines / Clearances</a></li>
                        <li><a target="_blank" href="docs/CAF.pdf">Common Application Form</a></li>
                        <li><a target="_blank" href="UI/TSiPASS/AddnewuserRegistration.aspx">Raw Material Allocation</a></li>
                    </ul>
                </li>
                <li class="submenu3">
                <a href='#'>Video Manuals</a>
                    <ul>
                    <li><a target="_blank" href="https://youtu.be/02zJb5nwxGE">TS-iPASS Introduction </a></li>
                        <li><a target="_blank" href="docs/How to apply for clearances under TS.pdf">How to Apply</a></li>
                        <li><a target="_blank" href="https://youtu.be/jo9cXfBEKO0">User / Department Help Desk</a></li>
                        <li><a target="_blank" href="https://youtu.be/0tDrGPokitQ">Grievance</a></li>
                        <li><a target="_blank" href="https://youtu.be/IkFHf9l5oGc">Department Pre-Scrutiny</a></li>
                        <li><a target="_blank" href="https://youtu.be/ohrsKIH580k">Department Approvals</a></li>
                        <li><a target="_blank" href="https://youtu.be/pJoYvCv9Zqw">Incentives</a></li>
                        <li><a target="_blank" href="https://youtu.be/wGancm_ThMw">Application Tracking </a></li>
                        <li><a target="_blank" href="https://youtu.be/GWg-FdS0mkY/">CFE Quessionaire </a></li>
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
                <li class="submenu7"><a href="#">View</a>
                    <ul>
                        <li><a target="_blank" href="UI/TSiPASS/frmCFEcertificateProcess.aspx">TS-iPASS Verification</a></li>
                        <li><a target="_blank" href="UI/TSiPASS/RptInspectionRptDrillDown.aspx">Inspection</a></li>
                        
                    </ul>
                </li>
               
                <li class="submenu5"><a href="#">Related Websites</a>
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
                        <li><a target="_blank" href="http://udyogaadhaar.gov.in/UA/UdyogAadhar-New.aspx">Udyog Aadhaar</a></li>
                    </ul>
                </li>
                <li class="submenu6"><a href="Contact.aspx">Contact Us</a></li>
                <div class="clear_fix">
                </div>
            </ul>
        </div>
        <div class="phone">
            <p>
                Help Line 7306 - 600 - 600</p>
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
  	    	    <img src="images/ts-ipass1.jpg" />
  	    		</li>
            <li>
  	    	    <img src="images/ts-ipass2.jpg" />
  	    		</li>
  	    		<li>
  	    	    <img src="images/ts-ipass3.jpg" />
  	    		</li>
  	    		<%--<li>
  	    	    <img src="images/ts-ipass4.jpg" />
  	    		</li>--%>
 <li>
  	    	    <img src="images/ts-ipass5.jpg" />
  	    		</li>
          </ul>
        </div>
      </section>
        </div>
        <div class="posabs1">
            <div class="banner_right">
                <ul>
                    <li><a target="_blank" href="docs/CFE and CFO Clearances_Revised.pdf">
                        <div class="bimg">
                            <img src="images/Ipass-2_36.png" /></div>
                        <div class="btext">
                            <h1>
                                APPROVALS</h1>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </a></li>
                    <li><a href="#">
                        <div class="bimg">
                            <img src="images/Ipass-2_28.png" /></div>
                        <div class="btext">
                            <h1>
                              <a href="IncentiveRegistrationViewDocs.aspx" target="_blank"><span style="color:White;">INCENTIVES</span></a> </h1>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </a></li>
                    <li><a href="UI/TSiPASS/GuestGrievance.aspx" target="_blank">
                        <div class="bimg">
                            <img src="images/Ipass-2_30.png" /></div>
                        <div class="btext">
                            <h1>
                                GRIEVANCES</h1>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </a></li>
                    <li><a href="UI/TSiPASS/GuestInsturction.aspx" target="_blank">
                        <div class="bimg">
                            <img src="images/Ipass-2_28.png" /></div>
                        <div class="btext">
                            <h1>
                                BANK LOAN</h1>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </a></li>
                    
                    <li><a target="_blank" href="UI/TSiPASS/AddNewInspectionUser.aspx">
                        <div class="bimg">
                            <img src="images/Ipass-2_24.png" /></div>
                        <div class="btext">
                            <h1>
                                INSPECTION</h1>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </a></li>
                    <li><a target="_blank" href="http://udyogaadhaar.gov.in/UA/UdyogAadhar-New.aspx">
                        <div class="bimg">
                            <img src="images/Ipass-2_33.png" /></div>
                        <div class="btext">
                            <h1>
                             UDYOG AADHAAR</h1>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </a></li>
                    <div class="clear_fix">
                    </div>
                </ul>
            </div>
        </div>
        <div class="site_cotainer1">
            <div class="posabs">
                <h2>
                    GET TS-iPASS APPROVAL<br />
                    BY A SINGLE CLICK</h2>
                <a target="_blank" href="UI/TSiPASS/AddnewuserRegistration.aspx">
                    <input type="submit" value="APPLY NOW" class="apply" /></a>
            </div>
        </div>
    </div>
    <%-- <style>
            .tdStyle {
                padding-left: 2px;
                padding: 5px;
                /* text-align: left; */
                font-family: Gill Sans MT;
                font-size: 14px;
                color: #365285;
                font-weight: normal;
                border: 1px solid #D2D2D2;
            }
            .addrss{
                font-family: oxygen,sans-serif;
    font-weight: 600;
    line-height: 1.8;
    color:#c2235d;
            }
        </style>
    <style type="text/css">  
      #canvasMap {  
        height: 100%;  
        margin: 0px;  
        padding: 0px  
      }  
    </style> 
    
    <div><table width="100%" border="0" cellpadding="0" cellspacing="0" class="table2" style="background-color: #F5FBFF;
                            border-collapse: collapse;" align="center">
    <tr><td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="table2" style="background-color: #F5FBFF;
                            border-collapse: collapse;" align="center">
    <tr style="height:50px;font-family: oxygen,sans-serif;" ><td colspan="2" class="formheader" align="center"><span style="font-size: 16pt"><strong>Contact Details</strong>
                    </span></td></tr>
                    
                    <tr><td align="center" class="tdStyle addrss" width="40%"><br /><br /> Commissioner of Industries,<br />
Chirag Ali Lane, Abids,<br />
Hyderabad - 500 001<br />
Phone : 91-040-23441666<br />
Fax : 91-040-23441611<br />
Toll Free/Help Line : 1800-3070-3405<br />
Email: ipass.telangana@gmail.com<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;coi.inds@telangana.gov.in<br />
Website: www.industries.telangana.gov.in <br /><br /><br /></td>
                        <td width="60%"> <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1903.698851427584!2d78.47390027493215!3d17.39269159447075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb9762aa1776d1%3A0x6e9a38aa3f2258a3!2sCommissioner+of+Industries!5e0!3m2!1sen!2sin!4v1458362339583" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe> </td>
                    </tr>
    </table></td></tr>
    </table>
    </div>--%>
    <div class="news">
        <div class="latest_news">
            <p>
                LATEST NEWS</p>
        </div>
        <div class="marque">
            <marquee>
    <a href="#">Telangana State Hon'ble Chief Minister Sri. K.Chandrashekar Rao has launched Telangana Industrial Policies</a>
    <a href="#">Hon'ble Chief Minister Sri.K. Chandrasekar Rao has launched TS-iPASS</a></marquee>
        </div>
        <div class="clear_fix">
        </div>
    </div>
    <table style="width: 100%; background-color: #8F9092;">
        <tr style="width: 100%; background-color: #8F9092;">
            <th scope="row" style="padding: 5px; width: 50%; margin: 7px; background-color: #8F9092;
                font-family: arial, Helvetica, sans-serif; font-size: 12px; font-weight: 500;
                color: #FFFFFF;" align="left">
                © Copyrights and all rights reserved by TS-iPASS.The site only works in Google Chrome <a href="https://www.google.co.in/?gws_rd=ssl" rel="nofollow" style="color: #FFFFFF"
                    target="_blank">Click Here</a>
            </th>
            <th scope="row" style="padding: 7px; width: 50%; margin: 7px; background-color: #8F9092;
                font-family: arial, Helvetica, sans-serif; font-size: 12px; font-weight: 500;
                color: #FFFFFF;" align="right">
              <a href="/" alt="page hit counter" target="_blank" >
<embed src="http://s10.histats.com/9.swf"  flashvars="jver=1&acsid=3484776&domi=4"  quality="high"  width="110" height="60" name="9.swf"  align="middle" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" /></a>
<img  src="//sstatic1.histats.com/0.gif?3484776&101"  border="0" />
 &nbsp;&nbsp;
               
            </th>
        </tr>
        
        
     
        
        
        
      
    </table>
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

</body>
</html>

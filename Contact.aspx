<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebiPASS.aspx.cs" Inherits="WebiPASS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>I Pass</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="responsive.css" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet'
        type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900,900italic'
        rel='stylesheet' type='text/css' />
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
            $(".submenu7").click(function () {
                $(".submenu7 ul").slideToggle();
            });


        });
    </script>
    <script type="text/javascript">

        window.onload = window.history.forward(0);  //calling function on window onload

    </script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="">
    <meta name="author" content="" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/prettyPhoto.css" rel="stylesheet" />
    <link href="css/price-range.css" rel="stylesheet" />
    <link href="css/animate.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
    <link href="fonts/hevetica/helvetica_stylesheet.css" rel="stylesheet" />
    <link rel="shortcut icon" href="images/ico/favicon.ico" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png" />
    <link id="pagestyle" rel="stylesheet" type="text/css" href="css/main.css" />
    <style type="text/css">
        #decPanel
        {
            text-align: justify;
            float: left;
        }
        .formheader
        {
            background: #2D6EA5;
            color: #fff;
            font-weight: bold;
        }
        .tdStyleLbl
        {
            padding-left: 2px;
            padding: 5px;
            font-family: Gill Sans MT;
            font-size: 12px;
            color: Black;
            font-weight: normal;
            border: 1px solid #D2D2D2;
        }
        .tdStyleTxt
        {
            padding-left: 2px;
            padding: 5px;
            font-family: Gill Sans MT;
            font-size: 12px;
            color: #365285;
            font-weight: normal;
            border: 1px solid #D2D2D2;
        }
        .tdLbl
        {
            padding-left: 2px;
            padding: 5px;
            font-family: Gill Sans MT;
            font-size: 12px;
            color: #365285;
            font-weight: normal;
        }
        .tdStyleSubHdr
        {
            padding-left: 2px;
            padding: 5px;
            font-family: Gill Sans MT;
            font-size: 14px;
            color: #365285;
            font-weight: normal;
        }
    </style>
</head>
<body>
    <!--body wrapper-->
    <form method="post" action="Tsipass_ContactUs.aspx" id="form2" class="prl-form">
    <div class="aspNetHidden">
        <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
        <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEwMDUyNjYzMjhkZM8OYk585JlqMSesaN6sRuliJcxY+7v/ODOu9VoQrRqj" />
    </div>
    <script type="text/javascript">
        //<![CDATA[
        var theForm = document.forms['form2'];
        if (!theForm) {
            theForm = document.form2;
        }
        function __doPostBack(eventTarget, eventArgument) {
            if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                theForm.__EVENTTARGET.value = eventTarget;
                theForm.__EVENTARGUMENT.value = eventArgument;
                theForm.submit();
            }
        }
        //]]>
    </script>
    <script src="/WebResource.axd?d=exk2kxprBUtu8CU4Rdul6VMDMVGJD_deKMscQMQp6HTKuSJE_WvutaSbx9YlUWN5SFLJ6AO-tKgQmdwPurR-a94wlPDTC_3EvXRspd5Wmsc1&amp;t=635307537759850499"
        type="text/javascript"></script>
    <script src="/ScriptResource.axd?d=8076OZ3WoeGzPyV6oTeF9xo8t8tQAnwINh8GpDRwNXdIntUysNfzLE5LzS9aXBhsLeGktHnQJbYIZHRBA6QmO66ylvuBRp_5KNeubia_8SGab03qodz3kZx8wolvu28JpHl-8Rf7Wjx_5eOlfp0ptGZWwnMP-0H1Fs0owzSA459M1WFssTrsmAo6qERGtv7E0&amp;t=348b0da"
        type="text/javascript"></script>
    <script type="text/javascript">
        //<![CDATA[
        if (typeof (Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
        //]]>
    </script>
    <script src="/ScriptResource.axd?d=Mt9J5_Qsgd2V5X1MJWJcQR0rPHFVdMcXnVfX2I2rF2cg_3LmEWnmSIo2ujzXxRqzFH3JFAzV9ltp1y_dlMwZuvZtcVC1iPRvNgbLpoeRbfTFjMT-GkrBpFZa8AFF0P6m2dDUp6KC1GO62HEEH0g6Hall3ttoHIfa4TMeM_aD83SgEOak7iJhID6OiwmyK7DD0&amp;t=348b0da"
        type="text/javascript"></script>
    <div class="aspNetHidden">
        <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAJ5VJzkpqJXeakZoADvo+J6XTBk3peo9dnUN388zKIoXGRJjjHHuolcx/HFCJBuIxi3Dxg2h2n1Ooo83KyeE2oU" />
    </div>
    <script type="text/javascript">
        //<![CDATA[
        Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form2', [], [], [], 90, 'ctl00');
        //]]>
    </script>
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
                    <li class="submenu1"><a href="WebiPASS.aspx">Home</a>
                        <ul>
                            <li><a target="_blank" href="docs/TS-iPASS.pdf">ACT</a></li>
                            <li><a target="_blank" href="docs/TS-iPassupdated.pdf">Guidelines</a></li>
                            <li><a target="_blank" href="docs/TimeLines.pdf">Timelines / Clearances</a></li>
                            <li><a target="_blank" href="docs/CAF.pdf">Common Application Form</a></li>
                        </ul>
                    </li>
                    <li class="submenu3"><a target="_blank" href="docs/How to apply for clearances under TS.pdf">
                        How to Apply</a></li>
                    <li class="submenu2"><a href="#">Checklist</a>
                        <ul>
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
                    <li class="submenu7"><a href="#">Verification</a>
                        <ul>
                            <li class="submenu4"><a target="_blank" href="UI/TSiPASS/frmCFEcertificateProcess.aspx">
                                TS-iPASS Verification</a></li>
                            <li class="submenu4"><a target="_blank" href="UI/TSiPASS/RptInspectionRptDrillDown.aspx">
                                Inspection</a></li>
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
                            <li><a target="_blank" href="http://tslabour.cgg.gov.in/">Labour Department</a></li>
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
        <%--<div class="banner">
        <div id="main" role="main">
            <section class="slider">
        <div class="flexslider">
          <ul class="slides">
            <li>
  	    	    <img src="images/ts-ipass2.jpg" />
  	    		</li>
  	    		<li>
  	    	    <img src="images/ts-ipass3.jpg" />
  	    		</li>
  	    		<li>
  	    	    <img src="images/ts-ipass4.jpg" />
  	    		</li>
 
          </ul>
        </div>
      </section>
        </div>
        <div class="posabs1">
            <div class="banner_right">
                <ul>
                    <li><a href="#">
                        <div class="bimg">
                            <img src="images/Ipass-2_36.png" /></div>
                        <div class="btext">
                            <h1>
                                Approvals</h1>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </a></li>
                    <li><a href="#">
                        <div class="bimg">
                            <img src="images/Ipass-2_28.png" /></div>
                        <div class="btext">
                            <h1>
                                INCENTIVES</h1>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </a></li>
                    <li><a href="#">
                        <div class="bimg">
                            <img src="images/Ipass-2_30.png" /></div>
                        <div class="btext">
                            <h1>
                                GRIEVANCES</h1>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </a></li>
                    <li><a href="#">
                        <div class="bimg">
                            <img src="images/Ipass-2_24.png" /></div>
                        <div class="btext">
                            <h1>
                                MIS REPORTS</h1>
                        </div>
                        <div class="clear_fix">
                        </div>
                    </a></li>
                    <li><a href="#">
                        <div class="bimg">
                            <img src="images/Ipass-2_33.png" /></div>
                        <div class="btext">
                            <h1>
                                USER GUIDE</h1>
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
                    GET INDUSTRIAL PROJECT APPROVAL<br />
                    BY SINGLE CLICK</h2>
                <input type="submit" value="APPLY NOW" class="apply" />
            </div>
        </div>
    </div>--%>
        <style>
            .tdStyle
            {
                padding-left: 2px;
                padding: 5px; /* text-align: left; */
                font-family: Gill Sans MT;
                font-size: 14px;
                color: #365285;
                font-weight: normal;
                border: 1px solid #D2D2D2;
            }
            .addrss
            {
                font-family: oxygen,sans-serif;
                font-weight: 600;
                line-height: 1.8;
                padding-left: 50px;
                color: #c2235d;
            }
        </style>
        <style type="text/css">
            #canvasMap
            {
                height: 100%;
                margin: 0px;
                padding: 0px;
            }
        </style>
        <div>
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table2" style="background-color: #F5FBFF;
                border-collapse: collapse;" align="center">
                <tr>
                    <td>
                        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table2" style="background-color: #F5FBFF;
                            border-collapse: collapse;" align="center">
                            <tr style="height: 50px; font-family: oxygen,sans-serif;">
                                <td colspan="2" class="formheader" align="center">
                                    <span style="font-size: 16pt"><strong>Contact Details</strong> </span>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="tdStyle addrss" width="40%">
                                    <br />
                                    <br />
                                    Commissioner of Industries,<br />
                                    Chirag Ali Lane, Abids,<br />
                                    Hyderabad - 500 001<br />
                                    Phone : 91-040-23441666<br />
                                    Fax : 91-040-23441611<br />
                                    Help Line : 7306-600-600<br />
                                    Email: ipass.telangana@gmail.com<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;coi.inds@telangana.gov.in<br />
                                    Website: <a target="_blank" href="http://www.industries.telangana.gov.in/">www.industries.telangana.gov.in</a>
                                    <br />
                                    <br />
                                    <br />
                                </td>
                                <td width="60%">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1903.698851427584!2d78.47390027493215!3d17.39269159447075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb9762aa1776d1%3A0x6e9a38aa3f2258a3!2sCommissioner+of+Industries!5e0!3m2!1sen!2sin!4v1458362339583"
                                        width="600" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div class="news">
            <div class="latest_news">
                <p>
                    LATEST NEWS</p>
            </div>
            <div class="marque">
                <marquee>
    <a href="#">Telangana State Hon'ble Chief Minister Sri.K.Chandrashekar Rao has launched Telangana Industrial Policies</a>
    <a href="#">Hon'ble Chief Minister Sri.K.Chandrashekar Rao has launched TS-iPASS</a></marquee>
            </div>
            <div class="clear_fix">
            </div>
        </div>
        <div class="copyright">
            <div scope="row" style="padding-bottom: 10px; padding-right: 10px; padding-top: 10px;
                vertical-align: middle; background-color: #6DACFF; font-family: arial, Helvetica, sans-serif;
                font-size: 12px; font-weight: 500; color: #FFFFFF;" class="style12" align="left">
                © Copyrights and all rights reserved by TS-iPASS. Website Designed and Developed
                by <a href="http://www.fruxsoft.com/" rel="nofollow" style="color: #FFFFFF" target="_blank">
                    Commissionerate of Industries,TS-iPASS Cell</a></div>
            <div scope="row">
            </div>
        </div>
        <div>
            <div class="container">
                <div class="row">
                    <section id="primary1" class="page-with-sidebar with-right-sidebar" style="width: 1140px">
                            <h1><b><a href="docs/Officers for Grievance.pdf" target="_blank">Sectoral Nodal Officers</a>   </b></h1>
                                </section>
                </div>
                <div class="row">
                </div>
            </div>
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
    </body>
</html>

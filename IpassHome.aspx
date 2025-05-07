<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IpassHome.aspx.cs" Inherits="IpassHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>:: TS-iPASS ::</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximum-scale=1">
    <link href="js/bootstrap.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="col-xs-12 main-container">

                <div class="col-xs-12 header-container">
                    <div class="container">
                        <a href="javascript:void(0);" class="header-logo">
                            <img src="images/img-logo.jpg" alt="">
                        </a>
                        <div class="header-right">
                            <div class="header-kcr-title">
                                <i>
                                    <img src="images/img-kcr.jpg" alt="" id="imgcm" runat="server"></i>
                                <span>Sri.k. Chandrasekar Rao
				<small>Hon'ble Chief Minister</small>
                                </span>
                            </div>

                            <div class="header-kcr-title">
                                <i>
                                    <img src="images/img-ktr.jpg" alt="" id="imgitm" runat="server" /></i>
                                <span>Sri.K .Taraka Rama Rao
				<small>Hon'ble Minister for Industries
                </small>
                                </span>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>

                <!-- header -->
                <nav class="navbar navbar-default">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="javascript:void(0);">Home</a></li>
                                <li><a href="about.aspx">About us</a></li>
                                <li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Services</a>
                                    <ul class="dropdown-menu">
                                        <li><a target="_blank" href="UI/TSiPASS/frmCFEcertificateProcess.aspx">TS-iPASS Verification</a></li>
                                        <li><a target="_blank" href="UI/TSiPASS/AddNewInspectionUser.aspx">Inspection</a></li>
                                        <li><a target="_blank" href="IncentiveRegistrationViewDocs.aspx">Incentive Check</a></li>
                                        <%--<li><a target="_blank" href="UI/TSiPASS/AddNewInspectionUser.aspx">Bank Loan Application</a></li>--%>
                                        <li><a target="_blank" href="UI/TSiPASS/AddnewuserRegistration.aspx">Raw Material Allocation</a></li>
                                        <li><a target="_blank" href="UI/TSiPASS/GuestGrievance.aspx">Grievance Registration</a></li>
                                        <li><a target="_blank" href="UI/TSiPASS/GuestInsturction.aspx">Bank Loan Application</a></li>
                                        <li><a target="_blank" href="http://udyogaadhaar.gov.in/">Udyog Aadhaar</a></li>


                                        <%-- <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>--%>
                                    </ul>

                                </li>
                                <li><a href="links.aspx">Related documents</a></li>
                                <li><a href="Contacts.aspx">Contact us</a></li>
                            </ul>
                        </div>
                        <!--/.nav-collapse -->
                    </div>
                </nav>
                <!-- header ends -->

                <!-- banner -->
                <div id="mainSlider" class="carousel slide" data-ride="carousel">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox" id="ulslides" runat="server">
                        <%--  <div class="item active">
                    <img src="images/img-banner2.jpg" alt="jagruthi banner">
                </div>--%>

                        <%-- <div class="item">
                    <img src="images/img-banner.jpg" alt="jagruthi banner">
                </div>--%>

                        <%--<div class="item">
                    <img src="images/img-banner2.jpg" alt="jagruthi banner">
                </div>--%>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#mainSlider" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#mainSlider" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <!-- banner ends -->

                <section>
                    <div class="col-xs-12 latestnews-block" id="divNews" runat="server">
                        <div class="container position-rel">
                    <b>Lastest news:</b>
                    <marquee behavior="scroll" direction="left" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()">Your upward scrolling text goes here</marquee>
                </div>
                    </div>

                    <div class="col-xs-12 loginarea-block">
                        <div class="container">
                            <div class="getapprove-block">
                                <h3>Get industrial project approvals by a single click</h3>
                                <a href="IpassLogin.aspx" target="_blank">Login</a>
                                <a href="UI/TSiPASS/AddnewuserRegistration.aspx" target="_blank">Register</a>
                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="col-xs-12 body-content">
                            <h2>Quick links</h2>
                            <div class="col-xs-12 quicklinks-block">
                                <div class="col-xs-4 galleydiv">
                                    <a href="javascript:void(0);">
                                        <span class="block-categoryname">Photo gallery</span>
                                        <img src="images/img-gallery1.jpg" alt="" class="gallery-thumb">
                                       <%-- <span class="eventheading">Event title here</span>--%>
                                    </a>
                                </div>
                                <div class="col-xs-8 sm-links-block">
                                    <div class="col-xs-6 galleydiv">
                                        <a href="http://harithaharam.telangana.gov.in/">
                                            <span class="block-categoryname">AFFORESTATION</span>
                                            <img src="images/haritha-haram-logo.jpg" alt="">
                                            <span class="eventheading">Haritha haram</span>
                                        </a>
                                    </div>
                                    <div class="col-xs-6 galleydiv">
                                        <a href="http://www.telangana.gov.in/news/2016/05/06/harvest-rainwater">
                                            <span class="block-categoryname">Focus</span>
                                            <img src="images/WaterConservation.png" alt="">
                                            <span class="eventheading">Rain water harvesting</span>
                                        </a>
                                    </div>


                                    <div class="col-xs-6 galleydiv">
                                        <a href="http://missionkakatiya.cgg.gov.in/">
                                            <span class="block-categoryname">TANK RESTORATION</span>
                                            <img src="images/MissionKakatiya.jpg" alt="">
                                            <span class="eventheading">Mission Kakatiya</span>
                                        </a>
                                    </div>
                                    <div class="col-xs-6 galleydiv">
                                        <a href="http://www.it.telangana.gov.in/investor-info/it-policy/">
                                            <span class="block-categoryname">POLICY INITIATIVES</span>
                                            <img src="images/TelanganaITPolicy2016.png" alt="">
                                            <span class="eventheading">ICT Policy and Allied Policies</span>
                                        </a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
            </div>

            </section>
            <div class="col-xs-12 footer-container">
                <div class="container">
                    <div class="pull-left">
                        Copyright 2017 Government of Telangana. all rights reserved by Industries Chasing Cell.
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</html>

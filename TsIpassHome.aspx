<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TsIpassHome.aspx.cs" Inherits="TsIpassHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
   

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/carousel.css" rel="stylesheet">
    <link href="css/styleSheet.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body style="background-color:white">
    <form id="form1" runat="server" >
       
            <header >
                <div class="container" >
                    <div class="row" >
                        <div class="col-sm-7">
                            <img class="brand" src="images/F3_03.png">
                        </div>
                        <div class="col-sm-5 vip" >
                            <div class="row" >
                                <div class="thumbnail col-sm-6" style="background-color:white">
                                    <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/kcr.png">
                                    <div class="caption">
                                        <h3>Sri. K.Chandrasekhar Rao</h3>
                                        <p>Hon'ble Chief Minister</p>
                                    </div>
                                </div>
                                <div class="thumbnail col-sm-6" style="background-color:white">
                                    <img src="images/ktr.png">
                                    <div class="caption">
                                        <h3>Sri. K.Chandrasekhar Rao</h3>
                                        <p>Hon'ble Chief Minister</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <nav class="navbar navbar-default" role="navigation">
                <div class="container">
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">About Us</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Services <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">TS-iPASS Verification</a></li>
                                    <li><a href="#">Inspection</a></li>
                                    <li><a href="#">Incentive Check</a></li>
                                    <li><a href="#">Raw Material Allocation</a></li>
                                    <li><a href="#">Grievance Registration</a></li>
                                    <li><a href="#">Bank Loan Application</a></li>
                                    <li><a href="#">Udyog Aadhaar</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Related Departments</a></li>
                            <li><a href="#">Contact Us</a></li>

                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>

            <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
                <!-- Overlay -->
                <div class="overlay"></div>

                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#bs-carousel" data-slide-to="1"></li>
                    <li data-target="#bs-carousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item slides active">
                        <div class="slide-1"></div>
                        <!--
      <div class="hero">
        <hgroup>
            <h1>Telangana to host global investor summit in 2017</h1>        
            <h3>2,130 industrial proposals were approved after 10 months of launching TS-IPASS.</h3>
        </hgroup>
      </div>
-->
                    </div>
                    <div class="item slides">
                        <div class="slide-2"></div>
                        <!--
      <div class="hero">        
        <hgroup>
            <h1>Telangana to host global investor summit in 2017</h1>        
            <h3>2,130 industrial proposals were approved after 10 months of launching TS-IPASS.</h3>
        </hgroup>      
      </div>
-->
                    </div>
                </div>
            </div>

            <div class="container mar-top-15">
                <div class="row">
                    <div class="col-sm-4 news_updates">
                        <h3 class="widget-heading">News & Updates</h3>
                        <div class="bs-callout bs-callout-info" id="callout-alerts-no-default">
                            <h4>Telangana to host global investor summit in 2017</h4>
                            <p>2,130 industrial proposals were approved after 10 months of launching TS-IPASS.</p>
                        </div>

                        <div class="bs-callout bs-callout-info" id="Div1">
                            <h4>Telangana to host global investor summit in 2017</h4>
                            <p>2,130 industrial proposals were approved after 10 months of launching TS-IPASS.</p>
                        </div>

                        <div class="bs-callout bs-callout-info" id="Div2">
                            <h4>Telangana to host global investor summit in 2017</h4>
                            <p>2,130 industrial proposals were approved after 10 months of launching TS-IPASS.</p>
                        </div>

                        <div class="bs-callout bs-callout-info" id="Div3">
                            <h4>Telangana to host global investor summit in 2017</h4>
                            <p>2,130 industrial proposals were approved after 10 months of launching TS-IPASS.</p>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="well">
                                    <div role="form" >
                                        <h3 style="margin-top: 0px;">Login</h3>
                                        <div class="form-group" style="background-color:white">
                                            <input type="email" name="email" id="email" class="form-control" placeholder="User id">
                                        </div>
                                        <div class="form-group" style="background-color:white">
                                            <input type="password" name="password" id="password" class="form-control" placeholder="Password">
                                        </div>
                                        <span class="button-checkbox">
                                            <button type="button" class="btn" data-color="info">Remember Me</button>
                                            <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
                                            <a href="" class="btn btn-link pull-right">Forgot Password?</a>
                                        </span>
                                        <hr class="colorgraph">
                                        <div class="row">
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <input type="submit" class="btn btn-success btn-block" value="Sign In">
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <a href="" class="btn btn-primary btn-block">Register</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6 downloads">
                                <h3 class="widget-heading">Downloads</h3>
                                <div class="list-group" >
                                    <a href="#" class="list-group-item" style="background-color:white">
                                        <img src="images/pdf.png">
                                        TS-iPASS ACT</a>
                                    <a href="#" class="list-group-item" style="background-color:white">
                                        <img src="images/pdf.png">
                                        TS-iPASS Guidelines</a>
                                    <a href="#" class="list-group-item" style="background-color:white">
                                        <img src="images/pdf.png">
                                        Timelines / Clearances</a>
                                    <a href="#" class="list-group-item" style="background-color:white">
                                        <img src="images/pdf.png">
                                        How to Apply</a>
                                    <a href="#" class="list-group-item" style="background-color:white">
                                        <img src="images/pdf.png">
                                        Checklist for Application</a>
                                    <a href="#" class="list-group-item" style="background-color:white">
                                        <img src="images/pdf.png">
                                        Checklist for BUILDING PLAN Approval</a>
                                    <a href="#" class="list-group-item" style="background-color:white">
                                        <img src="images/pdf.png">
                                        Checklist for HMDA CLU</a>
                                    <a href="#" class="list-group-item" style="background-color:white">
                                        <img src="images/pdf.png">
                                        Videos Manuals online Applications</a>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
            <footer class="footer_bg">
                <div class="container">
                    <a href="#">Services</a>
                    <a href="#">Home</a>
                    <a href="#">About Us</a>
                    <a href="#">Related Departments</a>
                    <a href="#">Contact Us</a>
                    <span class="pull-right">© Copyrights and all rights reserved by Industries Chasing Cell</span>

                </div>
            </footer>
            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
            <script src="js/jquery.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
           <%-- <script src="js/bootstrap.min.js"></script>--%>
            <script src="Resource/Scripts/js/bootstrap.min.js"></script>
        
    </form>
</body>
</html>

﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProformaApplicantCleanerProductionSubsidy.aspx.cs" Inherits="UI_TSIPASS_ProformaApplicantCleanerProductionSubsidy" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="../../css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .leftalign {
            text-align: left;
        }

        .rightalign {
            text-align: right;
        }

        .floatleft {
            float: left;
        }

        body {
            background-color: #ffffff;
        }
    </style>
    <style type="text/css">
        .auto-style3 {
            text-align: justify;
        }

        .auto-style4 {
            text-align: left;
        }

        .auto-style5 {
            text-align: center;
        }

        .auto-style6 {
            text-decoration: underline;
        }
    </style>
    <script type="text/javascript">
        function myFunction() {
            document.getElementById("Div2").style.visibility = "hidden";
            window.print();
            document.getElementById("Div2").style.visibility = "visible";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="border: 3px solid #000000; text-align: center;">
            <div style="padding-top: 14px">
            </div>
            <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/telanganalogo.png" style="width: 75px; height: 75px;" alt="" /><br />
            <asp:Label Font-Bold="true" Font-Size="Large" ID="lblheadTPRIDE" runat="server">GOVERNMENT OF TELANGANA</asp:Label>
            <br />
            <asp:Label ID="lblCoiDipcHead" Font-Bold="true" Font-Size="Large" runat="server"
                Text="COMMISSIONERATE OF INDUSTRIES"></asp:Label>::<asp:Label ID="lblCoiDipcDist" Font-Bold="true" Font-Size="Large" runat="server" Text="HYDERABAD"></asp:Label>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align: left">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <span style="float: left;"><span style="float: left;"><b>To,</b></span><br />
                            <asp:Label ID="lblEnterpreneurDetails1" runat="server" Font-Bold="true"></asp:Label><br />
                        </span>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 14px; font-weight: bold">
                <span class="auto-style6"><u>Lr. No.&nbsp;<asp:Label ID="lblLetterNo" runat="server"></asp:Label></u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>Dated:&nbsp;<asp:Label
                    ID="lblLetterDate" runat="server"></asp:Label>.</u></span>
            </div>
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-15">
                <span class="floatleft" style="font-weight: bold">Sir / Madam,</span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  style="padding-top: 14px">
                <span class="floatleft auto-style3">Sub :- &nbsp;&nbsp;<asp:Label ID="lblTIdeaTPrideIIPP1" runat="server" Font-Bold="true"></asp:Label>&nbsp;-
                                               Sanction of Reimbursement of Cleaner Production measures to 
                                                <asp:Label ID="lblEnterpreneurDetails2" Font-Bold="true" runat="server"></asp:Label>
                    , - Intimation – Reg.
                </span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  style="padding-top: 14px">
                <span class="floatleft auto-style3">Ref :-  
                      <br />
                    1.
                                                <asp:Label ID="lblScheme_GO_Details" Font-Bold="true" runat="server" Visible="true"></asp:Label><br />
                    2. The General Manager,
                                                District Industries Centre,
                                                <asp:Label ID="lblDistrict" runat="server" Font-Bold="true"></asp:Label><br />
                    3. Minutes of the
                                                <asp:Label ID="lblSLCorDIPC" runat="server" Text="SLC"></asp:Label>&nbsp;Number
                                                <asp:Label ID="lblSLCNo" runat="server" Font-Bold="true"></asp:Label>&nbsp; meeting held on&nbsp;
                                                <asp:Label ID="lblSLCDate" runat="server" Font-Bold="true"></asp:Label>

                </span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 14px">
                <b>*&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;* </b>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 14px">
                <span class="floatleft auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;With reference to the subject cited, we are pleased to inform you that you have been sanctioned the Reimbursement of Cleaner Production of measures Rs. <asp:Label ID="lblStampDutyAmount" runat="server" Font-Bold="true"></asp:Label>
                                                    &nbsp;(<asp:Label ID="lblStampDutyAmountDesc" runat="server" Font-Bold="true"></asp:Label>)&nbsp;to the captioned under the scheme of&nbsp;<asp:Label ID="lblTIdeaTPrideIIPP2" runat="server" Font-Bold="true"></asp:Label>&nbsp; vide reference 3rd cited.
                </span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="tr11998" runat="server" visible="false" style="padding-top: 14px">
                <span class="floatleft auto-style3"><b>
                    <asp:Label ID="lbltr11998A" runat="server"></asp:Label>
                </b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lbltr11998B" runat="server"></asp:Label>
                </span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 14px">
                <span class="floatleft auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This amount will be released as and when your unit’s turn comes as per seriatim for disbursement of available funds.
                </span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 25px; padding-bottom: 10px; text-align:left">
                <span class=" pull-right"><span style="font-weight: bold">Yours faithfully,</span><br />
                    <asp:Label ID="lblletterFromADorGM" runat="server" Text="Additional Director"></asp:Label><br />
                    <asp:Label ID="lblAddlDir_Name" runat="server" Text="Additional Director Name"></asp:Label>
                </span>

            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="tr1" runat="server" visible="false">
                <span class="floatleft auto-style3">Copy to the General Manager, District Industries Centre,&nbsp;<asp:Label ID="lblDistrict1" runat="server" Font-Bold="true"></asp:Label>
                                        &nbsp;District for information. Copy to the Branch Manager,
                                        &nbsp;<asp:Label ID="lblBankDtls" runat="server"></asp:Label>
                                        &nbsp;Branch, for  information.
                </span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 14px">
                <span class="floatleft auto-style3">
                    <b>Note:</b> Note: 27/&nbsp;<asp:Label ID="lblTIdeaTPrideIIPP3" runat="server" Font-Bold="true"></asp:Label>&nbsp;– Furnishing of Statement of Accounts / Information by eligible Industrial Enterprises. Industrial units, which obtain incentives under the scheme, shall furnish certified copy of audited accounts including Balance Sheet before 30th June of the succeeding year to the disbursing agencies. Such statement should be furnished for a period of minimum six (6) years.  Further, industrial units should also furnish details of production, sales employment, etc., in the proforma prescribed tot eh General Manager, District Industries Centre concerned as an Annual Return before 30th June of the succeeding year and obtain acknowledgement thereof”.  However, Enterprises which are released capital subsidy Rs. 100000 may furnish only the Annual Performance Report in the format prescribed to the General Manager, DIC concerned as an Annual Return before 30th June of the succeeding year and obtain acknowledgement thereof for a period of six (6) years after going into Commercial Production
                </span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="trincentiveIDtracker" runat="server" visible="false" style="padding-top: 14px">
                <br />
                <span class="floatleft auto-style3">This is computer generated document it can be verified online by using Unique Id :  <asp:Label ID="lblIncentiVeID" Font-Bold="true" runat="server"></asp:Label> in the Url: https://ipass.telangana.gov.in/UI/TSiPASS/frmIntimationIncentives.aspx
                </span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 14px; font-weight:bold">
               *&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;*
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  style="padding-top: 14px">
                <asp:Label ID="lblFooter" runat="server" Text="Chirag Ali Lane, Abids, Hyderabad – 500 001, Phone No.040-23441600 website: http://www.industries.telangana.gov.in"></asp:Label>
            </div>
        </div>
        <div class="container" id="Div2" runat="server" style="text-align: center; vertical-align: bottom">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 19px; padding-bottom: 19px">
                <input id="Button2" type="button" value="Print" class="btn btn-warning btn-lg" onclick="javascript: myFunction()" />
            </div>
        </div>
    </form>
</body>
</html>

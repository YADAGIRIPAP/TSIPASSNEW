<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProformaApplicantSalesTaxSubsidy.aspx.cs"
    Inherits="UI_TSiPASS_ProformaApplicantSalesTaxSubsidy" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../../css/bootstrap.min.css" rel="stylesheet" />
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
            <div style="padding-top: 10px">
            </div>
            <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/telanganalogo.png" style="width: 75px; height: 75px;" alt="" /><br />
          <asp:Label Font-Bold="true" Font-Size="Large" ID="lblheadTPRIDE" runat="server">GOVERNMENT OF TELANGANA</asp:Label><br />
            <asp:Label ID="lblCoiDipcHead" Font-Bold="true" Font-Size="Large" runat="server"
                Text="COMMISSIONERATE OF INDUSTRIES"></asp:Label>::<asp:Label ID="lblCoiDipcDist" Font-Bold="true" Font-Size="Large" runat="server" Text="HYDERABAD"></asp:Label>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align: left">
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12" style="text-align: left;">
                        <br />
                        <span style="float: left;"><span style="float: left;"><b>To,</b></span>
                            <br />
                            <asp:Label ID="lblEnterpreneurDetails1" Font-Bold="true" runat="server"></asp:Label>,<br />
                        </span>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12"></div>
                    <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  style="padding-top: 6px; font-weight: bold">
                <span class="auto-style6"><u>Lr. No.&nbsp;<asp:Label ID="lblLetterNo" runat="server"></asp:Label>&nbsp;Dated:&nbsp;<asp:Label
                    ID="lblLetterDate" runat="server"></asp:Label>.</u></span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-15">
                <span class="floatleft" style="font-weight: bold">Sir / Madam,</span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  style="padding-top: 6px">
                <span class="floatleft auto-style3">Sub :- 
                    <asp:Label ID="lblTIdeaTPrideIIPP1" runat="server" Font-Bold="true"></asp:Label>&nbsp;
                                                -Sanction of Reimbursement of Sales Tax for the&nbsp;Period of&nbsp;
                                                    <asp:Label ID="lblfinyearsub" Font-Bold="true" runat="server"> </asp:Label>
                    to
                                                <asp:Label ID="lblEnterpreneurDetails2" Font-Bold="true" runat="server"></asp:Label>, District -
                                                Intimation � Reg.
                </span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  style="padding-top: 6px">
                <span class="floatleft auto-style3">Ref :-  
                      <br />
                    1.<asp:Label ID="lblScheme_GO_Details" runat="server" Visible="true" Font-Bold="true"></asp:Label><br />
                    
                    2. <span>Lr. No.&nbsp;<asp:Label ID="lblLetterNomngr" runat="server" Font-Bold="true"></asp:Label>,&nbsp;Dated:&nbsp;<asp:Label ID="lblLetterDatemngr" runat="server" Font-Bold="true"></asp:Label>.</span>
                    The General Manager, District Industries Centre,
                                                <asp:Label ID="lblDistrict" Font-Bold="true" runat="server"></asp:Label>.<br />
                    3. Minutes of the
                                                <asp:Label ID="lblSLCText" Font-Bold="true" runat="server"></asp:Label>
                    &nbsp;
                                                <asp:Label ID="lblSLCNo" runat="server" Font-Bold="true"></asp:Label>
                    &nbsp;
                                                 meeting held on
                                                <asp:Label ID="lblSLCDate" runat="server" Font-Bold="true"></asp:Label>
                </span>
            </div>
           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 2px">
                <b>******* </b>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  style="padding-top: 2px">
                <span class="floatleft auto-style3">With reference
                                                to the subject cited, we are pleased to inform you that you have been sanctioned
                                                the Reimbursement of Sales Tax for the year of &nbsp;<span style="font-weight: bold"><asp:Label
                                                    ID="lbl1stOR2ndHalfYearFinYearFromTo" runat="server"></asp:Label></span>&nbsp;
                                                Rs.
                                                <asp:Label ID="lblSanctionedAmount" runat="server" Font-Bold="true"></asp:Label>
                    &nbsp;(<asp:Label ID="lblSanctionedAmtDesc" runat="server" Font-Bold="true"></asp:Label>) to the
                                                captioned unit under the scheme of &nbsp;&nbsp;<asp:Label ID="lblTIdeaTPrideIIPP2"
                                                    runat="server" Font-Bold="true"></asp:Label>&nbsp; vide reference 3rd cited.&nbsp;
                                                <asp:Label ID="lblspecialtext" runat="server" Visible="false" Text="Subject to Confirmation of tax paid particulars are by CT Department."> </asp:Label>
                </span>
            </div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 leftalign" style="padding-top: 11px" id="approved1" runat="server" visible="true">
                <b>The Approved Project cost of the unit is as follows:-</b>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 leftalign" style="padding-top: 11px" id="approved2" runat="server" visible="true">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Land (in Rs.)
                            </th>
                            <th>Building (in Rs.)
                            </th>
                            <th>Plant and Machinery (in Rs.)
                            </th>
                            <th>Total (in Rs.)
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="lblLandCost" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblBuildingCost" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblPlantMachCost" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblTotal" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"  style="padding-top: 6px">
               <span class="floatleft auto-style3">  This amount will be released as and when your unit�s turn comes as per seriatim
                                    for disbursement of available funds.  </span>
            </div>
            <%--   <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="divWelspun" runat="server" visible="false" style="padding-top: 14px">
            <span class="floatleft auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Joint scrutiny and verification <b><asp:HyperLink ID="anchortagFbkForm" Target="_blank" runat="server" Text="Report" ForeColor="Black" NavigateUrl="~/images/ST Welspun Report.pdf"></asp:HyperLink></b>  </span>
        </div>--%>
            <%--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                <span class=" pull-right">Yours faithfully,</span><br />

                <span id="addlDire" runat="server" visible="false" class=" pull-right">
                    <asp:Label ID="lblAddlDir_Name" Visible="false" runat="server" Text="Additional Director Name"></asp:Label>
                </span>
                <span class="pull-right">
                    <asp:Label ID="lbldesignation" runat="server"></asp:Label>

                    <asp:Label ID="lblDistrict2" runat="server"></asp:Label></span>
            </div>--%>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 10px; text-align: left">
                <span class=" pull-right"><span style="font-weight: bold">Yours faithfully,</span><br />
                    <span id="addlDire" runat="server" class="pull-right">
                        <asp:Label ID="lblAddlDir_Name" runat="server" Text="Additional Director Name"></asp:Label><br />
                    </span>
                </span>
                <%-- <span class="pull-right">Additional Director<br />
                        O/o. Commissioner of Industries</span></span>--%>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 6px">
                <span class="floatleft auto-style3">Copy to the General Manager, District Industries Centre,&nbsp;<asp:Label ID="lblDistrict1"
                    runat="server" Font-Bold="true"></asp:Label>
                   <%-- &nbsp;District for information. Copy to the Branch Manager,&nbsp;<asp:Label ID="lblBankDtls"
                        runat="server"></asp:Label>&nbsp; Branch, for information.--%>
                </span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 6px">
                <span class="floatleft auto-style3">
                    <b>Note:</b> 27/ &nbsp;<asp:Label ID="lblTIdeaTPrideIIPP3" runat="server" Font-Bold="true"></asp:Label>&nbsp;
                                    � Furnishing of Statement of Accounts / Information by eligible Industrial Enterprises.
                                    Industrial units, which obtain incentives under the scheme, shall furnish certified
                                    copy of audited accounts including Balance Sheet before 30th June of the succeeding
                                    year to the disbursing agencies. Such statement should be furnished for a period
                                    of minimum six (6) years. Further, industrial units should also furnish details
                                    of production, sales employment, etc., in the proforma prescribed to the General
                                    Manager, District Industries Centre concerned as an Annual Return before 30th June
                                    of the succeeding year and obtain acknowledgement thereof�. However, Enterprises
                                    which are released capital subsidy Rs. 100000 may furnish only the Annual Performance
                                    Report in the format prescribed to the General Manager, DIC concerned as an Annual
                                    Return before 30th June of the succeeding year and obtain acknowledgement thereof
                                    for a period of six (6) years after going into Commercial Production
                </span>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 6px">
                <span class="floatleft auto-style3">This is computer generated document it can be verified online by using Unique Id
                                    :
                                    <asp:Label ID="lblIncentiVeID" Font-Bold="true" runat="server"></asp:Label>
                    in the Url: https://ipass.telangana.gov.in/UI/TSiPASS/frmIntimationIncentives.aspx
                </span>
            </div>
             <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 6px; font-weight: bold">
                *&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;*
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 6px">
               <span class="floatleft auto-style3">  Chirag Ali Lane, Abids, Hyderabad � 500 001, Phone No.040-23441600 website: http://www.industries.telangana.gov.in</span>
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

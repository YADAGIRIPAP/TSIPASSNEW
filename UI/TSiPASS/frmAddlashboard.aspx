﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true"
    CodeFile="frmAddlashboard.aspx.cs" Inherits="UI_TSiPASS_frmAddlashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../../Resource/Scripts/js/validations.js" type="text/javascript"></script>
    <link href="assets/css/basic.css" rel="stylesheet" />
    <style type="text/css">
        .overlay {
            position: fixed;
            z-index: 999;
            height: 100%;
            width: 100%;
            top: 112px;
            background-color: Gray;
            filter: alpha(opacity=60);
            opacity: 0.9;
            -moz-opacity: 0.9;
        }

        .style10 {
            width: 9px;
            height: 28px;
        }

        .style11 {
            width: 210px;
            height: 28px;
        }

        .style12 {
            width: 212px;
            height: 28px;
        }

        .style13 {
            width: 210px;
            height: 21px;
        }

        .style14 {
            width: 9px;
            height: 21px;
        }

        .style15 {
            height: 21px;
        }

        .style16 {
            width: 212px;
            height: 21px;
        }

        .style17 {
            height: 28px;
        }

        .page-head-linenew {
            font-size: 2px;
            text-transform: uppercase;
            color: #000;
            font-weight: 800;
            padding-bottom: 2px;
            border-bottom: 4px solid #00CA79;
            margin-bottom: 35px;
        }

        .page-subhead-linenew {
            font-size: 14px;
            padding-top: 5px;
            padding-bottom: 20px;
            font-style: italic;
            margin-bottom: 30px;
            border-bottom: 1px dashed #00CA79;
        }
    </style>
    <script type="text/javascript" language="javascript">

        function OpenPopup() {

            window.open("Lookups/LookupBDC.aspx", "List", "scrollbars=yes,resizable=yes,width=1000,height=650;display = block;position=absolute");

            return false;
        }
    </script>
    <script type="text/javascript">
        function sumPropBulk() {
            var txtFirstNumberValue = document.getElementById('txtProsPetorlClassA').value;
            var txtSecondNumberValue = document.getElementById('txtPropPetolClassB').value;
            var txtThirdNumberValue = document.getElementById('txtPropPetolClassB').value;
            var result = parseInt(txtFirstNumberValue) + parseInt(txtSecondNumberValue) + parseInt(txtThirdNumberValue);
            if (!isNaN(result)) {
                document.getElementById('txtPropPetrolTotal').value = result;
            }
        }
    </script>
    <div align="center">
        <div class="row" align="center">
            <div class="col-lg-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Additional Director&#39;s Dashboard</h3>
                    </div>
                    <div class="panel-body">
                        <table align="center" cellpadding="10" cellspacing="5" style="width: 100%">
                            <tr>
                                <td style="padding: 5px; margin: 5px">
                                    <div class="panel panel-default">
                                        <div class="panel-body" align="center">
                                            <table cellpadding="3" cellspacing="5" style="width: 100%">
                                                <tr>
                                                    <td style="width: 395px" valign="top">
                                                        <div class="list-group">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Incentive (Application
                                                                Stage)</b> </a><a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=9&SVCStatus=PRESVC"
                                                                    class="list-group-item"><span class="badge">
                                                                        <asp:Label ID="lblNOofapplications" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i><b>No of Applications Received</b> </a><a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Scrutiny Pending </b></a><a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=1&SVCStatus=PRESVC"
                                                                            class="list-group-item"><span class="badge">
                                                                                <asp:Label ID="lblPreSVC" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Within 2 Days</a> <a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=8&SVCStatus=PRESVC"
                                                                                    class="list-group-item"><span class="badge" style="background-color: #d9534f;">
                                                                                        <asp:Label ID="lblpscbeyond" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Beyond 2 Days</a>
                                                            <a href="FrmSendalltoSVC.aspx?Stg=20&SVCStatus=PRESVC" class="list-group-item">
                                                                <span class="badge">
                                                                    <asp:Label ID="Label29" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Send All to SVC</a>
                                                            <a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=111&SVCStatus=PRESVC" class="list-group-item">
                                                                <span class="badge">
                                                                    <asp:Label ID="LBLCOMM_RET" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i><b style="color: red">COMMISSIONER RETURNED APPLICATIONS</b></a>
                                                            <%--sowjanya--%>
                                                            <%-- <a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=75&SVCStatus=PRESVC" class="list-group-item">
                                                                <span class="badge" style="background-color: orange;">
                                                                    <asp:Label ID="lblDeptRetnd" runat="server"></asp:Label></span>
                                                                <i class="fa fa-fw fa-calendar"></i>Department Returned Applications-SVC</a>--%>
                                                            <%--sowjanya--%>

                                                            <a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=21&SVCStatus=PRESVC"
                                                                class="list-group-item"><span class="badge">
                                                                    <asp:Label ID="lblPreSVCSSC" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>SSC Inspection Within 2 Days</a>
                                                            <a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=22&SVCStatus=PRESVC"
                                                                class="list-group-item"><span class="badge" style="background-color: #d9534f;">
                                                                    <asp:Label ID="lblpscbeyondSSC" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>SSC Inspection Beyond 2 Days</a> <a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=23&SVCStatus=PRESVC"
                                                                        class="list-group-item"><span class="badge" style="background-color: #d9534f;">
                                                                            <asp:Label ID="lblsscinspectionreportupload" runat="server"></asp:Label></span>
                                                                        <i class="fa fa-fw fa-calendar"></i>SSC Inspection Report to be Uploaded</a>
                                                            <a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=24&SVCStatus=PRESVC"
                                                                class="list-group-item"><span class="badge" style="background-color: #d9534f;">
                                                                    <asp:Label ID="lblsscinspectionreportuploadCOMP" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>SSC Inspection Report Uploaded</a>
                                                        </div>
                                                        <div class="list-group">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Scrutiny Completed &
                                                                Forwarded to SVC</b></a> <a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=10&SVCStatus=PRESVC"
                                                                    class="list-group-item"><span class="badge">
                                                                        <asp:Label ID="lblpsccomwithin" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Within 2 Days</a> <a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=11&SVCStatus=PRESVC"
                                                                            class="list-group-item"><span class="badge" style="background-color: #d9534f;">
                                                                                <asp:Label ID="lblpsccombeyond" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Beyond 2 Days</a> <a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=82&SVCStatus=PRESVC"
                                                                                    class="list-group-item"><span class="badge">
                                                                                        <asp:Label ID="lblrej" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Rejected Applications </a>
                                                        </div>
                                                    </td>
                                                    <td style="width: 30px"></td>
                                                    <td style="width: 395px" valign="top">
                                                        <div class="list-group" style="vertical-align: top">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Queries</b></a> <a
                                                                href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=54&SVCStatus=PRESVC"
                                                                class="list-group-item"><span class="badge">
                                                                    <asp:Label ID="Label19" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Queries Yet to Respond </a><a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=83&SVCStatus=PRESVC"
                                                                        class="list-group-item"><span class="badge">
                                                                            <asp:Label ID="Label20" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Queries Responded - Within</a> <a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=84&SVCStatus=PRESVC"
                                                                                class="list-group-item"><span class="badge" style="background-color: #d9534f;">
                                                                                    <asp:Label ID="Label21" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Queries Responded - Beyond</a> <a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=55&SVCStatus=PRESVC"
                                                                                        class="list-group-item"><span class="badge">
                                                                                            <asp:Label ID="Label22" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Total Queries Responded </a>
                                                            <%-- <a href="IncentiveStatusInspectionUploadDetailsnew.aspx?Stg=56"
                                                                                class="list-group-item"><span class="badge">
                                                                                    <asp:Label ID="Label7" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar">
                                                                                    </i>Total Queries Raised </a>--%>
                                                        </div>
                                                        <div class="list-group" style="vertical-align: top">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Abeyance Applications</b></a>
                                                            <a href="IncentiveStatusInspectionUploadDetailsAddlView.aspx?Stg=85&SVCStatus=PRESVC"
                                                                class="list-group-item"><span class="badge">
                                                                    <asp:Label ID="Label23" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Total Abeyance Applications </a>
                                                        </div>
                                                        <div class="list-group" style="vertical-align: top">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>GM's Explanation</b></a>
                                                            <a href="frmGMDelayReasonReport.aspx?" class="list-group-item"><span class="badge">
                                                                <asp:Label ID="Label32" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>GM's Explanation Details</a>
                                                        </div>
                                                        <div class="list-group" style="vertical-align: top">
                                                            <a href="IncentiveApplicationsSVCList_COMMISSIONER.aspx?Stg=1"
                                                                class="list-group-item"><span class="badge">
                                                                    <asp:Label ID="lblCommPending" runat="server"></asp:Label></span> <b>Application Pending at Commissioner</b></a>
                                                        </div>







                                                        <div class="list-group" style="vertical-align: top">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>SLC</b></a>

                                                            <a href="CheckVerifyCOI.aspx?Type=SLC&STATUS=TOBEPROCESSED"
                                                                class="list-group-item"><span class="badge" style="background-color: #d9534f;">
                                                                    <asp:Label ID="Label35" runat="server"></asp:Label></span>
                                                                <i class="fa fa-fw fa-calendar"></i>To be Processed by SLC</a>

                                                            <a href="CheckVerifyCOI.aspx?Type=SLC&STATUS=PROCESSED"
                                                                class="list-group-item"><span class="badge" style="background-color: #d9534f;">
                                                                    <asp:Label ID="Label39" runat="server"></asp:Label></span>
                                                                <i class="fa fa-fw fa-calendar"></i>Processed by SLC</a>
                                                        </div>


                                                        <div class="list-group" style="vertical-align: top">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>DIPC</b></a>

                                                            <a href="CheckVerifyCOI.aspx?Type=DIPC&STATUS=TOBEPROCESSED"
                                                                class="list-group-item"><span class="badge" style="background-color: #d9534f;">
                                                                    <asp:Label ID="Label40" runat="server"></asp:Label></span>
                                                                <i class="fa fa-fw fa-calendar"></i>To be Processed by DIPC</a>

                                                            <a href="CheckVerifyCOI.aspx?Type=DIPC&STATUS=PROCESSED"
                                                                class="list-group-item"><span class="badge" style="background-color: #d9534f;">
                                                                    <asp:Label ID="Label41" runat="server"></asp:Label></span>
                                                                <i class="fa fa-fw fa-calendar"></i>Processed by DIPC</a>

                                                        </div>







                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td colspan="3" style="height: 5px">
                                                        <div>
                                                            <h1 class="page-head-linenew" align="left" style="font-size: smaller"></h1>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 395px" valign="top">
                                                        <div class="list-group">
                                                            <a class="list-group-item" href="#"><i class="fa fa-fw fa-check"></i><b>Referred to
                                                                SVC (SVC Dashboard)</b> </a><a href="frmSVCDashBoardfinalPrint.aspx?Stage=1" class="list-group-item">
                                                                    <span class="badge">
                                                                        <asp:Label ID="lblsvcrecved" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i><b>No of Applications Received</b> </a><a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Generate Agenda</b></a> <a class="list-group-item" href="frmSVCDashBoard.aspx?Stage=1">
                                                                            <span class="badge">
                                                                                <asp:Label ID="lblsvcwithin" runat="server"></asp:Label>
                                                                            </span><i class="fa fa-fw fa-calendar"></i>Within 3 Days</a> <a class="list-group-item"
                                                                                href="frmSVCDashBoard.aspx?Stage=2"><span class="badge" style="background-color: #d9534f;">
                                                                                    <asp:Label ID="lblsvcbeyond" runat="server"></asp:Label>
                                                                                </span><i class="fa fa-fw fa-calendar"></i>Beyond 3 Days</a>

                                                            <%--sowjanya frmDepartment.aspx--%>
                                                            <a href="Departmentwiseapprovalstatus.aspx" class="list-group-item">
                                                                <%-- <span class="badge" style="background-color: green;">
                                                                    <asp:Label ID="lblDeptprocessed" runat="server" Visible="false"></asp:Label></span>--%>
                                                                <i class="fa fa-fw fa-calendar"></i>Departments Processed Applications - SVC </a>
                                                            <%-- sowjanya--%>

                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Upload SVC Proceedings</b></a>
                                                            <a class="list-group-item" href="frmSVCDashBoardfinal.aspx?Stage=6"><span class="badge">
                                                                <asp:Label ID="lbluploadwithin" runat="server"></asp:Label>
                                                            </span><i class="fa fa-fw fa-calendar"></i>Within 3 Days</a> <a class="list-group-item"
                                                                href="frmSVCDashBoardfinal.aspx?Stage=7"><span class="badge" style="background-color: #d9534f;">
                                                                    <asp:Label ID="lbluploadBeyond" runat="server"></asp:Label>
                                                                </span><i class="fa fa-fw fa-calendar"></i>Beyond 3 Days</a>
                                                        </div>
                                                    </td>
                                                    <td style="width: 30px"></td>
                                                    <td style="width: 395px" valign="top">
                                                        <div class="list-group">
                                                            <a class="list-group-item" href="frmSVCDashBoardfinalPrint.aspx?Stage=2">
                                                                <%-- <span class="badge" >
                                                              <asp:Label ID="Label18" runat="server"></asp:Label>
                                                            </span>--%><i class="fa fa-fw fa-calendar"></i>Print SVC Agenda </a><a class="list-group-item">
                                                                <i class="fa fa-fw fa-check"></i><b>Uploaded SVC Proceedings (Completed)</b></a>
                                                            <a class="list-group-item" href="frmSVCDashBoardfinalPrint.aspx?Stage=3"><span class="badge">
                                                                <asp:Label ID="Label11" runat="server"></asp:Label>
                                                            </span><i class="fa fa-fw fa-calendar"></i>Within 3 Days</a> <a class="list-group-item"
                                                                href="frmSVCDashBoardfinalPrint.aspx?Stage=4"><span class="badge" style="background-color: #d9534f;">
                                                                    <asp:Label ID="Label12" runat="server"></asp:Label>
                                                                </span><i class="fa fa-fw fa-calendar"></i>Beyond 3 Days</a> <a class="list-group-item"
                                                                    href="frmSVCDashBoardfinalPrint.aspx?Stage=5"><span class="badge" style="background-color: #d9534f;">
                                                                        <asp:Label ID="Label15" runat="server"></asp:Label>
                                                                    </span><i class="fa fa-fw fa-calendar"></i>Rejected</a> <a class="list-group-item"
                                                                        href="frmSVCDashBoardfinalPrint.aspx?Stage=10"><span class="badge">
                                                                            <asp:Label ID="Label28" runat="server"></asp:Label>
                                                                        </span><i class="fa fa-fw fa-calendar"></i>Total</a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3" style="height: 5px">
                                                        <div>
                                                            <h1 class="page-head-linenew" align="left" style="font-size: smaller"></h1>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 395px" valign="top">
                                                        <div class="list-group">
                                                            <a class="list-group-item" href="#"><i class="fa fa-fw fa-check"></i><b>Referred to
                                                                SLC (SLC Dashboard)</b> </a><a href="IncentiveWiseSLClistOnline.aspx?Stg=9&ALLAPPSTATUS=ALL"
                                                                    class="list-group-item"><span class="badge">
                                                                        <asp:Label ID="lblslcrecved" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i><b>No of Applications Received</b> </a><a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Generate Agenda</b></a> <a href="frmSLCDashBoardfinal.aspx?Stage=1" class="list-group-item">
                                                                            <span class="badge">
                                                                                <asp:Label ID="lblslcwithin" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Within 3 Days </a><a href="frmSLCDashBoardfinal.aspx?Stage=2" class="list-group-item">
                                                                                    <span class="badge" style="background-color: #d9534f;">
                                                                                        <asp:Label ID="lblslcbeyond" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Beyond 3 Days </a><a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Upload SLC Proceedings</b></a> <a class="list-group-item" href="frmSLCDashBoardfinalSaction.aspx?Stage=1">
                                                                                            <span class="badge">
                                                                                                <asp:Label ID="lblslcupdwothin" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Within 3 Days</a> <a class="list-group-item" href="frmSLCDashBoardfinalSaction.aspx?Stage=2">
                                                                                                    <span class="badge" style="background-color: #d9534f;">
                                                                                                        <asp:Label ID="lblslcupdbeyond" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Beyond 3 Days</a>
                                                        </div>
                                                    </td>
                                                    <td style="width: 30px"></td>
                                                    <td style="width: 395px" valign="top">
                                                        <div class="list-group">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Uploaded SLC Proceedings
                                                                (Completed)</b></a> <a class="list-group-item" href="IncentiveWiseSLClistOnline.aspx?Stg=5">
                                                                    <span class="badge">
                                                                        <asp:Label ID="lblslccomwithin" runat="server"></asp:Label>
                                                                    </span><i class="fa fa-fw fa-calendar"></i>Within 3 Days</a> <a class="list-group-item"
                                                                        href="IncentiveWiseSLClistOnline.aspx?Stg=6"><span class="badge" style="background-color: #d9534f;">
                                                                            <asp:Label ID="lblslccombeyond" runat="server"></asp:Label>
                                                                        </span><i class="fa fa-fw fa-calendar"></i>Beyond 3 Days</a> <a class="list-group-item"
                                                                            href="IncentiveWiseSLClistOnline.aspx?Stg=7"><span class="badge" style="background-color: #d9534f;">
                                                                                <asp:Label ID="slcrejected" runat="server"></asp:Label>
                                                                            </span><i class="fa fa-fw fa-calendar"></i>Rejected</a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3" style="height: 5px">
                                                        <div>
                                                            <h1 class="page-head-linenew" align="left" style="font-size: smaller"></h1>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="width: 395px">
                                                        <div class="list-group">
                                                            <%-- <a href="ListofSCLS.aspx?Stg=4" class="list-group-item">--%>
                                                            <a href="IncentiveWiseSLClist.aspx?Stg=4" class="list-group-item"><span class="badge">
                                                                <asp:Label ID="lblReleasePendings" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Approved by SLC </a>
                                                        </div>
                                                        <div class="list-group">
                                                            <%-- <a href="ListofSCLS.aspx?Stg=5" class="list-group-item">--%>
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Releases</b></a>
                                                            <a href="IncentiveProceedingsStep1.aspx?Stg=5" class="list-group-item"><span class="badge">
                                                                <asp:Label ID="lblReleaseProceedings" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Release Proceedings for SLC </a><a href="ReleaseProcedingsStep2CompletedListPrint.aspx?Stg=5"
                                                                    class="list-group-item"><span class="badge">
                                                                        <asp:Label ID="lblReleaseProceedingsCmpltdList" runat="server"></asp:Label></span>
                                                                    <i class="fa fa-fw fa-calendar"></i>Print SLC Release Proceedings Completed List
                                                                </a>
                                                        </div>
                                                        <div class="list-group">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>UC List</b></a> <a
                                                                href="frmCheckDetailsprintReprint.aspx?Stg=5&Status=UC" class="list-group-item">
                                                                <span class="badge">
                                                                    <asp:Label ID="Label16" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Print-UC Updated List </a><a href="frmCheckDetailsprintReprint.aspx?Stg=6&Status=NUC"
                                                                        class="list-group-item"><span class="badge">
                                                                            <asp:Label ID="Label24" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Print-UC Not Updated List </a>
                                                        </div>
                                                        <div class="list-group">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Cheque Preparation List</b></a>
                                                            <a href="frmCheckDetailsprint.aspx?Stg=5&Status=Pending" class="list-group-item"><span
                                                                class="badge">
                                                                <asp:Label ID="Label9" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Generate Cheque Preparation List</a> <a href="frmCheckDetailsprintGenerated.aspx?Stg=5&Status=Generated"
                                                                    class="list-group-item"><span class="badge">
                                                                        <asp:Label ID="Label25" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Generated Cheque Preparation List </a>
                                                        </div>
                                                        <div class="list-group">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Update Cheque Details</b></a>
                                                            <a href="UpdateCheckList.aspx?Stg=5" class="list-group-item"><span class="badge">
                                                                <asp:Label ID="Label10" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Upload Cheque Details for SLC </a><a href="UpdateCheckClearence.aspx?Stg=5" class="list-group-item">
                                                                    <span class="badge">
                                                                        <asp:Label ID="Label8" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Upload Cheque Clearence Details</a> <a href="ChequeStatus.aspx?Stg=5" class="list-group-item">
                                                                            <span class="badge">
                                                                                <asp:Label ID="Label31" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Cheque Status</a>
                                                        </div>
                                                        <div class="list-group">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Update Cheque Details
                                                                New</b></a> <a href="UpdateCheckListALL.aspx?Stg=50" class="list-group-item"><span
                                                                    class="badge">
                                                                    <asp:Label ID="Label36" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Cheque Details Not Uploaded</a><a href="UpdateCheckNumberListALL.aspx?Stg=51"
                                                                        class="list-group-item"><span class="badge">
                                                                            <asp:Label ID="Label37" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Cheque Details Cheque Number</a><a href="UpdateUTRNumberListALL.aspx?Stg=52"
                                                                                class="list-group-item"><span class="badge">
                                                                                    <asp:Label ID="Label38" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Cheque Details with UTR Number</a>
                                                        </div>
                                                    </td>
                                                    <td style="width: 30px"></td>
                                                    <td valign="top" style="width: 395px">
                                                        <div class="list-group">
                                                            <%-- <a href="ListofSCLS.aspx?Stg=4" class="list-group-item">--%>
                                                            <%-- <a href="IncentiveWiseDIPClist.aspx?Stg=4" class="list-group-item"><span class="badge">--%>
                                                            <a href="DIPCApprovedlist.aspx?Stg=4" class="list-group-item"><span class="badge">
                                                                <asp:Label ID="lblDIPCReleasePendings" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Approved by DIPC </a>
                                                        </div>
                                                        <%--<div class="list-group">
                                                            <a href="IncentiveWiseDIPClist.aspx?Stg=2&offlineflag=Y" class="list-group-item"><span
                                                                class="badge">
                                                                <asp:Label ID="Label33" runat="server"></asp:Label>
                                                            </span><i class="fa fa-fw fa-calendar"></i>Approved by DLC (Legacy Data) </a>
                                                        </div>--%>
                                                        <div class="list-group">
                                                            <%-- <a href="ListofSCLS.aspx?Stg=5" class="list-group-item">--%>
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Releases</b></a>
                                                            <a href="IncentiveProceedingsStep1DIPC.aspx?Stg=5" class="list-group-item"><span
                                                                class="badge">
                                                                <asp:Label ID="lblReleaseProcforDIPC" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Release Proceedings for DIPC </a><a href="ReleaseProcedingsStep2CompletedListPrintDIPC.aspx?stg=5"
                                                                    class="list-group-item"><span class="badge">
                                                                        <asp:Label ID="Label17" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Print DIPC Release Proceedings Completed List </a>
                                                        </div>
                                                        <div class="list-group">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>UC List</b></a> <a
                                                                href="frmCheckDetailsprintReprint.aspx?Stg=5&Status=UC&DIPCFlag=Y" class="list-group-item">
                                                                <span class="badge">
                                                                    <asp:Label ID="Label26" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Print-UC Updated List </a><a href="frmCheckDetailsprintReprint.aspx?Stg=6&Status=NUC&DIPCFlag=Y"
                                                                        class="list-group-item"><span class="badge">
                                                                            <asp:Label ID="Label27" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Print-UC Not Updated List </a>
                                                        </div>
                                                        <div class="list-group">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Cheque Preparation List</b></a>
                                                            <a href="frmCheckDetailsprint.aspx?Stg=5&DIPCFlag=Y" class="list-group-item"><span
                                                                class="badge">
                                                                <asp:Label ID="lblGenCHeckListforDIPC" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Generate Cheque Preparation List for DIPC </a><a href="frmCheckDetailsprintGenerated.aspx?Stg=5&DIPCFlag=Y"
                                                                    class="list-group-item"><span class="badge">
                                                                        <asp:Label ID="Label18" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Generated Cheque Preparation List </a>
                                                        </div>
                                                        <div class="list-group">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Update Cheque Details</b></a>
                                                            <a href="UpdateCheckList.aspx?Stg=5&DIPCFlag=Y" class="list-group-item"><span class="badge">
                                                                <asp:Label ID="Label13" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Upload Cheque Details for DIPC </a><a href="UpdateCheckClearence.aspx?Stg=5&DIPCFlag=Y"
                                                                    class="list-group-item"><span class="badge">
                                                                        <asp:Label ID="Label14" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Upload Cheque Clearence Details for DIPC </a><a href="ChequeStatus.aspx?Stg=5&DIPCFlag=Y"
                                                                            class="list-group-item"><span class="badge">
                                                                                <asp:Label ID="Label30" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Cheque Status </a>
                                                        </div>
                                                        <div class="list-group">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>Update Cheque Details
                                                                New</b></a> <a href="UpdateCheckClearenceNew.aspx?Stg=53" class="list-group-item"><span
                                                                    class="badge">
                                                                    <asp:Label ID="Label33" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Enter UTR Details with Cheque No</a><a href="ChequeStatusNew.aspx?Stg=54" class="list-group-item"><span
                                                                        class="badge">
                                                                        <asp:Label ID="Label34" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Cheque Status </a>
                                                            <%--<a href="UpdateUTRNumberListALL.aspx?Stg=52"
                                                                                class="list-group-item"><span class="badge">
                                                                                    <asp:Label ID="Label35" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar">
                                                                                    </i>Cheque Details with UTR Number</a>--%>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3" style="height: 5px">
                                                        <div>
                                                            <h1 class="page-head-linenew" align="left" style="font-size: smaller"></h1>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" visible="false">
                                                    <td style="width: 395px" valign="top">
                                                        <div class="list-group">
                                                            <a href="IncentiveStatusInspectionDateDetails.aspx?Stg=1" class="list-group-item"><span
                                                                class="badge">
                                                                <asp:Label ID="lblAppl" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>No of Applications Received from D.D </a><a class="list-group-item"><i class="fa fa-fw fa-check"></i>Scrutiny Pending </a><a class="list-group-item" href="IncentiveStatusInspectionUploadDetailsnew.aspx?Stg=60">
                                                                    <span class="badge">
                                                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                                                    </span><i class="fa fa-fw fa-calendar"></i>With in 3 Days </a><a class="list-group-item"
                                                                        href="IncentiveStatusInspectionUploadDetailsnew.aspx?Stg=61"><span class="badge"
                                                                            style="background-color: #d9534f;">
                                                                            <asp:Label ID="Label2" runat="server"></asp:Label>
                                                                        </span><i class="fa fa-fw fa-calendar"></i>Beyond 3 Days </a><a class="list-group-item">
                                                                            <i class="fa fa-fw fa-check"></i>Scrutiny Completed</a> <a class="list-group-item"
                                                                                href="IncentiveStatusInspectionUploadDetailsnew.aspx?Stg=62"><span class="badge">
                                                                                    <asp:Label ID="Label3" runat="server"></asp:Label>
                                                                                </span><i class="fa fa-fw fa-calendar"></i>With in 3 Days </a>
                                                            <a class="list-group-item" href="IncentiveStatusInspectionUploadDetailsnew.aspx?Stg=63">
                                                                <span class="badge" style="background-color: #d9534f;">
                                                                    <asp:Label ID="Label4" runat="server"></asp:Label>
                                                                </span><i class="fa fa-fw fa-calendar"></i>Beyond 3 Days </a>
                                                        </div>
                                                    </td>
                                                    <td></td>
                                                    <td valign="top">
                                                        <div class="list-group" style="vertical-align: top">
                                                            <a class="list-group-item"><i class="fa fa-fw fa-check"></i>Queries</a> <a href="IncentiveStatusInspectionDateDetails.aspx?Stg=64"
                                                                class="list-group-item"><span class="badge">
                                                                    <asp:Label ID="Label5" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Queries Yet to Respond </a><a href="IncentiveStatusInspectionDateDetails.aspx?Stg=65"
                                                                        class="list-group-item"><span class="badge">
                                                                            <asp:Label ID="Label6" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Queries Responded </a><a href="IncentiveStatusInspectionDateDetails.aspx?Stg=66"
                                                                                class="list-group-item"><span class="badge">
                                                                                    <asp:Label ID="Label7" runat="server"></asp:Label></span> <i class="fa fa-fw fa-calendar"></i>Total Queries Raised </a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            <table runat="server" id="trGmDashboard" cellpadding="3" cellspacing="5" style="width: 100%"
                                                visible="false">
                                                <tr>
                                                    <td style="width: 395px" valign="top">
                                                        <a class="list-group-item"><i class="fa fa-fw fa-check"></i><b>SLC Dashboard</b>
                                                        </a>
                                                    </td>
                                                    <td style="width: 30px">&nbsp;
                                                    </td>
                                                    <td valign="top" style="width: 395px">&nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 395px" valign="top">
                                                        <div class="list-group">
                                                            <a class="list-group-item" href="ListofSCLS.aspx?Stg=1"><span class="badge"></span><i
                                                                class="fa fa-fw fa-calendar"></i>List of cases sanctioned incentives</a>
                                                        </div>
                                                    </td>
                                                    <td style="width: 30px">&nbsp;
                                                    </td>
                                                    <td style="width: 395px" valign="top">
                                                        <div class="list-group">
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="padding: 5px; margin: 5px">
                                    <a href="IPO Login.doc" target="_blank">User Manual of IPO/DD/AD</a>
                                </td>
                            </tr>
                        </table>
                        <asp:HiddenField ID="hdfID" runat="server" />
                        <asp:HiddenField ID="hdfFlagID" runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

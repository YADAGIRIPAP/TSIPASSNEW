﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true"
    CodeFile="ApplicantIncentiveDtls.aspx.cs" Inherits="UI_TSiPASS_ApplicantIncentiveDtls" %>

<%@ Register Assembly="System.Web, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="System.Web.UI.WebControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../../Resource/Scripts/js/validations.js" type="text/javascript"></script>
    <link href="../../css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
    <style type="text/css" media="print">
        @page {
            size: landscape;
        }
    </style>
    <style>
        .disabled-control input[type="radio"]:checked + label {
            color: blue; /* Change the color of the checked, disabled item */
        }
    </style>
    <script type="text/javascript">
        function CallPrint(strid) {
            var prtContent = document.getElementById(strid);
            var WinPrint = window.open('', '', 'letf=0,top=0,width=0,height=0,toolbar=0,scrollbars=1,status=0');
            var strOldOne = prtContent.innerHTML;
            WinPrint.document.write(prtContent.innerHTML);
            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
            WinPrint.close();
            prtContent.innerHTML = strOldOne;
        }
        function inputOnlyNumbers(evt) {
            var e = window.event || evt; // for trans-browser compatibility 
            var charCode = e.which || e.keyCode;
            if ((charCode > 45 && charCode < 58) || charCode == 8 || charCode == 9) {
                return true;
            }
            return false;
        }

        function respondQueriesPrint() {

            var panel = document.getElementById("<%=tr1gmresponce2.ClientID %>");
            var appid = document.getElementById("<%=lblApplicationNo.ClientID %>").innerHTML;
            var unitname = document.getElementById("<%=txtUnitname1.ClientID %>").innerHTML;

            var printWindow = window.open('', '', 'height=500,width=900');
            printWindow.document.write('<html><head><div><table style="width:100%"> <tr> <td> <img alt="" style="float:left" src="../../Masterfiles/images/logo.jpg"/> </td> <td> <div style="float: right; text-align: center; padding: 10px 0;"> <div style="float: left; margin-right: 30px;"> <img alt="" src="" /> <h5 style="font-size: 14px; margin-bottom: 0px;"></h5> <p style="font-size: 14px; margin-bottom: 0px;">Hon ble Chief Minister</p> </div> <div style="float:left"> <img alt="" src="" /> <h5 style="font-size: 14px; margin-bottom: 0px;"></h5> <p style="font-size: 14px; margin-bottom: 0px;"></p> </div> </div> </td> </tr> </table> </div><h3 style="width: 100%;text-align: center;">Government of Telangana</h3>');
            printWindow.document.write('</head><body style="width:100%;margin:0 auto;"><p><h4>Application No: ' + appid + '<br/> Unit Name: ' + unitname + ' </h4></p > <p><h4>Responses for earlier queries</h4></p>');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
            setTimeout(function () {
                printWindow.print();
                location.reload(true);
                printWindow.close();
            }, 1000);
            return false;
        }
        function respondSSCPrint() {

            var panel = document.getElementById("<%=trDivSSCgm1.ClientID %>");
            var appid = document.getElementById("<%=lblApplicationNo.ClientID %>").innerHTML;
            var unitname = document.getElementById("<%=txtUnitname1.ClientID %>").innerHTML;

            var printWindow = window.open('', '', 'height=500,width=900');
            printWindow.document.write('<html><head><div><table style="width:100%"> <tr> <td> <img alt="" style="float:left" src="../../Masterfiles/images/logo.jpg"/> </td> <td> <div style="float: right; text-align: center; padding: 10px 0;"> <div style="float: left; margin-right: 30px;"> <img alt="" src="" /> <h5 style="font-size: 14px; margin-bottom: 0px;"></h5> <p style="font-size: 14px; margin-bottom: 0px;">Hon ble Chief Minister</p> </div> <div style="float:left"> <img alt="" src="" /> <h5 style="font-size: 14px; margin-bottom: 0px;"></h5> <p style="font-size: 14px; margin-bottom: 0px;"></p> </div> </div> </td> </tr> </table> </div><h3 style="width: 100%;text-align: center;">Government of Telangana</h3>');
            printWindow.document.write('</head><body style="width:100%;margin:0 auto;"><p><h4>Application No: ' + appid + '<br/> Unit Name: ' + unitname + ' </h4></p > <p><h4>Responses for earlier queries</h4></p>');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
            setTimeout(function () {
                printWindow.print();
                location.reload(true);
                printWindow.close();
            }, 1000);
            return false;
        }
        function respondQueriesaddPrint() {

            var panel = document.getElementById("<%=tr18.ClientID %>");
            var appid = document.getElementById("<%=lblApplicationNo.ClientID %>").innerHTML;
            var unitname = document.getElementById("<%=txtUnitname1.ClientID %>").innerHTML;

            var printWindow = window.open('', '', 'height=500,width=900');
            printWindow.document.write('<html><head><div><table style="width:100%"> <tr> <td> <img alt="" style="float:left" src="../../Masterfiles/images/logo.jpg"/> </td> <td> <div style="float: right; text-align: center; padding: 10px 0;"> <div style="float: left; margin-right: 30px;"> <img alt="" src="" /> <h5 style="font-size: 14px; margin-bottom: 0px;"></h5> <p style="font-size: 14px; margin-bottom: 0px;"></p> </div> <div style="float:left"> <img alt="" src="" /> <h5 style="font-size: 14px; margin-bottom: 0px;"></h5> <p style="font-size: 14px; margin-bottom: 0px;"></p> </div> </div> </td> </tr> </table> </div><h3 style="width: 100%;text-align: center;">Government of Telangana</h3>');
            printWindow.document.write('</head><body style="width:100%;margin:0 auto;"><p><h4>Application No: ' + appid + '<br/> Unit Name: ' + unitname + ' </h4></p > <p><h4>Responses for earlier queries</h4></p>');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
            setTimeout(function () {
                printWindow.print();
                location.reload(true);
                printWindow.close();
            }, 1000);
            return false;
        }
        function respondQueriesPrintAnother() {

            var panel = document.getElementById("<%=tr7.ClientID %>");
            var appid = document.getElementById("<%=lblApplicationNo.ClientID %>").innerHTML;
            var unitname = document.getElementById("<%=txtUnitname1.ClientID %>").innerHTML;

            var printWindow = window.open('', '', 'height=500,width=900');
            printWindow.document.write('<html><head><div><table style="width:100%"> <tr> <td> <img alt="" style="float:left" src="../../Masterfiles/images/logo.jpg"/> </td> <td> <div style="float: right; text-align: center; padding: 10px 0;"> <div style="float: left; margin-right: 30px;"> <img alt="" src="" /> <h5 style="font-size: 14px; margin-bottom: 0px;"></h5> <p style="font-size: 14px; margin-bottom: 0px;"></p> </div> <div style="float:left"> <img alt="" src="" /> <h5 style="font-size: 14px; margin-bottom: 0px;"></h5> <p style="font-size: 14px; margin-bottom: 0px;"></p> </div> </div> </td> </tr> </table> </div><h3 style="width: 100%;text-align: center;">Government of Telangana</h3>');
            printWindow.document.write('</head><body style="width:100%;margin:0 auto;"><p><h4>Application No: ' + appid + '<br/> Unit Name: ' + unitname + ' </h4></p > <p><h4>Responses for earlier queries</h4></p>');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
            setTimeout(function () {
                printWindow.print();
                location.reload(true);
                printWindow.close();
            }, 1000);
            return false;
        }
    </script>
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

        .update {
            position: fixed;
            top: 0px;
            left: 0px;
            min-height: 100%;
            min-width: 100%;
            background-image: url("../../Images/ajax-loaderblack.gif"); /*background-image: url("Images/spinner_60.gif");*/
            background-position: center center;
            background-repeat: no-repeat; /*background-color: #e4e4e6;*/
            background-color: #535252;
            z-index: 500 !important;
            opacity: 0.6;
            overflow: hidden;
        }

        .tr {
        }

        .style5 {
            color: #FF0000;
        }

        .myGridClass {
            width: 100%; /*this will be the color of the odd row*/
            background-color: #fff;
            margin: 5px 0 10px 0;
            border: solid 1px #525252;
            border-collapse: collapse;
        }

            /*data elements*/
            .myGridClass td {
                padding: 2px;
                border: solid 1px #c1c1c1;
                color: #717171;
            }

            /*header elements*/
            .myGridClass th {
                padding: 4px 2px;
                color: #fff;
                background: #424242;
                border-left: solid 1px #525252;
                font-size: 0.9em;
            }

            /*his will be the color of even row*/
            .myGridClass .myAltRowClass {
                background: #fcfcfc repeat-x top;
            }

            /*and finally, we style the pager on the bottom*/
            .myGridClass .myPagerClass {
                background: #424242;
            }

                .myGridClass .myPagerClass table {
                    margin: 5px 0;
                }

                .myGridClass .myPagerClass td {
                    border-width: 0;
                    padding: 0 6px;
                    border-left: solid 1px #666;
                    font-weight: bold;
                    color: #fff;
                    line-height: 12px;
                }

                .myGridClass .myPagerClass a {
                    color: #666;
                    text-decoration: none;
                }

                    .myGridClass .myPagerClass a:hover {
                        color: #000;
                        text-decoration: none;
                    }
    </style>
    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,900italic,900,700italic,700,400italic,300italic,300'
        rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Domine:400,700' rel='stylesheet'
        type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Noto+Serif:400,700,400italic,700italic'
        rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
        rel='stylesheet' type='text/css'>
    <script type="text/javascript" language="javascript">

        function OpenPopup() {

            window.open("Lookups/LookupBDC.aspx", "List", "scrollbars=yes,resizable=yes,width=1000,height=650;display = block;position=absolute");

            return false;
        }
    </script>
    <%-- <link href="assets/css/basic.css" rel="stylesheet" />--%>
    <%--  <div align="left">
        <div class="row" align="left">
            <div class="col-lg-11">--%>
    <%--<div class="panel panel-primary">
                           <div class="panel-heading" align="center">
                                <h3 class="panel-title">
                                    Entrepreneur Details</h3>
                            </div>--%>
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
    <asp:UpdateProgress ID="UpdateProgress" runat="server" AssociatedUpdatePanelID="updatepanel1">
        <ProgressTemplate>
            <div class="update">
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:PostBackTrigger ControlID="BtnSave3" />
            <asp:PostBackTrigger ControlID="gvinspectionOfficer" />

        </Triggers>
        <ContentTemplate>
            <%-- <div class="col-md-12">
                                <h1 class="page-head-line" align="left" style="font-size: large" runat="server" id="h1heading">List of cases sanctioned incentives </h1>
                            </div>--%>
            <div class="container demo">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                    <div class="panel panel-default">

                        <div class="panel-body">
                            <table bgcolor="White" width="100%" style="font-family: Verdana;">
                                <%--<tr >
                                        <td valign="top" colspan="5">
                                            <asp:GridView ID="GrdGMDelayexplaination" runat="server" AutoGenerateColumns="False"
                                                CellPadding="4" Height="62px"
                                                OnRowDataBound="grdDetails_RowDataBound"
                                                Width="80%" Font-Names="Verdana" Font-Size="12px">
                                                <HeaderStyle VerticalAlign="Middle" Height="40px" CssClass="GridviewScrollC1HeaderWrap" />
                                                <RowStyle CssClass="GridviewScrollC1Item" />
                                                <PagerStyle CssClass="GridviewScrollC1Pager" />
                                                <FooterStyle BackColor="#013161" Height="40px" CssClass="GridviewScrollC1Header" />
                                                <AlternatingRowStyle CssClass="GridviewScrollC1Item2" />
                                                <Columns>
                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                        <ItemTemplate>
                                                            <%# Container.DataItemIndex + 1%>
                                                            <asp:HiddenField ID="HdfQueid" runat="server" />
                                                            <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                        <ItemStyle Width="50px" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="IncentiveName" HeaderText="Reason for Delay" ItemStyle-Width="500px" />
                                                    <asp:TemplateField HeaderText="Reason" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtgmdelayexplaination" TextMode="MultiLine" Height="100px" Width="300px" runat="server"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>--%>

                                <tr id="trgmdelayexplaination" runat="server" visible="false">

                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                        <asp:Label ID="Label20" runat="server" CssClass="LBLBLACK" Width="200px">Explaination/Reason for delay</asp:Label>
                                    </td>
                                    <td style="padding: 5px; margin: 5px">:</td>
                                    <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                        <asp:TextBox ID="txtgmdelayexplaination" TextMode="MultiLine" Height="80px" Width="300px" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr id="trgmdelayexplainationbutton" runat="server" visible="false">
                                    <td align="center" colspan="5">
                                        <asp:Button ID="btngmdelpayexplaination" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btngmdelpayexplaination_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="trgmdelayclose" runat="server" visible="true">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Enterprise Details
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <table bgcolor="White" width="100%" style="font-family: Verdana;">
                                        <tr>
                                            <td align="left" colspan="4" style="padding: 10px; margin: 5px; font-weight: bold;">A.
                                            <asp:Label ID="lblIndustries1" runat="server" Font-Bold="True" Font-Size="15px">COMMON DETAILS OF THE ENTREPRENUER</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold; width: 10px">1. </td>
                                            <td style="text-align: left; padding: 5px; margin: 5px">EM Part - II/IEM/IL No/Udyog Aadhar No</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 5px; margin: 5px">
                                                <asp:Label ID="txtudyogAadharNo" runat="server"></asp:Label>
                                            </td>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">2. </td>
                                            <td style="text-align: left; padding: 5px; margin: 5px">Unit Name</td>

                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="padding: 5px; margin: 5px">
                                                <span>
                                                    <asp:Label ID="txtUnitname" runat="server"></asp:Label>
                                                </span>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">3. </td>
                                            <td style="text-align: left; width: 250px; padding: 5px; margin: 5px">Name of the  Managing Director /Managing Partner / Proprietor</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 5px; margin: 5px">
                                                <span>
                                                    <asp:Label ID="txtApplicantName" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">4. </td>
                                            <td style="text-align: left; padding: 5px; margin: 5px">TIN/CST/GST</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="padding: 5px; margin: 5px">
                                                <span>
                                                    <asp:Label ID="txtTinNumber" runat="server"></asp:Label>
                                                </span>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">5. </td>
                                            <td style="text-align: left; width: 250px; padding: 5px; margin: 5px">PAN Number of the  Managing Director /Managing Partner / Proprietor</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 5px; margin: 5px">
                                                <span>
                                                    <asp:Label ID="txtPanNumber" runat="server"></asp:Label>
                                                </span></td>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">6. </td>
                                            <td style="padding: 5px; margin: 5px">Category</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="padding: 5px; margin: 5px">
                                                <asp:Label ID="ddlCategory" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">7. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Type of Organization</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="ddltypeofOrg" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold; padding: 10px; margin: 5px;">8. </td>
                                            <td>Industry Status 
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;"><span>
                                                <asp:Label ID="ddlindustryStatus" runat="server"></asp:Label>
                                            </span>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">9. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Date of commencement for Production</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="txtDateofCommencement" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">10. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Social Status</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="rblCaste" runat="server"></asp:Label>
                                                </span>
                                            </td>

                                        </tr>

                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">11. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">CFE Uid Number</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="lblcfeno" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">12. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">CFO Uid Number</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="lblcfono" runat="server"></asp:Label>
                                                </span>
                                            </td>

                                        </tr>

                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">13. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Physically Handicapped</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="lblPhc" runat="server"></asp:Label>
                                                </span>
                                            </td>


                                        </tr>
                                        <tr id="trEmPartNo11" runat="server" visible="false">
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">11. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">EM Part - II/IEM/IL No:
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="lblEMPartNo" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td align="left" colspan="4" style="padding: 10px; margin: 5px; font-weight: bold;">
                                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="15px"
                                                    ForeColor="Black">B. UNIT ADDRESS</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">1. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">District</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="ddldistrictunit" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">2.</td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Survey No
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="txtunitaddhno" runat="server"></asp:Label>
                                                </span>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">3. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Mandal</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="ddlUnitMandal" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">4. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Street</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="txtstreetunit" runat="server"></asp:Label>
                                                </span>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">5. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Village</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="ddlVillageunit" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">6. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Mobile Number
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="txtunitmobileno" runat="server"></asp:Label>
                                                </span>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">7. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Email Id</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px; width: 250px">
                                                <span>
                                                    <asp:Label ID="txtunitemailid" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;"></td>
                                            <td style="text-align: left;">&nbsp;</td>
                                            <td style="text-align: left;">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="left" colspan="8" style="padding: 10px; margin: 5px; font-weight: bold;">
                                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="15px"
                                                    ForeColor="Black">C. OFFICE ADDRESS</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">1. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">District</td>

                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="ddldistrictoffc" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">2. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Survey No
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="txtoffaddhnno" runat="server"></asp:Label>
                                                </span>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">3. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Mandal</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="ddloffcmandal" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">4. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Street
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="txtstreetoffice" runat="server"></asp:Label>
                                                </span>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">5. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Village</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="ddlvilloffc" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">6. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Mobile Number
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">
                                                <span>
                                                    <asp:Label ID="txtOffcMobileNO" runat="server"></asp:Label>
                                                </span>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">7. </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px;">Email Id</td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td style="text-align: left; padding: 10px; margin: 5px; width: 250px">
                                                <span>
                                                    <asp:Label ID="txtOffcEmail" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="text-align: left;"></td>
                                            <td style="text-align: left;">
                                                <span></span>

                                            </td>
                                        </tr>


                                    </table>
                                </div>
                            </div>

                            <div class="panel panel-default" id="oldapps" runat="server">
                                <div class="panel-heading" role="tab" id="Divoldapplications" runat="server">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#DivoldapplicationsNew" aria-expanded="false" aria-controls="collapseTwo">
                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                            Earlier Application
                                        </a>
                                    </h4>
                                </div>
                                <div id="DivoldapplicationsNew" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                    <div class="panel-body">
                                        <div align="center">
                                            <asp:GridView ID="Gvoldapplications" runat="server" AutoGenerateColumns="False"
                                                CellPadding="4" Height="62px"
                                                Width="80%" Font-Names="Verdana" Font-Size="12px" OnRowDataBound="Gvoldapplications_RowDataBound">
                                                <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                <rowstyle cssclass="GridviewScrollC1Item" />
                                                <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                <columns>
                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                        <itemtemplate>
                                                            <%# Container.DataItemIndex + 1%>
                                                        </itemtemplate>
                                                        <headerstyle horizontalalign="Center" />
                                                        <itemstyle width="50px" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Inds" HeaderText="Unit Name" />
                                                    <asp:BoundField DataField="ApplicationNo" HeaderText="ApplicationNO" />
                                                    <asp:BoundField DataField="ApplicationFiledDate" HeaderText="Application Date" />
                                                    <asp:TemplateField HeaderText="View">
                                                        <itemtemplate>
                                                            <asp:HyperLink ID="anchortaglinkOldapplication" runat="server" Text="View" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                        </itemtemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                        <itemtemplate>
                                                            <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                        </itemtemplate>
                                                    </asp:TemplateField>
                                                </columns>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="Div3" runat="server">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwoication" aria-expanded="false" aria-controls="collapseTwo">
                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                            Application
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwoication" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                    <div class="panel-body">
                                        <div align="center">
                                            <div align="center" style="text-align: center" id="Receipt">
                                                <div align="center" style="width: 1000px">
                                                    <center>
                                                        <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/telanganalogo.png" width="75px" height="75px" />
                                                    </center>
                                                    <%-- <h3>TS-iPASS COMMON APPLICATION FORM</h3>--%>
                                                    <br />
                                                    <table style="width: 100%;" align="center">
                                                        <tr>
                                                            <td width="100%" align="center" style="text-align: center">
                                                                <asp:Label Font-Bold="true" Font-Size="X-Large" ID="lblheadTPRIDE" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                </div>

                                                <div align="center">

                                                    <table style="width: 800px">
                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divCommonAppli" runat="server" visible="false">
                                                                    <div align="center">
                                                                        <table bgcolor="White" width="1000px" border="2px"
                                                                            style="font-family: Verdana; font-size: small;">
                                                                            <tr>
                                                                                <td align="center" colspan="4"
                                                                                    style="text-align: center; background-color: #0066FF;">
                                                                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="15px"
                                                                                        ForeColor="White">COMMON DETAILS OF THE ENTREPRENUER</asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <%--Start--%>
                                                                            <tr>
                                                                                <td style="text-align: left; width: 250px">Application Date</td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <asp:Label ID="lblapplicationdate" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td style="padding: 5px; margin: 5px; width: 250px">Application No</td>
                                                                                <td style="padding: 5px; margin: 5px; width: 250px">
                                                                                    <asp:Label ID="lblApplicationNo" runat="server"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: left; width: 250px">Sector</td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <asp:Label ID="lblsector" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <asp:Label ID="lblisvehicle" runat="server" Text="Vehicle Number"></asp:Label>
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <asp:Label ID="lblvehno" runat="server"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <%--End--%>
                                                                            <tr>
                                                                                <td style="text-align: left; width: 250px">EM/Udyog Aadhar No</td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <asp:Label ID="txtudyogAadharNo1" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">Unit Name</td>
                                                                                <td style="width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="txtUnitname1" runat="server"></asp:Label>
                                                                                    </span>

                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Name of the  Managing Director /Managing Partner / Proprietor</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="txtApplicantName1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                                <td>TIN/CST/GST</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="txtTinNumber1" runat="server"></asp:Label>
                                                                                    </span>

                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>PAN Number of the  Managing Director /Managing Partner / Proprietor</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="txtPanNumber1" runat="server"></asp:Label>
                                                                                    </span></td>
                                                                                <td>Category</td>
                                                                                <td>
                                                                                    <asp:Label ID="ddlCategory1" runat="server"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Type of Organization</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="ddltypeofOrg1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                                <td>Industry Status 
                                                                                </td>

                                                                                <td><span>
                                                                                    <asp:Label ID="ddlindustryStatus1" runat="server"></asp:Label>
                                                                                </span>
                                                                                </td>

                                                                            </tr>
                                                                            <tr>
                                                                                <td>Date of commencement for Production</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="txtDateofCommencement1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                                <td>Social Status</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="rblCaste1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>

                                                                            </tr>
                                                                            <tr>
                                                                                <td>CFE Uid Number</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="lblcfeno1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                                <td>CFO Uid Number</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="lblcfono1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>

                                                                            </tr>
                                                                            <tr>
                                                                                <td>Is this unit Spinning Mill</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="lblSpinningMill" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>


                                                                            </tr>
                                                                            <tr id="trempartno" runat="server" visible="false">
                                                                                <td><%--EM Part - II/IEM/IL No:--%>
                                                                                </td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="lblEMPartNo1" runat="server" Visible="false"></asp:Label>
                                                                                    </span>
                                                                                </td>

                                                                                <td></td>
                                                                                <td></td>
                                                                                <%--  <td>Nature of Activity
                                    </td>
                                    <td>
                                        <span>
                                            <asp:Label ID="ddlintLineofActivity" runat="server"></asp:Label>
                                        </span>

                                    </td>--%>
                                                                            </tr>
                                                                            <%--<tr>
                                    <td>Areas</td>
                                    <td>
                                        <span>
                                            <asp:Label ID="rblGHMC" runat="server"></asp:Label>
                                        </span>
                                    </td>
                                    <td>Type of Sector
                                    </td>
                                    <td>
                                        <span>
                                            <asp:Label ID="rblSector" runat="server"></asp:Label>
                                        </span>

                                    </td>
                                </tr>
                                <tr>
                                    <td>Allied Type</td>
                                    <td>
                                        <span>
                                            <asp:Label ID="rblVeh" runat="server"></asp:Label>
                                        </span>
                                    </td>

                                </tr>--%>

                                                                            <tr>
                                                                                <td align="center" colspan="4"
                                                                                    style="text-align: center;">
                                                                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="15px"
                                                                                        ForeColor="Black">UNIT ADDRESS</asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: left; width: 250px">District</td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="ddldistrictunit1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">Survey No
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="txtunitaddhno1" runat="server"></asp:Label>
                                                                                    </span>

                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: left; width: 250px">Mandal</td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="ddlUnitMandal1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">Street</td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="txtstreetunit1" runat="server"></asp:Label>
                                                                                    </span>

                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: left; width: 250px">Village</td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="ddlVillageunit1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">Mobile Number
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="txtunitmobileno1" runat="server"></asp:Label>
                                                                                    </span>

                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: left; width: 250px">Email Id</td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="txtunitemailid1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">&nbsp;</td>
                                                                                <td style="text-align: left; width: 250px">&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center" colspan="4"
                                                                                    style="text-align: center;">
                                                                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="15px"
                                                                                        ForeColor="Black">OFFICE ADDRESS</asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: left; width: 250px">District</td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="ddldistrictoffc1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">Survey No
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="txtoffaddhnno1" runat="server"></asp:Label>
                                                                                    </span>

                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: left; width: 250px">Mandal</td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="ddloffcmandal1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">Street
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="txtstreetoffice1" runat="server"></asp:Label>
                                                                                    </span>

                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: left; width: 250px">Village</td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="ddlvilloffc1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">Mobile Number
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="txtOffcMobileNO1" runat="server"></asp:Label>
                                                                                    </span>

                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: left; width: 250px">Email Id</td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span>
                                                                                        <asp:Label ID="txtOffcEmail1" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                                <td style="text-align: left; width: 250px"></td>
                                                                                <td style="text-align: left; width: 250px">
                                                                                    <span></span>

                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div align="center">
                                                                        <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                            <tr>
                                                                                <td colspan="2"
                                                                                    style="font-size: large; text-align: center; background-color: #0066FF; color: #FFFFFF; font-weight: bold;">LINE OF ACTIVITY</td>
                                                                            </tr>
                                                                            <tr>

                                                                                <td>Line of Activity </td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="lblLineofActiivity" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>

                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="2">
                                                                                    <asp:GridView ID="gvLOA" runat="server" AutoGenerateColumns="False"
                                                                                        Font-Names="Verdana" Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                                                        <columns>
                                                                                            <asp:TemplateField HeaderText="Sl No.">
                                                                                                <itemtemplate>
                                                                                                    <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                                                                </itemtemplate>
                                                                                            </asp:TemplateField>
                                                                                            <asp:BoundField DataField="LineofActivity" HeaderText="Line Of Activity" />
                                                                                            <asp:BoundField DataField="InstalledCapacity" HeaderText="Installed Capacity" />
                                                                                            <asp:BoundField DataField="NameofUnit" HeaderText="Unit" />
                                                                                            <asp:BoundField DataField="Value" HeaderText="Value" />
                                                                                        </columns>
                                                                                    </asp:GridView>
                                                                                </td>
                                                                            </tr>
                                                                            <tr id="trexpansionhead" runat="server">
                                                                                <td colspan="2"
                                                                                    style="font-size: large; text-align: center; background-color: #0066FF; color: #FFFFFF; font-weight: bold;">
                                                                                    <asp:Label ID="lblexpan1" Text="Expansion/Diversification" runat="server"></asp:Label>
                                                                                    &nbsp;
                                        PROJECT (In Rs.)</td>
                                                                            </tr>
                                                                            <tr id="trexpansion" runat="server">
                                                                                <td colspan="9">
                                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                                        <tr>
                                                                                            <td></td>
                                                                                            <td style="text-align: center">Line Of Activity</td>
                                                                                            <td style="text-align: center">Installed Capacity</td>
                                                                                            <td style="text-align: center">% of increase under
                                                        <br />
                                                                                                <asp:Label ID="lblexpan2" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <%--Expansion--%>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Existing</td>
                                                                                            <td>
                                                                                                <asp:Label ID="txteeploa" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <%--<asp:Label ID="txteepinscap" runat="server"      ></asp:Label>--%>
                                                                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                                                    <tr>
                                                                                                        <td style="text-align: center">Quantity</td>
                                                                                                        <td style="text-align: center">Unit</td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <asp:Label ID="txteepinscap" runat="server"></asp:Label>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <asp:Label ID="ddleepinscap" runat="server"></asp:Label>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txteeppercentage" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="lblexpan3" runat="server"></asp:Label>
                                                                                                <br />
                                                                                                Project</td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtedploa" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                                                    <tr>
                                                                                                        <td style="text-align: center">Quantity</td>
                                                                                                        <td style="text-align: center">Unit</td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <asp:Label ID="txtedpinscap" runat="server"></asp:Label>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <asp:Label ID="ddledpinscap" runat="server"></asp:Label>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtedppercentage" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="2"
                                                                                    style="font-size: large; text-align: center; background-color: #0066FF; color: #FFFFFF; font-weight: bold;">FIXED CAPITAL INVESTMENT(In Rs.)</td>
                                                                            </tr>
                                                                            <tr id="tr1" runat="server">
                                                                                <td colspan="9">
                                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                                        <tr>
                                                                                            <td style="text-align: left">Nature of Assets</td>
                                                                                            <td style="text-align: left">Existing Enterprise</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Land</td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtlandexistingNew" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Building</td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtbuildingexistingNew" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Plant & Machinery
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtplantexistingNew" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                            <tr id="tr3" runat="server">
                                                                                <td colspan="9">
                                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                                        <tr>
                                                                                            <td style="text-align: center">Nature of Assets</td>
                                                                                            <td style="text-align: center">Existing Enterprise</td>
                                                                                            <td style="text-align: center">Under Expansion/Diversification<br />
                                                                                                Project</td>
                                                                                            <td>% of increase under<br />
                                                                                                Expansion/Diversification</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Land</td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtlandexisting" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtlandexpandiver" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtlandpercentage" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Building</td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtbuildingexisting" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtbuildingexpandiver" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtbuildingpercentage" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Plant & Machinery
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtplantexisting" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtplantexpandiver" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtplantpercentage" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>


                                                                        </table>
                                                                    </div>
                                                                    <div align="center">
                                                                        <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                            <tr>
                                                                                <td colspan="2"
                                                                                    style="font-size: large; text-align: center; background-color: #0066FF; color: #FFFFFF; font-weight: bold;">Details of the Director(s)/ Partner(s)</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="2">
                                                                                    <asp:GridView ID="GridViewdirectors" runat="server" AutoGenerateColumns="False"
                                                                                        Font-Names="Verdana" Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                                                        <columns>
                                                                                            <asp:TemplateField HeaderText="Sl No.">
                                                                                                <itemtemplate>
                                                                                                    <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                                                                </itemtemplate>
                                                                                            </asp:TemplateField>
                                                                                            <asp:BoundField DataField="Name" HeaderText="Name" />
                                                                                            <asp:BoundField DataField="Community" HeaderText="Community" />
                                                                                            <asp:BoundField DataField="Share" HeaderText="Share" />
                                                                                            <%-- <asp:BoundField DataField="Percentage" HeaderText="Percentage" />--%>
                                                                                        </columns>
                                                                                    </asp:GridView>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div align="center">
                                                                        <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                            <tr>

                                                                                <td colspan="4"
                                                                                    style="font-size: large; text-align: center; background-color: #0066FF; color: #FFFFFF; font-weight: bold;">POWER</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Label ID="lblpowerHEAD" Text="POWER TYPE" runat="server"></asp:Label>
                                                                                </td>

                                                                                <td>
                                                                                    <asp:Label ID="ddlPowerStatus" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td></td>
                                                                                <td></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Power Released Date</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtNewPowerReleaseDate" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td>Contracted load (In HP)</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtNewContractedLoad" runat="server"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Service Connection Number</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtServiceConnectionNumberNew" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td>Connected load (In HP)</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtNewConnectedLoad" runat="server"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        <table id="tblpower" runat="server" bgcolor="White" width="100%" border="2" style="font-family: Verdana; font-size: small;">
                                                                            <tr>
                                                                                <td style="height: 10px" colspan="4"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <asp:Label ID="lblexistingpower" runat="server"></asp:Label>
                                                                                </td>
                                                                            </tr>

                                                                            <tr>
                                                                                <td>Power Released Date</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtExistPowerReleaseDate" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td>Contracted load (In HP)</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtExistContractedLoad" runat="server"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Service Connection Number</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtServiceConnectionNumberExist" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td>Connected load (In HP)</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtExistConnectedLoad" runat="server"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="height: 10px" colspan="4"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <asp:Label ID="lblexpandiverpower" runat="server"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Power Released Date</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtExpanPowerReleaseDate" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td>Contracted load (In HP)</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtExpanContractedLoad" runat="server"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Service Connection Number</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtServiceConnectionNumberExpan" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td>Connected load (In HP)</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtExpanConnectedLoad" runat="server"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div align="center">
                                                                        <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                            <tr>

                                                                                <td align="center" colspan="4" style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                    <asp:Label ID="lblIndustries6" runat="server" Font-Bold="True" Font-Size="18px"
                                                                                        ForeColor="White">Employment</asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                                        <tr>
                                                                                            <td></td>
                                                                                            <td></td>
                                                                                            <td>Male(Nos)
                                                                                            </td>
                                                                                            <td>Female(Nos)
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>1
                                                                                            </td>
                                                                                            <td>Management & Staff 
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtstaffMale" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtStaffFemale" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>2
                                                                                            </td>
                                                                                            <td>Supervisory 
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtSuprMale" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtSuperFemale" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>3
                                                                                            </td>
                                                                                            <td>Skilled workers
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtSkilledWorkersMale" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtSkilledWorkersFemale" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>4
                                                                                            </td>
                                                                                            <td>Semi-skilled workers
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtSemiSkilledWorkersMale" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtSemiSkilledWorkersFemale" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div align="center">
                                                                        <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                            <tr>
                                                                                <td align="center" colspan="4"
                                                                                    style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                    <asp:Label ID="lblIndustries7" runat="server" Font-Bold="True" Font-Size="18px"
                                                                                        ForeColor="White">Implementation Steps Taken</asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center" colspan="4"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Date of application for Term Loan</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtTermloan" runat="server"></asp:Label>
                                                                                    &nbsp;</td>
                                                                                <td>Term Loan Sanctioned Date</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="txtdatesanctioned" runat="server"></asp:Label>
                                                                                    </span>

                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Term Loan Sanctioned reference No</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="txtsactionedloan" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                                <td>Name of the Institution</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="txtnmofinstitution" runat="server"></asp:Label>
                                                                                    </span>

                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div align="center" style="page-break-before: always;">
                                                                        <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                            <tr>

                                                                                <td align="center" colspan="4"
                                                                                    style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                    <asp:Label ID="lblIndustries9" runat="server" Font-Bold="True" Font-Size="18px"
                                                                                        ForeColor="White">Approved/Estimated projected cost, term loan sanctioned and released, assets acquired etc</asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                                        <tr>
                                                                                            <td style="text-align: center">Name of Asset</td>
                                                                                            <td style="text-align: center">Approved Project
                                                                                                    <br />
                                                                                                Cost  (Rs.)                                                                                                  
                                                                                            </td>
                                                                                            <td style="text-align: center">Loan Sanctioned (Rs.)</td>
                                                                                            <td style="text-align: center">Equity from
                                                                                                    <br />
                                                                                                the promoters (Rs.) 
                                                                                            </td>
                                                                                            <td style="text-align: center">Loan Amount
                                                                                                    <br />
                                                                                                Released (Rs.) 
                                                                                            </td>
                                                                                            <td style="text-align: center">Value of assets  (as
                                                                                                    <br />
                                                                                                certified by financial<br />
                                                                                                institution) (Rs.) 
                                                                                            </td>
                                                                                            <td style="text-align: center">Value of assets certified
                                                                                                    <br />
                                                                                                by Chartered Accoutant (Rs.)                                                                                        
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td style="text-align: center">1</td>
                                                                                            <td style="text-align: center">2</td>
                                                                                            <td style="text-align: center">3</td>
                                                                                            <td style="text-align: center">4</td>
                                                                                            <td style="text-align: center">5</td>
                                                                                            <td style="text-align: center">6</td>
                                                                                            <td style="text-align: center">7</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Land</td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtLand2" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtLand3" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtLand4" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtLand5" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtLand6" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtLand7" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Buildings</td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtBuilding2" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtBuilding3" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtBuilding4" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtBuilding5" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtBuilding6" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtBuilding7" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Plant & Machinery</td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtPM2" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtPM3" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtPM4" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtPM5" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtPM6" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtPM7" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Machinery Contingencies</td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtMCont2" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtMCont3" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtMCont4" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtMCont5" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtMCont6" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtMCont7" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Erection</td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtErec2" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtErec3" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtErec4" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtErec5" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtErec6" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtErec7" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Technical know-how,<br />
                                                                                                feasibility study</td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtTFS2" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtTFS3" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtTFS4" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtTFS5" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtTFS6" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtTFS7" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Working Capital</td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtWC2" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtWC3" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtWC4" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtWC5" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtWC6" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="txtWC7" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div align="center" id="divsecondhandMichinary" runat="server">
                                                                        <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                            <tr>
                                                                                <td align="center" colspan="6"
                                                                                    style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                    <asp:Label ID="lblIndustries11" runat="server" Font-Bold="True" Font-Size="18px"
                                                                                        ForeColor="White">Approved/Estimated projected cost, term loan sanctioned and released, assets acquired etc</asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr id="trSecondhandmachinery" runat="server">
                                                                                <td colspan="4">
                                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                                        <tr>
                                                                                            <td style="text-align: center">Second hand machinery
                                                                                                    <br />
                                                                                                value in Rs</td>
                                                                                            <td style="text-align: center">New machinery value in Rs</td>
                                                                                            <td style="text-align: center">Total value in Rs<br />
                                                                                                (1+2)</td>
                                                                                            <td style="text-align: center">% of second hand machinery
                                                                                        <br />
                                                                                                value in total machinery value</td>
                                                                                            <td style="text-align: center">Value of the machinery
                                                                                        <br />
                                                                                                purchaced from TSIDC<br />
                                                                                                (Telangana unit)/TSSFC
                                                                                        <br />
                                                                                                (Telangana unit)/Bank in Rs</td>
                                                                                            <td style="text-align: center">Total value in Rs
                                                                                        <br />
                                                                                                (2+5)</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td style="text-align: center">1</td>
                                                                                            <td style="text-align: center">2</td>
                                                                                            <td style="text-align: center">3</td>
                                                                                            <td style="text-align: center">4</td>
                                                                                            <td style="text-align: center">5</td>
                                                                                            <td style="text-align: center">6</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td style="text-align: center">
                                                                                                <asp:Label ID="txtsecondhndmachine" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td style="text-align: center">
                                                                                                <asp:Label ID="txtnewmachine" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td style="text-align: center">
                                                                                                <asp:Label ID="txtTotalvalue12" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td style="text-align: center">
                                                                                                <asp:Label ID="txtpercentage12" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td style="text-align: center">
                                                                                                <asp:Label ID="txtmachinepucr" runat="server"></asp:Label>
                                                                                            </td>
                                                                                            <td style="text-align: center">
                                                                                                <asp:Label ID="txttotal25" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td colspan="6"></td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div align="center">
                                                                        <table bgcolor="White" width="100%" border="2px"
                                                                            style="font-family: Verdana; font-size: small;">
                                                                            <tr>

                                                                                <td align="center" colspan="4"
                                                                                    style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                    <asp:Label ID="lblIndustries12" runat="server" Font-Bold="True" Font-Size="15px"
                                                                                        ForeColor="White">Registration with Commercial taxes Department Registration</asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>VAT No</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtvatno" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td>Registration Date</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="txtCSTRegDate" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>CST No</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtcstno" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td>Registring Authority Address</td>
                                                                                <td>
                                                                                    <span>
                                                                                        <asp:Label ID="txtCSTRegAuthAddress" runat="server"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Registring Authority</td>
                                                                                <td>
                                                                                    <asp:Label ID="txtCSTRegAuthority" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td></td>
                                                                                <td></td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divInvestmenSubsidy" runat="server" visible="false">
                                                                    <table bgcolor="White" border="2px" style="font-family: Verdana; font-size: small;" width="100%">
                                                                        <tr>
                                                                            <td colspan="2"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label36" runat="server" Font-Bold="True" Font-Size="15px"
                                                                                    ForeColor="White">ANNEXURE: VIII - Claiming of Investment Subsidy</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" style="font-size: medium">
                                                                                <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">1 Subsidy Already availed i.r.o Expansion / Diversification</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.1 Scheme in Rs.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAvldSubsidyScheme" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.2 Amount in Rs.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAvldSubsidyAmt" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" style="font-size: medium">
                                                                                <asp:Label ID="Label38" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">2 Incentives Applied for (in Rs.) on fixed capital investment</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>2.1 Scheme eligible</td>
                                                                            <td>
                                                                                <asp:Label ID="txtSchemeEligible" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top">2.2 Investment Subsidy</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAppldInvestSubsidy" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>2.3 Additional amount for Women</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAppldAddlAmtWomen" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>2.4 Total Investment Subsidy</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAppldTotInvestSubsidy" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divStampDuty" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Size="18px"
                                                                                    ForeColor="White">ANNEXURE: VI - Claiming of Stamp Duty, Transfer Duty, Mortgage Duty, Land Conversion Charges & Land Cost Purchased in IE/ IDA / IP’s </asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" style="font-size: medium">
                                                                                <asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">1   Land purchased details</asp:Label></td>
                                                                            <td colspan="2" style="font-size: medium">
                                                                                <asp:Label ID="Label41" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">2   Registered Deed Details</asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.1  Area as per registered sale deed in Sq Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaRegdSaledeed" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.1  Nature of transaction / deed registered for industrial use Sale deed / lease deed / Mortgage</td>
                                                                            <td>
                                                                                <asp:Label ID="txtNatureofTrans" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.2  Plinth area of the building as per approved plan By HUDA / DT&CP / IALA in Sq. Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtPlnthAreaBuild" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.2  Sub Registrar office</td>
                                                                            <td>
                                                                                <asp:Label ID="txtSubRegOffc" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>1.3  5 times of the plinth area of factory building in Sq. Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtFivePlnthAreaBuild" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.3  Registered deed number</td>
                                                                            <td>
                                                                                <asp:Label ID="txtRegdDeedNo" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>1.4  Area required for the factory as per the appraisal in Sq. Mts.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaReqdAppraisal" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.4  Date Of Registration</td>
                                                                            <td>
                                                                                <asp:Label ID="txtRegDate" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.5  Area required for the factory as per the norms of TSPCB or any other state govt. department in Sq. Mts.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaReqdTSPCB" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4" style="padding: 5px; margin: 5px; text-align: center;">
                                                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                                    <tr>
                                                                                        <td colspan="4" style="font-weight: bold; text-align: left">3   Details of duty paid and claimed</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td></td>
                                                                                        <td>Nature Of Payment</td>
                                                                                        <td>Amount Paid</td>
                                                                                        <td>Amount Claimed</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>3.1</td>
                                                                                        <td>Stamp Duty / transfer duty</td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtStampTranfrDutyAP" runat="server"></asp:Label>
                                                                                        </td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtStampTranfrDutyAC" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>3.2</td>
                                                                                        <td>Mortgage & Hypothecations Duty</td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtMortgageHypothDutyAP" runat="server"></asp:Label>
                                                                                        </td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtMortgageHypothDutyAC" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>3.3</td>
                                                                                        <td>Land Conversion charges</td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtLandConvrChrgAP" runat="server"></asp:Label>
                                                                                        </td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtLandConvrChrgAC" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>3.4</td>
                                                                                        <td>Cost of land in case of purchase in IE / IDA / IP</td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtLandCostIeIdaIpAP" runat="server"></asp:Label>
                                                                                        </td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtLandCostIeIdaIpAC" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divStampDuty1" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Size="18px"
                                                                                    ForeColor="White">ANNEXURE: VI - Claiming of Stamp Duty/Transfer Duty</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" style="font-size: medium">
                                                                                <asp:Label ID="Label111" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">1   Land purchased details</asp:Label></td>
                                                                            <td colspan="2" style="font-size: medium">
                                                                                <asp:Label ID="Label181" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">2   Registered Deed Details</asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.1  Area as per registered sale deed in Sq Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaRegdSaledeed1" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.1  Nature of transaction / deed registered for industrial use Sale deed / lease deed / Mortgage</td>
                                                                            <td>
                                                                                <asp:Label ID="txtNatureofTrans1" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.2  Plinth area of the building as per approved plan By HUDA / DT&CP / IALA in Sq. Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtPlnthAreaBuild1" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.2  Sub Registrar office</td>
                                                                            <td>
                                                                                <asp:Label ID="txtSubRegOffc1" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>1.3  5 times of the plinth area of factory building in Sq. Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtFivePlnthAreaBuild1" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.3  Registered deed number</td>
                                                                            <td>
                                                                                <asp:Label ID="txtRegdDeedNo1" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>1.4  Area required for the factory as per the appraisal in Sq. Mts.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaReqdAppraisal1" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.4  Date Of Registration</td>
                                                                            <td>
                                                                                <asp:Label ID="txtRegDate1" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.5  Area required for the factory as per the norms of TSPCB or any other state govt. department in Sq. Mts.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaReqdTSPCB1" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4" style="padding: 5px; margin: 5px; text-align: center;">
                                                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                                    <tr>
                                                                                        <td colspan="4" style="font-weight: bold; text-align: left">3   Details of duty paid and claimed</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td></td>
                                                                                        <td>Nature Of Payment</td>
                                                                                        <td>Amount Paid</td>
                                                                                        <td>Amount Claimed</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>3.1</td>
                                                                                        <td>Stamp Duty / transfer duty</td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtStampTranfrDutyAP1" runat="server"></asp:Label>
                                                                                        </td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtStampTranfrDutyAC1" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divStampDuty2" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Size="18px"
                                                                                    ForeColor="White">ANNEXURE: VI - Claiming of Mortgage Duty</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" style="font-size: medium">
                                                                                <asp:Label ID="Label112" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">1   Land purchased details</asp:Label></td>
                                                                            <td colspan="2" style="font-size: medium">
                                                                                <asp:Label ID="Label182" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">2   Registered Deed Details</asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.1  Area as per registered sale deed in Sq Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaRegdSaledeed2" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.1  Nature of transaction / deed registered for industrial use Sale deed / lease deed / Mortgage</td>
                                                                            <td>
                                                                                <asp:Label ID="txtNatureofTrans2" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.2  Plinth area of the building as per approved plan By HUDA / DT&CP / IALA in Sq. Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtPlnthAreaBuild2" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.2  Sub Registrar office</td>
                                                                            <td>
                                                                                <asp:Label ID="txtSubRegOffc2" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>1.3  5 times of the plinth area of factory building in Sq. Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtFivePlnthAreaBuild2" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.3  Registered deed number</td>
                                                                            <td>
                                                                                <asp:Label ID="txtRegdDeedNo2" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>1.4  Area required for the factory as per the appraisal in Sq. Mts.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaReqdAppraisal2" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.4  Date Of Registration</td>
                                                                            <td>
                                                                                <asp:Label ID="txtRegDate2" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.5  Area required for the factory as per the norms of TSPCB or any other state govt. department in Sq. Mts.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaReqdTSPCB2" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4" style="padding: 5px; margin: 5px; text-align: center;">
                                                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                                    <tr>
                                                                                        <td colspan="4" style="font-weight: bold; text-align: left">3   Details of duty paid and claimed</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td></td>
                                                                                        <td>Nature Of Payment</td>
                                                                                        <td>Amount Paid</td>
                                                                                        <td>Amount Claimed</td>
                                                                                    </tr>

                                                                                    <tr>
                                                                                        <td>3.1</td>
                                                                                        <td>Mortgage & Hypothecations Duty</td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtMortgageHypothDutyAP2" runat="server"></asp:Label>
                                                                                        </td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtMortgageHypothDutyAC2" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>

                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divStampDuty3" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Size="18px"
                                                                                    ForeColor="White">ANNEXURE: VI - Claiming of Land Conversion Charges</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" style="font-size: medium">
                                                                                <asp:Label ID="Label113" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">1   Land purchased details</asp:Label></td>
                                                                            <td colspan="2" style="font-size: medium">
                                                                                <asp:Label ID="Label183" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">2   Registered Deed Details</asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.1  Area as per registered sale deed in Sq Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaRegdSaledeed3" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.1  Nature of transaction / deed registered for industrial use Sale deed / lease deed / Mortgage</td>
                                                                            <td>
                                                                                <asp:Label ID="txtNatureofTrans3" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.2  Plinth area of the building as per approved plan By HUDA / DT&CP / IALA in Sq. Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtPlnthAreaBuild3" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.2  Sub Registrar office</td>
                                                                            <td>
                                                                                <asp:Label ID="txtSubRegOffc3" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>1.3  5 times of the plinth area of factory building in Sq. Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtFivePlnthAreaBuild3" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.3  Registered deed number</td>
                                                                            <td>
                                                                                <asp:Label ID="txtRegdDeedNo3" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>1.4  Area required for the factory as per the appraisal in Sq. Mts.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaReqdAppraisal3" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.4  Date Of Registration</td>
                                                                            <td>
                                                                                <asp:Label ID="txtRegDate3" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.5  Area required for the factory as per the norms of TSPCB or any other state govt. department in Sq. Mts.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaReqdTSPCB3" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4" style="padding: 5px; margin: 5px; text-align: center;">
                                                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                                    <tr>
                                                                                        <td colspan="4" style="font-weight: bold; text-align: left">3   Details of duty paid and claimed</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td></td>
                                                                                        <td>Nature Of Payment</td>
                                                                                        <td>Amount Paid</td>
                                                                                        <td>Amount Claimed</td>
                                                                                    </tr>

                                                                                    <tr>
                                                                                        <td>3.1</td>
                                                                                        <td>Land Conversion charges</td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtLandConvrChrgAP3" runat="server"></asp:Label>
                                                                                        </td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtLandConvrChrgAC3" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>

                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divStampDuty4" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Size="18px"
                                                                                    ForeColor="White">ANNEXURE: VI - Claiming of Land Cost Purchased in IE/ IDA / IP’s </asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" style="font-size: medium">
                                                                                <asp:Label ID="Label114" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">1   Land purchased details</asp:Label></td>
                                                                            <td colspan="2" style="font-size: medium">
                                                                                <asp:Label ID="Label184" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">2   Registered Deed Details</asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.1  Area as per registered sale deed in Sq Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaRegdSaledeed4" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.1  Nature of transaction / deed registered for industrial use Sale deed / lease deed / Mortgage</td>
                                                                            <td>
                                                                                <asp:Label ID="txtNatureofTrans4" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.2  Plinth area of the building as per approved plan By HUDA / DT&CP / IALA in Sq. Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtPlnthAreaBuild4" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.2  Sub Registrar office</td>
                                                                            <td>
                                                                                <asp:Label ID="txtSubRegOffc4" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>1.3  5 times of the plinth area of factory building in Sq. Mts</td>
                                                                            <td>
                                                                                <asp:Label ID="txtFivePlnthAreaBuild4" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.3  Registered deed number</td>
                                                                            <td>
                                                                                <asp:Label ID="txtRegdDeedNo4" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>1.4  Area required for the factory as per the appraisal in Sq. Mts.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaReqdAppraisal4" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2.4  Date Of Registration</td>
                                                                            <td>
                                                                                <asp:Label ID="txtRegDate4" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.5  Area required for the factory as per the norms of TSPCB or any other state govt. department in Sq. Mts.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAreaReqdTSPCB4" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4" style="padding: 5px; margin: 5px; text-align: center;">
                                                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                                    <tr>
                                                                                        <td colspan="4" style="font-weight: bold; text-align: left">3   Details of duty paid and claimed</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td></td>
                                                                                        <td>Nature Of Payment</td>
                                                                                        <td>Amount Paid</td>
                                                                                        <td>Amount Claimed</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>3.1</td>
                                                                                        <td>Cost of land in case of purchase in IE / IDA / IP</td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtLandCostIeIdaIpAP4" runat="server"></asp:Label>
                                                                                        </td>
                                                                                        <td align="center">
                                                                                            <asp:Label ID="txtLandCostIeIdaIpAC4" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divPowerCost" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label42" runat="server" Font-Bold="True" Font-Size="18px"
                                                                                    ForeColor="White">ANNEXURE: VII - Reimbursement of Power Cost</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left">1.  For Expansion / Diversification</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left">1.1 Power utilised during previous 3 years</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:GridView ID="gvPowerIncentives" runat="server" AutoGenerateColumns="False"
                                                                                    Font-Names="Verdana" Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                                                    <columns>
                                                                                        <asp:TemplateField HeaderText="Sl No.">
                                                                                            <itemtemplate>
                                                                                                <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                                                            </itemtemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:BoundField DataField="FinancialYear" HeaderText="Financial year" />
                                                                                        <asp:BoundField DataField="UnitsConsumed" HeaderText="Units consumed" />
                                                                                        <asp:BoundField DataField="Amount" HeaderText="Amount paid in Rs" />
                                                                                    </columns>
                                                                                </asp:GridView>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left">2. Energy consumption details from DCP</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:GridView ID="gvEnergy" runat="server" AutoGenerateColumns="False"
                                                                                    Font-Names="Verdana" Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                                                    <columns>
                                                                                        <asp:TemplateField HeaderText="Sl No.">
                                                                                            <itemtemplate>
                                                                                                <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                                                            </itemtemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:BoundField DataField="FinancialYearNew" HeaderText="Financial year" />
                                                                                        <asp:BoundField DataField="F_UnitsConsumed" HeaderText="1st Half Year Units consumed" />
                                                                                        <asp:BoundField DataField="F_Amount" HeaderText="1st Half Year Amount paid in Rs" />
                                                                                        <asp:BoundField DataField="S_UnitsConsumed" HeaderText="2nd Half Year Units consumed" />
                                                                                        <asp:BoundField DataField="S_Amount" HeaderText="2nd Half Year Amount paid in Rs" />
                                                                                    </columns>
                                                                                </asp:GridView>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left">Claim Applied for (Amount in Rs.) :&nbsp;   
                                            <asp:Label ID="txtClaimedAmount" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divPavalaVaddi" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label43" runat="server" Font-Bold="True" Font-Size="18px"
                                                                                    ForeColor="White">ANNEXURE: IX - Reimbursement of Interest Subsidy under Pavala Vaddi Scheme</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left">1.  Interest paid details from DCP</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:GridView ID="gvInterestDCP" runat="server" AutoGenerateColumns="False"
                                                                                    Font-Names="Verdana" Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                                                    <columns>
                                                                                        <asp:TemplateField HeaderText="Sl No.">
                                                                                            <itemtemplate>
                                                                                                <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                                                            </itemtemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:BoundField DataField="FinancialYearNew" HeaderText="Financial year" />
                                                                                        <asp:BoundField DataField="IntrestPaid" HeaderText="Interest paid on Term Loan on half yearly basis" />
                                                                                        <asp:BoundField DataField="RateofIntrest" HeaderText="Rate of interest %" />

                                                                                        <asp:BoundField DataField="IntrestPenaltyPaid" HeaderText="Interest paid (Rs.) excluding penal interest" />
                                                                                        <asp:BoundField DataField="Eligible" HeaderText="Eligible % (Max 9%)" />
                                                                                        <asp:BoundField DataField="AmountClaimed" HeaderText="Amount claimed (Rs.)" />
                                                                                    </columns>
                                                                                </asp:GridView>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divSalesTax" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label44" runat="server" Font-Bold="True" Font-Size="18px"
                                                                                    ForeColor="White">ANNEXURE: XI - Reimbursement of Sales Tax</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left">1.  Production Details preceeding 3 years before expansion / diversification 
                                            <br />
                                                                                &nbsp;&nbsp;&nbsp; certified by the financial institution / CA
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:GridView ID="gvProductiondtls" runat="server" AutoGenerateColumns="False"
                                                                                    Font-Names="Verdana" Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                                                    <columns>
                                                                                        <asp:TemplateField HeaderText="Sl No.">
                                                                                            <itemtemplate>
                                                                                                <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                                                            </itemtemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:BoundField DataField="FinancialYearNew" HeaderText="Financial year" />
                                                                                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                                                                        <asp:BoundField DataField="Unit" HeaderText="Unit" />
                                                                                        <asp:BoundField DataField="Value" HeaderText="Value In Rs" />
                                                                                    </columns>
                                                                                </asp:GridView>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style1"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left">2. Sales Tax paid since DCP as certified by CTO</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:GridView ID="gvSalesTax" runat="server" AutoGenerateColumns="False"
                                                                                    Font-Names="Verdana" Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                                                    <columns>
                                                                                        <asp:TemplateField HeaderText="Sl No.">
                                                                                            <itemtemplate>
                                                                                                <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                                                            </itemtemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:BoundField DataField="FinancialYearNew" HeaderText="Financial year" />
                                                                                        <asp:BoundField DataField="F_AmountPaid" HeaderText="1st Half Year Amount Paid in Rs." />
                                                                                        <asp:BoundField DataField="F_AmountClaimed" HeaderText="1st Half Year Amount claimed in Rs." />
                                                                                        <asp:BoundField DataField="S_AmountPaid" HeaderText="2nd Half Year Amount Paid in Rs." />
                                                                                        <asp:BoundField DataField="S_AmountClaimed" HeaderText="2nd Half Year Amount claimed in Rs." />
                                                                                    </columns>
                                                                                </asp:GridView>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divQualityCertification" runat="server" visible="false">
                                                                    <table bgcolor="White" border="2px" style="font-family: Verdana; font-size: small;" width="100%">
                                                                        <tr>
                                                                            <td colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label45" runat="server" Font-Bold="True" Font-Size="15px"
                                                                                    ForeColor="White">ANNEXURE: XII - Reimbursement of Quality Certification Charges for Acquiring Certification Cost                                                    
                                                                                </asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4" style="font-size: medium">
                                                                                <asp:Label ID="Label46" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">Details of ISO 9000 / ISO 14001 / HACCP Certificate</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1 Name of certifying agency</td>
                                                                            <td>
                                                                                <asp:Label ID="txtagencyName" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>2 Certificate Number</td>
                                                                            <td>
                                                                                <asp:Label ID="txtCertificatNumber" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>3  Date of Issue</td>
                                                                            <td>
                                                                                <asp:Label ID="txtDateofIssue" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td valign="top">4  Period of Validity</td>
                                                                            <td>
                                                                                <asp:Label ID="txtPeriodofValidity" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4"><strong>Address of certifying agency</strong></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>5  State</td>
                                                                            <td>
                                                                                <asp:Label ID="ddlstate" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td valign="top">6  District</td>
                                                                            <td>
                                                                                <asp:Label ID="ddlDistrict" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>7  Mandal</td>
                                                                            <td>
                                                                                <asp:Label ID="ddlmandal" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td valign="top">8  Village/Town</td>
                                                                            <td>
                                                                                <asp:Label ID="ddlvillage" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>9  Door No</td>
                                                                            <td>
                                                                                <asp:Label ID="txtdoorno" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td valign="top">10  Pin Code</td>
                                                                            <td>
                                                                                <asp:Label ID="txtpincode" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4" style="font-size: medium">
                                                                                <asp:Label ID="Label47" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">Subsidy already received for the certification in Rs.</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>11 From Central Government</td>
                                                                            <td>
                                                                                <asp:Label ID="txtFromCentralGovernment" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td valign="top">12  From Financing Institution</td>
                                                                            <td>
                                                                                <asp:Label ID="txtFinancingInstitution" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>13  From State Government</td>
                                                                            <td>
                                                                                <asp:Label ID="txtFromStateGovernment" runat="server"></asp:Label>
                                                                            </td>

                                                                            <td>14 Amount spent in acquiring the certification</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAmountspentinacquiringthecertification" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4"></td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divCleanerProduction" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label48" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: XIII - Reimbursement on equipment purchased for cleaner production measures.</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left">1. Details of equipment purchased for the purpose</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                                                <asp:GridView ID="gvCertificate" runat="server" AutoGenerateColumns="False"
                                                                                    Font-Names="Verdana" Font-Size="12px" SkinID="gridviewSkin" Width="1000px">
                                                                                    <columns>
                                                                                        <asp:TemplateField HeaderText="Sl No.">
                                                                                            <itemtemplate>
                                                                                                <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                                                            </itemtemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:BoundField DataField="Nameoftheequipment" HeaderText="Name of the equipment" />
                                                                                        <asp:BoundField DataField="Nameaddressofsupplier" HeaderText="Name & address of supplier" />
                                                                                        <asp:BoundField DataField="BillNo" HeaderText="Bill No" />
                                                                                        <asp:BoundField DataField="BillDate" HeaderText="Bill Date" />
                                                                                        <asp:BoundField DataField="Costoftheequipment" HeaderText="Cost of the equipment in Rs." />
                                                                                        <asp:BoundField DataField="VATCST" HeaderText="VAT/CST in Rs." />
                                                                                        <asp:BoundField DataField="ExciseDuty" HeaderText="Excise Duty in Rs." />
                                                                                        <asp:BoundField DataField="FreightCharge" HeaderText="Freight Charge in Rs." />
                                                                                        <asp:BoundField DataField="Othercharges" HeaderText="Other charges in Rs." />
                                                                                        <asp:BoundField DataField="TotalinRs" HeaderText="Total in Rs." />
                                                                                        <%--<asp:TemplateField Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblid" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
                                                                                    </columns>
                                                                                </asp:GridView>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Amount of subsidy claimed in Rs.&nbsp;    
                                    <asp:Label ID="txtsubsidyclaimed" runat="server" Style="font-weight: 700"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divSkillupgradation" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label49" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: XIV - Reimbursement of costs involved in Skill upgradation and training</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left" colspan="4">1. Training Undergone</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.1   Name of the training institute</td>
                                                                            <td>
                                                                                <asp:Label ID="txtagencyName1" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.2&nbsp;&nbsp; Duration of training                                    
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtDurationoftraining" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.3   Name of the skill development programme</td>
                                                                            <td>
                                                                                <asp:Label ID="txtNameoftheskilldevelopmentprogramme" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.4&nbsp;&nbsp; Number of skilled employees trained by the industry                                    
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtNumberskilledemployees" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.5   Expenditure incurred for training programme</td>
                                                                            <td>
                                                                                <asp:Label ID="txtExpenditureincurredfortrainingprogramme" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.6&nbsp;&nbsp; Amount claimed in Rs.
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtAmountclaimedinRs" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4"></td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divIIDF" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label50" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: XIV - Claiming for SANCTION OF INDUSTRIAL INFRASTRUCTURE DEVELOPMENT FUND (IIDF) </asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left" colspan="4">1. IIDF Fund</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.1   Whether the unit is located in Industrial Area declared by the Governement</td>
                                                                            <td>
                                                                                <asp:Label ID="txtUnitLocatedinIndustArea" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.2  Justification for the location of the Industry, if it is located outside IA declared by the Government                                    
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtJustLocation" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.3   Source of Finance</td>
                                                                            <td>
                                                                                <asp:Label ID="txtFinanceSource" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.4   Description of the infrastructure facilities required and its objectives
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtReqdInfraFacilities" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.5   Estimates of Infrastructure facilities</td>
                                                                            <td>
                                                                                <asp:Label ID="txtEstimatesInfra" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.6   How the proposed infrastructure is critical to the Industrial Enterprise
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtProposedInfraCritical" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.7   Name of the Chartered Engineer / Agency who prepared the estimates</td>
                                                                            <td>
                                                                                <asp:Label ID="txtCAName" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.8   Duration of the project
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtProjDuration" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.9   Measures proposed to maintain the infrastructure created & its maintenance cost per annum</td>
                                                                            <td>
                                                                                <asp:Label ID="txtMaintanCostAnnum" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.10  Amount claimed in Rs.
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtAmtClaimed" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4"></td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center" id="divSCAndST" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label51" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: XVI - Claiming Advance Subsidy for SC / ST Entrepreneurs</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left" colspan="4">1. Means of Finance</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.1   Total equity from promotors / share holders / partners to be brought in Rs.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtTotalEquity" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.2  Own capital in Rs.
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtOwnCapital" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1.3   Borrowed from outside Rs.</td>
                                                                            <td>
                                                                                <asp:Label ID="txtBorrowed" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.4   Advance Subsidy claimed in Rs.
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtAdvSubClaimed" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4"></td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center" id="DIVCOAL" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label90" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: XVII - Claiming COAL SUBSIDY</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left" colspan="4">1. COAL SUBSIDY</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Financial Year</td>
                                                                            <td>
                                                                                <asp:Label ID="txtFinancialYear" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1st/2nd Half Year
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txt1st2ndHalfYear" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Coal Quantity</td>
                                                                            <td>
                                                                                <asp:Label ID="txtCoalQuan" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>Unit Of Measurement
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtUnitOfMeasure" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Amount Paid</td>
                                                                            <td>
                                                                                <asp:Label ID="txtamntPaid" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>Amount Claimed
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtAmntClaimed" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr id="TRFIRSTHALFYEAR_COAL" runat="server" visible="false">
                                                                            <td>1.1   1st Half Year Amount Paid in Rs.</td>
                                                                            <td>
                                                                                <asp:Label ID="txt1stHlfyramntpaid" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.2  1st Half Year Amount Claimed in Rs.
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txt1stHlfyramntclaimed" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr id="TRSECONDHALFYEAR_COAL" runat="server" visible="false">
                                                                            <td>1.3   2nd Half Year Amount Paid in Rs.</td>
                                                                            <td>
                                                                                <asp:Label ID="txt2ndHlfyramntpaid" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.4   2nd Half Year Amount Claimed in Rs.
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txt2ndHlfyramntclaimed" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left" colspan="4">1.1 Internal Power Generation</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Quantity</td>
                                                                            <td>
                                                                                <asp:Label ID="txtQuantity" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>Unit Of Measurement
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtUnitOfMeasurem" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left" colspan="4">1.2 Production Of Paper</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Quantity</td>
                                                                            <td>
                                                                                <asp:Label ID="txtPaperQuan" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>Unit Of Measurement
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtPaperUnitOfMeasurem" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4"></td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>

                                                                <div align="center" id="DIVTRANSPORTDUTY" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px"
                                                                        style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label63" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE:Claiming Transport Subsidy </asp:Label>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; font-size: large; font-weight: bold;">
                                                                                <asp:GridView ID="gvcomponentdetails" runat="server" AutoGenerateColumns="False"
                                                                                    Font-Names="Verdana" Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                                                    <columns>
                                                                                        <asp:TemplateField HeaderText="Sl No.">
                                                                                            <itemtemplate>
                                                                                                <asp:Label ID="Label64" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                                                            </itemtemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:BoundField DataField="Partorcomponentorgoodsname" HeaderText="Details of Parts/Components/Goods Transported" />
                                                                                        <asp:BoundField DataField="InstalledCapacity" HeaderText="Quantity" />
                                                                                        <asp:BoundField DataField="Unit" HeaderText="Units" />
                                                                                        <asp:BoundField DataField="units_others" HeaderText="Other Units" />
                                                                                    </columns>
                                                                                </asp:GridView>
                                                                            </td>
                                                                        </tr>

                                                                        <tr style="border-block-end-width: medium">

                                                                            <td>1  Means of Transportation(Third Party Logistics/Train/Own Trasnport)
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblthirdparty" Width="152px" runat="server"></asp:Label>
                                                                                <br />
                                                                                <asp:Label ID="lbltrain" runat="server"></asp:Label>
                                                                                <br />
                                                                                <asp:Label ID="lblowntransport" runat="server"></asp:Label>

                                                                            </td>
                                                                            <td id="tdnameofthirdpartyagencty" runat="server" visible="false">2a  Name of the third party transport agency</td>
                                                                            <td id="tdnameofthirdpartyagencty1" runat="server" visible="false">
                                                                                <asp:Label ID="lblnameofthirdpartagancy" runat="server" Visible="false"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <caption>
                                                                            &lt;
                                            <tr>
                                                <td>2 Nature of Expenditure Incurred(waybill/Fuel Bill/Freight Charges) </td>
                                                <td>
                                                    <asp:Label ID="lblwaybill" runat="server"></asp:Label>
                                                    <br />
                                                    <asp:Label ID="lblfuelbill" runat="server"></asp:Label>
                                                    <br />
                                                    <asp:Label ID="lblfreightcharges" runat="server"></asp:Label>
                                                </td>
                                                <td>3 Total Amount of Expenditure Incurred</td>
                                                <td>
                                                    <asp:Label ID="lbltotalamountofexpenditure" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                                                            <tr>
                                                                                <td>4 Amount of Subsidy being claimed(INR) </td>
                                                                                <td>
                                                                                    <asp:Label ID="lblamountofsubsidyclaimed" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td>5 Total amount of subsidy already sanctioned till date for Transport Subsidy(INR)</td>
                                                                                <td>
                                                                                    <asp:Label ID="lbltotalamountalreadysanctioned" runat="server"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>

                                                                                <td>6   Financial Year
                                                                                </td>
                                                                                <td>
                                                                                    <asp:Label ID="lblfinancialyear" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td>7   First or Second Half</td>
                                                                                <td>
                                                                                    <asp:Label ID="lblfirstorsecondhalf" runat="server"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="4"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="4"></td>
                                                                            </tr>
                                                                        </caption>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center" id="DIVWOOD" runat="server" visible="false">
                                                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                        <tr>
                                                                            <td align="center" colspan="4"
                                                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                                                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: XVIII - Claiming WOOD SUBSIDY</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left" colspan="4">1. WOOD SUBSIDY</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Financial Year</td>
                                                                            <td>
                                                                                <asp:Label ID="txtFinancialYearWood" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1st/2nd Half Year
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txt1st2ndHlfYearWood" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1st/2nd Quarter</td>
                                                                            <td>
                                                                                <asp:Label ID="txt1st2ndQuarter" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td></td>
                                                                            <td>
                                                                                <%--<asp:Label ID="Label14" runat="server"></asp:Label>--%>
                                                                            </td>
                                                                        </tr>
                                                                        <%--<tr>
                                            <td>Wood Quantity</td>
                                            <td>
                                                <asp:Label ID="txtWoodQuan" runat="server"></asp:Label>
                                            </td>
                                            <td>Unit Measurement Wood
                                            </td>
                                            <td>
                                                <asp:Label ID="txtUnitMeasureWood" runat="server"></asp:Label>
                                            </td>
                                        </tr>--%>
                                                                        <tr id="TRFIRSTHALFYEARFIRSTQUARTER_WOOD" runat="server" visible="false">
                                                                            <td>1.1   1st Half Year 1st quarter Amount Paid in Rs.</td>
                                                                            <td>
                                                                                <asp:Label ID="txt1sthlfyr1stquaamntpaid" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.2  1st Half Year 1st quarter Amount Claimed in Rs.
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txt1sthlfyr1stquaamntclaimed" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr id="TRFIRSTHALFYEARSECONDQUARTER_WOOD" runat="server" visible="false">
                                                                            <td>1.3   1st Half Year 2nd quarter Amount Paid in Rs.</td>
                                                                            <td>
                                                                                <asp:Label ID="txt1sthlfyr2ndquaamntpaid" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.4   1st Half Year 2nd quarter Amount Claimed in Rs.
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txt1sthlfyr2ndquaamntclaimed" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr id="TRSECONDHALFYEARFIRSTQUARTER_WOOD" runat="server" visible="false">
                                                                            <td>1.5   2nd Half Year 1st quarter Amount Paid in Rs.</td>
                                                                            <td>
                                                                                <asp:Label ID="txt2ndhlfyr1stquaamntpaid" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.6  2nd Half Year 1st quarter Amount Claimed in Rs.
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txt2ndhlfyr1stquaamntclaimed" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr id="TRSECONDHALFYEARSECONDQUARTER_WOOD" runat="server" visible="false">
                                                                            <td>1.7   2nd Half Year 2nd quarter Amount Paid in Rs.</td>
                                                                            <td>
                                                                                <asp:Label ID="txt2ndhlfyr2ndquaamntpaid" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>1.8   2nd Half Year 2nd quarter Amount Claimed in Rs.
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txt2ndhlfyr2ndquaamntclaimed" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Is Previously Wood Sanctioned in Year</td>
                                                                            <td>
                                                                                <asp:Label ID="txtYesNo" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td id="TDSANCTIONEDCLAIMSA" runat="server" visible="false">No of Quarters Previously Sanctioned In Year
                                                                            </td>
                                                                            <td id="TDSANCTIONEDCLAIMSB" runat="server" visible="false">
                                                                                <asp:Label ID="txtSanctionedYear" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr id="TRFIRSTQUARTER" runat="server" visible="false">
                                                                            <td>1st Quarter Quantity</td>
                                                                            <td>
                                                                                <asp:Label ID="txt1stQuaQuan" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr id="TRSECONDQUARTER" runat="server" visible="false">
                                                                            <td>2nd Quarter Quantity</td>
                                                                            <td>
                                                                                <asp:Label ID="txt2ndQuaQuan" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr id="TRTHIRDQUARTER" runat="server" visible="false">
                                                                            <td>3rd Quarter Quantity</td>
                                                                            <td>
                                                                                <asp:Label ID="txt3rdQuaQuan" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td></td>
                                                                            <td>
                                                                                <%--<asp:Label ID="Label14" runat="server"></asp:Label>--%>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>ADMT Quantity</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAdmtQuan" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>Unit Of Measurement
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtUnitOfMeasWood" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Amount paid</td>
                                                                            <td>
                                                                                <asp:Label ID="txtAmntPaidWd" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>Amount Claimed
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtAmntClaimedWd" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-weight: bold; text-align: left" colspan="4">1.1 Production Of Paper</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Quantity</td>
                                                                            <td>
                                                                                <asp:Label ID="txtQuantityP" runat="server"></asp:Label>
                                                                            </td>
                                                                            <td>Unit Of Measurement
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="txtUnitOfMeasurement" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4"></td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" style="text-align: center">
                                                                <asp:Button ID="Button1" runat="server" Height="32px" Width="90px" Text=" Print " OnClientClick="javascript:CallPrint('Receipt')" />

                                                                <%--<a href="HomeDashboard.aspx">HOME</a>--%>
                                                            </td>
                                                        </tr>
                                                    </table>


                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default" id="divlastattachemntold" runat="server">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                            Attachments
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                    <div class="panel-body">
                                        <%--   <table>
                                    <tr>
                                        <td style="padding: 10px; margin: 5px; font-weight: bold;">1. </td>
                                        <td style="text-align: left;">Attchments</td>
                                        <td style="text-align: left;">
                                            <span>
                                                <asp:HyperLink ID="AnchorView" Font-Bold="false" Font-Size="Larger" ForeColor="Blue" runat="server" Target="_blank">View Attchments</asp:HyperLink>
                                            </span>
                                        </td>
                                        <td style="padding: 10px; margin: 5px; font-weight: bold;">2. </td>
                                        <td style="text-align: left;">Applicant Application</td>
                                        <td style="text-align: left;">

                                            <asp:HyperLink ID="HyperLink1" Font-Bold="false" Font-Size="Larger" ForeColor="Blue" runat="server" Target="_blank">View Application</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 10px; margin: 5px; font-weight: bold;">3. </td>
                                        <td style="text-align: left;">Draft</td>
                                        <td style="text-align: left;">
                                            <span>
                                                <asp:HyperLink ID="HyperLink3" Font-Bold="false" Font-Size="Larger" ForeColor="Blue" runat="server" Target="_blank">View Draft</asp:HyperLink>
                                            </span>
                                        </td>
                                    </tr>
                                </table>--%>
                                        <div align="center">
                                            <%-- <table style="padding-left: 25px; width: 600px;">
                                        <tr>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th style="text-align: center;">Documents / Attachments Submitted
                                            </th>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                <asp:GridView ID="gvAttachments" runat="server" AutoGenerateColumns="False"
                                                    Width="100%" HorizontalAlign="Left" ShowHeader="false">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Attachments">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbl" runat="server" Text='<%# Eval("AttachmentName") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Left" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="View">
                                                            <ItemTemplate>
                                                                <asp:HyperLink ID="HyperLink1" Text="view" NavigateUrl='<%#Eval("FilePath") %>' Target="_blank" runat="server" />
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Left" />
                                                        </asp:TemplateField>

                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdStyle" align="center">&nbsp;</td>
                                        </tr>
                                    </table>--%>
                                            <table width="100%" id="tblSubsidy" runat="server">
                                                <tr>
                                                    <td colspan="10" style="padding: 10px; margin: 5px; font-weight: bold;">Incentive wise Attachments
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 10px; margin: 5px;">
                                                        <asp:GridView ID="gvSubsidy" runat="server" AutoGenerateColumns="False"
                                                            Width="96%" HorizontalAlign="Left" ShowHeader="true" OnRowDataBound="gvSubsidy_RowDataBound">
                                                            <columns>
                                                                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                    <itemtemplate>
                                                                        <%# Container.DataItemIndex + 1%>
                                                                    </itemtemplate>
                                                                    <headerstyle horizontalalign="Center" />
                                                                    <itemstyle width="50px" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Type of Attachment">
                                                                    <itemtemplate>
                                                                        <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("Category")%>'></asp:Label>
                                                                    </itemtemplate>
                                                                    <itemstyle horizontalalign="Left" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Attachments">
                                                                    <itemtemplate>
                                                                        <asp:Label ID="lbl" runat="server" Text='<%# Eval("AttachmentName")%>'></asp:Label>
                                                                    </itemtemplate>
                                                                    <itemstyle horizontalalign="Left" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="View">
                                                                    <itemtemplate>
                                                                        <asp:HyperLink ID="HyperLinkSubsidy" Text="view" NavigateUrl='<%#Eval("FilePath")%>' Target="_blank" runat="server" />
                                                                    </itemtemplate>
                                                                    <itemstyle horizontalalign="Left" width="100px" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Verified">
                                                                    <itemtemplate>
                                                                        <asp:Label ID="lblverified" Text='<%#Eval("Verified")%>' runat="server"></asp:Label>
                                                                    </itemtemplate>
                                                                    <itemstyle horizontalalign="Left" width="100px" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Attachment" Visible="false">
                                                                    <itemtemplate>
                                                                        <asp:Label ID="lblFileName" runat="server" Text='<%#Eval("LINKNEW") %>'></asp:Label>
                                                                    </itemtemplate>
                                                                </asp:TemplateField>
                                                            </columns>
                                                        </asp:GridView>
                                                    </td>
                                                </tr>

                                                <tr id="trQueryResponceAttachments" runat="server" visible="false">
                                                    <td colspan="10" style="padding: 10px; margin: 5px; font-weight: bold;">Query Responce Attachments
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 10px; margin: 5px;">
                                                        <asp:GridView ID="gvqquryresponceattachment" runat="server" AutoGenerateColumns="False"
                                                            Width="80%" HorizontalAlign="Left" ShowHeader="true" OnRowDataBound="gvqquryresponceattachment_RowDataBound">
                                                            <columns>
                                                                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                    <itemtemplate>
                                                                        <%# Container.DataItemIndex + 1%>
                                                                    </itemtemplate>
                                                                    <headerstyle horizontalalign="Center" />
                                                                    <itemstyle width="50px" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Attachments">
                                                                    <itemtemplate>
                                                                        <asp:Label ID="lbl" runat="server" Text='<%# Eval("AttachmentName")%>'></asp:Label>
                                                                    </itemtemplate>
                                                                    <itemstyle horizontalalign="Left" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="View">
                                                                    <itemtemplate>
                                                                        <asp:HyperLink ID="HyperLinkSubsidy" Text="view" NavigateUrl='<%#Eval("FilePath")%>' Target="_blank" runat="server" />
                                                                    </itemtemplate>
                                                                    <itemstyle horizontalalign="Left" width="100px" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Uploaded Date">
                                                                    <itemtemplate>
                                                                        <asp:Label ID="lbluploadeddate" Text='<%#Eval("UploadedDate")%>' runat="server"></asp:Label>
                                                                    </itemtemplate>
                                                                    <itemstyle horizontalalign="Left" width="100px" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Attachment" Visible="false">
                                                                    <itemtemplate>
                                                                        <asp:Label ID="lblFileName" runat="server" Text='<%#Eval("LINKNEW") %>'></asp:Label>
                                                                    </itemtemplate>
                                                                </asp:TemplateField>
                                                                <%--<asp:TemplateField HeaderText="Verified">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblverified" Text='<%#Eval("Verified")%>' runat="server"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                                                        </asp:TemplateField>--%>
                                                            </columns>
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                                <tr id="gvsupportingdocshead" runat="server" visible="false">
                                                    <td colspan="10" style="padding: 10px; margin: 5px; font-weight: bold;">Inspection Report - Supporting Documents
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 10px; margin: 5px;">
                                                        <asp:GridView ID="gvsupportingdocs" runat="server" AutoGenerateColumns="False"
                                                            Width="80%" HorizontalAlign="Left" ShowHeader="true" OnRowDataBound="gvsupportingdocs_RowDataBound">
                                                            <columns>
                                                                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                    <itemtemplate>
                                                                        <%# Container.DataItemIndex + 1%>
                                                                    </itemtemplate>
                                                                    <headerstyle horizontalalign="Center" />
                                                                    <itemstyle width="50px" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Attachments">
                                                                    <itemtemplate>
                                                                        <asp:Label ID="lbl" runat="server" Text='<%# Eval("AttachmentName")%>'></asp:Label>
                                                                    </itemtemplate>
                                                                    <itemstyle horizontalalign="Left" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="View">
                                                                    <itemtemplate>
                                                                        <asp:HyperLink ID="HyperLinkSubsidy" Text="view" NavigateUrl='<%#Eval("FilePath")%>' Target="_blank" runat="server" />
                                                                    </itemtemplate>
                                                                    <itemstyle horizontalalign="Left" width="100px" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Verified" Visible="false">
                                                                    <itemtemplate>
                                                                        <asp:Label ID="lblverified" Text='<%#Eval("Verified")%>' runat="server"></asp:Label>
                                                                    </itemtemplate>
                                                                    <itemstyle horizontalalign="Left" width="100px" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Attachment" Visible="false">
                                                                    <itemtemplate>
                                                                        <asp:Label ID="lblFileName" runat="server" Text='<%#Eval("LINKNEW") %>'></asp:Label>
                                                                    </itemtemplate>
                                                                </asp:TemplateField>
                                                            </columns>
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                                <tr id="trsscattachment" runat="server" visible="false">
                                                    <td colspan="10" style="padding: 10px; margin: 5px; font-weight: bold;">SSC INSPECTION REPORT
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 10px; margin: 5px;">
                                                        <asp:GridView ID="gvsscreport" runat="server" AutoGenerateColumns="False"
                                                            Width="80%" HorizontalAlign="Left" ShowHeader="true" OnRowDataBound="gvsscreport_RowDataBound">
                                                            <columns>
                                                                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                    <itemtemplate>
                                                                        <%# Container.DataItemIndex + 1%>
                                                                    </itemtemplate>
                                                                    <headerstyle horizontalalign="Center" />
                                                                    <itemstyle width="50px" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Attachments">
                                                                    <itemtemplate>
                                                                        <asp:Label ID="Label67" runat="server" Text='<%# Eval("AttachmentName")%>'></asp:Label>
                                                                    </itemtemplate>
                                                                    <itemstyle horizontalalign="Left" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="View">
                                                                    <itemtemplate>
                                                                        <asp:HyperLink ID="HyperLink6" Text="view" NavigateUrl='<%#Eval("FilePath")%>' Target="_blank" runat="server" />
                                                                    </itemtemplate>
                                                                    <itemstyle horizontalalign="Left" width="100px" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Attachment" Visible="false">
                                                                    <itemtemplate>
                                                                        <asp:Label ID="lblFileName" runat="server" Text='<%#Eval("LINKNEW") %>'></asp:Label>
                                                                    </itemtemplate>
                                                                </asp:TemplateField>
                                                                <%--<asp:TemplateField HeaderText="Uploaded Date">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Label68" Text='<%#Eval("UploadedDate")%>' runat="server"></asp:Label>
                                                                </ItemTemplate>
                                                                <ItemStyle HorizontalAlign="Left" Width="100px" />
                                                            </asp:TemplateField>--%>
                                                            </columns>
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default" id="divgm" runat="server">
                                <div class="panel-heading" role="tab" id="headingThree">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                            Verification of Application
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse in" role="tabpanel" aria-labelledby="headingThree">
                                    <div class="panel-body">
                                        <table bgcolor="White" width="100%">
                                            <%--<tr style="height: 30px" id="trYettobeassign" runat="server">
                        <td><span style="font-weight: bold; font-size: 14pt"></span></td>
                    </tr>--%>
                                            <tr id="trYettobeassign2" runat="server">
                                                <td colspan="5">
                                                    <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False"
                                                        CellPadding="4" Height="62px"
                                                        OnRowDataBound="grdDetails_RowDataBound"
                                                        Width="80%" Font-Names="Verdana" Font-Size="12px">
                                                        <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                        <rowstyle cssclass="GridviewScrollC1Item" />
                                                        <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                        <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                        <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                        <columns>
                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                <itemtemplate>
                                                                    <%# Container.DataItemIndex + 1%>
                                                                    <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                    <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                </itemtemplate>
                                                                <headerstyle horizontalalign="Center" />
                                                                <itemstyle width="50px" />
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="IncentiveName" HeaderStyle-VerticalAlign="Top" HeaderText="Incentives" ItemStyle-Width="500px">
                                                                <headerstyle verticalalign="Top" />
                                                                <itemstyle width="500px" />
                                                            </asp:BoundField>
                                                            <asp:TemplateField HeaderText="Application to Assign" ItemStyle-HorizontalAlign="Center">
                                                                <itemtemplate>
                                                                    <asp:RadioButtonList ID="rdbyesno" RepeatDirection="Horizontal" Width="180px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rdbyesno_SelectedIndexChanged">
                                                                        <asp:ListItem Text="Yes" Value="Y"></asp:ListItem>
                                                                        <asp:ListItem Text="No" Value="N"></asp:ListItem>
                                                                        <asp:ListItem Text="Reject" Value="R"></asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Center" />
                                                            </asp:TemplateField>
                                                            <%-- <asp:TemplateField HeaderText="Assign to Inspecting Officer/Raise Query">
                                                        <ItemTemplate>
                                                            <asp:DropDownList ID="ddlassignQuery" runat="server" Width="220px" CssClass="DROPDOWN" OnSelectedIndexChanged="ddlDeptname_SelectedIndexChanged1"
                                                                class="form-control txtbox" Height="33px" AutoPostBack="true" CausesValidation="True">
                                                                <asp:ListItem>--Select--</asp:ListItem>
                                                                <asp:ListItem Text="Raise Query" Value="Raise Query"></asp:ListItem>
                                                                <asp:ListItem Value="1">Assign to Inspecting Officer</asp:ListItem>
                                                            </asp:DropDownList><br />
                                                            <asp:DropDownList ID="ddlDeptname" runat="server" Width="220px" CssClass="DROPDOWN"
                                                                class="form-control txtbox" Height="33px" AutoPostBack="true" CausesValidation="True" Visible="false">
                                                                <asp:ListItem>--Select--</asp:ListItem>
                                                            </asp:DropDownList><br />
                                                            <asp:TextBox ID="txtIncQueryFnl" TextMode="MultiLine" Height="100px" Width="250px" Visible="false" runat="server"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Assign to Inspecting Officer/Raise Query">
                                                        <ItemTemplate>
                                                            <asp:Button ID="BtnSave1" runat="server" CssClass="btn btn-primary" Height="32px"
                                                                TabIndex="10" Text="Submit" Width="150px" ValidationGroup="group" OnClick="BtnSave1_Click" />
                                                            <asp:Label ID="lblmsgQuery" runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>--%>
                                                            <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                        </columns>
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="5">
                                                    <asp:Button ID="Button6" CssClass="btn btn-primary" runat="server" Text="Next" OnClick="Button6_Click" />
                                                </td>
                                            </tr>

                                            <tr>
                                                <td valign="top" colspan="5">
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                                        CellPadding="4" Height="62px"
                                                        OnRowDataBound="grdDetails_RowDataBound"
                                                        Width="80%" Font-Names="Verdana" Font-Size="12px">
                                                        <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                        <rowstyle cssclass="GridviewScrollC1Item" />
                                                        <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                        <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                        <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                        <columns>
                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                <itemtemplate>
                                                                    <%# Container.DataItemIndex + 1%>
                                                                    <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                    <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                </itemtemplate>
                                                                <headerstyle horizontalalign="Center" />
                                                                <itemstyle width="50px" />
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="IncentiveName" HeaderText="Incentives  in full shape" />
                                                            <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                        </columns>
                                                    </asp:GridView>
                                                </td>

                                            </tr>
                                            <tr id="tr_verifyDiv" runat="server" visible="false">
                                                <td valign="top" colspan="5">

                                                    <b style="color: red">I have verified the application and certify that the applilcation and all documents are in full shape.Hence recommended for Inspection.</b>
                                                    <asp:CheckBox ID="chkverifyallDoc0" AutoPostBack="true" runat="server" OnCheckedChanged="chkverifyallDoc0_CheckedChanged" checked="true" />
                                                </td>




                                            </tr>

                                            <tr style="height: 50px" valign="middle" id="trddlDeptname" runat="server" visible="false">
                                                <td style="padding: 10px; margin: 5px; font-weight: bold; width: 300px">Assign to Inspecting Officer &nbsp; : &nbsp;&nbsp;
                                               <asp:DropDownList ID="ddlDeptname" runat="server" Width="250px" CssClass="DROPDOWN"
                                                   class="form-control txtbox" Height="33px" CausesValidation="True" Visible="false">
                                                   <asp:ListItem>--Select--</asp:ListItem>
                                               </asp:DropDownList>
                                                </td>
                                                <td align="left">
                                                    <asp:Button ID="btnsaveinspectingofficer" Visible="false" CssClass="btn btn-primary" runat="server" Text="Assign to Inspecting Officer" OnClick="btnsaveinspectingofficer_Click" />
                                                </td>
                                            </tr>


                                            <tr>
                                                <td valign="top" colspan="5">
                                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
                                                        CellPadding="4" Height="62px"
                                                        OnRowDataBound="grdDetails_RowDataBound"
                                                        Width="80%" Font-Names="Verdana" Font-Size="12px">
                                                        <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                        <rowstyle cssclass="GridviewScrollC1Item" />
                                                        <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                        <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                        <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                        <columns>
                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                <itemtemplate>
                                                                    <%# Container.DataItemIndex + 1%>
                                                                    <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                    <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                </itemtemplate>
                                                                <headerstyle horizontalalign="Center" />
                                                                <itemstyle width="50px" />
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="IncentiveName" HeaderText="Incentives not in full shape" ItemStyle-Width="500px" />
                                                            <asp:TemplateField HeaderText="Query" ItemStyle-HorizontalAlign="Center">
                                                                <itemtemplate>
                                                                    <asp:TextBox ID="txtIncQueryFnl" Text='<%#Eval("Query") %>' TextMode="MultiLine" Height="100px" Width="300px" runat="server"></asp:TextBox>
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                        </columns>
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                            <tr style="height: 30px" id="trgmtoenterquery" runat="server" visible="false">
                                                <td colspan="2" style="font-weight: bold">-->
                                            <asp:HyperLink ID="hplink" runat="server" Text="Query Letter" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                </td>
                                            </tr>

                                            <tr id="trSubmitQuery" runat="server" visible="false">
                                                <td align="center" colspan="5">
                                                    <asp:Button ID="Button7" CssClass="btn btn-primary" runat="server" Text="Raise Query" OnClick="Button7_Click" />
                                                </td>
                                            </tr>
                                            <%--<tr style="height: 30px">
                                        <td colspan="5"></td>
                                    </tr>--%>

                                            <tr>
                                                <td valign="top" colspan="5">
                                                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False"
                                                        CellPadding="4" Height="62px" OnRowDataBound="grdDetails_RowDataBound"
                                                        Width="80%" Font-Names="Verdana" Font-Size="12px">
                                                        <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                        <rowstyle cssclass="GridviewScrollC1Item" />
                                                        <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                        <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                        <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                        <columns>
                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                <itemtemplate>
                                                                    <%# Container.DataItemIndex + 1%>
                                                                    <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                    <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                </itemtemplate>
                                                                <headerstyle horizontalalign="Center" />
                                                                <itemstyle width="50px" />
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="IncentiveName" HeaderText="Rejected Incentives" ItemStyle-Width="500px" />
                                                            <asp:TemplateField HeaderText="Reject Reason" ItemStyle-HorizontalAlign="Center">
                                                                <itemtemplate>
                                                                    <asp:TextBox ID="txtIncQueryFnl" Text='<%#Eval("RejectedReason") %>' TextMode="MultiLine" Height="100px" Width="300px" runat="server"></asp:TextBox>
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                        </columns>
                                                    </asp:GridView>
                                                </td>
                                            </tr>

                                            <%-- <tr style="height: 30px">
                                        <td colspan="5"></td>
                                    </tr>--%>

                                            <tr id="trGmReject" runat="server" visible="false">
                                                <td align="center" colspan="5">
                                                    <asp:Button ID="btnGmReject" CssClass="btn btn-primary" Style="margin: 20px 0px;" runat="server" Text="Reject" OnClick="btnGmReject_Click" />
                                                </td>
                                            </tr>





                                            <tr id="trAssignedInspectingOfficerincentives" runat="server" visible="false">
                                                <td style="width: 100%" colspan="2">
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">Assigned to Inspecting Officer</td>
                                                        </tr>
                                                        <tr style="height: 30px">
                                                            <td valign="top">
                                                                <asp:GridView ID="gvassigncompleted" runat="server" AutoGenerateColumns="False"
                                                                    CellPadding="4" Height="62px"
                                                                    OnRowDataBound="grdDetails_RowDataBound"
                                                                    Width="95%" Font-Names="Verdana" Font-Size="12px">
                                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                                    <columns>
                                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                            <itemtemplate>
                                                                                <%# Container.DataItemIndex + 1%>
                                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                            </itemtemplate>
                                                                            <headerstyle horizontalalign="Center" />
                                                                            <itemstyle width="50px" />
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="IncentiveName" HeaderText="Incentive Name" />
                                                                        <asp:BoundField DataField="EmployeeName" HeaderText="Inspecting Officer" />
                                                                        <asp:BoundField DataField="ASSIGNEDBY" HeaderText="Assigned by" />
                                                                        <asp:BoundField DataField="InspectionAssignDate" HeaderText="Assigned Date" />
                                                                    </columns>
                                                                </asp:GridView>
                                                            </td>

                                                        </tr>
                                                        <tr id="trOfficerChangeHistory" runat="server" visible="false">
                                                            <td style="padding: 20px"><b>Inspecting Officer Change History</b>

                                                                <asp:GridView ID="grdOfficerChangeHistory" runat="server" AutoGenerateColumns="False"
                                                                    CellPadding="4" Height="62px"
                                                                    OnRowDataBound="grdDetails_RowDataBound"
                                                                    Width="95%" Font-Names="Verdana" Font-Size="12px">
                                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                                    <columns>
                                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">

                                                                            <itemtemplate>
                                                                                <%# Container.DataItemIndex + 1%>
                                                                            </itemtemplate>
                                                                            <headerstyle horizontalalign="Center" />
                                                                            <itemstyle width="50px" />
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="IncentiveName" HeaderText="Incentive Name" />
                                                                        <asp:BoundField DataField="Previousofficer" HeaderText="Old Inspecting Officer" />
                                                                        <asp:BoundField DataField="InspectionAssignDate" HeaderText="Assigned Date" />
                                                                        <asp:BoundField DataField="History" HeaderText="Change Status" />
                                                                        <asp:BoundField DataField="History" HeaderText="Status Date" />

                                                                    </columns>
                                                                </asp:GridView>

                                                            </td>

                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>

                                            <tr id="trgmrejectedapplications" runat="server" visible="false">
                                                <td style="width: 100%" colspan="2">
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td style="padding: 10px; margin: 5px; font-weight: bold;">Rejected Applicarions</td>
                                                        </tr>
                                                        <tr style="height: 30px">
                                                            <td valign="top">
                                                                <asp:GridView ID="gvrejectedapplicationsbygm" runat="server" AutoGenerateColumns="False"
                                                                    CellPadding="4" Height="62px"
                                                                    OnRowDataBound="grdDetails_RowDataBound"
                                                                    Width="95%" Font-Names="Verdana" Font-Size="12px">
                                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                                    <columns>
                                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                            <itemtemplate>
                                                                                <%# Container.DataItemIndex + 1%>
                                                                            </itemtemplate>
                                                                            <headerstyle horizontalalign="Center" />
                                                                            <itemstyle width="50px" />
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="IncentiveName" HeaderText="Incentive Name" />
                                                                        <asp:BoundField DataField="RejectedReason" HeaderText="Rejected Reasons" />
                                                                        <asp:BoundField DataField="RejectedBy" HeaderText="Rejected By" />
                                                                        <asp:BoundField DataField="RejectedDate" HeaderText="Rejected Date" />
                                                                    </columns>
                                                                </asp:GridView>
                                                            </td>

                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" runat="server" id="trgmhistory">
                            <div class="panel-heading" role="tab" id="Div6">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsegmqueryhistory" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        <span id="Spangmdicquery" runat="server">Query History</span>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapsegmqueryhistory" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">G.M Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvquery" runat="server" AutoGenerateColumns="true"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" id="tripo1" runat="server" visible="false">
                            <div class="panel-heading" role="tab" id="Div1">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        <span id="Span1" runat="server">Assigned by GM-DIC</span>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse4" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table bgcolor="White" width="100%">
                                        <tr id="trOfficerChangeHistoryIPO" runat="server" visible="false">
                                            <td style="padding: 20px"><b>Inspecting Officer Change History</b>

                                                <asp:GridView ID="grdOfficerChangeHistoryIPO" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" Height="62px"
                                                    
                                                    Width="95%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">

                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="IncentiveName" HeaderText="Incentive Name" />
                                                        <asp:BoundField DataField="Previousofficer" HeaderText="Old Inspecting Officer" />
                                                        <asp:BoundField DataField="InspectionAssignDate" HeaderText="Assigned Date" />
                                                        <asp:BoundField DataField="History" HeaderText="Change Status" />
                                                        <asp:BoundField DataField="History" HeaderText="Status Date" />

                                                    </columns>
                                                </asp:GridView>

                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:GridView ID="gvdicinspection" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" Height="62px"
                                                    Width="80%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="IncentiveName" HeaderText="Incentives" />
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <%--<asp:TemplateField HeaderText="Inspection Date">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtinspectiondate" Text='<%#Eval("TobeinspectedDate") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>--%>

                                                        <%--<asp:TemplateField HeaderText="Inspection Report">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="anchortaglink" runat="server" Text="Update Inspection Report" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 30px">
                                            <td colspan="5"></td>
                                        </tr>
                                        <tr style="height: 30px">
                                            <td colspan="5">
                                                <table style="width: 100%">
                                                    <tr style="height: 30px" id="trmattachments" runat="server" visible="false">
                                                        <td style="padding: 5px; margin: 5px; font-weight: bold; vertical-align: top; font-size: medium">M. Attachments
                                                        </td>
                                                        <td colspan="9" style="padding: 5px; margin: 5px; font-weight: bold; vertical-align: top; font-size: medium"></td>
                                                    </tr>
                                                    <tr id="trmattachments_grid" runat="server" visible="false">
                                                        <td style="padding: 5px; margin: 5px; vertical-align: top" colspan="10">
                                                            <asp:GridView ID="GridView3att" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView3att_RowDataBound"
                                                                Width="80%" HorizontalAlign="Left" ShowHeader="true">
                                                                <columns>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                        <itemtemplate>
                                                                            <%# Container.DataItemIndex + 1%>
                                                                        </itemtemplate>
                                                                        <headerstyle horizontalalign="Center" />
                                                                        <itemstyle width="50px" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Type of Attachment">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("Category")%>'></asp:Label>
                                                                        </itemtemplate>
                                                                        <itemstyle horizontalalign="Left" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Attachments">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lbl" runat="server" Text='<%# Eval("AttachmentName")%>'></asp:Label>
                                                                        </itemtemplate>
                                                                        <itemstyle horizontalalign="Left" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="View">
                                                                        <itemtemplate>
                                                                            <asp:HyperLink ID="HyperLinkSubsidy" Text="view" NavigateUrl='<%#Eval("FilePath")%>'
                                                                                Target="_blank" runat="server" />
                                                                        </itemtemplate>
                                                                        <itemstyle horizontalalign="Left" width="100px" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Verificationflg" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblVerified" runat="server" Text='<%# Eval("Verified")%>'></asp:Label>
                                                                        </itemtemplate>
                                                                        <itemstyle horizontalalign="Left" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Verify Attachment">
                                                                        <itemtemplate>
                                                                            <%--                                            <asp:CheckBox ID="chkverified" runat="server" Text="Verified" />--%>
                                                                            <asp:RadioButtonList ID="rbtverified" runat="server"
                                                                                RepeatDirection="Horizontal">
                                                                                <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                                                <asp:ListItem Value="N">No</asp:ListItem>
                                                                            </asp:RadioButtonList>

                                                                        </itemtemplate>
                                                                        <itemstyle horizontalalign="Left" width="200px" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Attachments" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblatchid" runat="server" Text='<%# Eval("AttachmentId")%>'></asp:Label>
                                                                        </itemtemplate>
                                                                        <itemstyle horizontalalign="Left" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Attachment" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblFileName" runat="server" Text='<%#Eval("LINKNEW") %>'></asp:Label>
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>

                                                                </columns>
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                    <tr id="trmattachments_submitbuttom" runat="server" visible="false">
                                                        <td align="center" colspan="10">
                                                            <br />
                                                            <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Submit Verified Attachments"
                                                                OnClick="btnSubmit_Click" Width="235px" TabIndex="63" />
                                                            <br />
                                                            <asp:HiddenField ID="hdnattachmentids" runat="server" />
                                                        </td>
                                                    </tr>



                                                    <tr>
                                                        <td align="center" colspan="10">
                                                            <br />
                                                            <asp:Label ID="lblErrorMsg" runat="server" ForeColor="Red"></asp:Label>
                                                            <br />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:HiddenField ID="hdfID" runat="server" />
                                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                                                ShowSummary="False" ValidationGroup="group" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr style="height: 30px" id="trinspectionorraisequery" runat="server" visible="false">
                                            <td style="width: 250px; font-weight: bold">Select Inspection date/Raise Query &nbsp;
                                            </td>
                                            <td colspan="4">
                                                <asp:DropDownList ID="ddlinspectionorquery" runat="server" Width="180px" CssClass="DROPDOWN"
                                                    class="form-control txtbox" Height="33px" AutoPostBack="true" CausesValidation="True" OnSelectedIndexChanged="ddlinspectionorquery_SelectedIndexChanged">
                                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                                    <asp:ListItem Value="1">ScheduleInspection date</asp:ListItem>
                                                    <asp:ListItem Value="2">Raise Query</asp:ListItem>
                                                    <%-- <asp:ListItem Value="3">Reject</asp:ListItem>--%>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 30px" id="tripoinsp1button0" runat="server" visible="false">
                                            <td style="width: 250px; font-weight: bold">1). Inspection Date : &nbsp;
                                            </td>
                                            <td colspan="4">
                                                <asp:TextBox ID="txtinspectiondate" autocomplete="off" class="form-control txtbox" Width="150px" Height="30px" runat="server" />
                                                <%--<asp:TextBox ID="txtdate" autocomplete="off" class="form-control txtbox" Width="150px" Height="30px" runat="server" />--%>
                                            </td>
                                        </tr>
                                        <tr style="height: 30px">
                                            <td colspan="5"></td>
                                        </tr>

                                        <tr id="tripoinsp1button" runat="server" visible="false" align="center">
                                            <td colspan="2">
                                                <asp:Button ID="btnupdatestatus" CssClass="btn btn-primary" runat="server" Text="Intimate Inspection Date" Width="234px" OnClick="btnupdatestatus_Click" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        </tr>
                                        <tr style="height: 30px" id="trraisequery" runat="server" visible="false">
                                            <td style="width: 250px; font-weight: bold">Raise Query: &nbsp;
                                            </td>
                                            <td colspan="4">
                                                <asp:DropDownList ID="ddlraisequery" runat="server" Width="180px" CssClass="DROPDOWN"
                                                    class="form-control txtbox" Height="33px" AutoPostBack="true" CausesValidation="True" OnSelectedIndexChanged="ddlraisequery_SelectedIndexChanged">
                                                    <asp:ListItem Value="0">--Select--</asp:ListItem>

                                                    <asp:ListItem Value="2">Raise Query</asp:ListItem>
                                                    <%-- <asp:ListItem Value="3">Reject</asp:ListItem>--%>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 30px" id="TRSUBMITQUERY_BEFOREINSPECCTIONDATE" runat="server" visible="false">
                                            <td style="width: 250px; font-weight: bold">
                                                <asp:Label ID="LBLQUERYDESCRIPTION" runat="server" Visible="false"></asp:Label>
                                                &nbsp;
                                            </td>
                                            <td colspan="4">
                                                <asp:TextBox ID="txtquerydescriptionbeforeinspectiondate" autocomplete="off" TextMode="MultiLine" class="form-control txtbox" Width="300px" Height="30px" runat="server" />
                                                <asp:Button ID="btnsubmitquerybeforeinspectiondate" CssClass="btn btn-primary" runat="server" Text="SubmitQuery" Width="234px" OnClick="btnsubmitquerybeforeinspectiondate_Click" />

                                            </td>
                                        </tr>
                                        <tr style="height: 30px" id="trUpdateInspectionReport" runat="server" visible="false">
                                            <td style="width: 250px; font-weight: bold" colspan="2">-->Inspection Report : &nbsp; 
                                                <asp:Label id="lblGMRollbackIORemarks" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr id="trUpdateInspectionReport1" runat="server" visible="false">
                                            <td colspan="2">
                                                <asp:GridView ID="gvinspectionReport" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" Height="62px"
                                                    Width="80%" Font-Names="Verdana" Font-Size="12px" OnRowDataBound="gvinspectionReport_RowDataBound" OnRowCommand="gvinspectionReport_RowCommand">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                <asp:HiddenField ID="hdfStatusId" runat="server" Value='<%#Eval("intstageid") %>' />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="IncentiveName" HeaderText="Incentives" />
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Inspection Date">
                                                            <itemtemplate>
                                                                <asp:Label ID="txtinspectiondate" Text='<%#Eval("TobeinspectedDate") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <%-- <asp:BoundField DataField="ReportStatus" HeaderText="Report Status" />--%>
                                                        <asp:TemplateField HeaderText="Remarks">
                                                            <itemtemplate>
                                                                <asp:DropDownList ID="ddlinspector" runat="server" Width="180px" CssClass="DROPDOWN"
                                                                    class="form-control txtbox" Height="33px" AutoPostBack="true" CausesValidation="True" OnSelectedIndexChanged="ddlinspector_SelectedIndexChanged">
                                                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                                                    <asp:ListItem Value="1">Upload Inspection Report</asp:ListItem>
                                                                    <asp:ListItem Value="2">Raise Query</asp:ListItem>
                                                                    <%-- <asp:ListItem Value="3">Reject</asp:ListItem>--%>
                                                                </asp:DropDownList>
                                                                <br />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Upload Inspection Report/Raise Query">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="anchortaglink" runat="server" Text="Upload Inspection Report" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                                <asp:TextBox ID="txtIncQueryFnl2ins" TextMode="MultiLine" Height="100px" Width="250px" Visible="false" runat="server"></asp:TextBox>
                                                                <asp:Button ID="btnsubmitqueryins" CssClass="btn btn-primary" OnClick="btnsubmitqueryins_Click" Visible="false" runat="server" Text="Send Query" Width="150px" />
                                                                <br />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="View Inspection Report">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="anchortaglinkView" runat="server" Text="View Inspection Report" Font-Bold="true" Target="_blank" />
                                                                <asp:HyperLink ID="anchortagIPOCertificate" runat="server" Text="Query Letter" Font-Bold="true" Visible="false" ForeColor="Red" Target="_blank" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="StatusID" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblreportStatusID" Text='<%#Eval("ReportStatus") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <%--<div class="panel panel-default" id="trSubmitinspectionReport" runat="server" visible="false">
                        <div class="panel-heading" role="tab" id="Div2">
                            <h4 class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#DivSubmitinspectionReport" aria-expanded="false" aria-controls="collapseTwo">
                                    <i class="more-less glyphicon glyphicon-plus"></i>
                                    Submit Inspection Report for  Investment Subsidy
                                </a>
                            </h4>
                        </div>
                        <div id="DivSubmitinspectionReport" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="panel-body">
                              
                            </div>
                        </div>
                    </div>--%>
                        <div class="panel panel-default" id="trInspectionReportNEW" runat="server" visible="false">
                            <div class="panel-heading" role="tab" id="Div5">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwoinspectiondraft" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Inspection Report
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwoinspectiondraft" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table>
                                        <%--  <tr style="height: 30px" id="trInspectionReport" runat="server" visible="false">
                                    <td><span style="font-weight: bold; font-size: 14pt">Inspection Report</span></td>
                                </tr>--%>

                                        <tr style="height: 30px" id="trInspectionReport2" runat="server" visible="false">
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:HyperLink ID="HyperLink2" runat="server" Text="View Inspection Report" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                            </td>
                                        </tr>
                                        <%--<tr style="height: 30px" id="trInspectionReport3" runat="server">
                                    <td><span style="font-weight: bold; font-size: 14pt">Inspection Report</span></td>
                                </tr>--%>
                                        <tr style="height: 30px" id="trInspectionReport4" runat="server">
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="anchortaglink" runat="server" Text="View Inspection Report" Font-Bold="true" ForeColor="Green" Target="_blank" /></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" runat="server" id="Div21">
                            <div class="panel-heading" role="tab" id="Div22">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#Div23" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Inspecting Officer Query History
                                    </a>
                                </h4>
                            </div>
                            <div id="Div23" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">G.M Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GVIOQueryStatus" runat="server" AutoGenerateColumns="true"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr id="trqueryresponseattachmentsoutsidecheckslip" runat="server" visible="false">
                                            <td style="padding: 5px; margin: 5px; vertical-align: top" colspan="10">
                                                <asp:GridView ID="gridviewresponseattachmentsoutsidecheckslip" runat="server" AutoGenerateColumns="False" OnRowDataBound="gridviewresponseattachmentsoutsidecheckslip_RowDataBound"
                                                    Width="80%" HorizontalAlign="Left" ShowHeader="true">
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Type of Attachment">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("Category")%>'></asp:Label>
                                                            </itemtemplate>
                                                            <itemstyle horizontalalign="Left" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Attachments">
                                                            <itemtemplate>
                                                                <asp:Label ID="lbl" runat="server" Text='<%# Eval("AttachmentName")%>'></asp:Label>
                                                            </itemtemplate>
                                                            <itemstyle horizontalalign="Left" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="View">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="HyperLinkSubsidy" Text="view" NavigateUrl='<%#Eval("FilePath")%>'
                                                                    Target="_blank" runat="server" />
                                                            </itemtemplate>
                                                            <itemstyle horizontalalign="Left" width="100px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Verificationflg" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblVerified" runat="server" Text='<%# Eval("Verified")%>'></asp:Label>
                                                            </itemtemplate>
                                                            <itemstyle horizontalalign="Left" />
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Attachments" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblatchid" runat="server" Text='<%# Eval("AttachmentId")%>'></asp:Label>
                                                            </itemtemplate>
                                                            <itemstyle horizontalalign="Left" />
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" id="trqueryDtlsIO" runat="server" visible="false">
                            <div class="panel-heading" role="tab" id="Div25">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsegmqueryhistoryQueryIO" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Query Letter from Inspecting Officer
                                    </a>
                                </h4>
                            </div>
                            <div id="collapsegmqueryhistoryQueryIO" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%-- <tr style="height: 30px" >
                                    <td><span style="font-weight: bold; font-size: 14pt" id="Span2" runat="server">Query from JD</span></td>
                                </tr>--%>
                                        <tr style="height: 30px" id="trQueryletterIO" runat="server" visible="false">
                                            <td>&nbsp;&nbsp; Query Letter : &nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Text="View Query Letter" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                            </td>
                                        </tr>
                                        <tr id="trqueryDtls1IO" runat="server" visible="false">
                                            <td>
                                                <asp:GridView ID="gvquerygmtbyIO" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDataBound="gvquerygmtbyIO_RowDataBound">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Typeofincetive" />
                                                        <%-- <asp:BoundField DataField="Remarks" HeaderText="Query" />--%>
                                                        <asp:TemplateField HeaderText="Query">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblRemarks" Text='<%#Eval("Remarks") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Response">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtIncQueryFnl5" TextMode="MultiLine" Text='<%#Eval("Responce") %>' Height="100px" Width="250px" runat="server"></asp:TextBox>
                                                                <br />
                                                                <br />
                                                                <asp:FileUpload ID="FileUploadquery" runat="server" class="form-control txtbox" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIoQuerySts" runat="server" Text='<%# Bind("IoQueryStatus") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Send Response to IO/Forward To applicant">
                                                            <itemtemplate>
                                                                <asp:Button ID="btnsendcoiIO" CssClass="btn btn-primary" runat="server" Text="Send Response to Inspecting Officer" Width="320px" OnClick="btnsendcoiIO_Click" />
                                                                <br />
                                                                <br />
                                                                <asp:Button ID="btnsendIOQuerybyGM" CssClass="btn btn-primary" runat="server" Text="Forward Query to Applicant" Width="250px" OnClick="btnsendIOQuerybyGM_Click" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <%--<asp:TemplateField HeaderText="Inspection Report">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="anchortaglink" runat="server" Text="Update Inspection Report" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <%--<tr id="trsendresponcetocoi" runat="server" visible="false">
                                        <td align="center">
                                            <asp:Button ID="btnsendcoi" CssClass="btn btn-primary" runat="server" Text="Send Response to COI" Width="250px" OnClick="btnsendcoi_Click" /><br />
                                        </td>
                                    </tr>--%>
                                    </table>

                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" id="trinspectionname1" runat="server">
                            <div class="panel-heading" role="tab" id="Div4">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapserecomended" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        <span id="trinspectionname" runat="server">Recommended Incentives</span></a>
                                </h4>
                            </div>
                            <div id="collapserecomended" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table width="100%">
                                        <tr>

                                            <td>Loan/Aggrement Account Number&nbsp;&nbsp;
                                            <asp:TextBox ID="txtLoanAgreement" runat="server" OnTextChanged="txtLoanAgreement_TextChanged"></asp:TextBox>

                                                <asp:CheckBox ID="chckLoanAggrement" runat="server" OnCheckedChanged="chckLoanAggrement_CheckedChanged"></asp:CheckBox>
                                                Loan Account Number Verified
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblLoanAggrement" Text="Label" Visible="false" Font-Bold="True" ForeColor="Red"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 8px">Please enter the following details</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table>
                                                    <tr>
                                                        <td class="auto-style3">Caste</td>
                                                        <td>
                                                            <asp:RadioButtonList id="rdbCaste" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="rdbCaste_SelectedIndexChanged" AutoPostBack="True">
                                                                <asp:ListItem>General</asp:ListItem>
                                                                <asp:ListItem>SC</asp:ListItem>
                                                                <asp:ListItem>ST</asp:ListItem>
                                                                <asp:ListItem>PHC</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style3">Gender</td>
                                                        <td>
                                                            <asp:RadioButtonList id="rdbGender" AutoPostBack="True" enabled="false" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="rdbGender_SelectedIndexChanged">
                                                                <asp:ListItem>Male</asp:ListItem>
                                                                <asp:ListItem>Female</asp:ListItem>

                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style3">Category</td>
                                                        <td>
                                                            <asp:RadioButtonList id="rdbCategory" AutoPostBack="True" enabled="false" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="rdbCategory_SelectedIndexChanged">
                                                                <asp:ListItem>Micro</asp:ListItem>
                                                                <asp:ListItem>Small</asp:ListItem>
                                                                <asp:ListItem>Medium</asp:ListItem>
                                                                <asp:ListItem>Large</asp:ListItem>
                                                                <asp:ListItem>Mega</asp:ListItem>

                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style3">Enterprise Type</td>
                                                        <td>
                                                            <asp:RadioButtonList id="rdbEnterprise" AutoPostBack="True" enabled="false" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="rdbEnterprise_SelectedIndexChanged">
                                                                <asp:ListItem>New</asp:ListItem>
                                                                <asp:ListItem>Expansion</asp:ListItem>

                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style3">Sector</td>
                                                        <td>
                                                            <asp:RadioButtonList id="rdbSector" AutoPostBack="True" enabled="false" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="rdbSector_SelectedIndexChanged">

                                                                <asp:ListItem>Service</asp:ListItem>
                                                                <asp:ListItem>Manufacture</asp:ListItem>

                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                    <tr id="trServiceType" runat="server" visible="false">
                                                        <td>Service Type</td>
                                                        <td>

                                                            <asp:RadioButtonList ID="rdbServiceType" runat="server" AutoPostBack="True" enabled="false" RepeatDirection="Horizontal" OnSelectedIndexChanged="rdbServiceType_SelectedIndexChanged">
                                                                <asp:ListItem Value="STT">Transport</asp:ListItem>
                                                                <asp:ListItem Value="STNT">Non - Transport(Fixed services like Hospitals,Halls,Poultry Farms etc)</asp:ListItem>
                                                            </asp:RadioButtonList>

                                                        </td>
                                                    </tr>
                                                    <tr id="trTransNonTrans" runat="server" visible="false">
                                                        <td>Transport/Non-Transport Type
                                                        </td>
                                                        <td>

                                                            <asp:RadioButtonList ID="rdbTransportNonTrans" runat="server" AutoPostBack="True" enabled="false" RepeatDirection="Horizontal" OnSelectedIndexChanged="rdbTransportNonTrans_SelectedIndexChanged">
                                                                <asp:ListItem Value="TP">Passenger</asp:ListItem>
                                                                <asp:ListItem Value="TG">Goods/Tractor etc</asp:ListItem>
                                                                <asp:ListItem Value="TE">Earth Movers/Borewells/JCB etc</asp:ListItem>
                                                            </asp:RadioButtonList>

                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>

                                        </tr>
                                        <tr id="trForwardApplicationTo" runat="server">

                                            <td>
                                                <table>
                                                    <tr>
                                                        <td style="font-weight: bold;">Forward Application to : 
                                       
                                                        </td>
                                                        <td>

                                                            <asp:DropDownList ID="ddlapplicationto" runat="server" Width="250px"
                                                                class="form-control txtbox" Height="33px" AutoPostBack="True" OnSelectedIndexChanged="ddlapplicationto_SelectedIndexChanged">
                                                                <asp:ListItem Value="0" Selected="True" Text="--Select--"></asp:ListItem>
                                                                <asp:ListItem Value="1" Text="COI"></asp:ListItem>
                                                                <asp:ListItem Value="2" Text="DIPC"></asp:ListItem>
                                                            </asp:DropDownList>

                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>


                                        </tr>
                                        <tr id="trFowardNote" runat="server">
                                            <td style="padding: 10px; margin: 5px; font-weight: bold;" colspan="4">
                                                <b>Note :</b> If you want to update the claimed financial year or caste of the applicant please click on the concerned incentive name link.
                                            </td>
                                        </tr>
                                        <tr id="trForwardGMGrid" runat="server">
                                            <td colspan="4">
                                                <asp:GridView ID="gvinspectionOfficer" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDataBound="gvinspectionOfficer_RowDataBound">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                <asp:HiddenField ID="hdfStatusId" runat="server" Value='<%#Eval("intstageid") %>' />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:BoundField DataField="IncentiveName" HeaderText="Incentives" />--%>
                                                        <asp:TemplateField HeaderText="Incentives">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="HyperIncentiveName" runat="server" Text='<%#Eval("IncentiveName") %>' Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                                <asp:Label ID="lblIncentiveNameDis" Text='<%#Eval("IncentiveName") %>' runat="server" Visible="false" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Date of Inspection">
                                                            <itemtemplate>
                                                                <asp:Label ID="txtinspectiondate" Enabled="false" Text='<%#Eval("TobeinspectedDate") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="View Inspection Report">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="anchortaglinkView" runat="server" Text="View Inspection Report" Font-Bold="true" Target="_blank" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Unit Claim Amount">
                                                            <itemtemplate>
                                                                <asp:Label ID="txtClaimamount" Text='<%#Eval("Unitamount") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Inspecting Officer Recommended Amount">
                                                            <itemtemplate>
                                                                <asp:Label ID="txtInspectingRecommendedAmount" Text='<%#Eval("Inspection_RecommAmnt")%>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Remarks">
                                                            <itemtemplate>
                                                                <asp:DropDownList ID="ddlapprove" runat="server" Width="130px" CssClass="DROPDOWN"
                                                                    class="form-control txtbox" Height="33px" AutoPostBack="true" CausesValidation="True" OnSelectedIndexChanged="ddlapprove_SelectedIndexChanged">
                                                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                                                    <asp:ListItem Value="1">Raise Query</asp:ListItem>
                                                                    <asp:ListItem Value="2">Recommend</asp:ListItem>
                                                                    <asp:ListItem Value="3">Reject</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <br />
                                                                <br />
                                                                <asp:TextBox ID="txtIncQueryFnl2" TextMode="MultiLine" Height="100px" Width="250px" Visible="false" runat="server"></asp:TextBox>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="G.M Recommended Amount(in Rs.)">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtrecomandedamount" onkeypress="return inputOnlyNumbers(event)" Enabled="true" Text='<%#Eval("GM_Rcon_Amount") %>' runat="server" AutoPostBack="true" OnTextChanged="txtrecomandedamount_TextChanged" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="G.M Recommended Remarks" Visible="false">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtGMRecommendedRemarks" TextMode="MultiLine" Enabled="true" runat="server" Text='<%#Eval("GMRecommendedRemarks") %>' />
                                                                <asp:FileUpload ID="FileUploadgminspection" runat="server" class="form-control txtbox" />
                                                                <asp:Button ID="btngmrecommendeddocument" runat="server" Text="Upload" OnClick="btngmrecommendeddocument_Click" />
                                                                <asp:Label ID="LBLGMATTACHMENT" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>


                                                        <asp:TemplateField HeaderText="Raise Query/Forward Application to DICP/COI">
                                                            <itemtemplate>
                                                                <asp:Button ID="btnotp" runat="server" CssClass="btn btn-xs btn-warning" Height="50px"
                                                                    Text="Request for OTP" Width="150px"
                                                                    OnClick="btnotp_Click" Visible="false" />
                                                                <br />
                                                                <asp:TextBox ID="txtOTPVerify" runat="server" class="form-control txtbox"
                                                                    MaxLength="6" Height="28px" Width="180px" ToolTip="Please enter OTP Rcvd on your phone here"
                                                                    OnTextChanged="txtOTPVerify_TextChanged" AutoPostBack="true" Visible="false">
                                                                </asp:TextBox>
                                                                <br />
                                                                <asp:Label ID="lblcois" Visible="false" runat="server" Font-Bold="true" Font-Size="Larger" Text="Sent to COI"></asp:Label>
                                                                <asp:Button ID="Button1" CssClass="btn btn-primary" Visible="false" Enabled="False" OnClick="Button1_Click" runat="server" Text="Send to COI" Width="150px" />
                                                                <br />
                                                                <br />
                                                                <%-- <asp:Label ID="lbldipcs" Visible="false" runat="server" Font-Bold="true" Font-Size="Larger" Text="Sent to DIPC"></asp:Label>--%>
                                                                <asp:Button ID="Button2" Visible="false" CssClass="btn btn-primary" OnClick="Button2_Click" runat="server" Text="Send to DIPC" Width="150px" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Query Letter/GM Recommendation Letter">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="anchortagGMCertificate" runat="server" Text="Recommendation Letter" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <%--<asp:TemplateField HeaderText="Inspection Report">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="anchortaglink" runat="server" Text="Update Inspection Report" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr id="troptpbutton" runat="server" visible="false">
                                            <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:HiddenField ID="HDFmsgOTP" runat="server" Visible="false" />

                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" runat="server" id="Divclerkquery" visible="false">
                            <div class="panel-heading" role="tab" id="Div41">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#DivAD23" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Clerk Officer Query History
                                    </a>
                                </h4>
                            </div>
                            <div id="Div42" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">A.D Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvclerkquery" runat="server" AutoGenerateColumns="true"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" runat="server" id="Divclerkr" visible="false">
                            <div class="panel-heading" role="tab" id="Div38">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#DivClerkrecommended" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        CLERK Recommendation
                                    </a>
                                </h4>
                            </div>
                            <div id="DivClerkrecommended" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">A.D Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvclerkrecommended" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDataBound="gvclerkrecommended_RowDataBound">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                <asp:HiddenField ID="hdfStatusId" runat="server" Value='<%#Eval("intstageid") %>' />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:BoundField DataField="IncentiveName" HeaderText="Incentives" />--%>
                                                        <asp:TemplateField HeaderText="Incentives">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="HyperIncentiveName" runat="server" Text='<%#Eval("IncentiveName") %>' Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                                <asp:Label ID="lblIncentiveNameDis" Text='<%#Eval("IncentiveName") %>' runat="server" Visible="false" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Clerk Recommended Amount(in Rs.)">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtrecomandedamount" onkeypress="return inputOnlyNumbers(event)" Enabled="true" Text='<%#Eval("GM_Rcon_Amount") %>' runat="server" ReadOnly="true" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Clerk Recommended Date">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblclerkRECOMMENDED_DATE" Text='<%#Eval("RECOMMENDED_DATE") %>' runat="server" Visible="true" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>


                                                        <asp:TemplateField HeaderText="G.M Recommended Remarks" Visible="false">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtGMRecommendedRemarks" TextMode="MultiLine" Enabled="true" runat="server" Text='<%#Eval("GMRecommendedRemarks") %>' />
                                                                <asp:FileUpload ID="FileUploadgminspection" runat="server" class="form-control txtbox" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>



                                                        <asp:TemplateField HeaderText="Appraisal Note">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="anchortagGMCertificate" runat="server" Text="Recommendation Letter" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="OLD OR NEW" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="LBLOLDORNEW" Text='<%#Eval("OLDORNEW") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                    </columns>
                                                </asp:GridView>

                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <b>I have personally verified and it is submitted that there is no violation or deviation of rules involved in this case.</b>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" runat="server" id="Divsupdtquery" visible="false">
                            <div class="panel-heading" role="tab" id="Div43">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#DivAD23" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Superintendent Query History
                                    </a>
                                </h4>
                            </div>
                            <div id="Div44" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">A.D Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvsupdtquery" runat="server" AutoGenerateColumns="true"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" runat="server" id="DivSuprdntr" visible="false">
                            <div class="panel-heading" role="tab" id="Div37">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#DivSuprdntrecommended" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Superintendent Recommendation
                                    </a>
                                </h4>
                            </div>
                            <div id="DivSuprdntrecommended" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">A.D Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvSuprdntrecommended" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDataBound="gvSuprdntrecommended_RowDataBound">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                <asp:HiddenField ID="hdfStatusId" runat="server" Value='<%#Eval("intstageid") %>' />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:BoundField DataField="IncentiveName" HeaderText="Incentives" />--%>
                                                        <asp:TemplateField HeaderText="Incentives">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="HyperIncentiveName" runat="server" Text='<%#Eval("IncentiveName") %>' Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                                <asp:Label ID="lblIncentiveNameDis" Text='<%#Eval("IncentiveName") %>' runat="server" Visible="false" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Superintendent Recommended Amount(in Rs.)">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtrecomandedamount" onkeypress="return inputOnlyNumbers(event)" Enabled="true" Text='<%#Eval("GM_Rcon_Amount") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Superintendent Recommended Date">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblRECOMMENDED_DATE" Text='<%#Eval("RECOMMENDED_DATE") %>' runat="server" Visible="true" />

                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="G.M Recommended Remarks" Visible="false">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtGMRecommendedRemarks" TextMode="MultiLine" Enabled="true" runat="server" Text='<%#Eval("GMRecommendedRemarks") %>' />
                                                                <asp:FileUpload ID="FileUploadgminspection" runat="server" class="form-control txtbox" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>



                                                        <asp:TemplateField HeaderText="Appraisal Note" Visible="false">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="anchortagGMCertificate" runat="server" Text="Recommendation Letter" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>


                                                    </columns>
                                                </asp:GridView>

                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <b>I have personally verified and it is submitted that there is no violation or deviation of rules involved in this case.</b>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" runat="server" id="DivAD21" visible="false">
                            <div class="panel-heading" role="tab" id="DivAD22">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#DivAD23" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        AD Officer Query History
                                    </a>
                                </h4>
                            </div>
                            <div id="DivAD23" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">A.D Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GVADQueryStatus" runat="server" AutoGenerateColumns="true"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentive Name" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label23" Text='<%#Eval("Incentive Name") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Query Description" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label25" Text='<%#Eval("Query Description") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="APPstatus" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label26" Text='<%#Eval("APPstatus") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" runat="server" id="DivADR21" visible="false">
                            <div class="panel-heading" role="tab" id="DivADR22">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#DivADR23" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        AD Recommendation
                                    </a>
                                </h4>
                            </div>
                            <div id="DivADR23" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">A.D Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvadrecommended" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDataBound="gvadrecommended_RowDataBound">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                <asp:HiddenField ID="hdfStatusId" runat="server" Value='<%#Eval("intstageid") %>' />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:BoundField DataField="IncentiveName" HeaderText="Incentives" />--%>
                                                        <asp:TemplateField HeaderText="Incentives">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="HyperIncentiveName" runat="server" Text='<%#Eval("IncentiveName") %>' Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                                <asp:Label ID="lblIncentiveNameDis" Text='<%#Eval("IncentiveName") %>' runat="server" Visible="false" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="A.D Recommended Amount(in Rs.)">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtrecomandedamount" onkeypress="return inputOnlyNumbers(event)" Enabled="false" Text='<%#Eval("GM_Rcon_Amount") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="A.D Recommended Date">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblRECOMMENDED_DATE" Text='<%#Eval("RECOMMENDED_DATE") %>' runat="server" Visible="true" />

                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="G.M Recommended Remarks" Visible="false">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtGMRecommendedRemarks" TextMode="MultiLine" Enabled="true" runat="server" Text='<%#Eval("GMRecommendedRemarks") %>' />
                                                                <asp:FileUpload ID="FileUploadgminspection" runat="server" class="form-control txtbox" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>



                                                        <asp:TemplateField HeaderText="Appraisal Note" Visible="false">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="anchortagGMCertificate" runat="server" Text="Recommendation Letter" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>


                                                    </columns>
                                                </asp:GridView>

                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <b>I have personally verified and it is submitted that there is no violation or deviation of rules involved in this case.</b>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" runat="server" id="DivDDQuery" visible="false">
                            <div class="panel-heading" role="tab" id="Div45">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#DivAD23" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        DD Officer Query History
                                    </a>
                                </h4>
                            </div>
                            <div id="Div46" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">A.D Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvDDQuery" runat="server" AutoGenerateColumns="true"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentive Name" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label27" Text='<%#Eval("Incentive Name") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Query Description" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label28" Text='<%#Eval("Query Description") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="APPstatus" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label29" Text='<%#Eval("APPstatus") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" runat="server" id="DivDDrcr" visible="false">
                            <div class="panel-heading" role="tab" id="Div39">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#DivDDrcrecommended" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        DD Recommendation
                                    </a>
                                </h4>
                            </div>
                            <div id="DivDDrcrecommended" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">A.D Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvDDrcrecommended" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDataBound="gvDDrcrecommended_RowDataBound">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                <asp:HiddenField ID="hdfStatusId" runat="server" Value='<%#Eval("intstageid") %>' />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:BoundField DataField="IncentiveName" HeaderText="Incentives" />--%>
                                                        <asp:TemplateField HeaderText="Incentives">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="HyperIncentiveName" runat="server" Text='<%#Eval("IncentiveName") %>' Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                                <asp:Label ID="lblIncentiveNameDis" Text='<%#Eval("IncentiveName") %>' runat="server" Visible="false" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="D.D Recommended Amount(in Rs.)">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtrecomandedamount" onkeypress="return inputOnlyNumbers(event)" Enabled="true" Text='<%#Eval("GM_Rcon_Amount") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="D.D Recommended Date">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblRECOMMENDED_DATE" Text='<%#Eval("RECOMMENDED_DATE") %>' runat="server" Visible="true" />

                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="G.M Recommended Remarks" Visible="false">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtGMRecommendedRemarks" TextMode="MultiLine" Enabled="true" runat="server" Text='<%#Eval("GMRecommendedRemarks") %>' />
                                                                <asp:FileUpload ID="FileUploadgminspection" runat="server" class="form-control txtbox" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>



                                                        <asp:TemplateField HeaderText="Appraisal Note" Visible="false">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="anchortagGMCertificate" runat="server" Text="Recommendation Letter" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>


                                                    </columns>
                                                </asp:GridView>

                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <b>I have personally verified and it is submitted that there is no violation or deviation of rules involved in this case.</b>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>



                        <div id="collapseADrecomended" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="panel-body">
                                <table width="100%">
                                    <tr>
                                        <td colspan="4">
                                            <asp:GridView ID="gvADOfficer" runat="server" AutoGenerateColumns="False"
                                                CellPadding="4" Height="62px"
                                                Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDataBound="gvADOfficer_RowDataBound">
                                                <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                <rowstyle cssclass="GridviewScrollC1Item" />
                                                <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                <columns>
                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                        <itemtemplate>
                                                            <%# Container.DataItemIndex + 1%>
                                                            <asp:HiddenField ID="HdfQueid" runat="server" />
                                                            <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            <asp:HiddenField ID="hdfStatusId" runat="server" Value='<%#Eval("intstageid") %>' />
                                                        </itemtemplate>
                                                        <headerstyle horizontalalign="Center" />
                                                        <itemstyle width="50px" />
                                                    </asp:TemplateField>
                                                    <%--<asp:BoundField DataField="IncentiveName" HeaderText="Incentives" />--%>
                                                    <asp:TemplateField HeaderText="Incentives">
                                                        <itemtemplate>
                                                            <asp:HyperLink ID="HyperIncentiveName" runat="server" Text='<%#Eval("IncentiveName") %>' Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                            <asp:Label ID="lblIncentiveNameDis" Text='<%#Eval("IncentiveName") %>' runat="server" Visible="false" />
                                                        </itemtemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Date of Inspection">
                                                        <itemtemplate>
                                                            <asp:Label ID="txtinspectiondate" Enabled="false" Text='<%#Eval("TobeinspectedDate") %>' runat="server" />
                                                        </itemtemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="View Inspection Report">
                                                        <itemtemplate>
                                                            <asp:HyperLink ID="anchortaglinkView" runat="server" Text="View Inspection Report" Font-Bold="true" Target="_blank" />
                                                        </itemtemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                        <itemtemplate>
                                                            <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                        </itemtemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                        <itemtemplate>
                                                            <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                        </itemtemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Unit Claim Amount">
                                                        <itemtemplate>
                                                            <asp:Label ID="txtClaimamount" Text='<%#Eval("Unitamount") %>' runat="server" />
                                                        </itemtemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Inspecting Officer Recommended Amount">
                                                        <itemtemplate>
                                                            <asp:Label ID="txtInspectingRecommendedAmount" Text='<%#Eval("Inspection_RecommAmnt")%>' runat="server" />
                                                        </itemtemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Remarks">
                                                        <itemtemplate>
                                                            <asp:DropDownList ID="ddlapprove" runat="server" Width="130px" CssClass="DROPDOWN"
                                                                class="form-control txtbox" Height="33px" AutoPostBack="true" CausesValidation="True" OnSelectedIndexChanged="ddlapprove_SelectedIndexChanged">
                                                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                                                <asp:ListItem Value="1">Raise Query</asp:ListItem>
                                                                <asp:ListItem Value="2">Recommend</asp:ListItem>
                                                                <%--<asp:ListItem Value="3">Reject</asp:ListItem>--%>
                                                            </asp:DropDownList>
                                                            <br />
                                                            <br />
                                                            <asp:TextBox ID="txtIncQueryFnl2" TextMode="MultiLine" Height="100px" Width="250px" Visible="false" runat="server"></asp:TextBox>
                                                        </itemtemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="G.M Recommended Amount(in Rs.)">
                                                        <itemtemplate>
                                                            <asp:TextBox ID="txtrecomandedamount" onkeypress="return inputOnlyNumbers(event)" Enabled="true" Text='<%#Eval("GM_Rcon_Amount") %>' runat="server" />
                                                        </itemtemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="G.M Recommended Remarks" Visible="false">
                                                        <itemtemplate>
                                                            <asp:TextBox ID="txtGMRecommendedRemarks" TextMode="MultiLine" Enabled="true" runat="server" Text='<%#Eval("GMRecommendedRemarks") %>' />
                                                            <asp:FileUpload ID="FileUploadgminspection" runat="server" class="form-control txtbox" />
                                                        </itemtemplate>
                                                    </asp:TemplateField>


                                                    <asp:TemplateField HeaderText="Raise Query/Forward Application to DICP/COI">
                                                        <itemtemplate>
                                                            <asp:Button ID="btnotp" runat="server" CssClass="btn btn-xs btn-warning" Height="50px"
                                                                Text="Request for OTP" Width="150px"
                                                                OnClick="btnotp_Click" Visible="false" />
                                                            <br />
                                                            <asp:TextBox ID="txtOTPVerify" runat="server" class="form-control txtbox"
                                                                MaxLength="6" Height="28px" Width="180px" ToolTip="Please enter OTP Rcvd on your phone here"
                                                                OnTextChanged="txtOTPVerify_TextChanged" AutoPostBack="true" Visible="false">
                                                            </asp:TextBox>
                                                            <br />
                                                            <asp:Label ID="lblcois" Visible="false" runat="server" Font-Bold="true" Font-Size="Larger" Text="Sent to COI"></asp:Label>
                                                            <asp:Button ID="Button1" CssClass="btn btn-primary" Visible="false" OnClick="Button1_Click" runat="server" Text="Send to COI" Width="150px" />
                                                            <br />
                                                            <br />
                                                            <%-- <asp:Label ID="lbldipcs" Visible="false" runat="server" Font-Bold="true" Font-Size="Larger" Text="Sent to DIPC"></asp:Label>--%>
                                                            <asp:Button ID="Button2" Visible="false" CssClass="btn btn-primary" OnClick="Button2_Click" runat="server" Text="Send to DIPC" Width="150px" />
                                                        </itemtemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Query Letter/GM Recommendation Letter">
                                                        <itemtemplate>
                                                            <asp:HyperLink ID="anchortagGMCertificate" runat="server" Text="Recommendation Letter" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                                        </itemtemplate>
                                                    </asp:TemplateField>

                                                    <%--<asp:TemplateField HeaderText="Inspection Report">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="anchortaglink" runat="server" Text="Update Inspection Report" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                                </columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <div class="panel panel-default" runat="server" id="Div7" visible="false">
                            <div class="panel-heading" role="tab" id="Div12">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapjdhistory" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Recommended By J.D(Files In Full Shape)
                                    </a>
                                </h4>
                            </div>
                            <div id="collapjdhistory" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">G.M Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr id="tr14" runat="server" visible="false">
                                            <td style="font-weight: bold" runat="server" id="Td1">Forwarded to Additional Director
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvreconbyjdjd" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDeleting="GridView3_RowDeleting">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />--%>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="RecomendedAmount" HeaderText="Recomended Amount" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Recomended By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Recomended Date" />
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                                <br />
                                            </td>
                                        </tr>

                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr id="tr12" runat="server" visible="false">
                                            <td style="font-weight: bold">Pending Applications 
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />--%>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <%--  <asp:BoundField DataField="Status" HeaderText="Status" />--%>
                                                        <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Query Raised By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr style="height: 30px" id="tr13" runat="server" visible="false">
                                            <td colspan="2" style="font-weight: bold">-->
                                            <asp:HyperLink ID="HyperLink3" runat="server" Text="Query Letter" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                            <td>
                                                <input type="button" value="Print" style="float: right;" onclick="javascript: respondQueriesPrintAnother()" /></td>

                                        </tr>

                                        <tr style="height: 30px" id="tr7" runat="server" visible="false">
                                            <td colspan="12">
                                                <span style="font-weight: bold">--> J.D Query History : </span>
                                                <br />
                                                <br />
                                                <asp:GridView ID="jdqueryhistory" runat="server" AutoGenerateColumns="true"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" runat="server" id="Div40" visible="false">
                            <div class="panel-heading" role="tab" id="Div47">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#Div48" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Status of SSC Inspection at JD Level
                                    </a>
                                </h4>
                            </div>
                            <div id="Div48" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <tr id="tr20" runat="server" visible="false">
                                            <td style="font-weight: bold">Referred for SSC Inspection by JD
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvJDSSCDtls" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />--%>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="SSC Referred Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="SSC Referred By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="SSC Referred Date" />
                                                        <%--<asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>--%>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" runat="server" id="Div55" visible="false">
                            <div class="panel-heading" role="tab" id="Div56">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#Div57" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Status of Returned Applications at JD Level
                                    </a>
                                </h4>
                            </div>
                            <div id="Div57" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <tr id="tr22" runat="server" visible="false">
                                            <td style="font-weight: bold">Returned by JD
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvJDreturnedDtls" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HiddenField13" runat="server" />
                                                                <asp:HiddenField ID="HiddenField14" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />--%>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="Returned Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Returned By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Returned Date" />
                                                        <%--<asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>--%>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" runat="server" id="DIVSVCDEPTRETURNEDAPPLICATIONS" visible="false">
                            <div class="panel-heading" role="tab" id="Div561">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#divsvc" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Status of Returned Applications at SVC Departments Level
                                    </a>
                                </h4>
                            </div>
                            <div id="divsvc" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <tr id="tr23" runat="server" visible="false">
                                            <td style="font-weight: bold">Returned by SVC Department
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="grdSVCreturneddetails" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HiddenField11" runat="server" />
                                                                <asp:HiddenField ID="HiddenField12" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />--%>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="Returned Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Returned By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Returned Date" />
                                                        <%--<asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>--%>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" runat="server" id="DIVSVCAPPROVEDHEAD" visible="false">
                            <div class="panel-heading" role="tab" id="DIVSVCAPPROVED1">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#DIVSVCAPPROVED" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Status of Approved Applications at SVC Departments Level
                                    </a>
                                </h4>
                            </div>
                            <div id="DIVSVCAPPROVED" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <tr id="tr25" runat="server" visible="false">
                                            <td style="font-weight: bold">Returned by SVC Department
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GRDSVCAPPROVED" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HiddenField16" runat="server" />
                                                                <asp:HiddenField ID="HiddenField19" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />--%>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <%--<asp:BoundField DataField="Remarks" HeaderText="Returned Remarks" />--%>
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Approved By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Approved Date" />
                                                        <%--<asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>--%>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" runat="server" id="Div2" visible="false">
                            <div class="panel-heading" role="tab" id="Div19">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#Div20" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        <span id="spanaddljdstatusbar" runat="server">Status of Applications at JD</span>
                                    </a>
                                </h4>
                            </div>
                            <div id="Div20" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">G.M Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr id="trProcessedApplications" runat="server" visible="false">
                                            <td style="font-weight: bold" runat="server" id="tradditionalforwared">Forwarded to Additional Director
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvProcessedApplications" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />--%>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="RecomendedAmount" HeaderText="Recomended Amount" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Recomended By Addl Director" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Recomended Date" />
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <%--<asp:TemplateField Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>--%>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr id="trPendingApplications" runat="server" visible="false">
                                            <td style="font-weight: bold">Pending Applications 
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvpendingapplications" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDataBound="gvpendingapplications_RowDataBound">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Type of incetive">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblenterrespname" Text='<%#Eval("Incentive") %>' runat="server" />
                                                                <br />
                                                                <br />
                                                                <asp:HyperLink ID="hpquerylinkcoi" Target="_blank" Font-Bold="true" runat="server">View Query Letter</asp:HyperLink>
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <%-- <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />--%>

                                                        <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Query/SSC Inspection request Raised By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Status">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblstatus" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr style="height: 30px" id="trjdqueryletter" runat="server" visible="false">
                                            <td colspan="2" style="font-weight: bold">-->
                                            <asp:HyperLink ID="HyperLinktrjdqueryletter" runat="server" Text="Query Letter" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr style="height: 30px" id="tr1gmresponce" runat="server" visible="false">
                                            <td colspan="11"><span style="font-weight: bold; font-size: 14pt">Responses for earlier queries</span></td>
                                            <td>
                                                <input type="button" value="Print" style="float: right;" onclick="javascript: respondQueriesPrint()" /></td>
                                        </tr>
                                        <tr style="height: 30px" id="tr1gmresponce2" runat="server" visible="false">
                                            <td colspan="12">
                                                <asp:GridView ID="gvresponcegmgv" runat="server" AutoGenerateColumns="true"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>


                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr id="tr11" runat="server" visible="false">
                                            <td style="font-weight: bold">Rejected Applications
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvadditionalRejected" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="Rejected Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Rejected By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Rejected Date" />
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>

                                        <tr id="tr8" runat="server" visible="false">
                                            <td style="font-weight: bold">Abeyanced by Additional Director
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvaddlabeyanced" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>

                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="Abeyanced Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Abeyanced By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Abeyanced Date" />

                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>


                        <%--added 01.01.2018--%>
                        <div class="panel panel-default" runat="server" id="Div24" visible="false">
                            <div class="panel-heading" role="tab" id="Div26">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#Div27" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Status of Rejected Applications at JD Level
                                    </a>
                                </h4>
                            </div>
                            <div id="Div27" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <tr id="tr4" runat="server" visible="false">
                                            <td style="font-weight: bold">Rejected by JD
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GVJDRejectedCases" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="Rejected Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Rejected By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Rejected Date" />
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <%--end of 01.01.2018--%>
                        <%--added 22.01.2018--%>

                        <div class="panel panel-default" runat="server" id="Div28" visible="false">
                            <div class="panel-heading" role="tab" id="Div29">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#Div30" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Status of Abeyanced Applications at JD Level
                                    </a>
                                </h4>
                            </div>
                            <div id="Div30" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <tr id="tr6" runat="server" visible="false">
                                            <td style="font-weight: bold">Abeyanced by JD
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvJDAbeyancedDtls" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />--%>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="Abeyanced Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Abeyanced By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Abeyanced Date" />
                                                        <%--<asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>--%>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <%--end of 22.01.2018--%>

                        <div class="panel panel-default" runat="server" id="Div58" visible="false">
                            <div class="panel-heading" role="tab" id="Div59">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#Div60" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Status of Returned Applications at Additional Director Level
                                    </a>
                                </h4>
                            </div>
                            <div id="Div60" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <tr id="tr21" runat="server" visible="false">
                                            <td style="font-weight: bold">Returned by Additional Director
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvADDLreturnedDtls" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HiddenField13" runat="server" />
                                                                <asp:HiddenField ID="HiddenField14" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />--%>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="Returned Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Returned By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Returned Date" />
                                                        <%--<asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>--%>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" runat="server" id="DIVCOMMRET" visible="false">
                            <div class="panel-heading" role="tab" id="DIVCOMMRET1">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#DIVCOMMRET2" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Status of Returned Applications at Commissioner Level
                                    </a>
                                </h4>
                            </div>
                            <div id="DIVCOMMRET2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <tr id="tr27" runat="server" visible="false">
                                            <td style="font-weight: bold">Returned by Commissioner
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="grdcommissionerreturned" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HiddenField15" runat="server" />
                                                                <asp:HiddenField ID="HiddenField20" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="Returned Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Returned By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Returned Date" />

                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" runat="server" id="DIVAPPROVED_COMMISIONER1" visible="false">
                            <div class="panel-heading" role="tab" id="DIVAPPROVED_COMMISIONER2">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#DIVAPPROVED_COMMISIONER3" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Status of Approved Applications at Commissioner Level
                                    </a>
                                </h4>
                            </div>
                            <div id="DIVAPPROVED_COMMISIONER3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <tr id="tr28" runat="server" visible="false">
                                            <td style="font-weight: bold">Approved by Commissioner
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="grdcommissionerapproved" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HiddenField21" runat="server" />
                                                                <asp:HiddenField ID="HiddenField22" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Approved By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Approved Date" />

                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" runat="server" id="Div13" visible="false">
                            <div class="panel-heading" role="tab" id="Div14">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#Div15" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Applications Status - SVC
                                    </a>
                                </h4>
                            </div>
                            <div id="Div15" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">G.M Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvpresvc" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDeleting="GridView3_RowDeleting">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />--%>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="RecomendedAmount" HeaderText="Recomended Amount" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Recomended By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Recomended Date" />
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>

                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr id="tr9" runat="server" visible="false">
                                            <td style="font-weight: bold">Rejected Applications
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvrejectedaddlsvc" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="Rejected Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Rejected By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Rejected Date" />
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" runat="server" id="Div16" visible="false">
                            <div class="panel-heading" role="tab" id="Div17">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#Div18" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Applications Status - SLC
                                    </a>
                                </h4>
                            </div>
                            <div id="Div18" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--<tr>
                                    <td><span style="font-weight: bold; font-size: 14pt">G.M Query History</span>
                                    </td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvpostsvc" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDeleting="GridView3_RowDeleting" OnRowDataBound="gvpostsvc_RowDataBound">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                                                <asp:HiddenField ID="HiddenField2" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />--%>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="RecomendedAmount" HeaderText="Recomended Amount" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Recomended By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Recomended Date" />
                                                        <asp:BoundField DataField="SLCNumer" HeaderText="SLC Numer" />
                                                        <asp:BoundField DataField="SLCDate" HeaderText="SLC Date" />
                                                        <asp:BoundField DataField="SanctionedDate" HeaderText="Sanctioned Date" />
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Intimation Letter" Visible="false">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="anchortagGMCertificate" Target="_blank" runat="server" Text="Intimation Letter"></asp:HyperLink>
                                                                <asp:Label ID="lbloffiline" Visible="false" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Left" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label10" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label11" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label12" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Scheme" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblScheme" Text='<%#Eval("Scheme") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="DIPCNumer" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblDIPCNumer" Text='<%#Eval("SLCNumer") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="OfflineFlag" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblOfflineFlag" Text='<%#Eval("OfflineFlag") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>

                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr id="tr10" runat="server" visible="false">
                                            <td style="font-weight: bold">Rejected Applications
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvrejctedslc" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="Rejected Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Rejected By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Rejected Date" />
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" runat="server" id="Div33" visible="false">
                            <div class="panel-heading" role="tab" id="Div34">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#Div35" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Applications Status - DIPC
                                    </a>
                                </h4>
                            </div>
                            <div id="Div35" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                                                <asp:HiddenField ID="HiddenField2" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <%--<asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />--%>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="RecomendedAmount" HeaderText="Recomended Amount" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Recomended By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Recomended Date" />
                                                        <asp:BoundField DataField="SLCNumer" HeaderText="DIPC Numer" />
                                                        <asp:BoundField DataField="SLCDate" HeaderText="DIPC Date" />
                                                        <asp:BoundField DataField="SanctionedDate" HeaderText="Sanctioned Date" />
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Intimation Letter" Visible="false">
                                                            <itemtemplate>
                                                                <asp:HyperLink ID="anchortagGMCertificate" Target="_blank" runat="server" Text="Intimation Letter"></asp:HyperLink>
                                                                <asp:Label ID="lbloffiline" Visible="false" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Left" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label10" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label11" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label12" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Scheme" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblScheme" Text='<%#Eval("Scheme") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="DIPCNumer" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblDIPCNumer" Text='<%#Eval("SLCNumer") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="OfflineFlag" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblOfflineFlag" Text='<%#Eval("OfflineFlag") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>

                                        <tr style="height: 20px">
                                            <td></td>
                                        </tr>
                                        <tr id="tr17" runat="server" visible="false">
                                            <td style="font-weight: bold">Rejected Applications
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="Rejected Remarks" />
                                                        <asp:BoundField DataField="CreatedBy" HeaderText="Rejected By" />
                                                        <asp:BoundField DataField="CreatedDate" HeaderText="Rejected Date" />
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" runat="server" id="trRemarks1" visible="false">
                            <div class="panel-heading" role="tab" id="Div8">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsegmqueryhistorynew" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Verification of Application
                                    </a>
                                </h4>
                            </div>
                            <div id="collapsegmqueryhistorynew" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--   <tr style="height: 30px" id="trRemarks1" runat="server" visible="false">
                                    <td><span style="font-weight: bold; font-size: 14pt">Query (If any)</span></td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <table>
                                                    <tr>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:Label ID="Label21" runat="server" CssClass="LBLBLACK" Width="200px">Type of Incentive </asp:Label>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                            <asp:DropDownList ID="ddlstaire" runat="server" class="form-control txtbox"
                                                                Height="33px" Width="180px" TabIndex="1" OnSelectedIndexChanged="ddlstaire_SelectedIndexChanged">
                                                                <%-- <asp:ListItem>--Select--</asp:ListItem>--%>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; width: 10px;">&nbsp;</td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:Label ID="Label3" runat="server" CssClass="LBLBLACK" Width="120px">Status</asp:Label>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">

                                                            <asp:RadioButtonList ID="CheckBoxList1" runat="server" AutoPostBack="True" Width="220px" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                                                                <asp:ListItem Text="File in full shape" Value="1"></asp:ListItem>
                                                                <asp:ListItem Text="Query" Value="2"></asp:ListItem>
                                                                <asp:ListItem Text="Reject" Value="3"></asp:ListItem>
                                                                <asp:ListItem Text="Abeyance Application" Value="4"></asp:ListItem>
                                                                <asp:ListItem Text="SSC inspection" Value="5"></asp:ListItem>
                                                                <asp:ListItem Text="Return to AD/DD" Value="6"></asp:ListItem>
                                                                <%--<asp:ListItem Text="Query to GM" Value="7"></asp:ListItem>--%>
                                                                <asp:ListItem Text="SSC inspection Completed" Value="8"></asp:ListItem>
                                                            </asp:RadioButtonList>

                                                        </td>
                                                        <td>
                                                            <asp:LinkButton ID="lnkapplntotalprint" runat="server" Font-Bold="true" Font-Size="Large" OnClick="lnkapplntotalprint_Click">Print All Documents</asp:LinkButton>
                                                        </td>

                                                    </tr>
                                                    <tr id="trsscinspectiondate" runat="server" visible="false">
                                                        <td style="width: 250px; font-weight: bold">1). SSC Inspection Date : &nbsp;
                                                        </td>
                                                        <td colspan="4">

                                                            <asp:TextBox ID="txtsscinspectiondate" autocomplete="off" Width="150px" Height="30px" runat="server" />
                                                            <%--<asp:TextBox ID="txtdate" autocomplete="off" class="form-control txtbox" Width="150px" Height="30px" runat="server" />--%>
           
                                                        </td>
                                                    </tr>
                                                    <tr id="trquery" runat="server" visible="false">

                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:Label ID="Label2" runat="server" CssClass="LBLBLACK" Width="200px">Query</asp:Label>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                            <asp:TextBox ID="txtincentiveremarks" TextMode="MultiLine" Height="80px" Width="300px" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>

                                                    <tr id="trReject" runat="server" visible="false">
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:Label ID="Label14" runat="server" CssClass="LBLBLACK" Width="200px">Reject Reason</asp:Label>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                            <asp:TextBox ID="txtRejectreason" TextMode="MultiLine" Height="80px" Width="300px" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr id="trsscreport" runat="server" visible="false">

                                                        <td style="padding: 5px; margin: 5px; text-align: left;">Upload SSC Inspection Report
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td valign="top" align="center" style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:FileUpload ID="FileUploadsscreport" runat="server" CssClass="CS" Height="28px" />
                                                            <asp:HyperLink ID="lblFileNamesscreport" runat="server" CssClass="LBLBLACK" Target="_blank"></asp:HyperLink>
                                                            <br />
                                                            <asp:Label ID="Labelsscreport" runat="server"></asp:Label>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; width: 10px;" valign="top">
                                                            <asp:Button ID="BtnSave3" runat="server" CssClass="btn btn-xs btn-warning" Height="28px"
                                                                TabIndex="10" Text="Upload" Width="72px" OnClick="BtnSave3_Click" />
                                                        </td>
                                                    </tr>
                                                    <tr id="trLandBuidlingMachinery" runat="server" visible="false">
                                                        <td>
                                                            <tr>
                                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                                    <asp:Label ID="Label19" runat="server" CssClass="LBLBLACK" Width="200px">Land</asp:Label>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px">:</td>
                                                                <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                                    <asp:TextBox ID="txtLandJD" Height="28px" Width="200px" runat="server" Enabled="False"></asp:TextBox>
                                                                    <asp:Label ID="lblLandJD" runat="server" Text=""></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                                    <asp:Label ID="lblBuildingJD" runat="server" CssClass="LBLBLACK" Width="200px">Building</asp:Label>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px">:</td>
                                                                <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                                    <asp:TextBox ID="txtBuildingJD" Height="28px" Width="200px" runat="server" Enabled="False"></asp:TextBox>
                                                                    <asp:Label ID="lblBuildingJDs" runat="server" Text=""></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                                    <asp:Label ID="lblPnM" runat="server" CssClass="LBLBLACK" Width="200px">Plant & Machinery</asp:Label>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px">:</td>
                                                                <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                                    <asp:TextBox ID="txtPnMJD" Height="28px" Width="200px" runat="server" Enabled="False"></asp:TextBox>
                                                                    <asp:Label ID="lblpnMs" runat="server" Text=""></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </td>

                                                    </tr>

                                                    <tr id="trRecommendAmount" runat="server" visible="false">

                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:Label ID="Label6" runat="server" CssClass="LBLBLACK" Width="200px">Recommended Amount</asp:Label>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                            <asp:TextBox ID="txtRecommendedAmount" Height="28px" Width="200px" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr id="tr2" runat="server">
                                                        <td style="padding: 5px; margin: 5px" colspan="10" align="center">
                                                            <asp:Button ID="BtnAddremarks" runat="server" CssClass="btn btn-xs btn-warning"
                                                                Height="28px" TabIndex="10" Text="Add" ValidationGroup="group1"
                                                                Width="72px" OnClick="BtnAddremarks_Click" />
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">&nbsp;</td>
                                                    </tr>
                                                    <tr id="trfullshap" runat="server" visible="false">
                                                        <td colspan="5" style="padding: 5px; margin: 5px; font-weight: bold">Incentives not in Full Shape
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="12">
                                                            <asp:GridView ID="gvremarks" runat="server" AutoGenerateColumns="false"
                                                                CellPadding="4" Height="62px"
                                                                Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDeleting="gvremarks_RowDeleting">
                                                                <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                                <rowstyle cssclass="GridviewScrollC1Item" />
                                                                <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                                <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                                <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                                <columns>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                        <itemtemplate>
                                                                            <%# Container.DataItemIndex + 1%>
                                                                            <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                            <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                        </itemtemplate>
                                                                        <headerstyle horizontalalign="Center" />
                                                                        <itemstyle width="50px" />
                                                                    </asp:TemplateField>
                                                                    <asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />
                                                                    <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                                    <%--  <asp:BoundField DataField="Status" HeaderText="Status" />--%>
                                                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                                                    <asp:BoundField DataField="CreatedBy" HeaderText="Query Raised By" />
                                                                    <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                                                                    <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                </columns>
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 30px">
                                                        <td colspan="10"></td>
                                                    </tr>
                                                    <tr id="trnotinfullshap" runat="server" visible="false">
                                                        <td colspan="5" style="padding: 5px; margin: 5px; font-weight: bold">Incentives in Full Shape
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="12">
                                                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false"
                                                                CellPadding="4" Height="62px"
                                                                Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDeleting="GridView3_RowDeleting">
                                                                <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                                <rowstyle cssclass="GridviewScrollC1Item" />
                                                                <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                                <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                                <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                                <columns>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                        <itemtemplate>
                                                                            <%# Container.DataItemIndex + 1%>
                                                                            <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                            <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                        </itemtemplate>
                                                                        <headerstyle horizontalalign="Center" />
                                                                        <itemstyle width="50px" />
                                                                    </asp:TemplateField>
                                                                    <asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />
                                                                    <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                                    <asp:BoundField DataField="RecomendedAmount" HeaderText="Recomended Amount" />
                                                                    <asp:BoundField DataField="CreatedBy" HeaderText="Recomended By" />
                                                                    <asp:BoundField DataField="CreatedDate" HeaderText="Recomended Date" />
                                                                    <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                </columns>
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 30px">
                                                        <td colspan="10"></td>
                                                    </tr>

                                                    <tr id="trrejectedtls" runat="server" visible="false">
                                                        <td colspan="5" style="padding: 5px; margin: 5px; font-weight: bold">Reject Incentives
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="12">
                                                            <asp:GridView ID="gvRejected" runat="server" AutoGenerateColumns="false"
                                                                CellPadding="4" Height="62px"
                                                                Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDeleting="gvRejected_RowDeleting">
                                                                <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                                <rowstyle cssclass="GridviewScrollC1Item" />
                                                                <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                                <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                                <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                                <columns>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                        <itemtemplate>
                                                                            <%# Container.DataItemIndex + 1%>
                                                                            <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                            <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                        </itemtemplate>
                                                                        <headerstyle horizontalalign="Center" />
                                                                        <itemstyle width="50px" />
                                                                    </asp:TemplateField>
                                                                    <asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />
                                                                    <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                                    <%--  <asp:BoundField DataField="Status" HeaderText="Status" />--%>
                                                                    <asp:BoundField DataField="RejectMsg" HeaderText="Reject Reason" />
                                                                    <asp:BoundField DataField="RejectedBy" HeaderText="Rejected By" />
                                                                    <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                                                                    <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblCreatedByid" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                </columns>
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 30px">
                                                        <td colspan="10"></td>
                                                    </tr>

                                                    <tr id="tr5" runat="server" visible="false">
                                                        <td colspan="5" style="padding: 5px; margin: 5px; font-weight: bold">Abeyance Incentives
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="12">
                                                            <asp:GridView ID="gvHoldApplications" runat="server" AutoGenerateColumns="false"
                                                                CellPadding="4" Height="62px"
                                                                Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDeleting="gvHoldApplications_RowDeleting">
                                                                <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                                <rowstyle cssclass="GridviewScrollC1Item" />
                                                                <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                                <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                                <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                                <columns>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                        <itemtemplate>
                                                                            <%# Container.DataItemIndex + 1%>
                                                                            <asp:HiddenField ID="HiddenField3" runat="server" />
                                                                            <asp:HiddenField ID="HiddenField4" runat="server" />
                                                                        </itemtemplate>
                                                                        <headerstyle horizontalalign="Center" />
                                                                        <itemstyle width="50px" />
                                                                    </asp:TemplateField>
                                                                    <asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />
                                                                    <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                                    <%--  <asp:BoundField DataField="Status" HeaderText="Status" />--%>
                                                                    <asp:BoundField DataField="RejectMsg" HeaderText="Abeyance Reason" />
                                                                    <asp:BoundField DataField="RejectedBy" HeaderText="Abeyance By" />
                                                                    <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                                                                    <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="Label15" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="Label16" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="Label17" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="Label18" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                </columns>
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>

                                                    <tr style="height: 30px">
                                                        <td colspan="10"></td>
                                                    </tr>

                                                    <tr style="height: 30px" id="tradditional" runat="server" visible="false">
                                                        <td style="padding: 5px; margin: 5px" id="tdslcno" runat="server">SLC No </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td>
                                                            <asp:TextBox ID="txtslcno" runat="server" class="form-control txtbox" Height="28px"
                                                                MaxLength="80" TabIndex="1" Width="150px">
                                                            </asp:TextBox>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; width: 10px;">&nbsp;</td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;" id="tdslcndate" runat="server">SLC Date
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                            <asp:TextBox runat="server" ID="txtslcnodate" class="form-control txtbox" Height="28px"
                                                                MaxLength="80" TabIndex="1" Width="150px">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 30px">
                                                        <td colspan="10"></td>
                                                    </tr>
                                                    <%--<tr id="trpostsvc" runat="server" visible="false">
                                                    <td style="padding: 5px; margin: 5px; text-align: left;">SVC Date
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">:</td>
                                                    <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                        <asp:TextBox runat="server" ID="txtsvcdate" class="form-control txtbox" Height="28px"
                                                            MaxLength="80" TabIndex="1" Width="150px"></asp:TextBox>
                                                    </td>
                                                </tr>--%>
                                                    <tr style="height: 30px">
                                                        <td colspan="10"></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="middle" colspan="12">
                                                            <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Height="32px"
                                                                TabIndex="10" Text="Submit Application" Width="400px" OnClick="Button3_Click" Visible="false" />
                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                          <asp:Button ID="Button4" runat="server" CssClass="btn btn-primary" Height="32px" Visible="false"
                                                              TabIndex="10" Text="Generate Query Letter" Width="281px" OnClick="Button4_Click" />
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 30px">
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="10">
                                                            <asp:GridView ID="gvdetailsfinalproforma" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                                CssClass="GRD" ForeColor="#333333" Height="62px"
                                                                PageSize="15" ShowFooter="True" Width="100%" CellSpacing="4" OnRowDataBound="gvdetailsfinalproforma_RowDataBound">
                                                                <footerstyle backcolor="#be8c2f" font-bold="True" forecolor="White" />
                                                                <rowstyle backcolor="#EBF2FE" cssclass="GRDITEM" horizontalalign="Left" verticalalign="Middle" />
                                                                <columns>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                        <itemtemplate>
                                                                            <%# Container.DataItemIndex + 1%>
                                                                            <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                            <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                            <asp:HiddenField ID="HdfDeptid" runat="server" />
                                                                        </itemtemplate>
                                                                        <headerstyle horizontalalign="Center" />
                                                                        <itemstyle width="50px" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Incentive Name">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblince" runat="server" Text='<%#Eval("IncentiveName") %>'></asp:Label>
                                                                        </itemtemplate>
                                                                        <headerstyle horizontalalign="Left" width="400px" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Claimed Amount">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="hSLCNumber" runat="server" Text='<%#Eval("UnitClaimedAmount") %>'></asp:Label>
                                                                        </itemtemplate>
                                                                        <headerstyle horizontalalign="Left" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Recommended Amount">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("valueamount") %>'></asp:Label>
                                                                        </itemtemplate>
                                                                        <headerstyle horizontalalign="Left" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Sactioned Amount">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblSactionedAmount" runat="server" Text='<%#Eval("valueamount") %>'></asp:Label>
                                                                        </itemtemplate>
                                                                        <headerstyle horizontalalign="Left" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Certificate">
                                                                        <itemtemplate>
                                                                            <asp:HyperLink ID="anchortagGMCertificate" Target="_blank" runat="server" Text="View"></asp:HyperLink>
                                                                        </itemtemplate>
                                                                        <headerstyle horizontalalign="Left" />
                                                                    </asp:TemplateField>
                                                                </columns>
                                                                <pagerstyle backcolor="#013161" forecolor="White" horizontalalign="Center" />
                                                                <selectedrowstyle backcolor="#D1DDF1" font-bold="True" forecolor="#333333" />
                                                                <headerstyle backcolor="#1d9a5b" cssclass="GRDHEADER" font-bold="True" forecolor="White" />
                                                                <editrowstyle backcolor="#B9D684" />
                                                                <alternatingrowstyle backcolor="White" />
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 30px">
                                                        <td colspan="10"></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="middle" colspan="12">
                                                            <asp:Button ID="btnfinalsubmit" runat="server" CssClass="btn btn-primary" Height="32px" Visible="false"
                                                                TabIndex="10" Text="Submit the Application" Width="281px" OnClick="btnfinalsubmit_Click" />
                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>

                                        </tr>
                                    </table>

                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" runat="server" id="trRemarks_adlevel" visible="false">
                            <div class="panel-heading" role="tab" id="Div8_adlevel">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsegmqueryhistorynew" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Verification of Application (AD - LEVEL)
                                    </a>
                                </h4>
                            </div>
                            <div id="Div36" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <%--   <tr style="height: 30px" id="trRemarks1" runat="server" visible="false">
                                    <td><span style="font-weight: bold; font-size: 14pt">Query (If any)</span></td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <table>
                                                    <tr id="trAdlevleOperation" runat="server">
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:Label ID="lblTypeofInc_adlevel" runat="server" CssClass="LBLBLACK" Width="200px">Type of Incentive </asp:Label>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                            <asp:DropDownList ID="ddlTypeofinc_adlevel" runat="server" class="form-control txtbox"
                                                                Height="33px" Width="180px" TabIndex="1" OnSelectedIndexChanged="ddlstaire_SelectedIndexChanged">
                                                                <%-- <asp:ListItem>--Select--</asp:ListItem>--%>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; width: 10px;">&nbsp;</td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:Label ID="lblStatus_adlevel" runat="server" CssClass="LBLBLACK" Width="120px">Status</asp:Label>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                            <asp:RadioButtonList ID="rblStatus_adlevel" runat="server" AutoPostBack="True" Width="220px" OnSelectedIndexChanged="rblStatus_adlevel_SelectedIndexChanged">
                                                                <asp:ListItem Text="File in full shape" Value="1"></asp:ListItem>
                                                                <asp:ListItem Text="Query" Value="2"></asp:ListItem>


                                                            </asp:RadioButtonList>
                                                        </td>
                                                        <td>
                                                            <asp:LinkButton ID="lnkprint_adlevel" runat="server" Font-Bold="true" Font-Size="Large" OnClick="lnkapplntotalprint_Click">Print All Documents</asp:LinkButton>
                                                        </td>

                                                    </tr>
                                                    <tr id="tradrecommendamount" runat="server" visible="false">

                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:Label ID="Label22" runat="server" CssClass="LBLBLACK" Width="200px">Recommended Amount</asp:Label>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                            <asp:TextBox ID="txtadrecomamount" Height="28px" Width="200px" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr id="trQuery_adlevel" runat="server" visible="false">

                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:Label ID="Label24" runat="server" CssClass="LBLBLACK" Width="200px">Query</asp:Label>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                            <asp:TextBox ID="txtAdlevelQuery" TextMode="MultiLine" Height="80px" Width="300px" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>





                                                    <tr id="tr24" runat="server">
                                                        <td style="padding: 5px; margin: 5px" colspan="8" align="center">
                                                            <asp:Button ID="btnAddQueryAdLevel" runat="server" CssClass="btn btn-xs btn-warning"
                                                                Height="28px" TabIndex="10" Text="Add" ValidationGroup="group1"
                                                                Width="72px" OnClick="btnAddQueryAdLevel_Click" />
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">&nbsp;</td>
                                                    </tr>
                                                    <tr id="trfullshap_AdRemakrs" runat="server" visible="false">
                                                        <td colspan="5" style="padding: 5px; margin: 5px; font-weight: bold">Incentives not in Full Shape
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="9">
                                                            <asp:GridView ID="gvQueries_ADLevel" runat="server" AutoGenerateColumns="false"
                                                                CellPadding="4" Height="62px"
                                                                Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDeleting="gvQueries_ADLevel_RowDeleting" OnRowDataBound="gvQueries_ADLevel_RowDataBound">
                                                                <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                                <rowstyle cssclass="GridviewScrollC1Item" />
                                                                <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                                <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                                <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                                <columns>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                        <itemtemplate>
                                                                            <%# Container.DataItemIndex + 1%>
                                                                            <asp:HiddenField ID="HiddenField5" runat="server" />
                                                                            <asp:HiddenField ID="HiddenField6" runat="server" />
                                                                        </itemtemplate>
                                                                        <headerstyle horizontalalign="Center" />
                                                                        <itemstyle width="50px" />
                                                                    </asp:TemplateField>
                                                                    <asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />
                                                                    <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                                    <%--  <asp:BoundField DataField="Status" HeaderText="Status" />--%>
                                                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                                                                    <asp:BoundField DataField="CreatedBy" HeaderText="Query Raised By" />
                                                                    <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                                                                    <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="Label53" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="Label54" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="Label55" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="Label56" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                </columns>
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 30px">
                                                        <td colspan="8"></td>
                                                    </tr>
                                                    <tr id="tr26" runat="server" visible="false">
                                                        <td colspan="5" style="padding: 5px; margin: 5px; font-weight: bold">Incentives in Full Shape
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="9">
                                                            <asp:GridView ID="GridView16" runat="server" AutoGenerateColumns="false"
                                                                CellPadding="4" Height="62px"
                                                                Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDeleting="GridView16_RowDeleting">
                                                                <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                                <rowstyle cssclass="GridviewScrollC1Item" />
                                                                <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                                <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                                <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                                <columns>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                        <itemtemplate>
                                                                            <%# Container.DataItemIndex + 1%>
                                                                            <asp:HiddenField ID="HiddenField7" runat="server" />
                                                                            <asp:HiddenField ID="HiddenField8" runat="server" />
                                                                        </itemtemplate>
                                                                        <headerstyle horizontalalign="Center" />
                                                                        <itemstyle width="50px" />
                                                                    </asp:TemplateField>
                                                                    <asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />
                                                                    <asp:BoundField DataField="Incentive" HeaderText="Type of incetive" />
                                                                    <asp:BoundField DataField="RecomendedAmount" HeaderText="Recomended Amount" />
                                                                    <asp:BoundField DataField="CreatedBy" HeaderText="Recomended By" />
                                                                    <asp:BoundField DataField="CreatedDate" HeaderText="Recomended Date" />
                                                                    <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="Label57" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="Label58" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="CreatedByid" Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="Label59" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField Visible="false">
                                                                        <itemtemplate>
                                                                            <asp:Label ID="Label60" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                                        </itemtemplate>
                                                                    </asp:TemplateField>
                                                                </columns>
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 30px">
                                                        <td colspan="8"></td>
                                                    </tr>


                                                    <tr style="height: 30px">
                                                        <td colspan="8"></td>
                                                    </tr>



                                                    <tr style="height: 30px">
                                                        <td colspan="8"></td>
                                                    </tr>


                                                    <tr style="height: 30px">
                                                        <td colspan="8"></td>
                                                    </tr>
                                                    <%--<tr id="trpostsvc" runat="server" visible="false">
                                                    <td style="padding: 5px; margin: 5px; text-align: left;">SVC Date
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">:</td>
                                                    <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                        <asp:TextBox runat="server" ID="txtsvcdate" class="form-control txtbox" Height="28px"
                                                            MaxLength="80" TabIndex="1" Width="150px"></asp:TextBox>
                                                    </td>
                                                </tr>--%>
                                                    <tr style="height: 30px">
                                                        <td colspan="8"></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="middle" colspan="9">
                                                            <asp:Button ID="btnSubmitAppraisal" runat="server" CssClass="btn btn-primary" Height="32px"
                                                                TabIndex="10" Text="Submit for Appraisal Note" Visible="false" OnClick="btnSubmitAppraisal_Click" />
                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                          <asp:Button ID="btnQueryAdLevel" runat="server" CssClass="btn btn-primary" Height="32px" Visible="false"
                                                              TabIndex="10" Text="Submit Query" OnClick="btnQueryAdLevel_Click" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="8">&nbsp;</td>
                                                    </tr>
                                                    <tr style="height: 30px">
                                                        <td colspan="8"></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="9" align="center" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                    </tr>
                                                </table>
                                            </td>

                                        </tr>
                                    </table>

                                </div>
                            </div>
                        </div>




                        <div class="panel panel-default" id="trqueryDtls" runat="server" visible="false">
                            <div class="panel-heading" role="tab" id="Div10">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsegmqueryhistoryQuery" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Query Letter from COI
                                    </a>
                                </h4>
                            </div>
                            <div id="collapsegmqueryhistoryQuery" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <tr>
                                            <td>
                                                <b>Gm Queries to Applicant</b>
                                                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="true"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 30px">
                                            <td></td>
                                        </tr>
                                        <tr style="height: 30px" id="trQueryletter" runat="server" visible="false">
                                            <td>&nbsp;&nbsp; Query Letter : &nbsp;&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" Text="View Query Letter" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                            </td>
                                        </tr>
                                        <tr id="trqueryDtls1" runat="server" visible="false">
                                            <td>
                                                <asp:GridView ID="gvquerygm" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDataBound="gvquerygm_RowDataBound">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Type of incetive">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblenterrespname" Text='<%#Eval("Incentive") %>' runat="server" />
                                                                <br />
                                                                <br />
                                                                <asp:HyperLink ID="hpquerylinkcoi" Target="_blank" Font-Bold="true" runat="server">View Query Letter</asp:HyperLink>
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <%-- <asp:BoundField DataField="Incentive" HeaderText="Typeofincetive" />--%>
                                                        <asp:BoundField DataField="Remarks" HeaderText="Query" />
                                                        <asp:TemplateField HeaderText="Entrepreneur Response">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblenterresp" Text='<%#Eval("EnterPrenuerResp") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Response">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtIncQueryFnl5" TextMode="MultiLine" Text='<%#Eval("Responce") %>' Height="100px" Width="250px" runat="server"></asp:TextBox>
                                                                <br />
                                                                <br />
                                                                <asp:FileUpload ID="FileUploadquery" runat="server" class="form-control txtbox" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Send Response to COI/Forward To applicant">
                                                            <itemtemplate>
                                                                <asp:Button ID="btnsendcoi" CssClass="btn btn-primary" runat="server" Text="Send Response to COI" Width="250px" OnClick="btnsendcoi_Click" />
                                                                <br />
                                                                <br />
                                                                <asp:Button ID="btncoigmraisequery" CssClass="btn btn-primary" runat="server" Text="Raise Query to Applicant" Width="250px" OnClick="btncoigmraisequery_Click" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="QueryCreatedBy" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblQueryCreatedBy" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <%--<asp:TemplateField HeaderText="Inspection Report">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="anchortaglink" runat="server" Text="Update Inspection Report" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <%--<tr id="trsendresponcetocoi" runat="server" visible="false">
                                        <td align="center">
                                            <asp:Button ID="btnsendcoi" CssClass="btn btn-primary" runat="server" Text="Send Response to COI" Width="250px" OnClick="btnsendcoi_Click" /><br />
                                        </td>
                                    </tr>--%>
                                    </table>

                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" id="Div49" runat="server" visible="false">
                            <div class="panel-heading" role="tab" id="Div49">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseAddlSSCInspectionReport" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        SSC Inspection Completion Report
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseAddlSSCInspectionReport" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">

                                        <tr style="height: 30px">
                                            <td></td>
                                        </tr>

                                        <tr id="traddlssc" runat="server" visible="false">
                                            <td>
                                                <asp:GridView ID="gvsscinspection" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDataBound="gvsscinspection_RowDataBound">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HiddenField9" runat="server" />
                                                                <asp:HiddenField ID="HiddenField10" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Type of incetive">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblenterrespnamessc" Text='<%#Eval("Incentive") %>' runat="server" />
                                                                <br />
                                                                <br />
                                                                <asp:HyperLink ID="hpquerylinkcoissc" NavigateUrl='<%#Eval("LINKNEW")%>' Target="_blank" Font-Bold="true" runat="server">SSC Inspection Letter</asp:HyperLink>
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <%-- <asp:BoundField DataField="Incentive" HeaderText="Typeofincetive" />--%>
                                                        <asp:BoundField DataField="Remarks" HeaderText="Query" />
                                                        <asp:TemplateField HeaderText="Entrepreneur Response">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblenterrespssc" Text='<%#Eval("EnterPrenuerResp") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Response">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtIncQueryFnl5ssc" TextMode="MultiLine" Text="" Height="100px" Width="250px" runat="server"></asp:TextBox>
                                                                <br />
                                                                <br />
                                                                <asp:FileUpload ID="FileUploadqueryssc" runat="server" class="form-control txtbox" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveIdssc" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveIDssc" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblidssc" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <%-- <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblsscdate" runat="server" Text='<%# Bind("SSCDATE") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblsscreport" runat="server" Text='<%# Bind("SSCREPORT") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>--%>
                                                        <asp:TemplateField HeaderText="Send Response to COI/Forward To applicant">
                                                            <itemtemplate>
                                                                <asp:Button ID="btnsendcoissc" CssClass="btn btn-primary" runat="server" Text="Send Response to COI" Width="250px" OnClick="btnsendcoissc_Click" />
                                                                <br />
                                                                <br />
                                                                <asp:Button ID="btncoigmraisequeryssc" CssClass="btn btn-primary" runat="server" Text="Raise Query to Applicant" Width="250px" OnClick="btncoigmraisequery_Click" Visible="false" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="QueryCreatedBy" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblQueryCreatedByssc" Text='<%#Eval("CreatedByid") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <%--<asp:TemplateField HeaderText="Inspection Report">
<ItemTemplate>
<asp:HyperLink ID="anchortaglinkssc" runat="server" Text="Update Inspection Report" Font-Bold="true" ForeColor="Green" Target="_blank" />
</ItemTemplate>
</asp:TemplateField>--%>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <%--<tr id="trsendresponcetocoi" runat="server" visible="false">
                                        <td align="center">
                                            <asp:Button ID="btnsendcoi" CssClass="btn btn-primary" runat="server" Text="Send Response to COI" Width="250px" OnClick="btnsendcoi_Click" /><br />
                                        </td>
                                    </tr>--%>
                                    </table>

                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" id="DivSSCgm" runat="server" visible="false">
                            <div class="panel-heading" role="tab" id="Div50">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseAddlSSCInspectionReport" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        SSC Inspection Completion Report-GM
                                    </a>
                                </h4>
                            </div>
                            <div id="DivSSCgm1" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">

                                        <tr style="height: 30px">
                                            <td></td>
                                        </tr>
                                        <tr style="height: 30px" id="trDivSSCgm" runat="server" visible="false">
                                            <td colspan="11"><span style="font-weight: bold; font-size: 14pt">SSC Responses from GM</span></td>
                                            <td>
                                                <input type="button" value="Print" style="float: right;" onclick="javascript: respondSSCPrint()" /></td>
                                        </tr>
                                        <tr style="height: 30px" id="trDivSSCgm1" runat="server" visible="false">
                                            <td colspan="12">
                                                <asp:GridView ID="gvsscinspectionGM" runat="server" AutoGenerateColumns="true"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HiddenField17" runat="server" />
                                                                <asp:HiddenField ID="HiddenField18" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>

                                        <%--<tr id="trsendresponcetocoi" runat="server" visible="false">
                                        <td align="center">
                                            <asp:Button ID="btnsendcoi" CssClass="btn btn-primary" runat="server" Text="Send Response to COI" Width="250px" OnClick="btnsendcoi_Click" /><br />
                                        </td>
                                    </tr>--%>
                                    </table>

                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default" id="Div31" runat="server" visible="false">
                            <div class="panel-heading" role="tab" id="Div32">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#Divadditionalqueryjd" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Queries from Additional Director
                                    </a>
                                </h4>
                            </div>
                            <div id="Divadditionalqueryjd" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <table style="width: 100%">
                                        <tr id="trgmqueriesapplicant" runat="server">
                                            <td>
                                                <b>Gm Queries to Applicant</b>
                                                <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="true"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr id="trJDquerytogm" runat="server" visible="false">
                                            <td>
                                                <b>JD Queries to G.M/Applicant</b>
                                                <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="true"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr id="trjdreplytoaddl" runat="server">
                                            <td>
                                                <b>Query Reply from J.D</b>
                                                <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="true"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 30px">
                                            <td></td>
                                        </tr>
                                        <tr style="height: 30px" id="tr15" runat="server" visible="false">
                                            <td>&nbsp;&nbsp; Query Letter : &nbsp;&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" Text="View Query Letter" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                            </td>
                                        </tr>
                                        <tr id="tr18" runat="server" visible="false">
                                            <td>
                                                <input type="button" value="Print" style="float: right;" onclick="javascript: respondQueriesaddPrint()" /><br />
                                                <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Typeofincetive" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="Query" />
                                                        <asp:TemplateField HeaderText="Entrepreneur Response">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblenterresp" Text='<%#Eval("EnterPrenuerResp") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="GM Response">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblenterrespgm" Text='<%#Eval("GmResp") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>

                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr id="tr16" runat="server" visible="false">
                                            <td>
                                                <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" Height="62px"
                                                    Width="100%" Font-Names="Verdana" Font-Size="12px" OnRowDataBound="GridView8_RowDataBound">
                                                    <headerstyle verticalalign="Middle" height="40px" cssclass="GridviewScrollC1HeaderWrap" />
                                                    <rowstyle cssclass="GridviewScrollC1Item" />
                                                    <pagerstyle cssclass="GridviewScrollC1Pager" />
                                                    <footerstyle backcolor="#013161" height="40px" cssclass="GridviewScrollC1Header" />
                                                    <alternatingrowstyle cssclass="GridviewScrollC1Item2" />
                                                    <columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <itemtemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </itemtemplate>
                                                            <headerstyle horizontalalign="Center" />
                                                            <itemstyle width="50px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Incentive" HeaderText="Typeofincetive" />
                                                        <asp:BoundField DataField="Remarks" HeaderText="Query" />
                                                        <asp:TemplateField HeaderText="Entrepreneur Response">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblenterresp" Text='<%#Eval("EnterPrenuerResp") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="GM Response">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblenterrespgm" Text='<%#Eval("GmResp") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Response">
                                                            <itemtemplate>
                                                                <asp:TextBox ID="txtIncQueryFnl5" TextMode="MultiLine" Text='<%#Eval("Responce") %>' Height="100px" Width="250px" runat="server"></asp:TextBox>
                                                                <br />
                                                                <br />
                                                                <asp:FileUpload ID="FileUploadquery" runat="server" class="form-control txtbox" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Masterincentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblMstIncentiveId" Text='<%#Eval("MstIncentiveId") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField Visible="false">
                                                            <itemtemplate>
                                                                <asp:Label ID="lblid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Send Response to Additional Director">
                                                            <itemtemplate>
                                                                <asp:Button ID="btnsendcoiadd" CssClass="btn btn-primary" runat="server" Text="Send Response" Width="250px" OnClick="btnsendcoiadd_Click" />
                                                                <br />
                                                                <br />
                                                                <%--<asp:Button ID="btncoigmraisequery" CssClass="btn btn-primary" runat="server" Visible="false" Text="Raise Query to GM/Applicant" Width="250px" OnClick="btncoigmraisequery_Click" />--%>
                                                            </itemtemplate>
                                                        </asp:TemplateField>
                                                        <%--<asp:TemplateField HeaderText="Inspection Report">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="anchortaglink" runat="server" Text="Update Inspection Report" Font-Bold="true" ForeColor="Green" Target="_blank" />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                                    </columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <%--<tr id="trsendresponcetocoi" runat="server" visible="false">
                                        <td align="center">
                                            <asp:Button ID="btnsendcoi" CssClass="btn btn-primary" runat="server" Text="Send Response to COI" Width="250px" OnClick="btnsendcoi_Click" /><br />
                                        </td>
                                    </tr>--%>
                                    </table>

                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default" id="divnewattachemts" runat="server" visible="false">
                            <div class="panel-heading" role="tab" id="Div9">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#Div11" aria-expanded="false" aria-controls="Div11">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        Attachments
                                    </a>
                                </h4>
                            </div>
                            <div id="Div11" class="panel-collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">

                                    <div align="center">

                                        <table width="100%" id="Table1" runat="server">
                                            <tr>
                                                <td colspan="10" style="padding: 10px; margin: 5px; font-weight: bold;">Incentive wise Attachments
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 10px; margin: 5px;">
                                                    <asp:GridView ID="gvfinalgrid" runat="server" AutoGenerateColumns="False"
                                                        Width="96%" HorizontalAlign="Left" ShowHeader="true" OnRowDataBound="gvfinalgrid_RowDataBound">
                                                        <columns>
                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                <itemtemplate>
                                                                    <%# Container.DataItemIndex + 1%>
                                                                </itemtemplate>
                                                                <headerstyle horizontalalign="Center" />
                                                                <itemstyle width="50px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Type of Attachment">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("Category")%>'></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Attachments">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lbl" runat="server" Text='<%# Eval("AttachmentName")%>'></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="View">
                                                                <itemtemplate>
                                                                    <asp:HyperLink ID="HyperLinkSubsidy" Text="view" NavigateUrl='<%#Eval("FilePath")%>' Target="_blank" runat="server" />
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" width="100px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Verified">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblverified" Text='<%#Eval("Verified")%>' runat="server"></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" width="100px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Verified By">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblverifiedby" Text='<%#Eval("Verifiedby")%>' runat="server"></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" width="100px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Verified Date">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblverifieddate" Text='<%#Eval("Verifieddate")%>' runat="server"></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" width="100px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Attachment" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblFileName" runat="server" Text='<%#Eval("LINKNEW") %>'></asp:Label>
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                        </columns>
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                            <tr id="trattachemntslastgrid" runat="server" visible="false">
                                                <td colspan="10" style="padding: 10px; margin: 5px; font-weight: bold;">Query Response Attachments
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 10px; margin: 5px;">
                                                    <asp:GridView ID="gvlastattachments" runat="server" AutoGenerateColumns="False"
                                                        Width="80%" HorizontalAlign="Left" ShowHeader="true" OnRowDataBound="gvlastattachments_RowDataBound">
                                                        <columns>
                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                <itemtemplate>
                                                                    <%# Container.DataItemIndex + 1%>
                                                                </itemtemplate>
                                                                <headerstyle horizontalalign="Center" />
                                                                <itemstyle width="50px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Attachments">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lbl" runat="server" Text='<%# Eval("AttachmentName")%>'></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="View">
                                                                <itemtemplate>
                                                                    <asp:HyperLink ID="HyperLinkSubsidy" Text="view" NavigateUrl='<%#Eval("FilePath")%>' Target="_blank" runat="server" />
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" width="100px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Verified">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblverified" Text='<%#Eval("Verified")%>' runat="server"></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" width="100px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Uploaded Date">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lbluploadeddate" Text='<%#Eval("UploadedDate")%>' runat="server"></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" width="100px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Attachment" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblFileName" runat="server" Text='<%#Eval("LINKNEW") %>'></asp:Label>
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                        </columns>
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                            <tr id="Inspectionhead2" runat="server" visible="false">
                                                <td colspan="10" style="padding: 10px; margin: 5px; font-weight: bold;">Inspection Report - Supporting Documents
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 10px; margin: 5px;">
                                                    <asp:GridView ID="hvInspection" runat="server" AutoGenerateColumns="False"
                                                        Width="80%" HorizontalAlign="Left" ShowHeader="true" OnRowDataBound="hvInspection_RowDataBound">
                                                        <columns>
                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                <itemtemplate>
                                                                    <%# Container.DataItemIndex + 1%>
                                                                </itemtemplate>
                                                                <headerstyle horizontalalign="Center" />
                                                                <itemstyle width="50px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Attachments">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lbl" runat="server" Text='<%# Eval("AttachmentName")%>'></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="View">
                                                                <itemtemplate>
                                                                    <asp:HyperLink ID="HyperLinkSubsidy" Text="view" NavigateUrl='<%#Eval("FilePath")%>' Target="_blank" runat="server" />
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" width="100px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Verified" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblverified" Text='<%#Eval("Verified")%>' runat="server"></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" width="100px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Uploaded Date">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lbluploadeddate" Text='<%#Eval("UploadedDate")%>' runat="server"></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" width="100px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Attachment" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblFileName" runat="server" Text='<%#Eval("LINKNEW") %>'></asp:Label>
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                        </columns>
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                            <tr id="tr19" runat="server" visible="false">
                                                <td colspan="10" style="padding: 10px; margin: 5px; font-weight: bold;">G.M Attachments
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 10px; margin: 5px;">
                                                    <asp:GridView ID="GridView14" runat="server" AutoGenerateColumns="False"
                                                        Width="80%" HorizontalAlign="Left" ShowHeader="true" OnRowDataBound="GridView14_RowDataBound">
                                                        <columns>
                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                <itemtemplate>
                                                                    <%# Container.DataItemIndex + 1%>
                                                                </itemtemplate>
                                                                <headerstyle horizontalalign="Center" />
                                                                <itemstyle width="50px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Attachments">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lbl" runat="server" Text='<%# Eval("AttachmentName")%>'></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="View">
                                                                <itemtemplate>
                                                                    <asp:HyperLink ID="HyperLinkSubsidy" Text="view" NavigateUrl='<%#Eval("FilePath")%>' Target="_blank" runat="server" />
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" width="100px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Uploaded Date">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lbluploadeddate" Text='<%#Eval("UploadedDate")%>' runat="server"></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" width="100px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Attachment" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="lblFileName" runat="server" Text='<%#Eval("LINKNEW") %>'></asp:Label>
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                        </columns>
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                            <tr id="trsscattachment1" runat="server" visible="false">
                                                <td colspan="10" style="padding: 10px; margin: 5px; font-weight: bold;">SSC INSPECTION REPORT
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 10px; margin: 5px;">
                                                    <asp:GridView ID="gvsscreport1" runat="server" AutoGenerateColumns="False"
                                                        Width="80%" HorizontalAlign="Left" ShowHeader="true" OnRowDataBound="gvsscreport1_RowDataBound">
                                                        <columns>
                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                <itemtemplate>
                                                                    <%# Container.DataItemIndex + 1%>
                                                                </itemtemplate>
                                                                <headerstyle horizontalalign="Center" />
                                                                <itemstyle width="50px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Attachments">
                                                                <itemtemplate>
                                                                    <asp:Label ID="Label30" runat="server" Text='<%# Eval("AttachmentName")%>'></asp:Label>
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="View">
                                                                <itemtemplate>
                                                                    <asp:HyperLink ID="HyperLink7" Text="view" NavigateUrl='<%#Eval("FilePath")%>' Target="_blank" runat="server" />
                                                                </itemtemplate>
                                                                <itemstyle horizontalalign="Left" width="100px" />
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Attachment" Visible="false">
                                                                <itemtemplate>
                                                                    <asp:Label ID="Label35" runat="server" Text='<%#Eval("LINKNEW") %>'></asp:Label>
                                                                </itemtemplate>
                                                            </asp:TemplateField>
                                                            <%--<asp:TemplateField HeaderText="Uploaded Date">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Label68" Text='<%#Eval("UploadedDate")%>' runat="server"></asp:Label>
                                                                </ItemTemplate>
                                                                <ItemStyle HorizontalAlign="Left" Width="100px" />
                                                            </asp:TemplateField>--%>
                                                        </columns>
                                                    </asp:GridView>
                                                </td>
                                            </tr>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- panel-group -->
                </div>
                <!-- container -->
                <div align="center">
                </div>
                <div>
                    <table style="width: 100%">
                        <tr style="height: 25px">
                            <td align="center" colspan="4"></td>
                        </tr>
                    </table>
                </div>
                <div>
                    <table bgcolor="White" width="100%" style="font-family: Verdana;">


                        <%--  <tr style="height: 60px" id="trbuttoninspection" runat="server">
                        <td align="center" valign="middle">
                            <asp:Button ID="BtnSave1" runat="server" CssClass="btn btn-primary" Height="32px"
                                TabIndex="10" Text="Assign to Inspecting Officer/Raise Query" Width="347px" ValidationGroup="group" OnClick="BtnSave1_Click" />
                        </td>
                    </tr>--%>
                        <%-- <tr style="height: 30px" id="tripo" runat="server" visible="false">
                        <td><span style="font-weight: bold; font-size: 14pt" id="Span1" runat="server">Recommended by GM-DIC</span></td>
                    </tr>--%>




                        <tr style="height: 30px">
                            <td></td>
                        </tr>


                        <tr style="height: 30px">
                            <td></td>
                        </tr>


                        <tr>
                            <td align="center" colspan="3" style="padding: 5px; margin: 5px">
                                <div id="success" runat="server" visible="false" class="alert alert-success">
                                    <a href="AddQualification.aspx" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Success!</strong><asp:Label ID="lblmsg" runat="server"></asp:Label>
                                </div>
                                <div id="Failure" runat="server" visible="false" class="alert alert-danger">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Warning!</strong>
                                    <asp:Label ID="lblmsg0" runat="server"></asp:Label>
                                </div>
                            </td>
                        </tr>

                    </table>
                </div>

                <div id="dialog" style="display: none">
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <%--  </div>--%>
    <%-- </div>
        </div>
    </div>--%>
    <%--</div>
       </td>
        </tr>
    </table>--%>
    <link href="../../css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
    <script src="../../js/jquery-1.7.2.min.js"></script>
    <script src="../../js/jquery-ui-1.8.19.custom.min.js"></script>
    <link href="<%= ResolveUrl("css/ui-lightness/jquery-ui-1.8.19.custom.css") %>" rel="stylesheet"
        type="text/css" />
    <script type="text/javascript" src="<%= ResolveUrl("js/jquery-1.7.2.min.js") %>"></script>
    <script src="<%= ResolveUrl("js/jquery-ui-1.8.19.custom.min.js") %>" type="text/javascript"></script>
    <script type="text/javascript">
        function pageLoad() {

            var date = new Date();
            var currentMonth = date.getMonth();
            var currentDate = date.getDate();
            var currentYear = date.getFullYear();
            $("input[id$='txtinspectiondate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    minDate: 0,
                    //yearRange: "1930:2017",
                    //changeYear: true
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback

            $("input[id$='txtsscinspectiondate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //minDate: 0,
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback
            $("input[id$='txtdate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback
            $("input[id$='txtslcnodate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback
            $("input[id$='txtsvcdate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                });
        }
        $(function () {

            $("input[id$='txtinspectiondate']").keydown(function () {
                //code to not allow any changes to be made to input field 
                return false;
            });
            var date = new Date();
            var currentMonth = date.getMonth();
            var currentDate = date.getDate();
            var currentYear = date.getFullYear();
            $("input[id$='txtinspectiondate']").datepicker(
                {
                    //dateFormat: "dd/mm/yy",
                    dateFormat: "dd/mm/yy",
                    minDate: 0,
                    //yearRange: "1930:2017",
                    // changeYear: true
                    // maxDate: new Date(currentYear, currentMonth, currentDate) txtinspectiondate
                });


            $("input[id$='txtsscinspectiondate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback

            $("input[id$='txtslcnodate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback

            $("input[id$='txtsvcdate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                });
            $("input[id$='txtdate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback
            var Role = '<%=HttpContext.Current.Session["Role_Code"]%>';

            var StatusId = getParameterByName('Sts');

            if (Role == 'JD' && StatusId == 54) {
                $("#collapserecomended").addClass('collapse').removeClass('in');
                $("#collapsegmqueryhistorynew").addClass('collapse').removeClass('in');
                $("#Div20").addClass('in').removeClass('collapse');

            }

            if (Role == 'COI-AD' || Role == 'COI-DD' || Role == 'COI-SUPDT') {
                $('#ctl00_ContentPlaceHolder1_trRemarks1').html('');
                $("#collapserecomended").addClass('collapse').removeClass('in');
                $("#Div23").addClass('collapse').removeClass('in');
                $("#collapseTwoication").addClass('in').removeClass('collapse');


            }

            if (Role == 'COI-SUPDT') {
                //$('#ctl00_ContentPlaceHolder1_trinspectionname1').html('');

            }

            // 

        });
        function getParameterByName(name) {
            debugger;
            name = name.replace(/[[]/, "\[").replace(/[]]/, "\]");
            var regexS = "[\?&]" + name + "=([^&#]*)";
            var regex = new RegExp(regexS);
            var results = regex.exec(window.location.href);
            if (results == null)
                return "";
            else
                return decodeURIComponent(results[1].replace(/\+/g, ' '));
        }
    </script>
    <style type="text/css">
        .ui-datepicker {
            font-size: 8pt !important;
            height: 250px;
            padding: 0.2em 0.2em 0;
        }

        .auto-style1 {
            width: 90px;
            height: 8px;
        }

        .auto-style3 {
            height: 8px;
            width: 114px;
        }
    </style>
</asp:Content>

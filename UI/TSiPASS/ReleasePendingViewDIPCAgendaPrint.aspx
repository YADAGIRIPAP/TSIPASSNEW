﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true" 
CodeFile="ReleasePendingViewDIPCAgendaPrint.aspx.cs" Inherits="UI_TSiPASS_ReleasePendingViewDIPCAgendaPrint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <script src="../../Resource/Scripts/js/validations.js" type="text/javascript"></script>
        <script language="javascript" type="text/javascript">
//            function Panel1() {

//                
//                document.getElementById('<%=tblselection.ClientID %>').style.display = "none";

//                var panel = document.getElementById("<%=divPrint.ClientID %>");
//                var printWindow = window.open('', '', 'height=400,width=800');
//                printWindow.document.write('<html><head><h3 style="width: 100%;text-align: center;">Government of Telangana</h3>');

//                printWindow.document.write('</head><body style="width: 100%;text-align: center;">');
//                printWindow.document.write(panel.innerHTML);
//                printWindow.document.write('</body></html>');
//                printWindow.document.close();
//                printWindow.print();
//                setTimeout(function () {
//                    printWindow.print();
//                    location.reload(true);
//                    printWindow.close();
//                }, 1000);
//                return false;
            //            }

            function Panel1() {

                document.getElementById('<%=tblselection.ClientID %>').style.display = "none";

                var panel = document.getElementById("<%=divPrint.ClientID %>");
                var printWindow = window.open('', '', 'height=500,width:100%');
//                printWindow.document.write('<html><head><div><table style="width:100%"> <tr> <td> <img alt="" style="float:left" src="../../Masterfiles/images/logo.jpg"/> </td> <td> <div style="float: right; text-align: center; padding: 10px 0;"> <div style="float: left; margin-right: 30px;"> <img alt="" src="../../Masterfiles/images/sri-k-chandrasekhar-rao.png" /> <h5 style="font-size: 14px; margin-bottom: 0px;">Sri. K.Chandrasekhar Rao</h5> <p style="font-size: 14px; margin-bottom: 0px;">Hon ble Chief Minister</p> </div> <div style="float:left"> <img alt="" src="../../Masterfiles/images/sri-k-t-rama-rao.png" /> <h5 style="font-size: 14px; margin-bottom: 0px;">Sri. K. T. Rama Rao</h5> <p style="font-size: 14px; margin-bottom: 0px;">Hon ble Minister for Industries</p> </div> </div> </td> </tr> </table> </div><h3 style="width: 100%;text-align: center;">Government of Telangana</h3>');
                printWindow.document.write('<html><head><div><table style="width:100%"> <tr> <td> <img alt="" style="float:left" src="../../Masterfiles/images/logo.jpg"/> </td> <td> <div style="float: right; text-align: center; padding: 10px 0;"> <div style="float: left; margin-right: 30px;"> <img alt="" src="" /> <h5 style="font-size: 14px; margin-bottom: 0px;"></h5> <p style="font-size: 14px; margin-bottom: 0px;"></p> </div> <div style="float:left"> <img alt="" src="" /> <h5 style="font-size: 14px; margin-bottom: 0px;"></h5> <p style="font-size: 14px; margin-bottom: 0px;"></p> </div> </div> </td> </tr> </table> </div><h3 style="width: 100%;text-align: center;">Government of Telangana</h3>');
                printWindow.document.write('</head><body style="width:1500px;margin:0 auto;">');
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

        .CS {
            background-color: #abcdef;
            color: Yellow;
            border: 1px solid #1d9a5b;
            font: Verdana 10px;
            padding: 1px 4px;
            font-family: Palatino Linotype, Arial, Helvetica, sans-serif;
        }

        .update {
            position: fixed;
            top: 0px;
            left: 0px;
            min-height: 100%;
            min-width: 100%;
            background-image: url("../../Images/ajax-loaderblack.gif");
            /*background-image: url("Images/spinner_60.gif");*/
            background-position: center center;
            background-repeat: no-repeat;
            /*background-color: #e4e4e6;*/
            background-color: #535252;
            z-index: 500 !important;
            opacity: 0.6;
            overflow: hidden;
        }

        .style7 {
            color: #FF3300;
        }

        .style8 {
            color: #FF0000;
            font-weight: bold;
        }

        .GRD {
            width: 800px;
            height: auto;
            border-color: #013161;
            border-style: solid;
            border-width: 1px;
            text-transform: capitalize;
            padding: 5px;
        }

        .GRDHEADER {
            border: 1px solid #1d9a5b;
            color: #1d9a5b;
            vertical-align: middle;
            text-align: center;
            height: 25px;
            width: 50px;
            padding: 10px;
            font-size: 12px;
            font-weight: bold;
            text-transform: capitalize;
            font-family: Verdana;
            background-image: url('../../Resource/Styles/images/bg_blue_grd.gif');
        }

        .GRDITEM {
            /*background-color: WHITE;*/
            color: black;
            font-size: 12px;
            font-weight: normal;
            font-family: Verdana;
            padding: 10px; /*text-decoration:none;*/ /*border-color:#013161;*/ /*border-style:solid;*/
            text-transform: uppercase; /*border-width:1px;*/ /*height:23px;*/ /*text-indent:5px;*/ /*BACKGROUND-IMAGE: url(../images/grid_bg_.gif);*/
        }

        .LBLBLACK {
        }
    </style>

    <script type="text/javascript" language="javascript">

        function OpenPopup() {

            window.open("Lookups/LookupBDC.aspx", "List", "scrollbars=yes,resizable=yes,width=1000,height=650;display = block;position=absolute");

            return false;
        }

        $(function () {

            $('#MstLftMenu').remove();

        });
    </script>

    <%-- <script type="text/javascript">
        function showProgress() {
            var updateProgress = $get("<%= UpdateProgress.ClientID %>");
            updateProgress.style.display = "block";
        }
    </script>--%>
    <link href="assets/css/basic.css" rel="stylesheet" />
    <%--  <asp:UpdatePanel ID="upd1" runat="server">
        <ContentTemplate>--%>
    <div align="left">
        <ol class="breadcrumb">
            You are here &nbsp;!&nbsp; &nbsp; &nbsp;
                    <li><i class="fa fa-dashboard"></i><a href="Home.aspx"></a></li>
            <li class=""><i class="fa fa-fw fa-edit">CAF</i> </li>
            <li class="active"><i class="fa fa-edit"></i>&nbsp; &nbsp;<a href="#">Departments</a> </li>
        </ol>
    </div>
    <div align="left">
        <div class="row" align="left">
            <div class="col-lg-12">
                <%--<div class="panel panel-primary">
                            <div class="panel-heading" align="center">
                                <h3 class="panel-title">Departments</h3>
                            </div>--%>
                <table style="width: 100%" id="divPrint" runat="server">
                    <tr>
                        <td>
                            <div class="col-md-12">
                                <h1 class="page-head-line" align="left" style="font-size: large" runat="server" id="h1heading"></h1>
                            </div>

                            <div class="panel-body">
                                <table align="left" cellpadding="10" cellspacing="5" style="width: 100%">
                                    <tr id="trno" runat="server">
                                        <td style="padding: 5px; margin: 5px; color: blue; font-weight: bold" valign="top" colspan="12" runat="server" id="tdinvestments"></td>
                                    </tr>
                                   <tr>

                                        <td style="padding: 5px; margin: 5px; text-align: left;" colspan="2">
                                            <table width="50%">
                                                <tr>

                                                    <td style="vertical-align: middle; font-weight: bold; width: 200px">1) Proposed DIPC Date : </td>
                                                    <td style="padding: 5px; margin: 5px; width: 192px; text-align: left; font-weight: bold">
                                                        <asp:Label runat="server" ID="txtsvcdate" Height="28px"
                                                            MaxLength="80" TabIndex="1" Width="150px"></asp:Label>

                                                    </td>
                                                    <td></td>
                                                </tr>
                                            </table>

                                        </td>

                                    </tr>
                                    <tr>
                                        <td style="padding: 5px; margin: 5px; width: 100%" valign="top" colspan="12" >
                                            <div id="Div1" style="width: 100%" runat="server">
                                                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="false" CellPadding="4"
                                                    CssClass="GRD" ForeColor="#333333" Height="62px"
                                                    PageSize="15" ShowFooter="false" Width="100%" CellSpacing="4">
                                                    <FooterStyle BackColor="#be8c2f" Font-Bold="True" ForeColor="White" />
                                                    <RowStyle BackColor="#EBF2FE" CssClass="GRDITEM" HorizontalAlign="Left" VerticalAlign="Middle" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S.No.">
                                                            <ItemTemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <ItemStyle Width="50px" />
                                                        </asp:TemplateField>
                                                         <asp:BoundField DataField="NameofUnitAddress" ItemStyle-HorizontalAlign="Center" HeaderText="Name of Unit & Address">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="LOA" ItemStyle-HorizontalAlign="Center" HeaderText="Line of Activity">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="VehicleNumber" ItemStyle-HorizontalAlign="Center" HeaderText="Vehicle Number">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="DCP" ItemStyle-HorizontalAlign="Center" HeaderText="DCP">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="DateofReceipt" ItemStyle-HorizontalAlign="Center" HeaderText="Date of Receipt">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="EMiUdyogAadhar" ItemStyle-HorizontalAlign="Center" HeaderText="Udyog Aadhar No">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                    <%--    <asp:BoundField DataField="Financialinst" ItemStyle-HorizontalAlign="Center" HeaderText="Name of the Financial Institution">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>--%>
                                                        <asp:BoundField DataField="ExistEnterpriseLand" ItemStyle-HorizontalAlign="Center" HeaderText="Land">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="ExistEnterpriseBuilding" ItemStyle-HorizontalAlign="Center" HeaderText="Building">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="ExistEnterprisePlantMachinery" ItemStyle-HorizontalAlign="Center" HeaderText="Plant & Machinery">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="Total" ItemStyle-HorizontalAlign="Center" HeaderText="Total Investment in Rs.">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                          <asp:BoundField DataField="Gender" ItemStyle-HorizontalAlign="Center" HeaderText="Gender">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="Caste" ItemStyle-HorizontalAlign="Center" HeaderText="Caste">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                    <%--    <asp:BoundField DataField="Gender" ItemStyle-HorizontalAlign="Center" HeaderText="Gender">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>--%>
                                                        
                                                         <asp:BoundField DataField="BankName" ItemStyle-HorizontalAlign="Center" HeaderText="BankName">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="GMRecommendedRemarks" ItemStyle-HorizontalAlign="Center" HeaderText="Remarks">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="Scheme" ItemStyle-HorizontalAlign="Center" HeaderText="Scheme">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="RecommendedAmount" ItemStyle-HorizontalAlign="Center" HeaderText="Recommended Amount">
                                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:BoundField>
                                                     
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblEnterperIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblIncentiveID" Text='<%#Eval("IncentiveId") %>' runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    <HeaderStyle BackColor="#1d9a5b" CssClass="GRDHEADER" Font-Bold="True" ForeColor="White" />
                                                    <EditRowStyle BackColor="#B9D684" />
                                                    <AlternatingRowStyle BackColor="White" />
                                                </asp:GridView>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="12" style="padding: 5px; margin: 5px" align="center" class="style7" id="tblselection" runat="server">
                                            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Visible="false" Text="Submit Proposed DIPC Agenda" OnClick="Button1_Click" /> &nbsp; &nbsp;
                                            <asp:Button ID="btnprint" runat="server"  CssClass="btn btn-primary" Visible="true" Text="Print Agenda" OnClientClick="javascript:Panel1()" /> &nbsp; &nbsp;
                                            <%--<input type="button" value="Print" class="btn btn-primary" onclick="javascript:CallPrint('divPrint')" />--%>
                                            <asp:Button ID="Button6" CssClass="btn btn-primary" Visible="false" runat="server" Text="Download PDF" OnClick="Button6_Click" />
                                           
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="12">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </div>

                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="padding: 5px; margin: 5px; text-align: center;">&nbsp;&nbsp;&nbsp;</td>
                    </tr>

                    <tr>
                        <td style="padding: 5px; margin: 5px" align="center" class="style7"></td>
                    </tr>
                    <tr>
                        <td align="center" style="padding: 5px; margin: 5px">
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
        </div>
    </div>
</asp:Content>


﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true" CodeFile="FrmSectorDrilldownoldUptooneCore.aspx.cs" Inherits="UI_TSiPASS_FrmSectorDrilldownoldUptooneCore" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <%--<script type="text/javascript" src="../../js/jquery.min.js"></script>

    <script type="text/javascript" src="../../js/jquery-ui.min.js"></script>

    <script type="text/javascript" src="../../js/gridviewScroll.min.js"></script>--%>

    <script type="text/javascript">

//        function pageLoad() {
//            $('#<%=grdDetails.ClientID%>').gridviewScroll({
//                width: 1090,
//                height: "100%",
//                arrowsize: 30,
//                varrowtopimg: "../../images/arrowvt.png",
//                varrowbottomimg: "../../images/arrowvb.png",
//                harrowleftimg: "../../images/arrowhl.png",
//                harrowrightimg: "../../images/arrowhr.png"
//            });
//        }

    </script>
     <script language="javascript" type="text/javascript">
         function Panel1() {

             document.getElementById('<%=Button3.ClientID %>').style.display = "none";

             var panel = document.getElementById("<%=divPrint.ClientID %>");
             var printWindow = window.open('', '', 'height=500,width=800');
             printWindow.document.write('<html><head><h3 style="width: 100%;text-align: center;">Government of Telangana</h3>');

             printWindow.document.write('</head><body style="width: 100%;text-align: center;">');
             printWindow.document.write(panel.innerHTML);
             printWindow.document.write('</body></html>');
             printWindow.document.close();

             setTimeout(function () {
                 printWindow.print();
                 location.reload(true);
                 printWindow.close();
             }, 1000);
             return false;

         }

         $(function () {

           $('#MstLftMenu').remove();

        });
    </script>
    <style>
        .algnCenter {
            text-align: right;
        }
    </style>
     <%--Added datepicker on 17/07/2019--%>
     <link href="../../css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
    <style type="text/css">
        .ui-datepicker
        {
            font-size: 8pt !important;
           
            padding: 0.2em 0.2em 0;
            width: 250px;
            color: Black;
            z-index:9999 !important;
        }
        select
        {
            color: Black !important;
        }
    </style>

    <style>
        .algnCenter
        {
            text-align: center;
        }
    </style>
     <script type="text/javascript">
         function pageLoad() {
             var date = new Date();
             var yrRange = "2015:" + (date.getFullYear() + 1);

             var currentMonth = date.getMonth();
             var currentDate = date.getDate();
             var currentYear = date.getFullYear();

             $("input[id$='txtFromDate']").datepicker(
               {
                   dateFormat: "dd-mm-yy",
                   changeMonth: true,
                   changeYear: true,
                   yearRange: yrRange

                   //  maxDate: new Date(currentYear, currentMonth, currentDate)
               }); // Will run at every postback/AsyncPostback
             $("input[id$='txtTodate']").datepicker(
               {
                   dateFormat: "dd-mm-yy",
                   changeMonth: true,
                   changeYear: true,
                   yearRange: yrRange

                   //  maxDate: new Date(currentYear, currentMonth, currentDate)
               }); // Will run at every postback/AsyncPostback
         }
         $(function () {
             var date = new Date();
             var yrRange = "2015:" + (date.getFullYear() + 1);
             var currentMonth = date.getMonth();
             var currentDate = date.getDate();
             var currentYear = date.getFullYear();
             $("input[id$='txtFromDate']").datepicker(
                {
                    //dateFormat: "dd/mm/yy",
                    dateFormat: "dd-mm-yy",
                    //maxDate: new Date(currentYear, currentMonth, currentDate)
                    changeMonth: true,
                    changeYear: true,
                    yearRange: yrRange
                });
             $("input[id$='txtTodate']").datepicker(
               {
                   dateFormat: "dd-mm-yy",
                   changeMonth: true,
                   changeYear: true,
                   yearRange: yrRange

                   //  maxDate: new Date(currentYear, currentMonth, currentDate)
               }); // Will run at every postback/AsyncPostback
         });
    </script>

    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; font-family: 'Trebuchet MS'">
        <tr>
            <td style="padding-top: 10px; padding-bottom: 20px; padding-left: 9px; height: 675px;"
                valign="top" align="center">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading" align="center">
                            <h3 class="panel-title" style="font-weight: bold;">
                                <asp:Label ID="lblHeading" runat="server"></asp:Label>&nbsp; <a id="A1" href="#"
                                    onclick="javascript:return Panel1();" runat="server">
                                    <img src="../../Resource/Images/pdf-icon.png" width="20px;" height="20px;" style="float: right;"
                                        alt="PDF" /></a> <a id="A2" href="#" onserverclick="BtnSave2_Click" runat="server">
                                            <img src="../../Resource/Images/Excel-icon.png" width="20px;" height="20px;" style="float: right;"
                                                alt="Excel" /></a></h3>
                        </div>
                        <div class="panel-body">
                            <table align="center" cellpadding="10" cellspacing="5" style="width: 90%">
                                <tr>
                                    <td>
                                        <table runat="server" id="tblselection" cellpadding="4" cellspacing="5" style="width: 100%">
                                            <tr>
                                                <td class="col-xs-3" style="padding: 5px; margin: 5px">
                                                    <asp:HyperLink CssClass="btn btn-link" ID="HyperLink1" runat="server" NavigateUrl="~/UI/TSiPASS/ReportsDashboardNew.aspx"
                                                        Text="<< Back">
                                                    </asp:HyperLink>
                                                </td>
                                                <td class="col-xs-3" style="padding: 5px; margin: 5px">
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            Type
                                                        </div>
                                                        <asp:DropDownList ID="ddlType" runat="server" class="form-control txtbox" Height="33px"
                                                            Width="180px" OnSelectedIndexChanged="ddlType_SelectedIndexChanged" AutoPostBack="true">
                                                            <asp:ListItem>--Select--</asp:ListItem>
                                                            <%--<asp:ListItem Value="1">Cumulative</asp:ListItem>--%>
                                                            <%--<asp:ListItem Value="2">2015-16</asp:ListItem>--%>
                                                            <asp:ListItem Value="3">2016-17</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </td>
                                                <td style="padding: 5px; margin: 5px" align="center" runat="server" id="tdFromDate">
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            From Date
                                                        </div>

                                                        <asp:TextBox ID="txtFromDate" runat="server" class="form-control txtbox" Height="28px" MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group" Width="125px"></asp:TextBox>
                                                      <%--  <cc1:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd-MM-yyyy" TargetControlID="txtFromDate">
                                                        </cc1:CalendarExtender>--%>
                                                    </div>
                                                </td>
                                                <td style="padding: 5px; margin: 5px" runat="server" id="tdToDate">

                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            To Date
                                                        </div>
                                                        <asp:TextBox ID="txtTodate" runat="server" class="form-control txtbox" Height="28px" MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group" Width="125px"></asp:TextBox>
                                                       <%-- <cc1:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd-MM-yyyy" TargetControlID="txtTodate">
                                                        </cc1:CalendarExtender>--%>
                                                    </div>
                                                </td>
                                                <td class="col-xs-3" style="padding: 5px; margin: 5px">
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            Investment Range
                                                        </div>
                                                        <asp:DropDownList ID="ddlinvestment" runat="server" class="form-control txtbox" Height="33px"
                                                            Width="180px" >
                                                            <asp:ListItem Value="1">0-1 Crore</asp:ListItem>
                                                            <asp:ListItem Value="2">1-5 Crore</asp:ListItem>
                                                            <asp:ListItem Value="3">5-10 Crore</asp:ListItem>
                                                            <asp:ListItem Value="4">10-100 Crore</asp:ListItem>
                                                            <asp:ListItem Value="5">100-200 Crore</asp:ListItem>
                                                            <asp:ListItem Value="6">Above 200 Crore</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </td>
                                                <td style="padding: 5px; margin: 5px" align="right">
                                                    <asp:Button ID="Button3" runat="server" CssClass="btn btn-default" TabIndex="10"
                                                        Text="Submit" OnClick="BtnSave1_Click" />
                                                </td>
                                            </tr>

                                        </table>
                                    </td>
                                    <td style="padding: 5px; text-align: right; margin: 5px; width: 100%;"></td>
                                </tr>
                                <tr runat="server" visible="false" id="rptdate">
                                    <td colspan="2" class="col-xs-5" style="padding: 5px; text-align: right; margin: 5px">
                                        <asp:Label ID="Label2" runat="server" CssClass="LBLBLACK"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="col-xs-5" style="padding: 5px; text-align: right; margin: 5px">
                                        <asp:Label ID="Label1" runat="server" CssClass="LBLBLACK">Report as on date</asp:Label>
                                    </td>
                                </tr>
                                 <tr style="height:60px" valign="middle">
                                    <td align="center">
                                        <asp:Label ID="Label3" Font-Size="Larger" Font-Bold="true" runat="server"> </asp:Label>
                                    </td>
                                </tr>
                                <tr id="divPrint" runat="server">
                                    <td align="center" style="padding: 5px; margin: 5px">
                                        <asp:GridView ID="grdDetails" CssClass="floatingTable" runat="server" AutoGenerateColumns="true" CellPadding="4"
                                            OnRowDataBound="grdDetails_RowDataBound" Width="100%" OnPageIndexChanging="grdDetails_PageIndexChanging"
                                            ShowFooter="True" OnRowCreated="grdDetails_RowCreated" OnSelectedIndexChanged="grdDetails_SelectedIndexChanged">
                                            <HeaderStyle Height="40px" CssClass="GridviewScrollC1HeaderWrap" />
                                            <RowStyle CssClass="GridviewScrollC1Item" />
                                            <PagerStyle CssClass="GridviewScrollC1Pager" />
                                            <FooterStyle Height="40px" CssClass="GridviewScrollC1Header" />
                                            <AlternatingRowStyle CssClass="GridviewScrollC1Item2" />
                                            <Columns>
                                                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="SlNo">
                                                    <ItemTemplate>
                                                        <%# Container.DataItemIndex +1 %>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                </asp:TemplateField>
                                                <%--<asp:BoundField DataField="District" HeaderText="District" >
                                               <ItemStyle Width="180px" />
                                               </asp:BoundField>
                                               <asp:BoundField DataField="Number" HeaderText="No of Industries">
                                               <ItemStyle CssClass="text-center" Width="180px" />
                                               </asp:BoundField>
                                               <asp:BoundField DataField="Investment" HeaderText="Investment (Rs. in Cr)" >
                                               <ItemStyle CssClass="text-center" Width="180px" />
                                               </asp:BoundField>
                                               <asp:BoundField DataField="Employment" HeaderText="Total Employment" >
                                               <ItemStyle CssClass="text-center" Width="180px" />
                                               </asp:BoundField>--%>
                                            </Columns>
                                        </asp:GridView>
                                    </td>
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
            </td>
        </tr>
    </table>
</asp:Content>


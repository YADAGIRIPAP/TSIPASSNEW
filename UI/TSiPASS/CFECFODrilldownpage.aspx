﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true" CodeFile="CFECFODrilldownpage.aspx.cs" Inherits="UI_TSiPASS_CFECFEODrilldownpage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript" language="javascript">

        function OpenPopup() {

            window.open("Lookups/LookupBDC.aspx", "List", "scrollbars=yes,resizable=yes,width=1000,height=650;display = block;position=absolute");


            return false;
        }
    </script>
    <script type="text/javascript" language="javascript">
        var win = new Object();
        function Popup(intval) {

            win = window.open("ApplicationTrakerDetailed.aspx?UID=" + intval, "List", "scrollbars=yes,resizable=yes,width=780,height=400,left=" + ((window.screen.width / 2) - 320) + ",top=" + ((window.screen.height / 2) - 200) + ";display : block;position:absolute");
            //win = window.open("RptVillageOraganisationNameClickDetails.aspx?id="+intval, "List", "scrollbars=yes,resizable=yes,width=600,height=400,left=" + ((window.screen.width / 2) - 320) + ",top=" + ((window.screen.height / 2) - 200) + ";display : block;position:absolute");

        }
    </script>
    <script type="text/javascript" language="javascript">
        var win = new Object();
        function PopupCFO(intval) {

            win = window.open("ApplicationTrakerDetailedCFO.aspx?UID=" + intval, "List", "scrollbars=yes,resizable=yes,width=780,height=400,left=" + ((window.screen.width / 2) - 320) + ",top=" + ((window.screen.height / 2) - 200) + ";display : block;position:absolute");
            //win = window.open("RptVillageOraganisationNameClickDetails.aspx?id="+intval, "List", "scrollbars=yes,resizable=yes,width=600,height=400,left=" + ((window.screen.width / 2) - 320) + ",top=" + ((window.screen.height / 2) - 200) + ";display : block;position:absolute");

        }
    </script>
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
    <div>
        <table id="divPrint" runat="server" border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td style="padding-top: 10px; padding-bottom: 20px; padding-left: 9px; height: 675px;"
                    valign="top" align="center">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading" style="text-align: center">
                                <h3 visible="false" id="Government" runat="server" class="panel-title" style="font-weight: bold;">Government of Telangana</h3>
                                <h2 id="H1" runat="server" class="panel-title" style="font-weight: bold;">
                                    <asp:Label ID="lblHeading" runat="server">R6.1: TSiPASS- CFO && CFE Report </asp:Label>
                                    <a id="Button2" href="#" onserverclick="Button2_ServerClick"
                                        runat="server">
                                        <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/Resource/Images/pdf-icon.png" width="20px;" height="20px;" style="float: right;"
                                            alt="PDF" /></a> <a id="Button1" href="#" onserverclick="Button1_ServerClick" runat="server">
                                                <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/Resource/Images/Excel-icon.png" width="20px;" height="20px;" style="float: right;"
                                                    alt="Excel" /></a></h2>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table align="center" cellpadding="10" cellspacing="5" style="width: 80%; font-family: 'Trebuchet MS'">
                            <tr>
                                <td>
                                    <table runat="server" id="tblselection" cellpadding="4" cellspacing="5" style="width: 100%">
                                        <%-- <td class="col-xs-3" style="padding: 5px; margin: 5px">
                                                    <asp:HyperLink CssClass="btn btn-link" ID="HyperLink1" runat="server" NavigateUrl="~/UI/TSiPASS/ReportsDashboardNew.aspx"
                                                        Text="<< Back">
                                                    </asp:HyperLink>
                                                </td>--%>
                                        <tr>
                                            <td style="padding: 5px; margin: 5px" align="left">
                                                <asp:HyperLink CssClass="btn btn-link" ID="HyperLink1" runat="server" Text="<< Back">
                                                </asp:HyperLink>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td style="padding: 5px; margin: 5px" align="center">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        From Date
                                                    </div>
                                                   <asp:TextBox ID="txtFromDate" runat="server" class="form-control txtbox" Height="28px"
                                                        MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group"
                                                        Width="125px"></asp:TextBox>
                                                   <%-- <asp:TextBox ID="txtFromDate" runat="server" class="form-control txtbox" Height="28px" MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group" Width="125px"></asp:TextBox>
                                                    <cc1:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd-MM-yyyy" TargetControlID="txtFromDate">
                                                    </cc1:CalendarExtender>--%>
                                                </div>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">

                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        To Date
                                                    </div>
                                                    <asp:TextBox ID="txtTodate" runat="server" class="form-control txtbox" Height="28px"
                                                        MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group"
                                                        Width="125px"></asp:TextBox>
                                                    
                                                    <%-- <asp:TextBox ID="txtTodate" runat="server" class="form-control txtbox" Height="28px" MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group" Width="125px"></asp:TextBox>
                                                    <cc1:calendarextender id="CalendarExtender1" runat="server" format="dd-MM-yyyy" targetcontrolid="txtTodate">
                                                    </cc1:calendarextender>--%>
                                                </div>
                                            </td>
                                            <td>Application:</td>
                                            <td style="padding: 5px; margin: 5px" align="right">
                                                <asp:Label ID="lbllable" runat="server"></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px" align="right">
                                                <asp:Button ID="Button3" runat="server" CssClass="btn btn-default" TabIndex="10"
                                                    Text="Submit" OnClick="Button3_Click" Visible="false" />
                                            </td>
                                            <td class="col-xs-5" style="padding: 5px; text-align: right; margin: 5px" colspan="5">
                                                <asp:Label ID="Label1" runat="server" CssClass="LBLBLACK">Report as on date</asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr1" runat="server" style="width: 100%">
                                <td align="center" style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                    <asp:GridView ID="grdDetails" CssClass="floatingTable" runat="server" AutoGenerateColumns="true" CellPadding="5"
                                        ShowFooter="True" Width="100%" OnRowDataBound="grdDetails_RowDataBound1" OnRowCreated="grdDetails_RowCreated">
                                        <HeaderStyle Height="40px" CssClass="GridviewScrollC1HeaderWrap" />
                                        <RowStyle CssClass="GridviewScrollC1Item" />
                                        <PagerStyle CssClass="GridviewScrollC1Pager" />
                                        <FooterStyle Height="40px" CssClass="GridviewScrollC1Header" />
                                        <AlternatingRowStyle CssClass="GridviewScrollC1Item2" />
                                        <Columns>
                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1%>
                                                    <asp:HiddenField ID="HdfQueid" runat="server" />
                                                    <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="View">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("intQuessionaireid") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr id="divExport" visible="false" runat="server">
                                <td align="center" style="text-align: center;" valign="top">
                                    <asp:GridView ID="grdExport" runat="server" AutoGenerateColumns="true" ShowFooter="true" OnRowDataBound="grdExport_RowDataBound" OnRowCreated="grdExport_RowCreated">
                                        <HeaderStyle Height="40px" CssClass="GridviewScrollC1HeaderWrap" />
                                        <RowStyle CssClass="GridviewScrollC1Item" />
                                        <PagerStyle CssClass="GridviewScrollC1Pager" />
                                        <FooterStyle Height="40px" CssClass="GridviewScrollC1Header" />
                                        <AlternatingRowStyle CssClass="GridviewScrollC1Item2" />
                                        <Columns>
                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"
                                                HeaderText="S.No">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1%>
                                                </ItemTemplate>
                                                <ItemStyle CssClass="text-center" HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="View">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" Text='<%# Eval("intQuessionaireCFOid") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <RowStyle Wrap="true" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </div>

                </td>

            </tr>
        </table>
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true" CodeFile="frmIncentiveReportAudit.aspx.cs" Inherits="UI_TSiPASS_frmIncentiveReportAudit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
    <script language="javascript" type="text/javascript">
        $(function () {

            $('#MstLftMenu').remove();
        });
    </script>
    <link href="../../css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
    <style type="text/css">
        .ui-datepicker {
            font-size: 8pt !important;
            padding: 0.2em 0.2em 0;
            width: 250px;
            color: Black;
            z-index: 9999 !important;
        }

        select {
            color: Black !important;
        }
    </style>
    <style>
        .algnCenter {
            text-align: center;
        }
    </style>
    <script type="text/javascript" language="javascript">

        function OpenPopup() {

            window.open("Lookups/LookupBDC.aspx", "List", "scrollbars=yes,resizable=yes,width=1000,height=650;display = block;position=absolute");

            return false;
        }
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
                                    <asp:Label ID="lblHeading" runat="server">Incentive Applications Details</asp:Label>
                                    <a id="Button2" href="#" onserverclick="Button2_ServerClick"
                                        runat="server">
                                        <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/Resource/Images/pdf-icon.png" width="20px;" height="20px;" style="float: right;"
                                            alt="PDF" /></a> <a id="Button1" href="#" onserverclick="Button1_ServerClick" runat="server">
                                                <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/Resource/Images/Excel-icon.png" width="20px;" height="20px;" style="float: right;"
                                                    alt="Excel" /></a></h2>
                            </div>
                        </div>
                    </div>
                    <h1 class="page-head-line" align="left" style="font-size: large" runat="server" id="h1heading"></h1>
                    <div class="panel-body">
                        <table align="center" cellpadding="10" cellspacing="5" style="width: 80%; font-family: 'Trebuchet MS'">
                            <tr>
                                <td>
                                    <table runat="server" id="tblselection" cellpadding="4" cellspacing="5" style="width: 100%">
                                        <tr>
                                            <%-- <td class="col-xs-3" style="padding: 5px; margin: 5px">
                                                    <asp:HyperLink CssClass="btn btn-link" ID="HyperLink1" runat="server" NavigateUrl="~/UI/TSiPASS/ReportsDashboardNew.aspx"
                                                        Text="<< Back">
                                                    </asp:HyperLink>
                                                </td>--%>

                                            <td style="padding: 5px; margin: 5px" align="center" runat="server" id="tdFromDate">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        From Date
                                                    </div>

                                                    <asp:TextBox ID="txtFromDate" runat="server" class="form-control txtbox" Height="28px" MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group" Width="125px"></asp:TextBox>
                                                    <%-- <cc1:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd-MM-yyyy" TargetControlID="txtFromDate">
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
                                            <td style="padding: 5px; margin: 5px">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        Enterprise Type
                                                    </div>
                                                    <asp:DropDownList ID="ddlEntType" runat="server" class="form-control txtbox" Height="30px" TabIndex="1" ValidationGroup="group" Width="125px">
                                                        <asp:ListItem Text="--Select--"></asp:ListItem>
                                                        <asp:ListItem Text="Mega" Value="0"></asp:ListItem>
                                                        <asp:ListItem Text="Large" Value="1"></asp:ListItem>
                                                        <asp:ListItem Text="Medium" Value="2"></asp:ListItem>
                                                        <asp:ListItem Text="Small" Value="3"></asp:ListItem>
                                                        <asp:ListItem Text="Micro" Value="4"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        Social Category
                                                    </div>
                                                    <asp:DropDownList ID="ddlCaste" runat="server" class="form-control txtbox" Height="30px" TabIndex="1" ValidationGroup="group" Width="125px">
                                                        <asp:ListItem Text="--Select--"></asp:ListItem>
                                                        <asp:ListItem Value="1">General</asp:ListItem>                                                      
                                                        <asp:ListItem Value="3">SC</asp:ListItem>
                                                        <asp:ListItem Value="4">ST</asp:ListItem>
                                                         <asp:ListItem Value="2">PHC</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        Incentive Type
                                                    </div>
                                                    <asp:DropDownList ID="ddlIncType" runat="server" class="form-control txtbox" Height="30px" TabIndex="1" ValidationGroup="group" Width="125px">
                                                        <asp:ListItem Text="--Select--"></asp:ListItem>
                                                       
                                                    </asp:DropDownList>
                                                </div>
                                            </td>

                                            <td style="padding: 5px; margin: 5px" align="right">
                                                <asp:Button ID="Submit" runat="server" CssClass="btn btn-default" TabIndex="10"
                                                    Text="Submit" OnClick="Submit_Click" BackColor="ForestGreen" ForeColor="White"/>
                                            </td>
                                        </tr>

                                    </table>
                                </td>
                                <td style="padding: 5px; text-align: right; margin: 5px; width: 100%;"></td>


                            </tr>
                            <tr runat="server" id="rptdate">
                                <td colspan="2" class="col-xs-5" style="padding: 5px; text-align: center; margin: 5px">
                                    <asp:Label ID="Label2" runat="server" CssClass="LBLBLACK"></asp:Label>
                                </td>
                            </tr>
                            <tr id="Report" runat="server" visible="false">
                                <td colspan="2" class="col-xs-5" style="padding: 5px; text-align: right; margin: 5px">
                                    <asp:Label ID="Label1" runat="server" CssClass="LBLBLACK">Report as on date</asp:Label>
                                </td>
                            </tr>
                            <%--<tr>
                                    <td colspan="2" class="col-xs-5" style="padding: 5px; text-align: right; margin: 5px">
                                         <asp:Button ID="btnNewPdf" runat="server" CssClass="btn btn-primary" Height="32px" TabIndex="10" Text="Generate Pdf" OnClick="btnNewPdf_Click" />
                                    </td>
                                </tr>--%>
                            <tr id="GridPrint" runat="server">
                                <td colspan="2" align="center" style="padding: 5px; margin: 5px" id="divPrint1" runat="server">
                                    <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="false" CellPadding="4"
                                        Width="100%"
                                        ShowFooter="True" OnRowDataBound="grdDetails_RowDataBound" OnRowCreated="grdDetails_RowCreated">
                                        <HeaderStyle ForeColor="#FFFFFF" BackColor="#009688" Height="40px" CssClass="GridviewScrollC1HeaderWrap" />
                                        <RowStyle Height="40px" CssClass="GridviewScrollC1Item" />
                                        <PagerStyle CssClass="GridviewScrollC1Pager" />
                                        <FooterStyle ForeColor="#FFFFFF" BackColor="#009688" Height="40px" CssClass="GridviewScrollC1Footer" />
                                        <AlternatingRowStyle Height="40px" CssClass="GridviewScrollC1Item2" />
                                        <Columns>
                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S.No">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex +1 %>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" CssClass="text-center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-HorizontalAlign="left" HeaderText="Online Application Number">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" OnClick="Unnamed_Click" Text='<%#Eval("ApplicationNo") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="EnterperIncentiveID" HeaderText="IncentiveID" />
                                            <%--<asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblEnterperIncentiveID" Text='<%#Eval("EnterperIncentiveID") %>' runat="server" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>--%>

                                            <asp:BoundField DataField="EMiUdyogAadhar" ItemStyle-HorizontalAlign="left" HeaderText="EMI Udyog Aadhaar" Visible="false" />
                                            <asp:BoundField DataField="UnitName" ItemStyle-HorizontalAlign="left" HeaderText="Name of Unit & Address">
                                                <ItemStyle HorizontalAlign="left"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Category" ItemStyle-HorizontalAlign="left" HeaderText="Enterprise Category">
                                                <ItemStyle HorizontalAlign="left"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="LineofActivity" ItemStyle-HorizontalAlign="left" HeaderText="Line of Activity">
                                                <ItemStyle HorizontalAlign="left"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="IncentiveName" ItemStyle-HorizontalAlign="left" HeaderText="Incentive Type">
                                                <ItemStyle HorizontalAlign="left"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Noofincentive" ItemStyle-HorizontalAlign="left" HeaderText="No of Incentives">
                                                <ItemStyle HorizontalAlign="left"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CASTE" ItemStyle-HorizontalAlign="left" HeaderText="Socail Category">
                                                <ItemStyle HorizontalAlign="left"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ApplicationDate" ItemStyle-HorizontalAlign="left" HeaderText="Date of Application">
                                                <ItemStyle HorizontalAlign="left"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="DateofReceipt" ItemStyle-HorizontalAlign="left" HeaderText="Date of Sanction">
                                                <ItemStyle HorizontalAlign="left"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Sanctioned Amount (Rs.)">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblRecommendedAmount" Text='<%#Eval("RecommendedAmount") %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="ReleasedStatus" ItemStyle-HorizontalAlign="left" HeaderText="Status">
                                                <ItemStyle HorizontalAlign="left"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Incentiveid" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblIncentiveID" Text='<%#Eval("IncentiveId") %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
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


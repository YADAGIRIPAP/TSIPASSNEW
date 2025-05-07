<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GrievanceMisreport.aspx.cs" Inherits="UI_TSiPASS_GrievanceMisreport" MasterPageFile="~/UI/TSiPASS/EmptyMaster.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script src="../../Resource/Scripts/js/validations.js" type="text/javascript"></script>

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

        .style21 {
            height: 35px;
        }

        .style26 {
            height: 21px;
        }

        .style27 {
            height: 21px;
        }

        .style34 {
            height: 21px;
            width: 261px;
        }

        .style35 {
            height: 35px;
            width: 261px;
        }

        .style36 {
            width: 261px;
        }

        .style41 {
            height: 29px;
        }

        .style42 {
            width: 261px;
            height: 29px;
        }

        .style46 {
            height: 44px;
        }

        .style47 {
            height: 44px;
            width: 261px;
        }

        .style48 {
            width: 10px;
            height: 44px;
        }

        .style49 {
            width: 206px;
            height: 44px;
        }
    </style>

    <script type="text/javascript" language="javascript">

        function OpenPopup() {

            window.open("Lookups/LookupBDC.aspx", "List", "scrollbars=yes,resizable=yes,width=1000,height=650;display = block;position=absolute");

            return false;
        }
    </script>

    <script language="javascript" type="text/javascript">
        function confirmMAUD() {
            if (confirm("Are you sure you want to send the record to MA & UD"))
                return true;
            return false;
        }
    </script>

                <div align="left">
                                <ol class="breadcrumb">
                                    You are here &nbsp;!&nbsp; &nbsp; &nbsp;
                                    <li><i></i><a href="Home.aspx">Home</a></li>  &nbsp; /
                                    <%--<li class=""><i class="fa fa-fw fa-edit">CFE</i> </li>--%>
                                    <i ></i><a href="MisreportDashboard.aspx">Mis Reports </a>  &nbsp;/
                                    <li class="active"><i ></i>Grievance/Feedback/General query</li>
                                </ol>
                            </div>

    <div align="left">
        <div class="row" align="left">
            <div class="col-lg-11">
                <div class="panel panel-primary">
                    <div class="panel-heading" align="center">
                        <h3 class="panel-title">
                            <asp:Label ID="lblHead2" runat="server" CssClass="LBLBLACK" Font-Bold="True"
                                Width="199px"></asp:Label></h3>
                    </div>

                    <div class="panel-body">
                        <table align="center" cellpadding="10" cellspacing="5" style="width: 90%">

                            <tr>
                                <td align="center" class="style21" style="padding: 5px; margin: 2px">
                                    <table cellpadding="4" cellspacing="5" style="width: 100%">
                                        <tr>
                                            <td class="style26" colspan="5"
                                                style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label558" runat="server" CssClass="LBLBLACK" Font-Bold="True"
                                                    Width="199px"></asp:Label>
                                            </td>
                                            <td class="style27" colspan="5" style="padding: 5px; margin: 5px;">&nbsp;</td>
                                        </tr>
                                        <tr id="trgrivenance" runat="server" visible="true">
                                            <td class="style46" style="padding: 5px; margin: 5px; text-align: left;"></td>
                                            <td class="style47" style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label1" runat="server" CssClass="LBLBLACK" Width="199px">Type of Report :</asp:Label>
                                            </td>
                                            <td class="style46" style="padding: 5px; margin: 5px">:</td>
                                            <td class="style46" style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:DropDownList ID="ddlRegisterAs" runat="server" class="form-control txtbox"
                                                    Height="33px" TabIndex="1" Width="270px" AutoPostBack="True" OnSelectedIndexChanged="ddlRegisterAs_SelectedIndexChanged">
                                                    <asp:ListItem>--Select--</asp:ListItem>
                                                    <asp:ListItem Value="G" Selected="True">Grievance</asp:ListItem>
                                                    <asp:ListItem Value="F">Feedback</asp:ListItem>
                                                    <asp:ListItem Value="Q">General Query</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="style46" style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                    ControlToValidate="ddlRegisterAs" ErrorMessage="Please Select Register Your"
                                                    ValidationGroup="group" InitialValue="--Select--">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style48" style="padding: 5px; margin: 5px; vertical-align: middle;"
                                                valign="middle"></td>
                                            <td class="style49" style="padding: 5px; margin: 5px; text-align: left;">
                                                <%--<asp:Label ID="Label2" runat="server" CssClass="LBLBLACK" Width="100px">District Name:</asp:Label>--%>
                                            </td>
                                            <td class="style46" style="padding: 5px; margin: 5px"></td>
                                            <td class="style46" style="padding: 5px; margin: 5px; text-align: left;"></td>
                                            <td style="padding: 5px; margin: 5px"></td>
                                        </tr>

                                    </table>
                                </td>
                            </tr>
                            <tr id="trgrievancereport" runat="server" visible="true">
                                <td>
                                    <div class="panel-body">
                                        <table align="center" cellpadding="10" cellspacing="5" style="width: 90%">
                                            <tr>
                                                <td><strong>Grievance Report</strong></td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="padding: 5px; margin: 5px" valign="top">
                                                    <table cellpadding="4" cellspacing="5" style="width: 83%">

                                                        <tr>
                                                            <td style="padding: 5px; margin: 5px;" align="center">
                                                                <asp:GridView ID="grdDetails" runat="server"
                                                                    AutoGenerateColumns="False" CellPadding="4" CssClass="GRD"
                                                                    ForeColor="#333333" Height="62px"
                                                                    PageSize="40" Width="100%" ShowFooter="True" OnRowDataBound="grdDetails_RowDataBound">
                                                                    <FooterStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                                    <RowStyle BackColor="#EBF2FE" CssClass="GRDITEM" HorizontalAlign="Left"
                                                                        VerticalAlign="Middle" />
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
                                                                        <asp:BoundField DataField="Dept_Name" HeaderText="Department" />
                                                                        <asp:HyperLinkField DataTextField="total" HeaderText="Total Grievances" NavigateUrl="GrievanceMisReportDrilldown.aspx?Status=All" />
                                                                        <asp:HyperLinkField DataTextField="pending" HeaderText="Pending Grievances" NavigateUrl="GrievanceMisReportDrilldown.aspx?Status=Pending" />
                                                                        <asp:HyperLinkField DataTextField="redress" HeaderText="Redressed Grievances" NavigateUrl="GrievanceMisReportDrilldown.aspx?Status=Redress" />
                                                                        <asp:HyperLinkField DataTextField="reject" HeaderText="Rejected Grievances" NavigateUrl="GrievanceMisReportDrilldown.aspx?Status=Reject" />
                                                                   
                                                                        <%--<asp:BoundField DataField="total" HeaderText="Total" ItemStyle-HorizontalAlign="Right" />
                                                                        <asp:BoundField DataField="pending" HeaderText="Pending" ItemStyle-HorizontalAlign="Right" />
                                                                        <asp:BoundField DataField="redress" HeaderText="Redress" ItemStyle-HorizontalAlign="Right" />
                                                                        <asp:BoundField DataField="reject" HeaderText="Reject" ItemStyle-HorizontalAlign="Right" />--%>
                                                                        <%-- <asp:HyperLinkField DataTextField="total" HeaderText="Total Grievances"
                                                                    NavigateUrl="GreivanceStatusDetails.aspx?Status=All" />
                                                                <asp:HyperLinkField DataTextField="pending" HeaderText="Pending Grievances"
                                                                    NavigateUrl="GreivanceStatusDetails.aspx?Status=Pending" />
                                                                <asp:HyperLinkField DataTextField="redress" HeaderText="Redressed Grievances"
                                                                    NavigateUrl="GreivanceStatusDetails.aspx?Status=Redress" />
                                                                <asp:HyperLinkField DataTextField="reject" HeaderText="Rejected Grievances"
                                                                    NavigateUrl="GreivanceStatusDetails.aspx?Status=Reject" />--%>
                                                                    </Columns>
                                                                    <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                    <HeaderStyle BackColor="#013161" CssClass="GRDHEADER" Font-Bold="True"
                                                                        ForeColor="White" />
                                                                    <EditRowStyle BackColor="#B9D684" />
                                                                    <AlternatingRowStyle BackColor="White" />
                                                                </asp:GridView>
                                                                <tr>
                                                                    <td align="center" style="padding: 5px; margin: 5px">&nbsp;</td>
                                                                </tr>
                                                                <caption>
                                                                    &nbsp;</caption>
                                                            </td>
                                                        </tr>

                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <tr id="trfeedbackreport" runat="server" visible="false">
                                <td>
                                    <div class="panel-body">
                                        <table align="center" cellpadding="10" cellspacing="5" style="width: 90%">
                                            <tr>
                                                <td><strong>Feedback Report</strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="padding: 5px; margin: 5px" valign="top">
                                                    <table cellpadding="4" cellspacing="5" style="width: 83%">

                                                        <tr>
                                                            <td style="padding: 5px; margin: 5px;" align="center">
                                                                <asp:GridView ID="grdfeedback" runat="server" AllowPaging="True"
                                                                    AutoGenerateColumns="False" CellPadding="4" CssClass="GRD"
                                                                    ForeColor="#333333" Height="62px"
                                                                    PageSize="40" Width="100%" ShowFooter="True" OnRowDataBound="grdfeedback_RowDataBound">
                                                                    <FooterStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                                    <RowStyle BackColor="#EBF2FE" CssClass="GRDITEM" HorizontalAlign="Left"
                                                                        VerticalAlign="Middle" />
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
                                                                        <asp:BoundField DataField="Dept_Name" HeaderText="Department" />
                                                                        <asp:BoundField DataField="total" HeaderText="Total" ItemStyle-HorizontalAlign="Right" />
                                                                        <asp:BoundField DataField="pending" HeaderText="Pending" ItemStyle-HorizontalAlign="Right" />
                                                                        <asp:BoundField DataField="redress" HeaderText="Closed with reply" ItemStyle-HorizontalAlign="Right" />
                                                                        <asp:BoundField DataField="reject" HeaderText="Closed without reply" ItemStyle-HorizontalAlign="Right" />
                                                                        <%--<asp:HyperLinkField DataTextField="total" HeaderText="Total Feedbacks"
                                                                    NavigateUrl="FeedBackStatusDetails.aspx?Status=All" />--%>
                                                                    </Columns>
                                                                    <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                    <HeaderStyle BackColor="#013161" CssClass="GRDHEADER" Font-Bold="True"
                                                                        ForeColor="White" />
                                                                    <EditRowStyle BackColor="#B9D684" />
                                                                    <AlternatingRowStyle BackColor="White" />
                                                                </asp:GridView>
                                                                <tr>
                                                                    <td align="center" style="padding: 5px; margin: 5px">&nbsp;</td>
                                                                </tr>
                                                                <caption>
                                                                    &nbsp;</caption>
                                                            </td>
                                                        </tr>

                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <tr id="trquerydetailsreport" runat="server" visible="false">
                                <td>
                                    <div class="panel-body">
                                        <table align="center" cellpadding="10" cellspacing="5" style="width: 90%">
                                            <tr>
                                                <td><strong>General Query Details Report</strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="padding: 5px; margin: 5px" valign="top">
                                                    <table cellpadding="4" cellspacing="5" style="width: 83%">
                                                        <tr>
                                                            <td><strong>Total General Query Received : &nbsp
                                                                <asp:Label ID="lblquerytotal" Font-Size="14px" runat="server" CssClass="LBLBLACK"></asp:Label>
                                                            </strong>

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding: 5px; margin: 5px;" align="center">
                                                                <asp:GridView ID="grdquerydetails" runat="server" AllowPaging="True"
                                                                    AutoGenerateColumns="False" CellPadding="4" CssClass="GRD"
                                                                    ForeColor="#333333" Height="62px"
                                                                    PageSize="40" Width="100%" ShowFooter="True">
                                                                    <FooterStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                                    <RowStyle BackColor="#EBF2FE" CssClass="GRDITEM" HorizontalAlign="Left"
                                                                        VerticalAlign="Middle" Height="50px" Font-Size="14px" />
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
                                                                        <asp:BoundField DataField="Description" HeaderText="Description" />
                                                                        <asp:BoundField DataField="Total" HeaderText="Total" ItemStyle-HorizontalAlign="Right" />
                                                                        <asp:BoundField DataField="Within Time Lines" HeaderText="Within Time Limit" ItemStyle-HorizontalAlign="Right" />
                                                                        <asp:BoundField DataField="Beyond Time Lines" HeaderText="Beyond Time Limit" ItemStyle-HorizontalAlign="Right" />
                                                                        <asp:BoundField DataField="About to Breach (90% of Within Time Lines)" HeaderText="About to Breach (90% of Within Time Lines)" ItemStyle-HorizontalAlign="Right" />
                                                                        <%--<asp:BoundField DataField="Dept_Name" HeaderText="Department" />--%>
                                                                        <%-- <asp:HyperLinkField DataTextField="total" HeaderText="Total Queries"
                                                                            NavigateUrl="QueryStatusDetails.aspx?Status=All" />
                                                                        <asp:HyperLinkField DataTextField="pending" HeaderText="Pending Queries"
                                                                            NavigateUrl="QueryStatusDetails.aspx?Status=Pending" />
                                                                        <asp:HyperLinkField DataTextField="Attended" HeaderText="Attended Queries"
                                                                            NavigateUrl="QueryStatusDetails.aspx?Status=Attended" />--%>
                                                                        <%-- <asp:HyperLinkField DataTextField="reject" HeaderText="Rejected Queries"
                                                                            NavigateUrl="QueryStatusDetails.aspx?Status=Reject" />--%>
                                                                    </Columns>
                                                                    <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                    <HeaderStyle BackColor="#013161" CssClass="GRDHEADER" Font-Bold="True"
                                                                        ForeColor="White" />
                                                                    <EditRowStyle BackColor="#B9D684" />
                                                                    <AlternatingRowStyle BackColor="White" />
                                                                </asp:GridView>
                                                                <tr>
                                                                    <td align="center" style="padding: 5px; margin: 5px">&nbsp;</td>
                                                                </tr>
                                                                <caption>
                                                                    &nbsp;</caption>
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
                                        <td colspan="4" align="center" style="padding: 5px; margin: 5px">
                                            <div id="DIVUPDATEDDATE" runat="server" class="alert alert-success" >
                                                 <b><asp:Label ID="LBLDATETEXT" runat="server" Text="The data in the dashboard is updated on a real time basis. Last update:"></asp:Label><asp:Label ID="LBLDATETIME" runat="server"></asp:Label></b>
                                            </div>
                                            
                                        </td>
                                    </tr>
                            <tr>
                                <td align="center" style="padding: 5px; margin: 5px; text-align: center;">&nbsp;</td>
                            </tr>
                            <%--   <tr>
                                <td align="center" colspan="2" style="padding: 5px; margin: 5px">
                                    <div id="success" runat="server" class="alert alert-success">
                                        <a aria-label="close" class="close" data-dismiss="alert"
                                            href="AddQualification.aspx">×</a> <strong></strong>
                                        <asp:Label
                                            ID="lblmsg" runat="server"></asp:Label>
                                    </div>
                                    <div id="Failure" runat="server" class="alert alert-danger">
                                        <a aria-label="close" class="close" data-dismiss="alert" href="#">×</a> <strong>Warning!</strong>
                                        <asp:Label ID="lblmsg0" runat="server"></asp:Label>
                                    </div>

                                    <asp:HiddenField ID="hdfID" runat="server" />
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="group" />
                                    <asp:ValidationSummary ID="ValidationSummary2" runat="server"
                                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="child" />
                                    <asp:HiddenField ID="hdfFlagID" runat="server" />
                                </td>
                            </tr>--%>
                        </table>



                    </div>

                </div>
            </div>
        </div>

    </div>



    <%--</div>
       </td>
        </tr>
    </table>--%>
</asp:Content>

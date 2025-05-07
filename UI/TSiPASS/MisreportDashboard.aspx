<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/EmptyMaster.master"
    AutoEventWireup="true" CodeFile="MisreportDashboard.aspx.cs" Inherits="UI_TSiPASS_MisreportDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script language="javascript">



        function OpenPopup() {

            window.open("Lookups/frmcjfslookup.aspx", "List", "scrollbars=yes,resizable=yes,width=550,height=320");

            return false;
        }


        function Names() {
            var AsciiValue = event.keyCode
            if ((AsciiValue >= 65 && AsciiValue <= 90) || (AsciiValue >= 97 && AsciiValue <= 122) || (AsciiValue == 46) || (AsciiValue == 32))
                event.returnValue = true;
            else {
                event.returnValue = false;

                alert("Enter Alphabets, '.' and Space Only");
            }
        }

        function DecimalOnly() {
            var AsciiValue = event.keyCode
            if ((AsciiValue >= 48 && AsciiValue <= 57) || (AsciiValue == 8 || AsciiValue == 127) || AsciiValue == 46)
                event.returnValue = true;
            else {
                event.returnValue = false;

                alert("Enter DecimalValues Only");
            }
        }


        function AlphaNumericOnly() {
            var AsciiValue = event.keyCode
            if ((AsciiValue >= 65 && AsciiValue <= 90) || (AsciiValue >= 97 && AsciiValue <= 122) || (AsciiValue >= 48 && AsciiValue <= 57))
                event.returnValue = true;
            else {
                event.returnValue = false;

                alert("Enter Alphabets,  and Characters  Only");
            }
        }

    </script>
    <script type="text/javascript">
        $(function () {
            $('input[id$=txtration1]').bind('cut copy paste', function (e) {
                e.preventDefault();
                alert('You cannot ' + e.type + ' text!');
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('input[id$=txtration2]').bind('cut copy paste', function (e) {
                e.preventDefault();
                alert('You cannot ' + e.type + ' text!');
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('input[id$=txtsurveynum]').bind('cut copy paste', function (e) {
                e.preventDefault();
                alert('You cannot ' + e.type + ' text!');
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('input[id$=txtExtent]').bind('cut copy paste', function (e) {
                e.preventDefault();
                alert('You cannot ' + e.type + ' text!');
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('input[id$=txtCJFSBeneficiery]').bind('cut copy paste', function (e) {
                e.preventDefault();
                alert('You cannot ' + e.type + ' text!');
            });
        });


    </script>
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td style="padding-top: 10px; padding-bottom: 20px; padding-left: 9px; height: 675px;"
                valign="top" align="center">
                <table style="width: 100%" cellpadding="10" cellspacing="10">
                    <tr>
                        <td colspan="3">
                            <div align="left">
                                <ol class="breadcrumb">
                                    You are here &nbsp;!&nbsp; &nbsp; &nbsp;
                                    <li><i></i><a href="Home.aspx">Home</a></li>
                                    <%--<li class=""><i class="fa fa-fw fa-edit">CFE</i> </li>--%>
                                    <li class="active"><i></i>EODB Reports </li>
                                </ol>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 30px" colspan="5">
                            <asp:Label ID="Label437" runat="server" CssClass="LBLBLACK" Font-Bold="True" Font-Names="Verdana"
                                Width="210px">EODB REPORTS</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 15px">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btnsinglewindow" runat="server" BackColor="#cc9900" Height="91px" BorderColor="black"
                                TabIndex="10" Text="Single Window" ValidationGroup="group" Font-Bold="True" Font-Names="Verdana"
                                Font-Size="18px" OnClick="btnsinglewindow_Click" Width="450px" />
                        </td>
                        <td>
                        </td>
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btngranted" runat="server" CssClass="btn btn-info" Height="91px"
                                TabIndex="10" Text="Granted" ValidationGroup="group" Font-Bold="True" Font-Names="Verdana"
                                Font-Size="18px" OnClick="btngranted_Click" Width="450px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 15px">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btnIncentivedashboard" runat="server"  BackColor="#ff9933"
                                Height="91px" TabIndex="10" Text="Incentives Granted Dashboard" ValidationGroup="group"
                                Font-Bold="True" Font-Names="Verdana" Font-Size="18px" OnClick="btnIncentivedashboard_Click"
                                Width="450px" />
                        </td>
                        <td>
                        </td>
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btnquery" runat="server" BackColor="#0099ff" Height="91px" TabIndex="10"
                                Text="Grievance Handled Dashboard" ValidationGroup="group" Font-Bold="True" Font-Names="Verdana"
                                Font-Size="18px" OnClick="btnquery_Click" Width="450px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 15px">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btntourism" runat="server" BackColor="#ff6600" Height="91px"
                                TabIndex="10" Text="Tourism Event Dashboard" ValidationGroup="group" Font-Bold="True"
                                Font-Names="Verdana" Font-Size="18px" OnClick="btntourism_Click" Width="450px" />
                        </td>
                        <td>
                        </td>
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btnTravelAgency" runat="server" BackColor="#0066cc" Height="91px"
                                TabIndex="10" Text="Travel Agency Dashboard" ValidationGroup="group" Font-Bold="True"
                                Font-Names="Verdana" Font-Size="18px" OnClick="btnTravelAgency_Click" Width="450px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 15px">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btnhotelcfe" runat="server" BackColor="#cc6600" Height="91px"
                                TabIndex="10" Text="Hotel CFE Dashboard" ValidationGroup="group" Font-Bold="True"
                                Font-Names="Verdana" Font-Size="18px" OnClick="btnhotelcfe_Click" Width="450px" />
                        </td>
                        <td>
                        </td>
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btnhotelcfo" runat="server" Backcolor="#0000cc" Height="91px"
                                TabIndex="10" Text="Hotel CFO Dashboard" ValidationGroup="group" Font-Bold="True"
                                Font-Names="Verdana" Font-Size="18px" OnClick="btnhotelcfo_Click" Width="450px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 15px">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btngrievancemis" runat="server" CssClass="btn btn-warning" Height="91px"
                                TabIndex="10" Text="GRIEVANCE/FEEDBACK/GENERALQUERY" ValidationGroup="group"
                                Font-Bold="True" Font-Names="Verdana" Font-Size="18px" OnClick="btngrievancemis_Click"
                                Width="450px" />
                        </td>
                        <td>
                        </td>
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btnregulationmis" runat="server" CssClass="btn btn-info" Height="91px"
                                TabIndex="10" Text="BUSINESS REGULATION" ValidationGroup="group" Font-Bold="True"
                                Font-Names="Verdana" Font-Size="18px" OnClick="btnregulationmis_Click" Width="450px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 15px">
                        </td>
                    </tr>
                    <tr id="trcfe" runat="server" visible="true">
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btncfemis" runat="server" CssClass="btn btn-primary" Height="91px"
                                TabIndex="10" Text="TG-iPASS" ValidationGroup="group" Width="450px" Font-Bold="True"
                                Font-Names="Verdana" Font-Size="18px" OnClick="btncfemis_Click" />
                        </td>
                        <td>
                        </td>
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btnIncentive" runat="server" CssClass="btn btn-danger" Height="91px"
                                TabIndex="10" Text="INCENTIVES" Font-Bold="True" Width="450px" ValidationGroup="group"
                                Font-Names="Verdana" Font-Size="18px" OnClick="btnIncentive_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 15px">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btncentral" runat="server" CssClass="btn btn-warning" Height="91px"
                                TabIndex="10" Text="CENTRAL INSPECTION AGENCY" ValidationGroup="group" Width="450px"
                                Font-Bold="True" Font-Names="Verdana" Font-Size="18px" OnClick="btncentralinspectionmis_Click" />
                        </td>
                        <td>
                        </td>
                        <td align="center" style="text-align: center">
                            <asp:Button ID="BTNHELPDESK" runat="server" CssClass="btn btn-info" Height="91px" TabIndex="10"
                                Text="Queries(Helpdesk) Handled Dashboard" ValidationGroup="group" Font-Bold="True" Font-Names="Verdana"
                                Font-Size="18px" OnClick="BTNHELPDESK_Click" Width="450px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 15px">
                        </td>
                    </tr>
                    <tr runat="server">
                        <td align="center" style="text-align: center">
                            <asp:Button ID="btnallaaprwithfeedetails" runat="server" CssClass="btn btn-warning" Height="91px"
                                TabIndex="10" Text="Firm wise Approvals" ValidationGroup="group" Width="450px"
                                Font-Bold="True" Font-Names="Verdana" Font-Size="18px" OnClick="btnallaaprwithfeedetails_Click" />
                        </td>
                        <td>
                        </td>
                        <td align="center" style="text-align: center">
                           
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IncetivesDraft.aspx.cs" Inherits="IncetivesDraft" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>DraftPrint</title>
    <script src="../../Resource/Scripts/js/validations.js" type="text/javascript"></script>
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
    </script>
    <style>
        .div3 {
            /*-webkit-column-count: 3;
    -moz-column-count: 3; 
    column-count: 3; */
            -webkit-column-gap: 40px; /* Chrome, Safari, Opera */
            -moz-column-gap: 40px; /* Firefox */
            column-gap: 40px;
        }

        .w3-code {
            border-left: 5px solid #73AD21 !important;
            font-size: 17px;
            padding: 5px;
            font-weight: bold;
            color: #082ea2;
        }

        .w4-code {
            border-left: 5px solid #73AD21 !important;
            font-size: 14px;
            padding: 5px;
            font-weight: bold;
            color: #082ea2;
        }

        ol.u {
            list-style-type: none;
            ;
            font-size: 13px;
            padding: 10px 10px 10px 10px;
        }

        ol.v {
            list-style-type: inherit;
            font-size: 17px;
            font-weight: bold;
            padding: 10px 10px 10px 10px;
        }

        .table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            border: 2px solid ActiveCaptionText;
            padding: 8px;
        }

        .auto-style1 {
            height: 37px;
        }
        .auto-style2 {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <div align="center" style="text-align: center" id="recipet" runat="server">
            <div align="center" style="width: 1000px; margin: 0 auto;">
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
                <br />
            </div>
            <div align="center" id="Receipt" runat="server">
                <table style="width: 800px">
                    <tr>
                        <td>
                            <div align="center" id="divCommonAppli" runat="server" visible="false">
                                <div align="center">
                                    <table bgcolor="White" width="1000px" border="2px" style="font-family: Verdana; font-size: small;">
                                        <tr>
                                            <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;">
                                                <asp:Label ID="lblIndustries1" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="White">COMMON DETAILS OF THE ENTREPRENUER</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left; width: 250px">
                                                EM/Udyog Aadhar No
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <asp:Label ID="txtudyogAadharNo" runat="server"></asp:Label>
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                Unit Name
                                            </td>
                                            <td style="width: 250px">
                                                <span>
                                                    <asp:Label ID="txtUnitname" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Name of the Managing Director /Managing Partner / Proprietor
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="txtApplicantName" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td>
                                                VAT / CST / GST/ TIN Number
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="txtTinNumber" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                PAN Number of the Managing Director /Managing Partner / Proprietor
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="txtPanNumber" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td>
                                                Category
                                            </td>
                                            <td>
                                                <asp:Label ID="ddlCategory" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Type of Organization
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="ddltypeofOrg" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td>
                                                Industry Status
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="ddlindustryStatus" runat="server">                                                      
                                                    </asp:Label></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Date of commencement for Production
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="txtDateofCommencement" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td>
                                                Social Status
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="rblCaste" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                CFE Uid Number
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="lblcfeno" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td>
                                                CFO Uid Number
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="lblcfo" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr id="serloa" runat="server" visible="false">
                                            <td style="text-align: left; width: 250px">
                                                Line of Activity
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="ddlserviceloa" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td>
                                                <%--EM Part - II/IEM/IL No:--%>
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="lblEMPartNo" runat="server" Visible="false"> </asp:Label>
                                                </span>
                                            </td>
                                            <%--  <td></td>
                            <td></td>--%>
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
                                            <td align="center" colspan="4" style="text-align: center;">
                                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="Black">UNIT ADDRESS</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left; width: 250px">
                                                District
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="ddldistrictunit" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                Survey No
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="txtunitaddhno" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left; width: 250px">
                                                Mandal
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="ddlUnitMandal" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                Street
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="txtstreetunit" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left; width: 250px">
                                                Village
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="ddlVillageunit" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                Mobile Number
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="txtunitmobileno" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left; width: 250px">
                                                Email Id
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="txtunitemailid" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                &nbsp;
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="4" style="text-align: center;">
                                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="Black">OFFICE ADDRESS</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left; width: 250px">
                                                District
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="ddldistrictoffc" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                Survey No
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="txtoffaddhnno" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left; width: 250px">
                                                Mandal
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="ddloffcmandal" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                Street
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="txtstreetoffice" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left; width: 250px">
                                                Village
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="ddlvilloffc" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                Mobile Number
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="txtOffcMobileNO" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left; width: 250px">
                                                Email Id
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span>
                                                    <asp:Label ID="txtOffcEmail" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                            </td>
                                            <td style="text-align: left; width: 250px">
                                                <span></span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div align="center">
                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                        <tr>
                                            <td colspan="2" style="font-size: large; text-align: center; background-color: #0066FF;
                                                color: #FFFFFF; font-weight: bold;">
                                                LINE OF ACTIVITY
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Line of Activity
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="lblLineofActiivity" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" runat="server">
                                                <asp:GridView ID="gvLOA" runat="server" AutoGenerateColumns="False" Font-Names="Verdana"
                                                    Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Sl No.">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="LineofActivity" HeaderText="Line Of Activity" />
                                                        <asp:BoundField DataField="InstalledCapacity" HeaderText="Installed Capacity" />
                                                        <asp:BoundField DataField="NameofUnit" HeaderText="Unit" />
                                                        <asp:BoundField DataField="Value" HeaderText="Value" />
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr id="trexpansionhead" runat="server" visible="false">
                                            <td colspan="2" style="font-size: large; text-align: center; background-color: #0066FF;
                                                color: #FFFFFF; font-weight: bold;">
                                                <asp:Label ID="lblexpan1" Text="Expansion/Diversification" runat="server"></asp:Label>&nbsp;
                                                PROJECT (In Rs.)
                                            </td>
                                        </tr>
                                        <tr id="trexpansion" runat="server" visible="false">
                                            <td colspan="9">
                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td style="text-align: center">
                                                            Line Of Activity
                                                        </td>
                                                        <td style="text-align: center">
                                                            Installed Capacity
                                                        </td>
                                                        <td style="text-align: center">
                                                            % of increase under
                                                            <br />
                                                            <asp:Label ID="lblexpan2" runat="server"></asp:Label>
                                                        </td>
                                                        <%--Expansion--%>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Existing
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txteeploa" runat="server"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <%--<asp:Label ID="txteepinscap" runat="server"      ></asp:Label>--%>
                                                            <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                <tr>
                                                                    <td style="text-align: center">
                                                                        Quantity
                                                                    </td>
                                                                    <td style="text-align: center">
                                                                        Unit
                                                                    </td>
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
                                                            Project
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txtedploa" runat="server"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                                <tr>
                                                                    <td style="text-align: center">
                                                                        Quantity
                                                                    </td>
                                                                    <td style="text-align: center">
                                                                        Unit
                                                                    </td>
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
                                            <td colspan="2" style="font-size: large; text-align: center; background-color: #0066FF;
                                                color: #FFFFFF; font-weight: bold;">
                                                FIXED CAPITAL INVESTMENT(In Rs.)
                                            </td>
                                        </tr>
                                        <tr id="tr2" runat="server">
                                            <td colspan="9">
                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                    <tr>
                                                        <td style="text-align: left">
                                                            Nature of Assets
                                                        </td>
                                                        <td style="text-align: left">
                                                            Existing Enterprise
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Land
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txtlandexistingNew" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Building
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txtbuildingexistingNew" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Plant & Machinery
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txtplantexistingNew" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr id="tr1" runat="server">
                                            <td colspan="9">
                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                    <tr>
                                                        <td style="text-align: center">
                                                            Nature of Assets
                                                        </td>
                                                        <td style="text-align: center">
                                                            Existing Enterprise
                                                        </td>
                                                        <td style="text-align: center">
                                                            Under Expansion/Diversification<br />
                                                            Project
                                                        </td>
                                                        <td>
                                                            % of increase under<br />
                                                            Expansion/Diversification
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Land
                                                        </td>
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
                                                        <td>
                                                            Building
                                                        </td>
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
                                                        <td>
                                                            Plant & Machinery
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
                                            <td colspan="2" style="font-size: large; text-align: center; background-color: #0066FF;
                                                color: #FFFFFF; font-weight: bold;">
                                                Details of the Director(s)/ Partner(s)
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:GridView ID="GridViewdirectors" runat="server" AutoGenerateColumns="False" Font-Names="Verdana"
                                                    Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Sl No.">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Name" HeaderText="Name" />
                                                        <asp:BoundField DataField="Community" HeaderText="Community" />
                                                        <asp:BoundField DataField="Share" HeaderText="Share" />
                                                        <%-- <asp:BoundField DataField="Percentage" HeaderText="Percentage" />--%>
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div align="center">
                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                        <tr>
                                            <td colspan="4" style="font-size: large; text-align: center; background-color: #0066FF;
                                                color: #FFFFFF; font-weight: bold;">
                                                POWER
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblpowerHEAD" Text="POWER TYPE" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="ddlPowerStatus" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Power Released Date
                                            </td>
                                            <td>
                                                <asp:Label ID="txtNewPowerReleaseDate" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                Contracted load (In HP)
                                            </td>
                                            <td>
                                                <asp:Label ID="txtNewContractedLoad" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Service Connection Number
                                            </td>
                                            <td>
                                                <asp:Label ID="txtServiceConnectionNumberNew" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                Connected load (In HP)
                                            </td>
                                            <td>
                                                <asp:Label ID="txtNewConnectedLoad" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <table id="tblpower" runat="server" bgcolor="White" width="100%" border="2" style="font-family: Verdana;
                                        font-size: small;">
                                        <tr>
                                            <td style="height: 10px" colspan="4">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4">
                                                <asp:Label ID="lblexistingpower" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Power Released Date
                                            </td>
                                            <td>
                                                <asp:Label ID="txtExistPowerReleaseDate" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                Contracted load (In HP)
                                            </td>
                                            <td>
                                                <asp:Label ID="txtExistContractedLoad" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Service Connection Number
                                            </td>
                                            <td>
                                                <asp:Label ID="txtServiceConnectionNumberExist" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                Connected load (In HP)
                                            </td>
                                            <td>
                                                <asp:Label ID="txtExistConnectedLoad" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 10px" colspan="4">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4">
                                                <asp:Label ID="lblexpandiverpower" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Power Released Date
                                            </td>
                                            <td>
                                                <asp:Label ID="txtExpanPowerReleaseDate" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                Contracted load (In HP)
                                            </td>
                                            <td>
                                                <asp:Label ID="txtExpanContractedLoad" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Service Connection Number
                                            </td>
                                            <td>
                                                <asp:Label ID="txtServiceConnectionNumberExpan" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                Connected load (In HP)
                                            </td>
                                            <td>
                                                <asp:Label ID="txtExpanConnectedLoad" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div align="center">
                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                        <tr>
                                            <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                                color: #FFFFFF; font-size: large; font-weight: bold;">
                                                <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">Local Employment for Additional Incentives</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                            Total Male(Nos)
                                                        </td>
                                                        <td>
                                                            Total Female(Nos)
                                                        </td>
                                                        <td>
                                                            Local Male(Nos)
                                                        </td>
                                                        <td>
                                                            Local Female(Nos)
                                                        </td>
                                                    </tr>
                                                    <%--                                    <tr>
                                        <td>1
                                        </td>
                                        <td>Management & Staff 
                                        </td>
                                        <td>
                                            <asp:Label ID="Label10" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label14" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2
                                        </td>
                                        <td>Supervisory 
                                        </td>
                                        <td>
                                            <asp:Label ID="Label15" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label16" runat="server"></asp:Label>
                                        </td>
                                    </tr>--%>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            1
                                                        </td>
                                                        <td class="auto-style2">
                                                            Skilled workers
                                                        </td>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="txttotalmaleskled" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="txttotalfemaleskled" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="txtlocalmaleskled" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="txtlocalfemaleskled" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            2
                                                        </td>
                                                        <td>
                                                            Semi-skilled workers
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txttotalmalesmskld" runat="server"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txttotalfemalesmskld" runat="server"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txtlocalmalesmskld" runat="server"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txtlocalfemalesmskld" runat="server"></asp:Label>
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
                                            <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                                color: #FFFFFF; font-size: large; font-weight: bold;">
                                                <asp:Label ID="lblIndustries6" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">Employment</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                            Male(Nos)
                                                        </td>
                                                        <td>
                                                            Female(Nos)
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            1
                                                        </td>
                                                        <td>
                                                            Management & Staff
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txtstaffMale" runat="server"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txtStaffFemale" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            2
                                                        </td>
                                                        <td>
                                                            Supervisory
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txtSuprMale" runat="server"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txtSuperFemale" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            3
                                                        </td>
                                                        <td>
                                                            Skilled workers
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txtSkilledWorkersMale" runat="server"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="txtSkilledWorkersFemale" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            4
                                                        </td>
                                                        <td>
                                                            Semi-skilled workers
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
                                            <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                                color: #FFFFFF; font-size: large; font-weight: bold;">
                                                <asp:Label ID="lblIndustries7" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">Implementation Steps Taken</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="4">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Date of application for Term Loan
                                            </td>
                                            <td>
                                                <asp:Label ID="txtTermloan" runat="server"></asp:Label>
                                                &nbsp;
                                            </td>
                                            <td>
                                                Term Loan Sanctioned Date
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="txtdatesanctioned" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Term Loan Sanctioned reference No
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="txtsactionedloan" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                            <td>
                                                Name of the Institution
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="txtnmofinstitution" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div align="center">
                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                        <tr>
                                            <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                                color: #FFFFFF; font-size: large; font-weight: bold;">
                                                <asp:Label ID="lblIndustries9" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">Approved/Estimated projected cost, term loan sanctioned and released, assets acquired etc</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                    <tr>
                                                        <td style="text-align: center">
                                                            Name of Asset
                                                        </td>
                                                        <td style="text-align: center">
                                                            Approved Project
                                                            <br />
                                                            Cost
                                                        </td>
                                                        <td style="text-align: center">
                                                            Loan Sanctioned
                                                        </td>
                                                        <td style="text-align: center">
                                                            Equity from
                                                            <br />
                                                            the promoters
                                                        </td>
                                                        <td style="text-align: center">
                                                            Loan Amount
                                                            <br />
                                                            Released
                                                        </td>
                                                        <td style="text-align: center">
                                                            Value of assets (as
                                                            <br />
                                                            certified by financial<br />
                                                            institution)
                                                        </td>
                                                        <td style="text-align: center">
                                                            Value of assets certified
                                                            <br />
                                                            by Chartered Accoutant
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center">
                                                            1
                                                        </td>
                                                        <td style="text-align: center">
                                                            2
                                                        </td>
                                                        <td style="text-align: center">
                                                            3
                                                        </td>
                                                        <td style="text-align: center">
                                                            4
                                                        </td>
                                                        <td style="text-align: center">
                                                            5
                                                        </td>
                                                        <td style="text-align: center">
                                                            6
                                                        </td>
                                                        <td style="text-align: center">
                                                            7
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Land
                                                        </td>
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
                                                        <td>
                                                            Buildings
                                                        </td>
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
                                                        <td>
                                                            Plant & Machinery
                                                        </td>
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
                                                        <td>
                                                            Machinery Contingencies
                                                        </td>
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
                                                        <td>
                                                            Erection
                                                        </td>
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
                                                        <td>
                                                            Technical know-how,<br />
                                                            feasibility study
                                                        </td>
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
                                                        <td>
                                                            Working Capital
                                                        </td>
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
                                            <td align="center" colspan="6" style="text-align: center; background-color: #0066FF;
                                                color: #FFFFFF; font-size: large; font-weight: bold;">
                                                <asp:Label ID="lblIndustries11" runat="server" Font-Bold="True" Font-Size="18px"
                                                    ForeColor="White">Approved/Estimated projected cost, term loan sanctioned and released, assets acquired etc</asp:Label>
                                            </td>
                                        </tr>
                                        <tr id="trSecondhandmachinery" runat="server">
                                            <td colspan="4">
                                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                    <tr>
                                                        <td style="text-align: center">
                                                            Second hand machinery
                                                            <br />
                                                            value in Rs
                                                        </td>
                                                        <td style="text-align: center">
                                                            New machinery value in Rs
                                                        </td>
                                                        <td style="text-align: center">
                                                            Total value in Rs<br />
                                                            (1+2)
                                                        </td>
                                                        <td style="text-align: center">
                                                            % of second hand machinery
                                                            <br />
                                                            value in total machinery value
                                                        </td>
                                                        <td style="text-align: center">
                                                            Value of the machinery
                                                            <br />
                                                            purchaced from TSIDC<br />
                                                            (Telangana unit)/TSSFC
                                                            <br />
                                                            (Telangana unit)/Bank in Rs
                                                        </td>
                                                        <td style="text-align: center">
                                                            Total value in Rs
                                                            <br />
                                                            (2+5)
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center">
                                                            1
                                                        </td>
                                                        <td style="text-align: center">
                                                            2
                                                        </td>
                                                        <td style="text-align: center">
                                                            3
                                                        </td>
                                                        <td style="text-align: center">
                                                            4
                                                        </td>
                                                        <td style="text-align: center">
                                                            5
                                                        </td>
                                                        <td style="text-align: center">
                                                            6
                                                        </td>
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
                                                        <td colspan="6">
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
                                            <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                                color: #FFFFFF; font-size: large; font-weight: bold;">
                                                <asp:Label ID="lblIndustries12" runat="server" Font-Bold="True" Font-Size="15px"
                                                    ForeColor="White">Registration with Commercial taxes Department Registration</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                VAT / CST / GST No
                                            </td>
                                            <td>
                                                <asp:Label ID="txtvatno" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                Registration Date
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="txtCSTRegDate" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Registring Authority
                                            </td>
                                            <td>
                                                <asp:Label ID="txtCSTRegAuthority" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                Registring Authority Address
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Label ID="txtCSTRegAuthAddress" runat="server"></asp:Label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr id="trcst" runat="server" visible="false">
                                            <td>
                                                CST No
                                            </td>
                                            <td>
                                                <asp:Label ID="txtcstno" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center" id="divInvestmenSubsidy" runat="server" visible="false">
                                <table bgcolor="White" border="2px" style="font-family: Verdana; font-size: small;"
                                    width="100%">
                                    <tr>
                                        <td colspan="2" style="text-align: center; background-color: #0066FF; color: #FFFFFF;
                                            font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="White">ANNEXURE: VIII - Claiming of Investment Subsidy</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="font-size: medium">
                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">1 Subsidy Already availed i.r.o Expansion / Diversification</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.1 Scheme
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAvldSubsidyScheme" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.2 Amount in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAvldSubsidyAmt" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="font-size: medium">
                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">2 Incentives Applied for (in Rs.) on fixed capital investment</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            2.1 Scheme eligible
                                        </td>
                                        <td>
                                            <asp:Label ID="txtSchemeEligible" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            2.2 Investment Subsidy
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAppldInvestSubsidy" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            2.3 Additional amount for Women
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAppldAddlAmtWomen" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            2.4 Total Investment Subsidy
                                        </td>
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
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: VI - Claiming of Stamp Duty, Transfer Duty, Mortgage Duty, Land Conversion Charges & Land Cost Purchased in IE/ IDA / IP’s </asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="font-size: medium">
                                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">1   Land purchased details</asp:Label>
                                        </td>
                                        <td colspan="2" style="font-size: medium">
                                            <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">2   Registered Deed Details</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.1 Area as per registered sale deed in Sq Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaRegdSaledeed" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.1 Nature of transaction / deed registered for industrial use Sale deed / lease
                                            deed / Mortgage
                                        </td>
                                        <td>
                                            <asp:Label ID="txtNatureofTrans" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.2 Plinth area of the building as per approved plan By HUDA / DT&CP / IALA in Sq.
                                            Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtPlnthAreaBuild" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.2 Sub Registrar office
                                        </td>
                                        <td>
                                            <asp:Label ID="txtSubRegOffc" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.3 5 times of the plinth area of factory building in Sq. Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtFivePlnthAreaBuild" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.3 Registered deed number
                                        </td>
                                        <td>
                                            <asp:Label ID="txtRegdDeedNo" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.4 Area required for the factory as per the appraisal in Sq. Mts.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaReqdAppraisal" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.4 Date Of Registration
                                        </td>
                                        <td>
                                            <asp:Label ID="txtRegDate" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.5 Area required for the factory as per the norms of TSPCB or any other state govt.
                                            department in Sq. Mts.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaReqdTSPCB" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="padding: 5px; margin: 5px; text-align: center;">
                                            <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                <tr>
                                                    <td colspan="4" style="font-weight: bold; text-align: left">
                                                        3 Details of duty paid and claimed
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        Nature Of Payment
                                                    </td>
                                                    <td>
                                                        Amount Paid
                                                    </td>
                                                    <td>
                                                        Amount Claimed
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        3.1
                                                    </td>
                                                    <td>
                                                        Stamp Duty / transfer duty
                                                    </td>
                                                    <td align="center">
                                                        <asp:Label ID="txtStampTranfrDutyAP" runat="server"></asp:Label>
                                                    </td>
                                                    <td align="center">
                                                        <asp:Label ID="txtStampTranfrDutyAC" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        3.2
                                                    </td>
                                                    <td>
                                                        Mortgage & Hypothecations Duty
                                                    </td>
                                                    <td align="center">
                                                        <asp:Label ID="txtMortgageHypothDutyAP" runat="server"></asp:Label>
                                                    </td>
                                                    <td align="center">
                                                        <asp:Label ID="txtMortgageHypothDutyAC" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        3.3
                                                    </td>
                                                    <td>
                                                        Land Conversion charges
                                                    </td>
                                                    <td align="center">
                                                        <asp:Label ID="txtLandConvrChrgAP" runat="server"></asp:Label>
                                                    </td>
                                                    <td align="center">
                                                        <asp:Label ID="txtLandConvrChrgAC" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        3.4
                                                    </td>
                                                    <td>
                                                        Cost of land in case of purchase in IE / IDA / IP
                                                    </td>
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
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: VI - Claiming of Stamp Duty/Transfer Duty</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="font-size: medium">
                                            <asp:Label ID="Label111" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">1   Land purchased details</asp:Label>
                                        </td>
                                        <td colspan="2" style="font-size: medium">
                                            <asp:Label ID="Label181" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">2   Registered Deed Details</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.1 Area as per registered sale deed in Sq Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaRegdSaledeed1" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.1 Nature of transaction / deed registered for industrial use Sale deed / lease
                                            deed / Mortgage
                                        </td>
                                        <td>
                                            <asp:Label ID="txtNatureofTrans1" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.2 Plinth area of the building as per approved plan By HUDA / DT&CP / IALA in Sq.
                                            Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtPlnthAreaBuild1" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.2 Sub Registrar office
                                        </td>
                                        <td>
                                            <asp:Label ID="txtSubRegOffc1" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.3 5 times of the plinth area of factory building in Sq. Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtFivePlnthAreaBuild1" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.3 Registered deed number
                                        </td>
                                        <td>
                                            <asp:Label ID="txtRegdDeedNo1" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.4 Area required for the factory as per the appraisal in Sq. Mts.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaReqdAppraisal1" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.4 Date Of Registration
                                        </td>
                                        <td>
                                            <asp:Label ID="txtRegDate1" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.5 Area required for the factory as per the norms of TSPCB or any other state govt.
                                            department in Sq. Mts.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaReqdTSPCB1" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="padding: 5px; margin: 5px; text-align: center;">
                                            <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                <tr>
                                                    <td colspan="4" style="font-weight: bold; text-align: left">
                                                        3 Details of duty paid and claimed
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        Nature Of Payment
                                                    </td>
                                                    <td>
                                                        Amount Paid
                                                    </td>
                                                    <td>
                                                        Amount Claimed
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        3.1
                                                    </td>
                                                    <td>
                                                        Stamp Duty / transfer duty
                                                    </td>
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
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: VI - Claiming of Mortgage Duty</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="font-size: medium">
                                            <asp:Label ID="Label112" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">1   Land purchased details</asp:Label>
                                        </td>
                                        <td colspan="2" style="font-size: medium">
                                            <asp:Label ID="Label182" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">2   Registered Deed Details</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.1 Area as per registered sale deed in Sq Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaRegdSaledeed2" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.1 Nature of transaction / deed registered for industrial use Sale deed / lease
                                            deed / Mortgage
                                        </td>
                                        <td>
                                            <asp:Label ID="txtNatureofTrans2" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.2 Plinth area of the building as per approved plan By HUDA / DT&CP / IALA in Sq.
                                            Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtPlnthAreaBuild2" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.2 Sub Registrar office
                                        </td>
                                        <td>
                                            <asp:Label ID="txtSubRegOffc2" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.3 5 times of the plinth area of factory building in Sq. Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtFivePlnthAreaBuild2" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.3 Registered deed number
                                        </td>
                                        <td>
                                            <asp:Label ID="txtRegdDeedNo2" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.4 Area required for the factory as per the appraisal in Sq. Mts.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaReqdAppraisal2" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.4 Date Of Registration
                                        </td>
                                        <td>
                                            <asp:Label ID="txtRegDate2" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.5 Area required for the factory as per the norms of TSPCB or any other state govt.
                                            department in Sq. Mts.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaReqdTSPCB2" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="padding: 5px; margin: 5px; text-align: center;">
                                            <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                <tr>
                                                    <td colspan="4" style="font-weight: bold; text-align: left">
                                                        3 Details of duty paid and claimed
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        Nature Of Payment
                                                    </td>
                                                    <td>
                                                        Amount Paid
                                                    </td>
                                                    <td>
                                                        Amount Claimed
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        3.1
                                                    </td>
                                                    <td>
                                                        Mortgage & Hypothecations Duty
                                                    </td>
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
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: VI - Claiming of Land Conversion Charges</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="font-size: medium">
                                            <asp:Label ID="Label113" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">1   Land purchased details</asp:Label>
                                        </td>
                                        <td colspan="2" style="font-size: medium">
                                            <asp:Label ID="Label183" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">2   Registered Deed Details</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.1 Area as per registered sale deed in Sq Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaRegdSaledeed3" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.1 Nature of transaction / deed registered for industrial use Sale deed / lease
                                            deed / Mortgage
                                        </td>
                                        <td>
                                            <asp:Label ID="txtNatureofTrans3" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.2 Plinth area of the building as per approved plan By HUDA / DT&CP / IALA in Sq.
                                            Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtPlnthAreaBuild3" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.2 Sub Registrar office
                                        </td>
                                        <td>
                                            <asp:Label ID="txtSubRegOffc3" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.3 5 times of the plinth area of factory building in Sq. Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtFivePlnthAreaBuild3" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.3 Registered deed number
                                        </td>
                                        <td>
                                            <asp:Label ID="txtRegdDeedNo3" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.4 Area required for the factory as per the appraisal in Sq. Mts.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaReqdAppraisal3" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.4 Date Of Registration
                                        </td>
                                        <td>
                                            <asp:Label ID="txtRegDate3" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.5 Area required for the factory as per the norms of TSPCB or any other state govt.
                                            department in Sq. Mts.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaReqdTSPCB3" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="padding: 5px; margin: 5px; text-align: center;">
                                            <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                <tr>
                                                    <td colspan="4" style="font-weight: bold; text-align: left">
                                                        3 Details of duty paid and claimed
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        Nature Of Payment
                                                    </td>
                                                    <td>
                                                        Amount Paid
                                                    </td>
                                                    <td>
                                                        Amount Claimed
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        3.1
                                                    </td>
                                                    <td>
                                                        Land Conversion charges
                                                    </td>
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
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: VI - Claiming of Land Cost Purchased in IE/ IDA / IP’s </asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="font-size: medium">
                                            <asp:Label ID="Label114" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">1   Land purchased details</asp:Label>
                                        </td>
                                        <td colspan="2" style="font-size: medium">
                                            <asp:Label ID="Label184" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">2   Registered Deed Details</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.1 Area as per registered sale deed in Sq Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaRegdSaledeed4" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.1 Nature of transaction / deed registered for industrial use Sale deed / lease
                                            deed / Mortgage
                                        </td>
                                        <td>
                                            <asp:Label ID="txtNatureofTrans4" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.2 Plinth area of the building as per approved plan By HUDA / DT&CP / IALA in Sq.
                                            Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtPlnthAreaBuild4" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.2 Sub Registrar office
                                        </td>
                                        <td>
                                            <asp:Label ID="txtSubRegOffc4" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.3 5 times of the plinth area of factory building in Sq. Mts
                                        </td>
                                        <td>
                                            <asp:Label ID="txtFivePlnthAreaBuild4" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.3 Registered deed number
                                        </td>
                                        <td>
                                            <asp:Label ID="txtRegdDeedNo4" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.4 Area required for the factory as per the appraisal in Sq. Mts.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaReqdAppraisal4" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2.4 Date Of Registration
                                        </td>
                                        <td>
                                            <asp:Label ID="txtRegDate4" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.5 Area required for the factory as per the norms of TSPCB or any other state govt.
                                            department in Sq. Mts.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAreaReqdTSPCB4" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="padding: 5px; margin: 5px; text-align: center;">
                                            <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                                <tr>
                                                    <td colspan="4" style="font-weight: bold; text-align: left">
                                                        3 Details of duty paid and claimed
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        Nature Of Payment
                                                    </td>
                                                    <td>
                                                        Amount Paid
                                                    </td>
                                                    <td>
                                                        Amount Claimed
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        3.1
                                                    </td>
                                                    <td>
                                                        Cost of land in case of purchase in IE / IDA / IP
                                                    </td>
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
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: VII - Reimbursement of Power Cost</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left">
                                            1. For Expansion / Diversification
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left">
                                            1.1 Power utilised during previous 3 years
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="gvPowerIncentives" runat="server" AutoGenerateColumns="False" Font-Names="Verdana"
                                                Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Sl No.">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="FinancialYearNew" HeaderText="Financial year" />
                                                    <asp:BoundField DataField="UnitsConsumed" HeaderText="Units consumed" />
                                                    <asp:BoundField DataField="Amount" HeaderText="Amount paid in Rs" />
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left">
                                            2. Energy consumption details from DCP
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="gvEnergy" runat="server" AutoGenerateColumns="False" Font-Names="Verdana"
                                                Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Sl No.">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="FinancialYearNew" HeaderText="Financial year" />
                                                    <asp:BoundField DataField="F_UnitsConsumed" HeaderText="1st Half Year Units consumed" />
                                                    <asp:BoundField DataField="F_Amount" HeaderText="1st Half Year Amount paid in Rs" />
                                                    <asp:BoundField DataField="S_UnitsConsumed" HeaderText="2nd Half Year Units consumed" />
                                                    <asp:BoundField DataField="S_Amount" HeaderText="2nd Half Year Amount paid in Rs" />
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left">
                                            Amount Clamed :&nbsp;
                                            <asp:Label ID="txtClaimedAmount" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="trelectricitydutyunits" runat="server" visible="false">
                                            <td style="font-weight: bold; text-align: left">Electricity Duty Units :&nbsp;   
                                            <asp:Label ID="lblelectricitydutyunits" runat="server"></asp:Label></td>

                                        </tr>
                                        <tr id="trelectricitydutyamount" runat="server" visible="false">
                                            <td style="font-weight: bold; text-align: left">Electricity Duty Amount :&nbsp;   
                                            <asp:Label ID="lblelectricitydutyamount" runat="server"></asp:Label></td>

                                        </tr>
                                    <tr>
                                        <td>
                                        </td>
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
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: IX - Reimbursement of Interest Subsidy under Pavala Vaddi Scheme</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left">
                                            1. Interest paid details from DCP
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="gvInterestDCP" runat="server" AutoGenerateColumns="False" Font-Names="Verdana"
                                                Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Sl No.">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="FinancialYearNew" HeaderText="Financial year" />
                                                    <asp:BoundField DataField="IntrestPaid" HeaderText="Interest paid on Term Loan on half yearly basis" />
                                                    <asp:BoundField DataField="RateofIntrest" HeaderText="Rate of interest %" />
                                                    <asp:BoundField DataField="IntrestPenaltyPaid" HeaderText="Interest paid (Rs.) excluding penal interest" />
                                                    <asp:BoundField DataField="Eligible" HeaderText="Eligible % (Max 9%)" />
                                                    <asp:BoundField DataField="AmountClaimed" HeaderText="Amount claimed (Rs.)" />
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
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
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: XI - Reimbursement of Sales Tax</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left">
                                            1. Production Details preceeding 3 years before expansion / diversification
                                            <br />
                                            &nbsp;&nbsp;&nbsp; certified by the financial institution / CA
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="gvProductiondtls" runat="server" AutoGenerateColumns="False" Font-Names="Verdana"
                                                Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Sl No.">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="FinancialYearNew" HeaderText="Financial year" />
                                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                                    <asp:BoundField DataField="Unit" HeaderText="Unit" />
                                                    <asp:BoundField DataField="Value" HeaderText="Value In Rs" />
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left">
                                            2. Sales Tax paid since DCP as certified by CTO
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="gvSalesTax" runat="server" AutoGenerateColumns="False" Font-Names="Verdana"
                                                Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Sl No.">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="FinancialYearNew" HeaderText="Financial year" />
                                                    <asp:BoundField DataField="F_AmountPaid" HeaderText="1st Half Year Amount Paid in Rs." />
                                                    <asp:BoundField DataField="F_AmountClaimed" HeaderText="1st Half Year Amount claimed in Rs." />
                                                    <asp:BoundField DataField="S_AmountPaid" HeaderText="2nd Half Year Amount Paid in Rs." />
                                                    <asp:BoundField DataField="S_AmountClaimed" HeaderText="2nd Half Year Amount claimed in Rs." />
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center" id="divQualityCertification" runat="server" visible="false">
                                <table bgcolor="White" border="2px" style="font-family: Verdana; font-size: small;"
                                    width="100%">
                                    <tr>
                                        <td colspan="4" style="text-align: center; background-color: #0066FF; color: #FFFFFF;
                                            font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="White">ANNEXURE: XII - Reimbursement of Quality Certification Charges for Acquiring Certification Cost                                                    
                                            </asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="font-size: medium">
                                            <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">Details of ISO 9000 / ISO 14001 / HACCP Certificate</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1 Name of certifying agency
                                        </td>
                                        <td>
                                            <asp:Label ID="txtagencyName" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            2 Certificate Number
                                        </td>
                                        <td>
                                            <asp:Label ID="txtCertificatNumber" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            3 Date of Issue
                                        </td>
                                        <td>
                                            <asp:Label ID="txtDateofIssue" runat="server"></asp:Label>
                                        </td>
                                        <td valign="top">
                                            4 Period of Validity
                                        </td>
                                        <td>
                                            <asp:Label ID="txtPeriodofValidity" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <strong>Address of certifying agency</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            5 State
                                        </td>
                                        <td>
                                            <asp:Label ID="ddlstate" runat="server"></asp:Label>
                                        </td>
                                        <td valign="top">
                                            6 District
                                        </td>
                                        <td>
                                            <asp:Label ID="ddlDistrict" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            7 Mandal
                                        </td>
                                        <td>
                                            <asp:Label ID="ddlmandal" runat="server"></asp:Label>
                                        </td>
                                        <td valign="top">
                                            8 Village/Town
                                        </td>
                                        <td>
                                            <asp:Label ID="ddlvillage" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            9 Door No
                                        </td>
                                        <td>
                                            <asp:Label ID="txtdoorno" runat="server"></asp:Label>
                                        </td>
                                        <td valign="top">
                                            10 Pin Code
                                        </td>
                                        <td>
                                            <asp:Label ID="txtpincode" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="font-size: medium">
                                            <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="13px" ForeColor="Black">Subsidy already received for the certification in Rs.</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            11 From Central Government
                                        </td>
                                        <td>
                                            <asp:Label ID="txtFromCentralGovernment" runat="server"></asp:Label>
                                        </td>
                                        <td valign="top">
                                            12 From Financing Institution
                                        </td>
                                        <td>
                                            <asp:Label ID="txtFinancingInstitution" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            13 From State Government
                                        </td>
                                        <td>
                                            <asp:Label ID="txtFromStateGovernment" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            14 Amount spent in acquiring the certification
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAmountspentinacquiringthecertification" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                        </td>
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
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: XIII - Reimbursement on equipment purchased for cleaner production measures.</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left">
                                            1. Details of equipment purchased for the purpose
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                            <asp:GridView ID="gvCertificate" runat="server" AutoGenerateColumns="False" Font-Names="Verdana"
                                                Font-Size="12px" SkinID="gridviewSkin" Width="1000px" OnSelectedIndexChanged="gvCertificate_SelectedIndexChanged">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Sl No.">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                        </ItemTemplate>
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
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Amount of subsidy claimed in Rs.&nbsp;
                                            <asp:Label ID="txtsubsidyclaimed" runat="server" Style="font-weight: 700"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
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
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label41" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White"> ANNEXURE: XIV - Reimbursement of costs involved in Skill upgradation and training</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left" colspan="4">
                                            1. Training Undergone
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.1 Name of the training institute
                                        </td>
                                        <td>
                                            <asp:Label ID="txtagencyName1" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.2&nbsp;&nbsp; Duration of training
                                        </td>
                                        <td>
                                            <asp:Label ID="txtDurationoftraining" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.3 Name of the skill development programme
                                        </td>
                                        <td>
                                            <asp:Label ID="txtNameoftheskilldevelopmentprogramme" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.4&nbsp;&nbsp; Number of skilled employees trained by the industry
                                        </td>
                                        <td>
                                            <asp:Label ID="txtNumberskilledemployees" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.5 Expenditure incurred for training programme
                                        </td>
                                        <td>
                                            <asp:Label ID="txtExpenditureincurredfortrainingprogramme" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.6&nbsp;&nbsp; Amount claimed in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAmountclaimedinRs" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                        </td>
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
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: XIV - Claiming for SANCTION OF INDUSTRIAL INFRASTRUCTURE DEVELOPMENT FUND (IIDF) </asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left" colspan="4">
                                            1. IIDF Fund
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.1 Whether the unit is located in Industrial Area declared by the Governement
                                        </td>
                                        <td>
                                            <asp:Label ID="txtUnitLocatedinIndustArea" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.2 Justification for the location of the Industry, if it is located outside IA
                                            declared by the Government
                                        </td>
                                        <td>
                                            <asp:Label ID="txtJustLocation" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.3 Source of Finance
                                        </td>
                                        <td>
                                            <asp:Label ID="txtFinanceSource" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.4 Description of the infrastructure facilities required and its objectives
                                        </td>
                                        <td>
                                            <asp:Label ID="txtReqdInfraFacilities" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.5 Estimates of Infrastructure facilities
                                        </td>
                                        <td>
                                            <asp:Label ID="txtEstimatesInfra" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.6 How the proposed infrastructure is critical to the Industrial Enterprise
                                        </td>
                                        <td>
                                            <asp:Label ID="txtProposedInfraCritical" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.7 Name of the Chartered Engineer / Agency who prepared the estimates
                                        </td>
                                        <td>
                                            <asp:Label ID="txtCAName" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.8 Duration of the project
                                        </td>
                                        <td>
                                            <asp:Label ID="txtProjDuration" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.9 Measures proposed to maintain the infrastructure created & its maintenance cost
                                            per annum
                                        </td>
                                        <td>
                                            <asp:Label ID="txtMaintanCostAnnum" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.10 Amount claimed in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAmtClaimed" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                        </td>
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
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: XVI - Claiming Advance Subsidy for SC / ST Entrepreneurs</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left" colspan="4">
                                            1. Means of Finance
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.1 Total equity from promotors / share holders / partners to be brought in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtTotalEquity" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.2 Own capital in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtOwnCapital" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.3 Borrowed from outside Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtBorrowed" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.4 Advance Subsidy claimed in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAdvSubClaimed" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                        </td>
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
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: XVII - Claiming COAL SUBSIDY</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left" colspan="4">
                                            1. COAL SUBSIDY
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Financial Year
                                        </td>
                                        <td>
                                            <asp:Label ID="txtFinancialYear" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1st/2nd Half Year
                                        </td>
                                        <td>
                                            <asp:Label ID="txt1st2ndHalfYear" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Coal Quantity
                                        </td>
                                        <td>
                                            <asp:Label ID="txtCoalQuan" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            Unit Of Measurement
                                        </td>
                                        <td>
                                            <asp:Label ID="txtUnitOfMeasure" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Amount Paid
                                        </td>
                                        <td>
                                            <asp:Label ID="txtamntPaid" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            Amount Claimed
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAmntClaimed" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="TRFIRSTHALFYEAR_COAL" runat="server" visible="false">
                                        <td>
                                            1.1 1st Half Year Amount Paid in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txt1stHlfyramntpaid" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.2 1st Half Year Amount Claimed in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txt1stHlfyramntclaimed" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="TRSECONDHALFYEAR_COAL" runat="server" visible="false">
                                        <td>
                                            1.3 2nd Half Year Amount Paid in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txt2ndHlfyramntpaid" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.4 2nd Half Year Amount Claimed in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txt2ndHlfyramntclaimed" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left" colspan="4">
                                            1.1 Internal Power Generation
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Quantity
                                        </td>
                                        <td>
                                            <asp:Label ID="txtQuantity" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            Unit Of Measurement
                                        </td>
                                        <td>
                                            <asp:Label ID="txtUnitOfMeasurem" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left" colspan="4">
                                            1.2 Production Of Paper
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Quantity
                                        </td>
                                        <td>
                                            <asp:Label ID="txtPaperQuan" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            Unit Of Measurement
                                        </td>
                                        <td>
                                            <asp:Label ID="txtPaperUnitOfMeasurem" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center" id="DIVWOOD" runat="server" visible="false">
                                <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                    <tr>
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: XVIII - Claiming WOOD SUBSIDY</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left" colspan="4">
                                            1. WOOD SUBSIDY
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Financial Year
                                        </td>
                                        <td>
                                            <asp:Label ID="txtFinancialYearWood" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1st/2nd Half Year
                                        </td>
                                        <td>
                                            <asp:Label ID="txt1st2ndHlfYearWood" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1st/2nd Quarter
                                        </td>
                                        <td>
                                            <asp:Label ID="txt1st2ndQuarter" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                        </td>
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
                                        <td>
                                            1.1 1st Half Year 1st quarter Amount Paid in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txt1sthlfyr1stquaamntpaid" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.2 1st Half Year 1st quarter Amount Claimed in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txt1sthlfyr1stquaamntclaimed" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="TRFIRSTHALFYEARSECONDQUARTER_WOOD" runat="server" visible="false">
                                        <td>
                                            1.3 1st Half Year 2nd quarter Amount Paid in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txt1sthlfyr2ndquaamntpaid" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.4 1st Half Year 2nd quarter Amount Claimed in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txt1sthlfyr2ndquaamntclaimed" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="TRSECONDHALFYEARFIRSTQUARTER_WOOD" runat="server" visible="false">
                                        <td>
                                            1.5 2nd Half Year 1st quarter Amount Paid in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txt2ndhlfyr1stquaamntpaid" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.6 2nd Half Year 1st quarter Amount Claimed in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txt2ndhlfyr1stquaamntclaimed" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="TRSECONDHALFYEARSECONDQUARTER_WOOD" runat="server" visible="false">
                                        <td>
                                            1.7 2nd Half Year 2nd quarter Amount Paid in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txt2ndhlfyr2ndquaamntpaid" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            1.8 2nd Half Year 2nd quarter Amount Claimed in Rs.
                                        </td>
                                        <td>
                                            <asp:Label ID="txt2ndhlfyr2ndquaamntclaimed" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Is Previously Wood Sanctioned in Year
                                        </td>
                                        <td>
                                            <asp:Label ID="txtYesNo" runat="server"></asp:Label>
                                        </td>
                                        <td id="TDSANCTIONEDCLAIMSA" runat="server" visible="false">
                                            No of Quarters Previously Sanctioned In Year
                                        </td>
                                        <td id="TDSANCTIONEDCLAIMSB" runat="server" visible="false">
                                            <asp:Label ID="txtSanctionedYear" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="TRFIRSTQUARTER" runat="server" visible="false">
                                        <td>
                                            1st Quarter Quantity
                                        </td>
                                        <td>
                                            <asp:Label ID="txt1stQuaQuan" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr id="TRSECONDQUARTER" runat="server" visible="false">
                                        <td>
                                            2nd Quarter Quantity
                                        </td>
                                        <td>
                                            <asp:Label ID="txt2ndQuaQuan" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr id="TRTHIRDQUARTER" runat="server" visible="false">
                                        <td>
                                            3rd Quarter Quantity
                                        </td>
                                        <td>
                                            <asp:Label ID="txt3rdQuaQuan" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <%--<asp:Label ID="Label14" runat="server"></asp:Label>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            ADMT Quantity
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAdmtQuan" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            Unit Of Measurement
                                        </td>
                                        <td>
                                            <asp:Label ID="txtUnitOfMeasWood" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Amount paid
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAmntPaidWd" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            Amount Claimed
                                        </td>
                                        <td>
                                            <asp:Label ID="txtAmntClaimedWd" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold; text-align: left" colspan="4">
                                            1.1 Production Of Paper
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Quantity
                                        </td>
                                        <td>
                                            <asp:Label ID="txtQuantityP" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            Unit Of Measurement
                                        </td>
                                        <td>
                                            <asp:Label ID="txtUnitOfMeasurement" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <div align="center" id="DIVTRANSPORTDUTY" runat="server" visible="false">
                                <table border="2px" style="font-family: Verdana; font-size: small;">
                                    <tr>
                                        <td align="center" colspan="4" style="text-align: center; background-color: #0066FF;
                                            color: #FFFFFF; font-size: large; font-weight: bold;">
                                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">ANNEXURE: XIX - Claiming Transport Subsidy </asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="4" style="text-align: center; font-size: large; font-weight: bold;">
                                            <asp:GridView ID="gvcomponentdetails" runat="server" AutoGenerateColumns="False"
                                                Font-Names="Verdana" Font-Size="12px" SkinID="gridviewSkin" Width="100%">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Sl No.">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Partorcomponentorgoodsname" HeaderText="Details of Parts/Components/Goods Transported" />
                                                    <asp:BoundField DataField="InstalledCapacity" HeaderText="Quantity" />
                                                    <asp:BoundField DataField="Unit" HeaderText="Units" />
                                                    <asp:BoundField DataField="units_others" HeaderText="Other Units" />
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1 Means of Transportation(Third Party Logistics/Train/Own Trasnport)
                                        </td>
                                        <td>
                                            <asp:Label ID="lblthirdparty" Width="152px" runat="server"></asp:Label>
                                            <br />
                                            <asp:Label ID="lbltrain" runat="server"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblowntransport" runat="server"></asp:Label>
                                        </td>
                                        <td id="tdnameofthirdpartyagencty" runat="server" visible="false">
                                            Name of the third party transport agency
                                        </td>
                                        <td id="tdnameofthirdpartyagencty1" runat="server" visible="false">
                                            <asp:Label ID="lblnameofthirdpartagancy" runat="server" Visible="false"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        
                                        <td>
                                            2 Nature of Expenditure Incurred(waybill/Fuel Bill/Freight Charges)
                                        </td>
                                        <td>
                                            <asp:Label ID="lblwaybill" runat="server"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblfuelbill" runat="server"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblfreightcharges" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            3 Total Amount of Expenditure Incurred
                                        </td>
                                        <td>
                                            <asp:Label ID="lbltotalamountofexpenditure" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            4 Amount of Subsidy being claimed(INR)
                                        </td>
                                        <td>
                                            <asp:Label ID="lblamountofsubsidyclaimed" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            5 Total amount of subsidy already sanctioned till date for Transport Subsidy(INR)
                                        </td>
                                        <td>
                                            <asp:Label ID="lbltotalamountalreadysanctioned" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            6 Financial Year
                                        </td>
                                        <td>
                                            <asp:Label ID="lblfinancialyear" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            7 First or Second Half
                                        </td>
                                        <td>
                                            <asp:Label ID="lblfirstorsecondhalf" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                            <td>
                                <div align="center" id="divapmc" runat="server" visible="false">
                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                        <tr>
                                            <td align="center" colspan="4"
                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">Claiming APMC Subbsidy</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="font-weight: bold; text-align: left" colspan="4">Details of APMC fees paid</td>
                                        </tr>
                                        <tr>
                                            <td>1. APMC fee paid year</td>
                                            <td>
                                                <asp:Label ID="lblfeepaidyear" runat="server"></asp:Label>
                                            </td>
                                            <td>2. Amount paid in Rs.
                                            </td>
                                            <td>
                                                <asp:Label ID="lblamountpaid" runat="server"></asp:Label>
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
                                <div align="center" id="DIVCAPITALSUBSIDY" runat="server" visible="false">
                                    <table bgcolor="White" width="100%" border="2px" style="font-family: Verdana; font-size: small;">
                                        <tr>
                                            <td align="center" colspan="4"
                                                style="text-align: center; background-color: #0066FF; color: #FFFFFF; font-size: large; font-weight: bold;">
                                                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="White">Claiming Capital Subsidy</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="font-weight: bold; text-align: left" colspan="4">Details of Capital Subsidy</td>
                                        </tr>
                                        <tr>
                                            <td>1. Financial Year</td>
                                            <td>
                                                <asp:Label ID="lblfinancialyear_CS" runat="server"></asp:Label>
                                            </td>
                                            <td>2. 1st or 2nd half year.
                                            </td>
                                            <td>
                                                <asp:Label ID="lblfIirstorsecondhalfyear_CS" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3. Invest for the current financial Year</td>
                                            <td>
                                                <asp:Label ID="lblinvestment_cs" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                                
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
                        <td align="center" style="text-align: center">
                            <asp:Button ID="Button1" runat="server" Height="32px" Width="90px" CssClass="btn btn-warning"
                                Text=" Print " OnClientClick="javascript:CallPrint('Receipt')" />
                            <asp:Button ID="Button2" runat="server" Height="32px" Width="90px" CssClass="btn btn-warning"
                                Text=" Download Pdf " OnClick="Button2_Click" />
                            <%-- <input id="btnPrint" onclick="javascript: CallPrint('Receipt')" style="border-right: thin solid; bDownloaforder-top: thin solid; width: 80px; border-left: thin solid; border-bottom: thin solid"
                        type="button" value="Print" />--%>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="BtnPrevious" runat="server" CssClass="btn btn-danger" Height="32px"
                                Visible="false" TabIndex="10" Text="Previous" Width="90px" OnClick="BtnPrevious_Click" />
                            &nbsp; &nbsp;&nbsp;<asp:Button ID="BtnNext" runat="server" CssClass="btn btn-danger"
                                Height="32px" TabIndex="10" Text="Next" Width="90px" ValidationGroup="group"
                                OnClick="BtnNext_Click" />
                            <%--<a href="HomeDashboard.aspx">HOME</a>--%>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

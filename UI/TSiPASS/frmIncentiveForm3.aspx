<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true" CodeFile="frmIncentiveForm3.aspx.cs" Inherits="UI_TSiPASS_frmIncentiveForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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

        .style6 {
            width: 300px;
        }

        .style7 {
            color: #FF3300;
        }

        .style8 {
        }
    </style>

    <script type="text/javascript" language="javascript">

        function OpenPopup() {

            window.open("Lookups/LookupBDC.aspx", "List", "scrollbars=yes,resizable=yes,width=1000,height=650;display = block;position=absolute");

            return false;
        }
    </script>
    <%-- <script type="text/javascript">
        function showProgress() {
            var updateProgress = $get("<%= UpdateProgress.ClientID %>");
            updateProgress.style.display = "block";
        }
    </script>--%>

    <script type="text/javascript">
        function inputOnlyNumbers(evt) {
            var e = window.event || evt; // for trans-browser compatibility  
            var charCode = e.which || e.keyCode;
            if ((charCode > 45 && charCode < 58) || charCode == 8 || charCode == 9) {
                return true;
            }
            return false;
        }

    </script>

    <%--<asp:UpdatePanel ID="upd1" runat="server">
        <ContentTemplate>--%>
    <div align="left">
        <div class="row" align="left">
            <div class="col-lg-11">
                <div class="panel panel-primary">


                    <div class="panel-heading" style="background-color: #339966">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <asp:Label ID="lblheadTPRIDE" runat="server" Visible="false" Text="APPLICATION CUM VERIFICATION FOR CLAIMING INVESTMENT SUBSIDY UNDER T-PRIDE—TELANGANA STATE PROGRAM FOR 
                                        RAPID INCUBATION OF DALIT ENTREPRENEURS INCENTIVE SCHEME.(G.O.Ms.No.29 Industries and Commerce (IP & INF) Department. dated.29/11/2014)
                                        PART - A CLAIM">
                                    </asp:Label>
                                    <asp:Label ID="lblheadTIDEA" runat="server" Visible="false" Text="APPLICATION CUM VERIFICATION FOR CLAIMING REIMBURSEMENT OF STAMP DUTY
/ TRANSFER DUTY / MORTGAGE DUTY / LAND CONVESERSION CHARGES /
REIMBURSEMENT OF LAND COST PURCHASED IN IE/IDA/IP’s UNDER T-IDEA
(TELANGANA STATE INDUSTRIAL DEVELOPMENT AND ENTREPRENEUR
ADVANCEMENT) INCENTIVE SCHEME 2014">
                                    </asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>


                    <%--  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>--%>
                    <div class="panel-body">
                        <table align="center" cellpadding="10" cellspacing="5" style="width: 100%">

                            <tr>
                                <td style="padding: 5px; margin: 5px; text-align: left; font-weight: bold" colspan="8">1. Energy consumption details from DCP</td>
                            </tr>
                            <tr>
                                <td style="padding: 5px; margin: 5px; text-align: left; font-weight: bold" colspan="8">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="13px"
                                        ForeColor="Green" Style="position: static"></asp:Label>
                                </td>
                            </tr>
                            <tr id="trEnergy1" runat="server">
                                <td style="padding: 5px; margin: 5px" valign="top">
                                    <table style="width: 100%; font-weight: bold;">
                                        <tr>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">1.1</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label11" runat="server">Financial Year<font color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:DropDownList ID="ddlFinYearEnergy" runat="server" class="form-control txtbox" Height="33px" Width="180px">
                                                    <asp:ListItem>--Select--</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">1.2</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label16" runat="server"> 1st/2nd half Year<font color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:DropDownList ID="ddlFin1stOr2ndHalfyear" runat="server" class="form-control txtbox" Height="33px" Width="180px" AutoPostBack="True" OnSelectedIndexChanged="ddlFin1stOr2ndHalfyear_SelectedIndexChanged">
                                                    <asp:ListItem Value="--Select--" Text="--Select--"></asp:ListItem>
                                                    <asp:ListItem Value="1" Text="1st"></asp:ListItem>
                                                    <asp:ListItem Value="2" Text="2nd"></asp:ListItem>
                                                    <asp:ListItem Value="3" Text="Both"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr id="trFin1stHalfYear" runat="server" visible="false">
                                            <td style="padding: 5px; margin: 5px; text-align: left;">1.3</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label12" runat="server">1st half Year Units Consumed<font color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:TextBox ID="txt1stHalfUnitConsumed" runat="server" class="form-control txtbox" onkeypress="return inputOnlyNumbers(event)"
                                                    Height="28px" MaxLength="40" TabIndex="36" Width="180px"></asp:TextBox>
                                            </td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">1.4</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label14" runat="server">1st half Year Amount Paid <br />(in Rs)<font color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:TextBox ID="txt1stHalfAmountPaid" runat="server" class="form-control txtbox" onkeypress="return inputOnlyNumbers(event)"
                                                    Height="28px" MaxLength="40" TabIndex="36" Width="180px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr id="trFin2ndHalfYear" runat="server" visible="false">
                                            <td style="padding: 5px; margin: 5px; text-align: left;">1.5</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label13" runat="server">2nd half Year Units Consumed<font color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:TextBox ID="txt2ndHalfUnitConsumed" runat="server" class="form-control txtbox" onkeypress="return inputOnlyNumbers(event)"
                                                    Height="28px" MaxLength="40" TabIndex="36" Width="180px"></asp:TextBox>
                                            </td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">1.6</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label15" runat="server">2nd half Year Amount Paid (in Rs)<font color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:TextBox ID="txt2ndHalfAmountPaid" runat="server" class="form-control txtbox" onkeypress="return inputOnlyNumbers(event)"
                                                    Height="28px" MaxLength="40" TabIndex="36" Width="180px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr id="tr1" runat="server">
                                            <td align="center" colspan="4"></td>
                                            <td align="center" colspan="4" style="height: 50px">
                                                <asp:Button ID="btnEnergyAdd" runat="server" CssClass="btn btn-xs btn-warning" Height="28px" TabIndex="39" Text="Add New" Width="72px" OnClick="btnEnergyAdd_Click" />
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="btnEnergyClear" runat="server" CausesValidation="False" CssClass="btn btn-xs btn-danger" Height="28px" TabIndex="40" Text="Clear" ToolTip="To Clear the Screen" Width="73px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="trEnergy2" runat="server">
                                <td style="padding: 5px; margin: 5px" valign="top" align="center" colspan="3">
                                    <asp:GridView ID="gvEnergy" runat="server" AutoGenerateColumns="False"
                                        BorderColor="#003399" BorderStyle="Solid" BorderWidth="1px" CellPadding="4"
                                        CssClass="GRD" ForeColor="#333333" GridLines="Both" Visible="false"
                                        Width="95%" DataKeyNames="intLineofActivityMid" OnRowDataBound="gvEnergy_RowDataBound" OnRowDeleting="gvEnergy_RowDeleting">
                                        <RowStyle BackColor="#ffffff" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sl.No">
                                                <ItemTemplate>
                                                    <asp:Label ID="Slno" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="FinancialYearId" HeaderText="Financial YearId" Visible="false" />
                                            <asp:BoundField DataField="FinancialYear" HeaderText="Financial Year" />
                                            <asp:BoundField DataField="Fin1stOr2ndHalfYear" HeaderText="1st or 2nd Half Financial Year" />
                                            <asp:BoundField DataField="1stUnitsConsumed" HeaderText="1st half Year Units Consumed" />
                                            <asp:BoundField DataField="1stAmountPaid" HeaderText="1st half Year Amount Paid (in Rs)" />
                                            <asp:BoundField DataField="2ndUnitsConsumed" HeaderText="2nd half Year Units Consumed" />
                                            <asp:BoundField DataField="2ndAmountPaid" HeaderText="2nd half Year Amount Paid (in Rs)" />
                                            <asp:BoundField DataField="Created_by" HeaderText="Created By" Visible="False" />
                                            <asp:BoundField DataField="IncentiveId" HeaderText="Incentive Id" Visible="False" />
                                            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                                            <asp:CommandField HeaderText="Edit" ShowSelectButton="True" Visible="False" />
                                        </Columns>
                                        <HeaderStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                        <AlternatingRowStyle BackColor="#D5E6F9" ForeColor="#284775" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Names="Arial" Font-Size="12px" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <FooterStyle HorizontalAlign="Center" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Names="Arial" Font-Size="9px" />
                                    </asp:GridView>
                                </td>
                            </tr>

                            <tr id="trenergyview" runat="server" visible="false">
                                <td style="padding: 5px; margin: 5px" valign="top" align="center" colspan="3">
                                    <asp:GridView ID="gvenergyview" runat="server" AutoGenerateColumns="False"
                                        BorderColor="#003399" BorderStyle="Solid" BorderWidth="1px" CellPadding="4"
                                        CssClass="GRD" ForeColor="#333333" GridLines="Both" Width="95%">
                                        <RowStyle BackColor="#ffffff" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sl.No">
                                                <ItemTemplate>
                                                    <asp:Label ID="Slno" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="FinancialYearNew" HeaderText="Financial Year" />
                                            <asp:BoundField DataField="Fin1stOr2ndHalfYear" HeaderText="1st or 2nd Half Financial Year" />
                                            <asp:BoundField DataField="F_UnitsConsumed" HeaderText="1st half Year Units Consumed" />
                                            <asp:BoundField DataField="F_Amount" HeaderText="1st half Year Amount Paid (in Rs)" />
                                            <asp:BoundField DataField="S_UnitsConsumed" HeaderText="2nd half Year Units Consumed" />
                                            <asp:BoundField DataField="S_Amount" HeaderText="2nd half Year Amount Paid (in Rs)" />
                                        </Columns>
                                        <HeaderStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                        <AlternatingRowStyle BackColor="#D5E6F9" ForeColor="#284775" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Names="Arial" Font-Size="12px" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <FooterStyle HorizontalAlign="Center" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Names="Arial" Font-Size="9px" />
                                    </asp:GridView>
                                </td>
                            </tr>

                            <tr>
                                <td style="padding: 5px; margin: 5px; text-align: left; font-weight: bold" colspan="8"></td>

                            </tr>
                            <tr>
                                <td colspan="8">
                                    <table style="width: 55%">
                                        <tr>
                                            <td style="padding: 5px; margin: 5px; text-align: left; font-weight: bold">2. Amount claimed :                                                      
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtClaimedAmount" runat="server" Width="150px" class="form-control txtbox" onkeypress="return inputOnlyNumbers(event)"></asp:TextBox></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="tr2" runat="server">
                                <td style="padding: 5px; margin: 5px" valign="top">
                                    <table id="tblExpansionDivers" runat="server" visible="false" style="width: 100%; font-weight: bold;">
                                        <tr>
                                            <td style="padding: 5px; margin: 5px; text-align: left; font-weight: bold" colspan="8">3.Power utilised during previous 3 years before this Expansion / Diversification Project.</td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px; margin: 5px; text-align: left; font-weight: bold" colspan="8">
                                                <%--<asp:Label ID="Label1" runat="server"></asp:Label>--%>
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="13px"
                                                    ForeColor="Green" Style="position: static"></asp:Label>
                                            </td>

                                        </tr>

                                        <tr id="trpower1" runat="server">
                                            <td style="padding: 5px; margin: 5px" valign="top">
                                                <table style="width: 100%; font-weight: bold;">
                                                    <tr>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">3.1</td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:Label ID="Label3" runat="server">Financial year<font color="red">*</font></asp:Label>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:DropDownList ID="ddlFinYearPower" runat="server" class="form-control txtbox" Height="33px" Width="180px">
                                                                <asp:ListItem>--Select--</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">3.2</td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:Label ID="Label9" runat="server">Units Consumed<font color="red">*</font></asp:Label>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:TextBox ID="txtUnitsConsumed" runat="server" class="form-control txtbox" onkeypress="return inputOnlyNumbers(event)"
                                                                Height="28px" MaxLength="40" TabIndex="36" Width="180px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 5px; margin: 5px">3.3</td>
                                                        <td>
                                                            <asp:Label ID="Label10" runat="server" CssClass="LBLBLACK" Width="165px">Amount Paid (in Rs)<font color="red">*</font></asp:Label>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:</td>
                                                        <td style="padding: 5px; margin: 5px">
                                                            <asp:TextBox ID="txtAmountPaid" runat="server" class="form-control txtbox" onkeypress="return inputOnlyNumbers(event)"
                                                                Height="28px" MaxLength="40" TabIndex="37" ValidationGroup="group" Width="180px"></asp:TextBox>
                                                        </td>
                                                        <td style="height: 50px"></td>
                                                        <td align="center">
                                                            <asp:Button ID="btnPowerAdd" runat="server" CssClass="btn btn-xs btn-warning" Height="28px" TabIndex="39" Text="Add New" Width="72px" OnClick="btnPowerAdd_Click" />
                                                        </td>
                                                        <td align="right">&nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="btnPowerClear" runat="server" CausesValidation="False" CssClass="btn btn-xs btn-danger" Height="28px" TabIndex="40" Text="Clear" ToolTip="To Clear the Screen" Width="73px" />
                                                        </td>
                                                        <td align="left">&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="trpower2" runat="server">
                                <td style="padding: 5px; margin: 5px" valign="top" align="center" colspan="3">
                                    <asp:GridView ID="gvpower" runat="server" AutoGenerateColumns="False"
                                        BorderColor="#003399" BorderStyle="Solid" BorderWidth="1px" CellPadding="4"
                                        CssClass="GRD" ForeColor="#333333" GridLines="Both" Visible="false"
                                        Width="65%" DataKeyNames="intLineofActivityMid" OnRowDataBound="gvpower_RowDataBound" OnRowDeleting="gvpower_RowDeleting">
                                        <RowStyle BackColor="#ffffff" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sl.No">
                                                <ItemTemplate>
                                                    <asp:Label ID="Slno" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="FinancialYearId" HeaderText="Financial YearId" Visible="false" />
                                            <asp:BoundField DataField="FinancialYear" HeaderText="Financial Year" />
                                            <asp:BoundField DataField="UnitsConsumed" HeaderText="Units Consumed" />
                                            <asp:BoundField DataField="AmountPaid" HeaderText="Amount Paid (in Rs)" />
                                            <asp:BoundField DataField="Created_by" HeaderText="Created By" Visible="False" />
                                            <asp:BoundField DataField="IncentiveId" HeaderText="Incentive Id" Visible="False" />
                                            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                                            <asp:CommandField HeaderText="Edit" ShowSelectButton="True" Visible="False" />
                                        </Columns>
                                        <HeaderStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                        <AlternatingRowStyle BackColor="#D5E6F9" ForeColor="#284775" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Names="Arial" Font-Size="12px" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <FooterStyle HorizontalAlign="Center" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Names="Arial" Font-Size="9px" />
                                    </asp:GridView>
                                </td>
                            </tr>

                            <tr id="trpowerview" runat="server" visible="false">
                                <td style="padding: 5px; margin: 5px" valign="top" align="center" colspan="3">
                                    <asp:GridView ID="gvpowerview" runat="server" AutoGenerateColumns="False"
                                        BorderColor="#003399" BorderStyle="Solid" BorderWidth="1px" CellPadding="4"
                                        CssClass="GRD" ForeColor="#333333" GridLines="Both" Width="65%">
                                        <RowStyle BackColor="#ffffff" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sl.No">
                                                <ItemTemplate>
                                                    <asp:Label ID="Slno" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="FinancialYearNew" HeaderText="Financial Year" />
                                            <asp:BoundField DataField="UnitsConsumed" HeaderText="Units Consumed" />
                                            <asp:BoundField DataField="Amount" HeaderText="Amount Paid (in Rs)" />
                                        </Columns>
                                        <HeaderStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                        <AlternatingRowStyle BackColor="#D5E6F9" ForeColor="#284775" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Names="Arial" Font-Size="12px" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <FooterStyle HorizontalAlign="Center" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Names="Arial" Font-Size="9px" />
                                    </asp:GridView>
                                </td>
                            </tr>

                            <tr id="TRELECTRICITYDUTY" runat="server" visible="false">
                                <td style="padding: 5px; margin: 5px" valign="top">
                                    <table style="width: 100%; font-weight: bold;">
                                        
                                        <tr >
                                            <td style="padding: 5px; margin: 5px; text-align: left;"></td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label19" runat="server">Electricity Duty Units Consumed<font color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:TextBox ID="txtelectricitydutyunitsconsumed" runat="server" class="form-control txtbox" oncopy="return false" onpaste="return false" oncut="return false"  onkeypress="return inputOnlyNumbers(event)" OnTextChanged="txtelectricitydutyunitsconsumed_TextChanged"  AutoPostBack="true"
                                                    Height="28px" MaxLength="40" TabIndex="36" Width="180px"></asp:TextBox>
                                            </td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;"></td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;" class="auto-style1">
                                                <asp:Label ID="Label20" runat="server">Electricity Duty Amount<br />(in Rs)<font color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:</td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:TextBox ID="txtelectricitydutyamount" runat="server" class="form-control txtbox" onkeypress="return inputOnlyNumbers(event)"
                                                    Height="28px" MaxLength="40" TabIndex="36" Width="180px" Enabled="false"></asp:TextBox>
                                            </td>
                                        </tr>
                                        
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <table style="width: 100%">
                        <tr>
                            <td style="padding: 5px; margin: 5px; text-align: left; font-weight: bold;" colspan="8">Enclosures</td>
                        </tr>
                        <tr>
                            <td colspan="10">
                                <table style="width: 100%">
                                    <tr id="trallreqCheckSlipdocs" runat="server" visible="false">
                                        <td style="padding: 3px; margin: 3px; text-align: left;">1. All required documents as per check slip during 1st claim</td>
                                        <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="CS"
                                                Height="28px" />

                                            <asp:HyperLink ID="lblFileName" runat="server" CssClass="LBLBLACK" Width="165px" Visible="false"
                                                Target="_blank"></asp:HyperLink>
                                            <br />
                                            <asp:Label ID="Label444" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td style="padding: 5px; margin: 5px; width: 100px;" valign="top">
                                            <asp:Button ID="BtnSave3" runat="server" CssClass="btn btn-xs btn-warning"
                                                Height="28px" TabIndex="10" Text="Upload"
                                                Width="72px" OnClick="BtnSave3_Click" />
                                        </td>
                                    </tr>


                                    <tr>
                                        <td colspan="3" style="padding: 3px; margin: 3px; text-align: left; font-weight: bold">During all subsequent claims</td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 3px; margin: 3px; text-align: left;">1. Attested copy of power bills</td>
                                        <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                            <asp:FileUpload ID="FileUpload3" runat="server" CssClass="CS"
                                                Height="28px" />

                                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="LBLBLACK" Width="165px" Visible="false"
                                                Target="_blank"></asp:HyperLink>
                                            <br />
                                            <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td style="padding: 5px; margin: 5px; width: 10px;" valign="top">
                                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-xs btn-warning"
                                                Height="28px" TabIndex="10" Text="Upload"
                                                Width="72px" OnClick="Button2_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 3px; margin: 3px; text-align: left;">2. Attested copy of receipts from DISCOM</td>
                                        <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                            <asp:FileUpload ID="FileUpload4" runat="server" CssClass="CS"
                                                Height="28px" />

                                            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="LBLBLACK" Width="165px" Visible="false"
                                                Target="_blank"></asp:HyperLink>
                                            <br />
                                            <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td style="padding: 5px; margin: 5px; width: 10px;" valign="top">
                                            <asp:Button ID="Button3" runat="server" CssClass="btn btn-xs btn-warning"
                                                Height="28px" TabIndex="10" Text="Upload"
                                                Width="72px" OnClick="Button3_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 3px; margin: 3px; text-align: left;">3. Self certification as per format<br />
                                            <asp:HyperLink ID="HypLnkSelfCertificationFormat" runat="server" Visible="true" CssClass="LBLBLACK" Width="300px" Target="_blank" NavigateUrl="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/docs/Self Certification Format.pdf">Click here for Prescribed Format</asp:HyperLink>
                                        </td>
                                        <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                            <asp:FileUpload ID="FileUpload5" runat="server" CssClass="CS"
                                                Height="28px" />

                                            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="LBLBLACK" Width="165px" Visible="false"
                                                Target="_blank"></asp:HyperLink>
                                            <br />
                                            <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td style="padding: 5px; margin: 5px; width: 10px;" valign="top">
                                            <asp:Button ID="Button4" runat="server" CssClass="btn btn-xs btn-warning"
                                                Height="28px" TabIndex="10" Text="Upload"
                                                Width="72px" OnClick="Button4_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 3px; margin: 3px; text-align: left;">4. Attested copy of Valid CFO</td>
                                        <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                            <asp:FileUpload ID="FileUpload6" runat="server" class="form-control txtbox" CssClass="CS"
                                                Height="28px" />

                                            <asp:HyperLink ID="HyperLink5" runat="server" CssClass="LBLBLACK" Width="165px" Visible="false"
                                                Target="_blank"></asp:HyperLink>
                                            <br />
                                            <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td style="padding: 5px; margin: 5px; width: 10px;" valign="top">
                                            <asp:Button ID="Button5" runat="server" CssClass="btn btn-xs btn-warning"
                                                Height="28px" TabIndex="10" Text="Upload"
                                                Width="72px" OnClick="Button5_Click" />
                                        </td>
                                    </tr>
                                    <tr id="trExpanDiversPower" runat="server" visible="false">
                                        <td style="padding: 3px; margin: 3px; text-align: left;">5. Power utilisation particulars of previous 3 years certified by CA i.r.o expansion / diversification
                                            <br />
                                            (Rar or Pdf Files) 
                                        </td>
                                        <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="CS"
                                                Height="28px" />

                                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="LBLBLACK" Width="165px" Visible="false"
                                                Target="_blank"></asp:HyperLink>
                                            <br />
                                            <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td style="padding: 5px; margin: 5px; width: 10px;" valign="top">
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-xs btn-warning"
                                                Height="28px" TabIndex="10" Text="Upload"
                                                Width="72px" OnClick="Button1_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="8" style="padding: 5px; margin: 5px; text-align: center;"></td>
                        </tr>
                        <tr>
                            <td colspan="8" style="padding: 5px; margin: 5px; text-align: left;">
                                <b>DECLARATION :  </b>
                                <br />
                                I / We hereby confirm that to the best of our knowledge and belief, information given herein and other
papers enclosed are true and correct in all respects. We further undertake to substantiate the particulars
about promoter(s) and other details with documentary evidence as and when called for.<br />
                                I/We hereby agree that I/We shall forthwith repay the amount to me/us under scheme, if the amount of
Reimbursement of power tariff is found to be disbursed in excess of the amount actually admissible
whatsoever the reason.<br />
                                Certified that this amount has not been claimed earlier. In case of a wrong claim I shall repay the entire
amount of concession(s) availed under
                                <asp:Label ID="lblscheme" runat="server"></asp:Label>
                                &nbsp;in Lump sum with prevailing interest.

                            </td>
                        </tr>
                        <tr>
                            <td colspan="8" style="padding: 5px; margin: 5px; text-align: center;"></td>
                        </tr>
                        <tr>
                            <td align="center" style="padding: 5px; margin: 5px; text-align: center;">
                                <asp:Button ID="BtnSave" runat="server" CssClass="btn btn-primary" Height="32px" TabIndex="10" Text="Submit" ValidationGroup="group" Width="90px" OnClick="BtnSave_Click" />
                                &nbsp;
                                                    <asp:Button ID="BtnDelete0" runat="server" CausesValidation="False" CssClass="btn btn-danger" Height="32px" OnClick="BtnDelete0_Click" TabIndex="10" Text="Previous" Width="90px" />
                                &nbsp;&nbsp;<asp:Button ID="BtnDelete" runat="server" CssClass="btn btn-danger" Height="32px" OnClick="BtnClear0_Click" TabIndex="10" Text="Next" ValidationGroup="group" Width="90px" Enabled="false" />
                                &nbsp;<asp:Button ID="BtnClear" runat="server" CausesValidation="False" CssClass="btn btn-warning" Height="32px" OnClick="BtnClear_Click" TabIndex="10" Text="ClearAll" ToolTip="To Clear  the Screen" Width="90px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="padding: 5px; margin: 5px">


                                <div id="success" runat="server" visible="false" class="alert alert-success">
                                    <a href="AddQualification.aspx" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                </div>


                                <div id="Failure" runat="server" visible="false" class="alert alert-danger">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <strong>Warning!</strong>
                                    <asp:Label ID="lblmsg0" runat="server"></asp:Label>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <asp:HiddenField ID="hdfID" runat="server" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="group" />
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server"
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="child" />
                    <asp:HiddenField ID="hdfFlagID" runat="server" />
                    <asp:HiddenField ID="hdfFlagID0" runat="server" />
                    <asp:HiddenField ID="hdfpencode" runat="server" />
                    <%--</div>--%>
                </div>
            </div>
        </div>

    </div>
    <%-- <asp:UpdateProgress ID="UpdateProgress" runat="server" AssociatedUpdatePanelID="upd1">
                <ProgressTemplate>
                    <div class="update">
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>--%>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <%--  </ContentTemplate>
    </asp:UpdatePanel>--%>
</asp:Content>


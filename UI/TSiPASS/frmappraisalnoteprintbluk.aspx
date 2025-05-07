<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true" CodeFile="frmappraisalnoteprintbluk.aspx.cs" Inherits="UI_TSiPASS_frmappraisalnoteprintbluk" %>

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
            background-image: url("../../Images/ajax-loaderblack.gif"); /*background-image: url("Images/spinner_60.gif");*/
            background-position: center center;
            background-repeat: no-repeat; /*background-color: #e4e4e6;*/
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

        function selectGridChkAll(chkAll) {//debugger
            var grdDetails = chkAll.parentElement.parentElement.parentElement.parentElement
            if (grdDetails != null) {
                if (chkAll.checked == true) {
                    for (i = 0; i < grdDetails.rows.length; i++) {
                        if (grdDetails.rows[i].cells[1].children[0] != null) {
                            grdDetails.rows[i].cells[1].children[0].checked = true;
                        }
                    }
                }
                else {
                    for (i = 0; i < grdDetails.rows.length; i++) {
                        if (grdDetails.rows[i].cells[1].children[0] != null) {
                            grdDetails.rows[i].cells[1].children[0].checked = false;
                        }
                    }
                }
            }
        }

        function selectGridChkAlltest() {//debugger
            //alert('test');
            var grdDetails = chkAll.parentElement.parentElement.parentElement.parentElement
            if (grdDetails != null) {
                for (i = 0; i < grdDetails.rows.length; i++) {
                    if (grdDetails.rows[i].cells[1].children[0] != null) {
                        grdDetails.rows[i].cells[1].children[0].checked = true;
                    }
                }
            }
        }

    </script>
    <link href="assets/css/basic.css" rel="stylesheet" />
    <asp:UpdatePanel ID="upd1" runat="server">
        <ContentTemplate>
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
                                            <tr runat="server" id="trBetweenDates" visible="true">
                                                <td style="padding: 5px; margin: 5px">From Date:
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtFromDate" runat="server" class="form-control txtbox" Height="28px"
                                                        MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group"
                                                        Width="125px"></asp:TextBox>
                                                    <%--<cc1:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd-MM-yyyy" TargetControlID="txtFromDate">
                                                </cc1:CalendarExtender>--%>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">To Date:
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtTodate" runat="server" class="form-control txtbox" Height="28px"
                                                        MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group"
                                                        Width="125px"></asp:TextBox>
                                                    <%-- <cc1:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd-MM-yyyy" TargetControlID="txtTodate">
                                                </cc1:CalendarExtender>--%>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">Category:
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlcategory" runat="server" class="form-control txtbox" Height="33px"
                                                                    TabIndex="1" Width="180px">
                                                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                                                    <asp:ListItem Value="1">General</asp:ListItem>
                                                                    <asp:ListItem Value="3">SC</asp:ListItem>
                                                                    <asp:ListItem Value="4">ST</asp:ListItem>
                                                                    <asp:ListItem Value="9">PHC</asp:ListItem>
                                                                </asp:DropDownList>
                                                   
                                                </td>
                                                <td style="padding: 5px; margin: 5px">Type of Incentive:
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlincentivetype" runat="server" class="form-control txtbox" Height="33px"
                                                                    TabIndex="1" Width="180px">
                                                                    <asp:ListItem Value="1">Pavalla vaddi</asp:ListItem>
                                                                    <asp:ListItem Value="3">Power Cost Reimbursement</asp:ListItem>
                                                                    <asp:ListItem Value="5">Sales TAX(VAT/GST/SGST) Reimbursement</asp:ListItem>
                                                                    <asp:ListItem Value="6">Investment Subsidy</asp:ListItem>
                                                                    <asp:ListItem Value="7">Industrial Infrastructure Development Fund(IIDF)</asp:ListItem>
                                                                    <asp:ListItem Value="11">Reimbursement of all expenses incurred for Quality Certification/Patent Registration</asp:ListItem>
                                                                    <asp:ListItem Value="14">Reimbursement of stamp Duty/Transfer Duty</asp:ListItem>
                                                                    <asp:ListItem Value="15">Reimbursement of Mortgage</asp:ListItem>
                                                                    <asp:ListItem Value="16">Reimbursement of Land Conversion</asp:ListItem>
                                                                    <asp:ListItem Value="17">Reimbursement of Land Cost</asp:ListItem>
                                                                </asp:DropDownList>
                                                </td>
                                                <td>
                                                   <asp:Button ID="btngetdetails" CssClass="btn btn-primary" runat="server" Text="GetDetails"
                                                        OnClick="btngetdetails_Click" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; width: 100%" valign="top" colspan="12">
                                                    <div style="width: 100%">
                                                        <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="false" CellPadding="4"
                                                            CssClass="GRD" ForeColor="#333333" Height="62px" PageSize="15" ShowFooter="false"
                                                            Width="100%" CellSpacing="4">
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
                                                                <asp:TemplateField HeaderText="&lt;input id='chkAll' type='checkbox' ONCLICK='selectGridChkAll(this);'text='Select All'&gt;">
                                                                    <ItemTemplate>
                                                                        <asp:CheckBox ID="chkSelect" runat="server" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <%-- <asp:TemplateField>
                                                                    <HeaderTemplate>
                                                                        Select
                                                                        <asp:CheckBox ID="chkAll" OnCheckedChanged="chkAll_CheckedChanged" AutoPostBack="true"
                                                                            runat="server" />
                                                                    </HeaderTemplate>
                                                                    <ItemTemplate>
                                                                        <asp:CheckBox ID="chkRow" runat="server" Checked="false" />
                                                                    </ItemTemplate>
                                                                    <ItemStyle Width="50px" />
                                                                </asp:TemplateField>--%>
                                                                <asp:BoundField DataField="lblApplicationno" ItemStyle-HorizontalAlign="left" HeaderText="Online Application Number">
                                                                    <ItemStyle HorizontalAlign="left"></ItemStyle>
                                                                </asp:BoundField>
                                                                <asp:BoundField DataField="txtunitnames" ItemStyle-HorizontalAlign="left" HeaderText="Name of Unit & Address">
                                                                    <ItemStyle HorizontalAlign="left"></ItemStyle>
                                                                </asp:BoundField>
                                                                <asp:BoundField DataField="IncentiveName" ItemStyle-HorizontalAlign="left" HeaderText="Incentive Type">
                                                                    <ItemStyle HorizontalAlign="left"></ItemStyle>
                                                                </asp:BoundField>
                                                                <asp:BoundField DataField="Caste_Name" ItemStyle-HorizontalAlign="left" HeaderText="Category">
                                                                    <ItemStyle HorizontalAlign="left"></ItemStyle>
                                                                </asp:BoundField>
                                                                <%--<asp:BoundField DataField="DateofReceipt" ItemStyle-HorizontalAlign="left" HeaderText="Date of Recieved from JD">
                                                                    <ItemStyle HorizontalAlign="left"></ItemStyle>
                                                                </asp:BoundField>--%>

                                                                 <asp:BoundField DataField="Remarks" ItemStyle-HorizontalAlign="left" HeaderText="ADDL_RECON_AMOUNT">
                                                                    <ItemStyle HorizontalAlign="left"></ItemStyle>
                                                                </asp:BoundField>

                                                                 <asp:BoundField DataField="EnterperIncentiveID" ItemStyle-HorizontalAlign="left" HeaderText="EnterperIncentiveID">
                                                                    <ItemStyle HorizontalAlign="left"></ItemStyle>
                                                                </asp:BoundField>

                                                                 <asp:BoundField DataField="IncentiveId" ItemStyle-HorizontalAlign="left" HeaderText="IncentiveId">
                                                                    <ItemStyle HorizontalAlign="left"></ItemStyle>
                                                                </asp:BoundField>                                                                
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
                                                <td colspan="12" style="padding: 5px; margin: 5px" align="center" class="style7"
                                                    id="tblselection" runat="server">
                                                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Submit"
                                                        OnClick="Button1_Click" />
                                                    &nbsp;&nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="12">
                                                    <asp:HiddenField ID="hdfID" runat="server" />
                                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                                        ShowSummary="False" ValidationGroup="group" />
                                                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True"
                                                        ShowSummary="False" ValidationGroup="child" />
                                                    <asp:HiddenField ID="hdfFlagID" runat="server" />
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="padding: 5px; margin: 5px; text-align: center;">&nbsp;&nbsp;&nbsp;
                                </td>
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
            <asp:UpdateProgress ID="UpdateProgress" runat="server" AssociatedUpdatePanelID="upd1">
                <ProgressTemplate>
                    <div class="update">
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>


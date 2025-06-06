<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true" CodeFile="frmDepartmentRenewalPaymentDetails.aspx.cs" Inherits="UI_TSiPASS_frmDepartmentRenewalPaymentDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>



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
            border: 1px solid #ffffff;
            color: #0E2A46;
            vertical-align: middle;
            text-align: center;
            height: 25px;
            width: 50px;
            padding: 10px;
            font-size: 12px;
            font-weight: bold;
            text-transform: capitalize;
            font-family: Verdana;
            BACKGROUND-IMAGE: url('../../Resource/Styles/images/bg_blue_grd.gif');
        }

        .GRDITEM {
            /*background-color: WHITE;*/
            color: black;
            font-size: 12px;
            font-weight: normal;
            font-family: Verdana;
            padding: 10px;
            /*text-decoration:none;*/
            /*border-color:#013161;*/
            /*border-style:solid;*/
            text-transform: uppercase;
            /*border-width:1px;*/
            /*height:23px;*/
            /*text-indent:5px;*/
            /*BACKGROUND-IMAGE: url(../images/grid_bg_.gif);*/
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
    </style>

    <script type="text/javascript" language="javascript">

        function OpenPopup() {

            window.open("Lookups/LookupBDC.aspx", "List", "scrollbars=yes,resizable=yes,width=1000,height=650;display = block;position=absolute");

            return false;
        }
    </script>
    <script type="text/javascript">
        function txtDOB() {
            var trdat = document.getElementById("ctl00_ContentPlaceHolder1_txtDOB").value;
            if (trdat != "" || trdat != null || trdat != '') {
                var tranDate = isValidDate(document.getElementById("ctl00_ContentPlaceHolder1_txtDOB").value, 'Date of Formation ');
                if (tranDate == false) {
                    document.getElementById("ctl00_ContentPlaceHolder1_txtDOB").focus();
                    document.getElementById("ctl00_ContentPlaceHolder1_txtDOB").value = '';
                    return false;
                }
            }
        }
    </script>

    <asp:UpdatePanel ID="upd1" runat="server">
<ContentTemplate>
    

    <div align="left">
        <ol class="breadcrumb">
            You are here
        &nbsp;!&nbsp; &nbsp; &nbsp; 
                            <li>
                                <i class="fa fa-dashboard"></i><a href="Home.aspx"></a>
                            </li>
            <li class="">
                <i class="fa fa-fw fa-edit">CAF</i>
            </li>
            <li class="active">
                <i class="fa fa-edit"></i><a href="#">Departments Payments</a>

            </li>
        </ol>
    </div>
    <div align="left">
        <div class="row" align="left">
            <div class="col-lg-11">
                <div class="panel panel-primary">
                    <div class="panel-heading" align="center">
                        <h3 class="panel-title">Department Payments</h3>
                    </div>
                    <%--                         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>--%>
                    <div class="panel-body">
                        <table align="center" cellpadding="10" cellspacing="5" style="width: 90%">
                            <tr>
                                <td style="padding: 5px; margin: 5px" valign="top" class="style8" colspan="3">&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="padding: 5px; margin: 5px" valign="top" class="style8" colspan="3">
                                    <asp:GridView ID="grdDetails0" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                        CssClass="GRD" ForeColor="#333333" Height="62px" PageSize="15" Width="100%" CellSpacing="4">
                                        <FooterStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                        <RowStyle BackColor="#EBF2FE" CssClass="GRDITEM" HorizontalAlign="Left" VerticalAlign="Middle" />
                                        <Columns>
                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1%>
                                                    <asp:HiddenField ID="HdfQueid0" runat="server" />
                                                    <asp:HiddenField ID="HdfApprovalid0" runat="server" />
                                                    <asp:HiddenField ID="HdfDeptid0" runat="server" />
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle Width="50px" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="ApprovalName" HeaderText="Approval Required for">
                                                <ItemStyle Width="450px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Dept_Full_name" HeaderText="Department Name">
                                                <ItemStyle Width="180px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Fees" DataFormatString="{0:0}" ControlStyle-CssClass="col-md-6"
                                                ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right" HeaderText="Fees(Rs.)">
                                                <ControlStyle CssClass="col-md-6" />
                                                <FooterStyle HorizontalAlign="Right" />
                                                <HeaderStyle HorizontalAlign="Right" />
                                                <ItemStyle HorizontalAlign="Right" Width="150px" />
                                            </asp:BoundField>
                                            <%--<asp:BoundField HeaderText="Amount(Rs.)" />--%>
                                        </Columns>
                                        <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <HeaderStyle BackColor="#013161" CssClass="GRDHEADER" Font-Bold="True" ForeColor="White" />
                                        <EditRowStyle BackColor="#B9D684" />
                                        <AlternatingRowStyle BackColor="White" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding: 5px; margin: 5px" valign="top" class="style8" colspan="3">Select the approvals for which you wish to make payment now
                                    <asp:HiddenField ID="Hdfeid" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td style="padding: 5px; margin: 5px" valign="top" colspan="3">
                                    <div class="GRD" style="width: 100%">
                                        <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                            CssClass="GRD" ForeColor="#333333" Height="62px" OnRowDataBound="grdDetails_RowDataBound"
                                            PageSize="15" Width="100%" CellSpacing="4">
                                            <FooterStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                            <RowStyle BackColor="#EBF2FE" CssClass="GRDITEM" HorizontalAlign="Left" VerticalAlign="Middle" />
                                            <Columns>
                                                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                    <ItemTemplate>
                                                        <%# Container.DataItemIndex + 1%>
                                                        <asp:HiddenField ID="HdfQueid" runat="server" />
                                                        <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                        <asp:HiddenField ID="HdfDeptid" runat="server" />
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    <ItemStyle Width="50px" />
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="ApprovalName" HeaderText="Approval Required for">
                                                    <ItemStyle Width="450px" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Dept_Full_name" HeaderText="Department Name">
                                                    <ItemStyle Width="180px" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Fees" DataFormatString="{0:0}" ControlStyle-CssClass="col-md-6"
                                                    ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right" HeaderText="Fees(Rs.)">
                                                    <ControlStyle CssClass="col-md-6" />
                                                    <FooterStyle HorizontalAlign="Right" />
                                                    <HeaderStyle HorizontalAlign="Right" />
                                                    <ItemStyle HorizontalAlign="Right" Width="150px" />
                                                </asp:BoundField>
                                                <asp:TemplateField HeaderText="Pay for Department">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="ChkApproval" runat="server" AutoPostBack="True" OnCheckedChanged="ChkApproval_CheckedChanged" />
                                                        <asp:HiddenField ID="HdfAmount" runat="server" OnValueChanged="HdfAmount_ValueChanged" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Amount(Rs.)" />
                                                <asp:HyperLinkField HeaderText="DC Letter" Text="Forward" Visible="false" />
                                            </Columns>
                                            <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <HeaderStyle BackColor="#013161" CssClass="GRDHEADER" Font-Bold="True" ForeColor="White" />
                                            <EditRowStyle BackColor="#B9D684" />
                                            <AlternatingRowStyle BackColor="White" />
                                        </asp:GridView>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td style="padding: 5px; margin: 5px" align="center" class="style7" colspan="3">
                                    <asp:Label ID="Label422" runat="server" CssClass="LBLBLACK" Font-Bold="True" Width="210px">Payment Details<font 
                                                            color="red">*</font></asp:Label>
                                    <asp:HiddenField ID="HdfA" runat="server" />
                                   
                                    <tr>
                                        <td style="padding: 5px; margin: 5px" align="center">
                                            <asp:RadioButtonList ID="rblPaymentMode" runat="server" AutoPostBack="True" Font-Bold="True"
                                                Font-Names="Verdana" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"
                                                RepeatDirection="Horizontal" Width="350px">
                                                <asp:ListItem>SBH Challan</asp:ListItem>
                                                <asp:ListItem Selected="True">Online</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td style="padding: 5px; margin: 5px" align="center">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rblPaymentMode"
                                                ErrorMessage="Please Select Payment Mode" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td style="padding: 5px; margin: 5px" align="center">&nbsp;
                                        </td>
                                    </tr>
                                    <caption>
                                        &nbsp;</caption>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="padding: 5px; margin: 5px" colspan="3">
                                    <table cellpadding="4" cellspacing="5" style="width: 83%" runat="server" id="paynot">
                                        <tr id="amt" runat="server">
                                            <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">&nbsp;
                                            </td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label428" runat="server" CssClass="LBLBLACK" Width="200px">Amount<font 
                                                            color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:TextBox ID="txtAmount" runat="server" class="form-control txtbox" Enabled="False"
                                                    Height="28px" MaxLength="8" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group"
                                                    Width="180px"></asp:TextBox>
                                            </td>
                                            <td style="padding: 5px; margin: 5px; width: 10px;">&nbsp;
                                            </td>
                                        </tr>
                                        <tr id="DD" runat="server">
                                            <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">&nbsp;
                                            </td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label426" runat="server" CssClass="LBLBLACK" Width="200px">DD Number<font 
                                                            color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:TextBox ID="txtDDNumber" runat="server" class="form-control txtbox" Height="28px"
                                                    MaxLength="30" onkeypress="NumberCharandHypehn()" TabIndex="1" ValidationGroup="group"
                                                    Width="180px"></asp:TextBox>
                                            </td>
                                            <td style="padding: 5px; margin: 5px; width: 10px;">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDDNumber"
                                                    ErrorMessage="Please enter DD Number" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr id="chq" runat="server">
                                            <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">&nbsp;
                                            </td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label432" runat="server" CssClass="LBLBLACK" Width="200px">DD Date<font 
                                                            color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:TextBox ID="txtDDDate" runat="server" class="form-control txtbox" Height="28px"
                                                    MaxLength="40" TabIndex="1" ValidationGroup="group" onchange="return txtDOB();"
                                                    Width="180px"></asp:TextBox>
                                               <%-- <cc1:CalendarExtender ID="txtDDDate_CalendarExtender" runat="server" Format="dd-MM-yyyy"
                                                    PopupButtonID="txtRegDate" TargetControlID="txtDDDate">
                                                </cc1:CalendarExtender>--%>
                                            </td>
                                            <td style="padding: 5px; margin: 5px; width: 10px;">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDDDate"
                                                    ErrorMessage="Please enter DD Date" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">&nbsp;
                                            </td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label427" runat="server" CssClass="LBLBLACK" Width="200px">Bank Name<font 
                                                            color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:TextBox ID="txtBankName" runat="server" class="form-control txtbox" Height="28px"
                                                    MaxLength="40" TabIndex="1" ValidationGroup="group" Width="180px"></asp:TextBox>
                                            </td>
                                            <td style="padding: 5px; margin: 5px; width: 10px;">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBankName"
                                                    ErrorMessage="Please enter Bank Name" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">&nbsp;
                                            </td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label431" runat="server" CssClass="LBLBLACK" Width="200px">Bank Brach Name<font 
                                                            color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:TextBox ID="txtBankBranchName" runat="server" class="form-control txtbox" Height="28px"
                                                    MaxLength="40" TabIndex="1" ValidationGroup="group" Width="180px"></asp:TextBox>
                                            </td>
                                            <td style="padding: 5px; margin: 5px; width: 10px;">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBankBranchName"
                                                    ErrorMessage="Please enter Bank Branch Name" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">&nbsp;
                                            </td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label433" runat="server" CssClass="LBLBLACK" Width="200px">Upload 
                                                        DD<font color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control txtbox" Height="28px" />
                                                <asp:HyperLink ID="lblFileName" runat="server" CssClass="LBLBLACK" Width="165px"></asp:HyperLink>
                                                <br />
                                                <asp:Label ID="Label434" runat="server" Visible="False"></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px; width: 10px;">
                                                <asp:Button ID="BtnSave3" runat="server" CssClass="btn btn-xs btn-warning" Height="28px"
                                                    OnClick="BtnSave3_Click" TabIndex="10" Text="Upload" Width="72px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">&nbsp;
                                            </td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;" colspan="4">&nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                    <table cellpadding="4" cellspacing="5" style="width: 83%" runat="server" id="paynotOnline">
                                        <tr id="amt0" runat="server">
                                            <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">&nbsp;
                                            </td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:Label ID="Label435" runat="server" CssClass="LBLBLACK" Width="200px">Amount<font 
                                                            color="red">*</font></asp:Label>
                                            </td>
                                            <td style="padding: 5px; margin: 5px">:
                                            </td>
                                            <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                                <asp:TextBox ID="TxtAmountOnline" runat="server" class="form-control txtbox" Enabled="False"
                                                    Height="28px" MaxLength="8" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group"
                                                    Width="180px"></asp:TextBox>
                                            </td>
                                            <td style="padding: 5px; margin: 5px; width: 10px;">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtAmountOnline"
                                                    ErrorMessage="Please enter Amount" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">&nbsp;
                                            </td>
                                            <td id="Td1" style="padding: 5px; margin: 5px; text-align: left; " colspan="4" runat="server">
                                                <asp:RadioButtonList ID="rdbOnlineBankType" runat="server" Font-Bold="True" Font-Names="Verdana"
                                                     RepeatDirection="Horizontal"
                                                    Width="350px" AutoPostBack="True" OnSelectedIndexChanged="rdbOnlineBankType_SelectedIndexChanged">
                                                  <%--  <asp:ListItem  Selected="True">SBI</asp:ListItem>
                                                    <asp:ListItem>ICICI</asp:ListItem>--%>
                                                     <asp:ListItem  Value="Billdesk" Enabled="false">Bill desk</asp:ListItem>
                                                      <asp:ListItem Selected="True" Value="Kotak">Kotak Payment Gateway</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                         <tr>
                                               <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">&nbsp;
                                            </td>
                                        <td align="left" id="trbuilddesc" runat="server" visible="false">
                                            <asp:CheckBox ID="chkBuilldesc" runat="server" Text="" Checked="True" Enabled="false" /><img alt="Builddesc" src="../../images/billdesk.png" width="140px" height="100px" />
                                        </td>
                                    </tr>
                                        <tr>
                                            <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">&nbsp;
                                            </td>
                                            <td style="padding: 5px; margin: 5px; text-align: left;" colspan="4">
                                                <b>Terms and Conditions:
                                                    <br />
                                                </b>
                                                <br />
                                                1. Do not press F5 or refresh the page while the transaction is in process.
                                                <br />
                                                2. Do not press back button while the transaction is in process
                                                <br />
                                                3. Only the transactions with “Successful” status message will be deemed to be received
                                                <br />
                                                4. In case the transaction is not “Successful” and the amount has been debited from
                                                your account and any other queries, please contact the Toll free number: 7306-600-600
                                                or upload a grievance.
                                                <br />
                                                5. There is no refund policy for the payment. But if any excess amount is paid,
                                                it would be adjusted in the future payments.
                                                <br />
                                                6. All the details regarding the payments are secure and confidential. We do not
                                                store the bank details entered by the entrepreneur.
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="padding: 5px; margin: 5px; text-align: center;" colspan="3">
                                    <asp:Button ID="BtnSave1" runat="server" CssClass="btn btn-primary" Height="32px"
                                        OnClick="BtnSave_Click" TabIndex="10" Text="Pay" ValidationGroup="group" Width="90px"
                                        Visible="False" />
                                    &nbsp;&nbsp;<asp:Button ID="BtnDelete" runat="server" CssClass="btn btn-danger" Height="32px"
                                        OnClick="BtnClear0_Click" TabIndex="10" Text="Pay" Width="200px" ValidationGroup="group" />
                                    &nbsp;<asp:Button ID="BtnClear" runat="server" CausesValidation="False" CssClass="btn btn-warning"
                                        Height="32px" OnClick="BtnClear_Click" TabIndex="10" Text="ClearAll" ToolTip="To Clear  the Screen"
                                        Width="90px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="padding: 5px; margin: 5px" colspan="3">
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
                        <asp:HiddenField ID="hdfID" runat="server" />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                            ShowSummary="False" ValidationGroup="group" />
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True"
                            ShowSummary="False" ValidationGroup="child" />
                        <asp:HiddenField ID="hdfFlagID" runat="server" />
                        <asp:HiddenField ID="hdfFlagID0" runat="server" />
                        <asp:HiddenField ID="hdfUIDNumber" runat="server" />
                    </div>
                    <%--                          </ContentTemplate>
</asp:UpdatePanel>--%>
                </div>
            </div>
        </div>
    </div>
            
       <asp:UpdateProgress ID="UpdateProgress" runat="server" AssociatedUpdatePanelID="upd1">
        <ProgressTemplate>
            <div class="update">
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    
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
                           
  </ContentTemplate>
  </asp:UpdatePanel>
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

            $("input[id$='txtDDDate']").datepicker(
               {
                   dateFormat: "dd-mm-yy",
                   //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback
           
        }
        $(function () {
            var date = new Date();
            var currentMonth = date.getMonth();
            var currentDate = date.getDate();
            var currentYear = date.getFullYear();
            $("input[id$='txtDDDate']").datepicker(
                {
                    //dateFormat: "dd/mm/yy",
                    dateFormat: "dd-mm-yy",
                    //maxDate: new Date(currentYear, currentMonth, currentDate)
                });
           
        });
    </script>
    <style type="text/css">
        .ui-datepicker
        {
            font-size: 8pt !important;
            height: 250px;
            padding: 0.2em 0.2em 0;
            width: 250px;
        }
    </style>
</asp:Content>

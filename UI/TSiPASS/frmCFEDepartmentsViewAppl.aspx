<%@ Page Title=":: TS-iPASS ::  " Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master"
    AutoEventWireup="true" CodeFile="frmCFEDepartmentsViewAppl.aspx.cs" Inherits="TSTBDCReg1" %>

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

        .style8 {
            height: 30px;
        }

        .style9 {
            width: 27px;
            height: 30px;
        }

        .custom-pager td {
            padding: 5px 10px; /* Adjust spacing between numbers */
        }
    </style>
    <style>
        .repeater-container {
            border-collapse: collapse;
            width: 100%;
        }

        .repeater-header, .repeater-item, .repeater-alternating, .repeater-footer {
            padding: 10px;
            border: 1px solid #ccc;
        }

        .repeater-header {
            background-color: #f4f4f4;
            font-weight: bold;
        }

        .repeater-item {
            background-color: #ffffff;
        }

        .repeater-alternating {
            background-color: #f9f9f9;
        }

        .repeater-footer {
            font-weight: bold;
            text-align: right;
        }
    </style>

    <script type="text/javascript" language="javascript">

        function OpenPopup() {

            window.open("Lookups/LookupBDC.aspx", "List", "scrollbars=yes,resizable=yes,width=1000,height=650;display = block;position=absolute");

            return false;
        }
    </script>
    <script type="text/javascript">
        function showProgress() {
            var updateProgress = $get("<%= UpdateProgress.ClientID %>");
            updateProgress.style.display = "block";
        }
    </script>
    <script type="text/javascript" language="javascript">
        var win = new Object();
        function Popup(intval) {

            win = window.open("CFEPopup.aspx?UID=" + intval, "List", "scrollbars=yes,resizable=yes,width=780,height=400,left=" + ((window.screen.width / 2) - 320) + ",top=" + ((window.screen.height / 2) - 200) + ";display : block;position:absolute");

            //win = window.open("RptVillageOraganisationNameClickDetails.aspx?id="+intval, "List", "scrollbars=yes,resizable=yes,width=600,height=400,left=" + ((window.screen.width / 2) - 320) + ",top=" + ((window.screen.height / 2) - 200) + ";display : block;position:absolute");

        }
    </script>
    <script type="text/javascript" language="javascript">
        function inputOnlyNumbers(evt) {
            var e = window.event || evt; // for trans-browser compatibility 
            var charCode = e.which || e.keyCode;
            //            if ((charCode > 45 && charCode < 58) || charCode == 8 || charCode == 9) {
            //                return true;
            //            }
            if (((charCode > 45 && charCode < 58) || charCode == 8 || charCode == 9) && charCode != 46 && charCode != 47) {
                return true;
            }
            return false;
        }
    </script>
    <asp:UpdatePanel ID="upd1" runat="server">
        <ContentTemplate>
            <div align="left">
                <ol class="breadcrumb">
                    You are here &nbsp;!&nbsp; &nbsp; &nbsp;
                    <li><i class="fa fa-dashboard"></i><a href="Home.aspx"></a></li>
                    <li class=""><i class="fa fa-fw fa-edit">CFE</i> </li>
                    <li class="active"><i class="fa fa-edit"></i><a href="#">View Applications</a> </li>
                </ol>
            </div>
            <div align="left">
                <div class="row" align="left">
                    <div class="col-lg-11">
                        <div class="panel panel-primary">
                            <div class="panel-heading" align="center">
                                <h3 class="panel-title">View Applications</h3>
                            </div>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <div class="panel-body">
                                        <table align="center" cellpadding="10" cellspacing="5" style="width: 90%">
                                            <tr>
                                                <td align="left" style="padding: 5px; margin: 5px" valign="top">
                                                    <table cellpadding="7" cellspacing="7" width="100%">
                                                        <tr>
                                                            <td valign="top"></td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label10" runat="server" CssClass="LBLBLACK" Width="180px">Name of Unit</asp:Label>
                                                            </td>
                                                            <td>:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TxtnameofUnit" runat="server" class="form-control txtbox"
                                                                    Height="28px" MaxLength="50" TabIndex="0" ValidationGroup="group" Width="180px"></asp:TextBox>
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label380" runat="server" CssClass="LBLBLACK" Width="180px">UID Number</asp:Label>
                                                            </td>
                                                            <td valign="top">:
                                                            </td>
                                                            <td valign="top">
                                                                <asp:TextBox ID="TxtnameofUnit0" runat="server" class="form-control txtbox"
                                                                    Height="28px" MaxLength="50" TabIndex="0" ValidationGroup="group" Width="180px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="top">&nbsp;
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td valign="top">&nbsp;
                                                            </td>
                                                            <td valign="top">&nbsp;
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="top">&nbsp;
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label381" runat="server" CssClass="LBLBLACK" Width="180px">District</asp:Label>
                                                            </td>
                                                            <td>:
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddldistrict" runat="server" class="form-control txtbox"
                                                                    Height="33px" TabIndex="1" Width="180px">
                                                                    <asp:ListItem>--Select--</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label382" runat="server" CssClass="LBLBLACK" Width="180px">Level</asp:Label>
                                                            </td>
                                                            <td valign="top">:
                                                            </td>
                                                            <td valign="top">
                                                                <asp:DropDownList ID="ddldistrict0" runat="server" class="form-control txtbox" Height="33px"
                                                                    TabIndex="1" Width="180px">
                                                                    <asp:ListItem>--Select--</asp:ListItem>
                                                                    <asp:ListItem Value="1">State Level</asp:ListItem>
                                                                    <asp:ListItem Value="2">District Level</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="top">&nbsp;
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td align="center" colspan="3">&nbsp;
                                                            </td>
                                                            <td valign="top">&nbsp;
                                                            </td>
                                                            <td valign="top">&nbsp;
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="top">&nbsp;
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td>&nbsp;
                                                            </td>
                                                            <td align="center" colspan="3">
                                                                <asp:Button ID="BtnSave0" runat="server" CausesValidation="False" CssClass="btn-success"
                                                                    Height="32px" OnClick="BtnClear0_Click" TabIndex="10" Text="Search" ValidationGroup="group"
                                                                    Width="80px" />
                                                            </td>
                                                            <td valign="top">&nbsp;
                                                            </td>
                                                            <td valign="top">&nbsp;
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" CellPadding="5" AllowPaging="true"
                                                        ForeColor="#333333" Height="62px" OnRowDataBound="grdDetails_RowDataBound" PageSize="100" ShowFooter="True"
                                                        OnPageIndexChanging="grdDetails_PageIndexChanging" PagerStyle-Font-Underline="true"
                                                        Width="100%">
                                                        <FooterStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                        <RowStyle BackColor="#EBF2FE" HorizontalAlign="Left" VerticalAlign="Middle" />
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
                                                            <asp:TemplateField HeaderText="View">
                                                                <ItemTemplate>
                                                                    <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("UID_No") %>'></asp:LinkButton>
                                                                </ItemTemplate>
                                                                <HeaderStyle HorizontalAlign="Left" />
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="nameofunit" HeaderText="Name of Unit" />
                                                            <asp:BoundField DataField="NameofthePromoter" HeaderText="Name of Industry" Visible="false" />
                                                            <asp:BoundField DataField="Sec_EnterpriseName" HeaderText="Activity Proposed" />
                                                            <asp:BoundField DataField="ApprovalName" HeaderText="Approval name" />
                                                            <asp:BoundField DataField="DateofSubmittion" HeaderText="Date of Submission" />
                                                            <asp:BoundField DataField="LastDateofPreScrutiy" HeaderText="Last Date of Pre-Scrutiny" />
                                                            <asp:HyperLinkField HeaderText="CFE/CFO" Text="View" />
                                                            <asp:HyperLinkField HeaderText="Attachments" Text="Attachments" />
                                                            <asp:HyperLinkField HeaderText="Query / Response" Text="Query / Response" />
                                                            <%--11--%>
                                                            <asp:TemplateField HeaderText="Status">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Label377" runat="server" CssClass="LBLBLACK" Width="180px">Status</asp:Label>
                                                                    <br />
                                                                    <asp:DropDownList ID="ddlStatus" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                                        Height="33px" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged" Width="180px">
                                                                        <asp:ListItem>--Select--</asp:ListItem>
                                                                        <asp:ListItem Value="12">Completed</asp:ListItem>
                                                                        <asp:ListItem Value="11">Completed with Payment Request</asp:ListItem>
                                                                        <asp:ListItem Value="5">Query Raised</asp:ListItem>
                                                                        <asp:ListItem Value="16">Rejected</asp:ListItem>
                                                                        <%--<asp:ListItem Value="7">Query With Additional payment Request</asp:ListItem>
                                                                        <asp:ListItem Value="10">Completed with Additional Payment Request</asp:ListItem>--%>
                                                                    </asp:DropDownList>
                                                                    <%--  <asp:ListItem Value="16">Rejected</asp:ListItem>--%>
                                                                    <br />
                                                                    <asp:Label ID="LabelDiscription" Font-Bold="true" ForeColor="Red" runat="server"
                                                                        CssClass="LBLBLACK" Visible="False" Width="180px" Text=""></asp:Label><br />
                                                                    <asp:Label ID="Label378" runat="server" CssClass="LBLBLACK" Visible="False" Width="180px"
                                                                        Text="Query Description"></asp:Label>
                                                                    <br />
                                                                    <asp:TextBox ID="txtPromotor" runat="server" class="form-control txtbox" Height="40px"
                                                                        TabIndex="1" TextMode="MultiLine" ValidationGroup="group" Visible="False" Width="180px"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPromotor"
                                                                        ErrorMessage="Please Enter Discription" TabIndex="1" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                                    <br />
                                                                    <asp:Label ID="Label379" runat="server" CssClass="LBLBLACK" Visible="False" Width="180px">Amount</asp:Label>
                                                                    <br />
                                                                    <asp:TextBox ID="txtAmount" runat="server" class="form-control txtbox" Height="27px"
                                                                        MaxLength="40" TabIndex="1" ValidationGroup="group" onkeypress="return inputOnlyNumbers(event)"
                                                                        Visible="False" Width="180px" onpaste="return false"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAmount"
                                                                        ErrorMessage="Please Enter Amount" TabIndex="1" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                                    <br />
                                                                    <asp:HiddenField ID="hdfApplID" runat="server" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Submit">
                                                                <ItemTemplate>
                                                                    <asp:Button ID="BtnSave" runat="server" CausesValidation="False" CssClass="btn-success"
                                                                        Height="32px" OnClick="BtnSave_Click1" OnClientClick="return confirm('Do you want to update the record ? ');"
                                                                        TabIndex="10" Text="Submit" ValidationGroup="group" Width="80px" />
                                                                    <asp:HiddenField ID="hdfGroundedNo" runat="server" />
                                                                    <asp:HiddenField ID="hdfGroundedNo0" runat="server" />
                                                                    <asp:HiddenField ID="hdfGroundedNo1" runat="server" />
                                                                    <asp:HiddenField ID="hdfGroundedNo2" runat="server" />
                                                                    <asp:HiddenField ID="hdfGroundedNo3" runat="server" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="District_Name" HeaderText="District name" />
                                                            <asp:BoundField DataField="Manda_lName" HeaderText="Mandal_Name" />
                                                            <asp:BoundField DataField="Village_Name" HeaderText="Village name" />
                                                            <asp:HyperLinkField HeaderText="Payment Details" Text="Payment Details" />
                                                            <asp:BoundField DataField="RefNo" HeaderText="Reference Number" />
                                                            <asp:HyperLinkField HeaderText="Document" Text="View" />
                                                            <asp:HyperLinkField HeaderText="Feasbility Details" Text="Feasbility Details" />
                                                            <asp:BoundField DataField="Reason For Rejection" HeaderText="Reason For Rejection" />
                                                            <%--21--%>
                                                            <asp:BoundField DataField="Dept_Name" HeaderText="Transfered From" />
                                                            <asp:BoundField DataField="UPDATEDFLAG" HeaderText="Process" />
                                                        </Columns>
                                                        <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                        <HeaderStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                        <EditRowStyle BackColor="#B9D684" />
                                                        <AlternatingRowStyle BackColor="White" />
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Repeater ID="rptDetails" runat="server" EnableTheming="true" OnItemDataBound="rptDetails_ItemDataBound">
                                                        <HeaderTemplate>
                                                            <table style="width: 100%; border-collapse: collapse;" class="repeater-container" border="2px">
                                                                <thead>
                                                                    <tr style="background-color: #013161; color: white;">
                                                                        <th>S No</th>
                                                                        <th>View</th>
                                                                        <th>Name of Unit</th>
                                                                        <th>Activity Proposed</th>
                                                                        <th>Approval Name</th>
                                                                        <th>Date of Submission</th>
                                                                        <th>Last Date of Pre-Scrutiny</th>
                                                                        <th>CFE/CFO</th>
                                                                        <th>Attachments</th>
                                                                        <th>Query / Response</th>
                                                                        <%--<th>Status</th>
                                                                        <th>Submit</th>--%>
                                                                        <th>District Name</th>
                                                                        <th>Mandal Name</th>
                                                                        <th>Village Name</th>
                                                                        <th>Payment Details</th>
                                                                        <th id="thRefNO" runat="server" visible="false">Reference Number</th>
                                                                        <th id="thFeasibility" runat="server" visible="false">Feasibility Details</th>
                                                                        <th id="thRejection" runat="server" visible="false">Reason For Rejection</th>
                                                                        <th>Transferred From</th>
                                                                        <th>Process</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                        </HeaderTemplate>

                                                        <ItemTemplate>
                                                            <tr style="background-color: #EBF2FE;">
                                                                <td>
                                                                    <%# Container.ItemIndex + 1 %>
                                                                    <asp:HiddenField ID="HdfQueid" runat="server" Value='<%# Eval("intQuessionaireid") %>' />
                                                                    <asp:HiddenField ID="HdfApprovalid" runat="server" Value='<%# Eval("intApprovalid") %>' />
                                                                    <asp:HiddenField ID="hdnEntrID" runat="server" Value='<%# Eval("intCFEEnterpid") %>' />

                                                                </td>
                                                                <td>
                                                                    <asp:HyperLink
                                                                        ID="hplTracker" runat="server"
                                                                        Text='<%# Eval("UID_No") %>' Target="_blank"
                                                                        NavigateUrl='<%# " ApplicationTrakerDetailed.aspx?ID=" + Eval("intQuessionaireid") %>'>
                                                                    </asp:HyperLink></td>

                                                                </td>
                                                                <td><%# Eval("nameofunit") %></td>
                                                                <td><%# Eval("Sec_EnterpriseName") %></td>
                                                                <td><%# Eval("ApprovalName") %></td>
                                                                <td><%# Eval("DateofSubmittion") %></td>
                                                                <td><%# Eval("LastDateofPreScrutiy") %></td>
                                                                <td>
                                                                    <asp:HyperLink
                                                                        ID="hplCFEPrint" runat="server"
                                                                        Text="View" Target="_blank"
                                                                        NavigateUrl='<%# "CFEPrint.aspx?intApplid=" + Eval("intCFEEnterpid") %>'>
                                                                    </asp:HyperLink>
                                                                </td>
                                                                <td>
                                                                    <asp:HyperLink
                                                                        ID="hplAttachments" runat="server"
                                                                        Text="Attachments" Target="_blank"
                                                                        NavigateUrl='<%# "frmViewAttachmentDetails.aspx?intApplid=" + Eval("intCFEEnterpid") %>'>
                                                                    </asp:HyperLink></td>
                                                                <td>
                                                                    <asp:HyperLink
                                                                        ID="HyperLink1" runat="server"
                                                                        Text="Query / Response" Target="_blank"
                                                                        NavigateUrl='<%# "frmQurieResponseStatus.aspx?intApplid=" + Eval("intCFEEnterpid") %>'>
                                                                    </asp:HyperLink></td>
                                                                <td><%# Eval("District_Name") %></td>
                                                                <td><%# Eval("Manda_lName") %></td>
                                                                <td><%# Eval("Village_Name") %></td>
                                                                <td>
                                                                    <asp:HyperLink
                                                                        ID="hplPayment" runat="server"
                                                                        Text="Payment Details" Target="_blank"
                                                                        NavigateUrl='<%# "RptPaymentDetails.aspx?intApplid=" + Eval("UID_No") %>'>
                                                                    </asp:HyperLink></td>
                                                                <td id="tdRefNO" runat="server" visible="false"><%# Eval("RefNo") %></td>

                                                                <td id="tdFeasibility" runat="server" visible="false">
                                                                    <asp:HyperLink
                                                                        ID="hplFeasibility" runat="server"
                                                                        Text="Feasibility Details" Target="_blank">
                                                                    </asp:HyperLink>
                                                                </td>
                                                                <td id="tdRejection" runat="server" visible="false">
                                                                    <%# Eval("ReasonForRejection") %>                                                                    
                                                                </td>
                                                                <td><%# Eval("Dept_Name") %></td>
                                                                <td>
                                                                    <asp:Label runat="server"
                                                                        Text='<%# Eval("UPDATEDFLAG").ToString() == "Y" ? "Please process this application in Concerned Department portal" : "Please process this application in TS-iPASS portal" %>'></asp:Label></td>
                                                            </tr>
                                                        </ItemTemplate>

                                                        <FooterTemplate>
                                                            </tbody>
                                                            </table>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px" align="center">&nbsp;<tr>
                                                    <td align="center" style="padding: 5px; margin: 5px">&nbsp;
                                                    </td>
                                                </tr>
                                                    <caption>
                                                        &nbsp;</caption>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px" align="center">
                                                    <div id="success" runat="server" class="alert alert-success" visible="false">
                                                        <a aria-label="close" class="close" data-dismiss="alert" href="AddQualification.aspx">×</a> <strong>Success!</strong><asp:Label ID="lblmsg" runat="server"></asp:Label>
                                                    </div>
                                                    <div id="Failure" runat="server" class="alert alert-danger" visible="false">
                                                        <a aria-label="close" class="close" data-dismiss="alert" href="#">×</a> <strong>Warning!</strong>
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
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
            <asp:UpdateProgress ID="UpdateProgress" runat="server" AssociatedUpdatePanelID="updatepanel1">
                <ProgressTemplate>
                    <div class="overlay">
                        <%--<div style=" z-index: 1000; margin-left: 350px;margin-top:200px;opacity: 1;-moz-opacity: 1;">--%>
                        <div style="z-index: 1000; margin-left: 250px; margin-top: 100px; opacity: 1; -moz-opacity: 1;">
                            <img alt="" src="../../Resource/Images/Processing.gif" />
                        </div>
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
</asp:Content>

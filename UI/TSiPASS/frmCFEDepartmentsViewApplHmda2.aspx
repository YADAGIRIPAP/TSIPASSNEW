<%@ Page Title=":: TS-iPASS ::  " Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master"
    AutoEventWireup="true" CodeFile="frmCFEDepartmentsViewApplHmda2.aspx.cs" Inherits="TSTBDCReg1" %>

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

        function inputOnlyNumbers(evt) {
            var e = window.event || evt; // for trans-browser compatibility 
            var charCode = e.which || e.keyCode;

            if (((charCode > 45 && charCode < 58) || charCode == 8 || charCode == 9) && charCode != 46 && charCode != 47) {
                return true;
            }
            return false;
        }
    </script>

    <script type="text/javascript" language="javascript">
        var win = new Object();
        function Popup(intval) {

            win = window.open("CFEPopup.aspx?UID=" + intval, "List", "scrollbars=yes,resizable=yes,width=780,height=400,left=" + ((window.screen.width / 2) - 320) + ",top=" + ((window.screen.height / 2) - 200) + ";display : block;position:absolute");
            //win = window.open("RptVillageOraganisationNameClickDetails.aspx?id="+intval, "List", "scrollbars=yes,resizable=yes,width=600,height=400,left=" + ((window.screen.width / 2) - 320) + ",top=" + ((window.screen.height / 2) - 200) + ";display : block;position:absolute");

        }
    </script>

    <asp:UpdatePanel ID="upd1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div align="left">
                <ol class="breadcrumb">
                    You are here &nbsp;!&nbsp; &nbsp; &nbsp;
                    <li><i class="fa fa-dashboard"></i><a href="Home.aspx"></a></li>
                    <li class=""><i class="fa fa-fw fa-edit">CFE</i> </li>
                    <li class="active"><i class="fa fa-edit"></i><a href="#">View Applications</a>
                    </li>
                </ol>
            </div>
            <div align="left">
                <div class="row" align="left">
                    <div class="col-lg-11">
                        <div class="panel panel-primary">
                            <div class="panel-heading" align="center">
                                <h3 class="panel-title">View Applications</h3>
                            </div>
                            <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>
                                    <div class="panel-body">
                                        <table align="center" cellpadding="10" cellspacing="5" style="width: 90%">
                                            <tr>
                                                <td align="left" style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False"
                                                        CellPadding="5" ForeColor="#333333" Height="62px" OnRowDataBound="grdDetails_RowDataBound"
                                                        ShowFooter="True" Width="100%" OnRowCommand="grdDetails_RowCommand">
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
                                                            <asp:BoundField DataField="NameofthePromoter" HeaderText="Name of Industry" Visible="false"></asp:BoundField>
                                                            <asp:BoundField DataField="Sec_EnterpriseName" HeaderText="Activity Proposed" />
                                                            <asp:BoundField DataField="ApprovalName" HeaderText="Approval name" />
                                                            <asp:BoundField DataField="DateofSubmittion" HeaderText="Date of Submittion"></asp:BoundField>
                                                            <asp:BoundField DataField="LastDateofPreScrutiy" HeaderText="Last Date of Pre-Scrutiny" />
                                                            <asp:HyperLinkField HeaderText="CFE/CFO" Text="View" />
                                                            <asp:HyperLinkField HeaderText="Attachments" Text="Attachments" />
                                                            <asp:HyperLinkField HeaderText="Query / Response" Text="Query / Response" />
                                                            <asp:TemplateField HeaderText="Status">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Label377" runat="server" CssClass="LBLBLACK" Width="180px">Status</asp:Label>
                                                                    <br />
                                                                    <asp:DropDownList ID="ddlStatus" runat="server" class="form-control txtbox" Height="33px"
                                                                        Width="180px" AutoPostBack="True" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged">
                                                                        <asp:ListItem>--Select--</asp:ListItem>
                                                                        <asp:ListItem Value="12">Completed</asp:ListItem>
                                                                        <asp:ListItem Value="11">Completed with Payment Request</asp:ListItem>
                                                                        <asp:ListItem Value="5">Query Raised</asp:ListItem>
                                                                        <asp:ListItem Value="16">Rejected</asp:ListItem>
                                                                        <%--<asp:ListItem Value="7">Query With Additional payment Request</asp:ListItem>
                                                                        <asp:ListItem Value="10">Completed with Additional Payment Request</asp:ListItem>
                                                                        <asp:ListItem Value="16">Rejected</asp:ListItem>--%>
                                                                    </asp:DropDownList>
                                                                    <br />
                                                                    <asp:Label ID="Label378" runat="server" CssClass="LBLBLACK" Width="180px" Visible="False" Text="Query Description"></asp:Label>
                                                                    <br />
                                                                    <asp:TextBox ID="txtPromotor" runat="server" class="form-control txtbox"
                                                                        Height="40px" TabIndex="1" TextMode="MultiLine"
                                                                        ValidationGroup="group" Visible="False" Width="180px"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPromotor"
                                                                        ErrorMessage="Please Enter Description" TabIndex="1" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                                    <asp:Label ID="Label379" runat="server" CssClass="LBLBLACK" Visible="False" Width="180px">Amount</asp:Label>
                                                                    <br />
                                                                    <asp:TextBox ID="txtAmount" runat="server" class="form-control txtbox" Height="27px"
                                                                        MaxLength="40" TabIndex="1" ValidationGroup="group" Visible="False" Width="180px"
                                                                        onkeypress="return inputOnlyNumbers(event)"></asp:TextBox>
                                                                    <br />
                                                                    <asp:HiddenField ID="hdfApplID" runat="server" />



                                                                    <asp:Label ID="lblIntcfeenterpid" Text='<%# Eval("intCFEEnterpid") %>' Visible="false" runat="server"></asp:Label>
                                                                    <asp:Label ID="lblQueryRej" Text="Select the documents for Query/Rejection" Visible="false" runat="server"></asp:Label>
                                                                    <asp:CheckBoxList ID="chkQueryRej" Visible="false" runat="server" AutoPostBack="true">
                                            <asp:ListItem Value="1" Selected="True">Registration deed</asp:ListItem>
                                           <asp:ListItem Value="2">Process Flow Chart</asp:ListItem>
                                         <asp:ListItem Value="3">PAN / AADHAAR</asp:ListItem>
                                        <asp:ListItem Value="4">Self-Certification Form</asp:ListItem>
                                     <asp:ListItem Value="5">Partnership Deed (or) Articles of Association (AOA)</asp:ListItem>
                                    <asp:ListItem Value="6">Mutation order</asp:ListItem>
                                   <asp:ListItem Value="7">Common Affidavit</asp:ListItem>
                                <asp:ListItem Value="9">Structural Engineering Certificate </asp:ListItem>
                               <asp:ListItem Value="10">Combined building plan including all floor plans </asp:ListItem>
                                                                    </asp:CheckBoxList>

                                                                </ItemTemplate>



                                                            </asp:TemplateField>
                                                            <asp:TemplateField ControlStyle-Width="300px" HeaderText="Upload DC Letter">
                                                                <ItemTemplate>
                                                                    <asp:UpdatePanel runat="server" UpdateMode="Conditional" ID="updFU">
                                                                        <ContentTemplate>
                                                                            <b>
                                                                                <asp:Label ID="lbluploadDCLetter" Text="Upload DC Letter" Visible="false" runat="server"></asp:Label></b>
                                                                            <br />
                                                                            <asp:FileUpload ID="fuDCLUpload" Visible="false" AutoPostBack="true" runat="server" />
                                                                            <asp:Button ID="btnUploadDC" Visible="false" CommandName="Click" runat="server" CausesValidation="False" CssClass="btn-success" Height="32px" TabIndex="10" Text="Upload DC Letter" ValidationGroup="group" Width="150px" OnClick="btnUploadDC_Click" />
                                                                            <br />
                                                                            <asp:Label ID="lblAttachedFileName1" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                                            <br />
                                                                            <asp:CheckBoxList ID="CheckBoxList1" Visible="false" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                                                                                <asp:ListItem Value="12" Selected="True">Mortgage</asp:ListItem>
                                                                                <asp:ListItem Value="11">NALA</asp:ListItem>
                                                                                <asp:ListItem Value="13">Gift deed</asp:ListItem>
                                                                                <asp:ListItem Value="14">BT Formation/CC Road</asp:ListItem>
                                                                                <asp:ListItem Value="15">Photographs of Demolished Structures</asp:ListItem>
                                                                                <asp:ListItem Value="17">Additional Mortgage</asp:ListItem>
                                                                                <asp:ListItem Value="18">Others</asp:ListItem>
                                                                            </asp:CheckBoxList>
                                                                            <br />
                                                                            <asp:TextBox ID="txtOthersDocument" class="form-control txtbox" Visible="false" runat="server"></asp:TextBox>
                                                                        </ContentTemplate>
                                                                        <Triggers>
                                                                            <asp:PostBackTrigger ControlID="btnUploadDC" />
                                                                            <%--    <asp:AsyncPostBackTrigger ControlID="btnUploadDC" />--%>
                                                                        </Triggers>
                                                                    </asp:UpdatePanel>
                                                                </ItemTemplate>
                                                                <ControlStyle Width="300px" />
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
                                                        <a aria-label="close" class="close" data-dismiss="alert" href="AddQualification.aspx">�</a> <strong>Success!</strong><asp:Label ID="lblmsg" runat="server"></asp:Label>
                                                    </div>
                                                    <div id="Failure" runat="server" class="alert alert-danger" visible="false">
                                                        <a aria-label="close" class="close" data-dismiss="alert" href="#">�</a> <strong>Warning!</strong>
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

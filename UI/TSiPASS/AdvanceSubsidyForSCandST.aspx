<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true"
    CodeFile="AdvanceSubsidyForSCandST.aspx.cs" Inherits="UI_TSiPASS_IncentivesAnnexure_AdvanceSubsidyForSCandST" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../../Resource/Scripts/js/validations.js" type="text/javascript"></script>
    <link href="assets/css/basic.css" rel="stylesheet" />
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

        .style5 {
            color: #FF0000;
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
    <script type="text/javascript">
        function inputOnlyNumbers(evt) {
            var e = window.event || evt; // for trans-browser compatibility  
            var charCode = e.which || e.keyCode;
            if ((charCode > 45 && charCode < 58) || charCode == 8) {
                return true;
            }
            return false;
        }
    </script>
    <script type="text/javascript">
        function alpha(e) {
            var k;
            document.all ? k = e.keyCode : k = e.which;
            return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32 || (k >= 48 && k <= 57));
        }
    </script>
    <script type="text/javascript">
        function Names() {
            var AsciiValue = event.keyCode
            if ((AsciiValue >= 65 && AsciiValue <= 90) || (AsciiValue >= 97 && AsciiValue <= 122) || (AsciiValue == 46) || (AsciiValue == 32))
                event.returnValue = true;
            else {
                event.returnValue = false;

                alert("Enter Alphabets, '.' and Space Only");
            }
        }
    </script>
    <script type="text/javascript">
        function checkLength(el) {
            if (el.value.length != 6) {
                alert("Pin number length must be exactly 6 characters")
            }
        }
    </script>
    <script type="text/javascript">
        function checkLength1(el) {
            if (el.value.length != 10) {
                alert("Mobile number length must be exactly 10 characters")
            }
        }
    </script>
    <asp:UpdatePanel ID="upd1" runat="server">
        <ContentTemplate>
            <div align="left">
                <ol class="breadcrumb">
                    You are here &nbsp;!&nbsp; &nbsp; &nbsp;
                    <li><i class="fa fa-dashboard"></i><a href="Home.aspx"></a></li>
                    <li class=""><i class="fa fa-fw fa-edit"></i></li>
                </ol>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="background-color: #339966">
                            <table class="nav-justified">
                                <tr>
                                    <td>
                                        <asp:Label ID="lblheadTPRIDE" runat="server" Visible="false">
                                        </asp:Label>
                                        <asp:Label ID="lblheadTIDEA" runat="server" Visible="false">
                                        </asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div align="left">
                <div class="row" align="left">
                    <div class="col-lg-11">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <Triggers>
                                <asp:PostBackTrigger ControlID="btnUpload1" />
                                <asp:PostBackTrigger ControlID="btnUpload2" />
                                <asp:PostBackTrigger ControlID="btnUpload3" />
                                <asp:PostBackTrigger ControlID="btnUpload4" />
                            </Triggers>
                            <ContentTemplate>
                                <div class="panel-body" align="left">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td style="padding: 5px; margin: 5px" valign="top">
                                                <table cellpadding="4" cellspacing="5" style="width: 90%">
                                                    <tr>
                                                        <td style="padding: 5px; margin: 5px; text-align: center; font-weight: bold">1
                                                        </td>
                                                        <td colspan="8" style="font: bold; font-weight: bold">Means of Finance
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 5px; margin: 5px; text-align: center;" valign="middle">1.1
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">Total equity from promotors / share holders / partners to be brought in Rs.<font
                                                            color="red">*</font>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                            <asp:TextBox ID="txtTotalEquity" runat="server" class="form-control txtbox" Height="28px"
                                                                MaxLength="40" TabIndex="1" ValidationGroup="group" Width="180px" onkeypress="inputOnlyNumbers(evt)"></asp:TextBox>
                                                        </td>
                                                        <%-- NumberOnly()--%>
                                                        <td style="padding: 5px; margin: 5px; width: 10px;">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTotalEquity"
                                                                ErrorMessage="Please enter Total Equity from Promoters" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 5px; margin: 5px; text-align: center;" valign="middle">1.2
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">Own capital in Rs.<font color="red">*</font>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:TextBox ID="txtOwnCapital" runat="server" class="form-control txtbox" onkeypress="inputOnlyNumbers(evt)"
                                                                Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="180px"></asp:TextBox>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOwnCapital"
                                                                ErrorMessage="Please enter Own capital" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 5px; margin: 5px; text-align: center;" valign="middle">1.3
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">Borrowed from outside Rs.<font color="red">*</font>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">
                                                            <asp:TextBox ID="txtBorrowed" runat="server" class="form-control txtbox" onkeypress="inputOnlyNumbers(evt)"
                                                                Height="28px" MaxLength="30" TabIndex="1" ValidationGroup="group" Width="180px"></asp:TextBox>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="txtBorrowed"
                                                                ErrorMessage="Please enter Borrowed from outside" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 40px;">
                                                        <td style="padding: 5px; margin: 5px; text-align: center;" valign="middle">1.4
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">Advance Subsidy claimed in Rs.<font color="red">*</font>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">
                                                            <asp:TextBox ID="txtAdvSubClaimed" runat="server" class="form-control txtbox" onkeypress="inputOnlyNumbers(evt)"
                                                                Height="28px" MaxLength="30" TabIndex="1" ValidationGroup="group" Width="180px"></asp:TextBox>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAdvSubClaimed"
                                                                ErrorMessage="Please enter Advance Subsidy claimed" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                       <td style="padding: 5px; margin: 5px; text-align: center;" valign="middle">1.5
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">Advance Subsidy claimed<font color="red">*</font>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">
                                                            <asp:DropDownList ID="ddlinstallment" runat="server" Width="180px" class="form-control txtbox">
                                                                <asp:ListItem Selected="True" Value="1" Text="1st Instalment"></asp:ListItem>
                                                                <asp:ListItem Value="2" Text="2nd Instalment"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">
                                                            
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <%--<tr>
                                            <td colspan="8" style="padding: 5px; margin: 5px; text-align: center;">
                                            </td>
                                        </tr--%>
                                        <caption>
                                            &gt;
                                            <tr>
                                                <td colspan="4" style="padding: 5px; margin: 5px; text-align: center;">
                                                    <table style="width: 80%">
                                                        <tr>
                                                            <td align="left" colspan="4" style="padding: 5px; margin: 5px; font-weight: bold" valign="middle">Enclosures </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" style="border: solid thin white; background: #013161; color: white">Sl.No </td>
                                                            <td align="center" style="border: solid thin white; background: #013161; color: white">Document Name </td>
                                                            <td align="center" style="border: solid thin white; background: #013161; color: white">Upload Document </td>
                                                            <td align="center" style="border: solid thin white; background: #013161; color: white">File Name </td>
                                                        </tr>
                                                        <tr id="trEnclosures" runat="server">
                                                            <td align="center" style="border: solid thin black; background: white; color: black">1 </td>
                                                            <td align="center" style="border: solid thin black; background: white; color: black; text-align: left;">Electrical feasibility certificate </td>
                                                            <td align="center" style="border: solid thin black; background: white; color: black">
                                                                <asp:FileUpload ID="fuDocuments1" runat="server" />
                                                                <asp:Button ID="btnUpload1" runat="server" OnClick="btnUpload1_Click" Text="Click here to Upload" />
                                                            </td>
                                                            <td align="left" style="border: solid thin black; background: white; color: black">
                                                                <asp:HyperLink ID="lblupload1" runat="server" CssClass="LBLBLACK" Target="_blank" Width="165px">[lblFileName]</asp:HyperLink>
                                                                <asp:Label ID="lblAttachedFileName1" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                            </td>
                                                        </tr>
                                                        <tr id="tr1" runat="server">
                                                            <td align="center" style="border: solid thin black; background: white; color: black">2 </td>
                                                            <td align="center" style="border: solid thin black; background: white; color: black; text-align: left;">Proof of own capital invested </td>
                                                            <td align="center" style="border: solid thin black; background: white; color: black">
                                                                <asp:FileUpload ID="fuDocuments2" runat="server" />
                                                                <asp:Button ID="btnUpload2" runat="server" OnClick="btnUpload2_Click" Text="Click here to Upload" />
                                                            </td>
                                                            <td align="left" style="border: solid thin black; background: white; color: black">
                                                                <asp:HyperLink ID="lblupload2" runat="server" CssClass="LBLBLACK" Target="_blank" Width="165px">[lblFileName]</asp:HyperLink>
                                                                <asp:Label ID="lblAttachedFileName2" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                            </td>
                                                        </tr>
                                                        <tr id="tr2" runat="server">
                                                            <td align="center" style="border: solid thin black; background: white; color: black">3 </td>
                                                            <td align="center" style="border: solid thin black; background: white; color: black; text-align: left;">Proof of borrowed capital from outside </td>
                                                            <td align="center" style="border: solid thin black; background: white; color: black">
                                                                <asp:FileUpload ID="fuDocuments3" runat="server" />
                                                                <asp:Button ID="btnUpload3" runat="server" OnClick="btnUpload3_Click" Text="Click here to Upload" />
                                                            </td>
                                                            <td align="left" style="border: solid thin black; background: white; color: black">
                                                                <asp:HyperLink ID="lblupload3" runat="server" CssClass="LBLBLACK" Target="_blank" Width="165px">[lblFileName]</asp:HyperLink>
                                                                <asp:Label ID="lblAttachedFileName3" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                            </td>
                                                        </tr>
                                                        <tr id="tr3" runat="server">
                                                            <td align="center" style="border: solid thin black; background: white; color: black">4 </td>
                                                            <td align="center" style="border: solid thin black; background: white; color: black; text-align: left;">Term loan release statement as per format </td>
                                                            <td align="center" style="border: solid thin black; background: white; color: black">
                                                                <asp:FileUpload ID="fuDocuments4" runat="server" />
                                                                <asp:Button ID="btnUpload4" runat="server" OnClick="btnUpload4_Click" Text="Click here to Upload" />
                                                            </td>
                                                            <td align="left" style="border: solid thin black; background: white; color: black">
                                                                <asp:HyperLink ID="lblupload4" runat="server" CssClass="LBLBLACK" Target="_blank" Width="165px">[lblFileName]</asp:HyperLink>
                                                                <asp:Label ID="lblAttachedFileName4" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="8" style="padding: 5px; margin: 5px; text-align: center;"></td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="3" style="padding: 5px; margin: 5px; text-align: center;">
                                                    <asp:Button ID="BtnSave" runat="server" CssClass="btn btn-primary" Height="32px" OnClick="BtnSave_Click" TabIndex="10" Text="Submit" ValidationGroup="group" Width="90px" />
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="BtnPrevious" runat="server" CssClass="btn btn-danger" Height="32px" OnClick="BtnPrevious_Click" TabIndex="10" Text="Previous" Width="90px" />
                                                    &nbsp; &nbsp;&nbsp;<asp:Button ID="BtnNext" runat="server" CssClass="btn btn-danger" Height="32px" OnClick="BtnNext_Click" TabIndex="10" Text="Next" ValidationGroup="group" Width="90px"  Enabled="false"/>
                                                    &nbsp; &nbsp;<asp:Button ID="BtnClear" runat="server" CausesValidation="False" CssClass="btn btn-warning" Height="32px" OnClick="BtnClear_Click" TabIndex="10" Text="ClearAll" ToolTip="To Clear  the Screen" Width="90px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="3" style="padding: 5px; margin: 5px">
                                                    <div id="success" runat="server" class="alert alert-success" visible="false">
                                                        <a aria-label="close" class="close" data-dismiss="alert" href="AddQualification.aspx">×</a>
                                                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                                    </div>
                                                    <div id="Failure" runat="server" class="alert alert-danger" visible="false">
                                                        <a aria-label="close" class="close" data-dismiss="alert" href="#">×</a> <strong>Warning!</strong>
                                                        <asp:Label ID="lblmsg0" runat="server"></asp:Label>
                                                    </div>
                                                </td>
                                            </tr>
                                        </caption>
                                    </table>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <%--  </div>--%>
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

            $("input[id$='txtRegDate']").datepicker(
               {
                   dateFormat: "dd/mm/yy",
                   //  maxDate: new Date(currentYear, currentMonth, currentDate)
               }); // Will run at every postback/AsyncPostback
        }
        $(function () {
            var date = new Date();
            var currentMonth = date.getMonth();
            var currentDate = date.getDate();
            var currentYear = date.getFullYear();
            $("input[id$='txtRegDate']").datepicker(
                {
                    //dateFormat: "dd/mm/yy",
                    dateFormat: "dd/mm/yy",
                    //maxDate: new Date(currentYear, currentMonth, currentDate)
                });
        });
    </script>
    <style type="text/css">
        .ui-datepicker {
            font-size: 8pt !important;
            height: 250px;
            padding: 0.2em 0.2em 0;
            width: 200px;
        }
    </style>
</asp:Content>

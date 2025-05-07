<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true"
    CodeFile="IncentiveFormIX.aspx.cs" Inherits="UI_TSiPASS_IncentiveFormIX" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../../Resource/Scripts/js/validations.js" type="text/javascript"></script>
    <link href="assets/css/basic.css" rel="stylesheet" />
    <style type="text/css">
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

        .CS {
            background-color: #abcdef;
            color: Yellow;
            border: 1px solid #1d9a5b;
            font: Verdana 10px;
            padding: 1px 4px;
            font-family: Palatino Linotype, Arial, Helvetica, sans-serif;
        }

        .style5 {
            color: #FF0000;
        }
    </style>
    <%--<script type="text/javascript">
        function showProgress() {
            var updateProgress = $get("<%= UpdateProgress.ClientID %>");
            updateProgress.style.display = "block";
        }
    </script>--%>
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
    <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>
    <%--<div class="panel panel-primary">
                           <div class="panel-heading" align="center">
                                <h3 class="panel-title">
                                    Entrepreneur Details</h3>

                    <h1 class="page-head-line" align="left" style="font-size: x-large">APPLICATION CUM VERIFICATION FOR REIMBURSEMENT OF COST INVOLVED IN SKILL UPGRADATION
                        AND TRAINING UNDER T-PRIDE— TELANGANA STATE PROGRAM FOR RAPID INCUBATION OF DALIT
                        ENTREPRENEURS INCENTIVE SCHEME. (G.O.Ms.No.29 Industries and Commerce (IP & INF)
                        Department. dated.29/11/2014)</h1>
                            </div>--%>
    <div align="left">
        <div class="row" align="left">
            <div class="col-lg-11">
                <div class="panel panel-primary">
                    <div class="panel panel-primary" align="center">
                        <div class="panel-heading" style="background-color: #339966">
                            <table style="width: 100%">
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
                        <div class="panel-body">
                            <table align="center" cellpadding="10" cellspacing="5" style="width: 90%">
                                <tr>
                                    <td colspan="5" style="padding: 5px; margin: 5px; text-align: left; font-weight: bold; font-size: 12pt"
                                        valign="top">Training Undergone
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">1
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                        <asp:Label ID="Label387" runat="server" CssClass="LBLBLACK" Width="210px">Name of the training institute<font 
                                                            color="red">*</font></asp:Label>
                                    </td>
                                    <td style="padding: 5px; margin: 5px">:
                                    </td>
                                    <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                        <asp:TextBox ID="txtagencyName" runat="server" class="form-control txtbox" Height="28px"
                                            MaxLength="40" TabIndex="1" ValidationGroup="group" Width="180px"></asp:TextBox>
                                    </td>
                                    <td style="padding: 5px; margin: 5px; width: 10px;">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtagencyName"
                                            ErrorMessage="Please Enter Name of Certifying Agency" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">2
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                        <asp:Label ID="Label396" runat="server" CssClass="LBLBLACK" Width="165px">Duration of training<font 
                                                            color="red">*</font></asp:Label>
                                    </td>
                                    <td style="padding: 5px; margin: 5px">:
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                        <asp:TextBox ID="txtDurationoftraining" runat="server" class="form-control txtbox"
                                            Height="28px" MaxLength="40" onkeypress="Names()" TabIndex="1" ValidationGroup="group"
                                            Width="180px"></asp:TextBox>
                                    </td>
                                    <td style="padding: 5px; margin: 5px">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDurationoftraining"
                                            ErrorMessage="Please Enter Duration of training" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                        <asp:DropDownList ID="ddlTrainingDurationMode" runat="server" class="form-control txtbox"
                                            Height="33px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="180px">
                                            <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
                                            <asp:ListItem Text="Days" Value="D"></asp:ListItem>
                                              <asp:ListItem Text="Weeks" Value="W"></asp:ListItem>
                                            <asp:ListItem Text="Months" Value="M"></asp:ListItem>
                                            <asp:ListItem Text="Years" Value="Y"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="padding: 5px; margin: 5px">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlTrainingDurationMode" InitialValue="--Select--"
                                            ErrorMessage="Please Enter Duration of training" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>                                
                                <tr>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">3
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                        <asp:Label ID="Label351" runat="server" CssClass="LBLBLACK" Width="200px">Name of the skill development programme<font 
                                                            color="red">*</font></asp:Label>
                                    </td>
                                    <td style="padding: 5px; margin: 5px">:
                                    </td>
                                    <td style="padding: 5px; margin: 5px">
                                        <asp:TextBox ID="txtNameoftheskilldevelopmentprogramme" runat="server" class="form-control txtbox"
                                            Height="28px" MaxLength="30" onkeypress="Names()" TabIndex="1" ValidationGroup="group"
                                            Width="180px"></asp:TextBox>
                                    </td>
                                    <td style="padding: 5px; margin: 5px">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNameoftheskilldevelopmentprogramme"
                                            ErrorMessage="Please Eneter Name of the skill development programme" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">4
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                        <asp:Label ID="Label1" runat="server" CssClass="LBLBLACK" Width="200px">Number of skilled employees trained by the industry<font 
                                                            color="red">*</font></asp:Label>
                                    </td>
                                    <td style="padding: 5px; margin: 5px">:
                                    </td>
                                    <td style="padding: 5px; margin: 5px">
                                        <asp:TextBox ID="txtNumberskilledemployees" runat="server" class="form-control txtbox"
                                            Height="28px" MaxLength="30" onkeypress="Names()" TabIndex="1" ValidationGroup="group"
                                            Width="180px"></asp:TextBox>
                                    </td>
                                    <td style="padding: 5px; margin: 5px">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtNumberskilledemployees"
                                            ErrorMessage="Please Eneter Number of skilled employees trained by the industry"
                                            ValidationGroup="group">*</asp:RequiredFieldValidator>
                                    </td>
                                      <td style="padding: 5px; margin: 5px; text-align: left;">
                                      </td>
                                    <td style="padding: 5px; margin: 5px"> </td>
                                </tr>
                                <tr>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">5
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                        <asp:Label ID="Label2" runat="server" CssClass="LBLBLACK" Width="200px">Expenditure incurred for training programme<font color="red">*</font></asp:Label>
                                    </td>
                                    <td style="padding: 5px; margin: 5px">:
                                    </td>
                                    <td style="padding: 5px; margin: 5px">
                                        <asp:TextBox ID="txtExpenditureincurredfortrainingprogramme" runat="server" class="form-control txtbox"
                                            Height="28px" MaxLength="30" onkeypress="Names()" TabIndex="1" ValidationGroup="group"
                                            Width="180px"></asp:TextBox>
                                    </td>
                                    <td style="padding: 5px; margin: 5px">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtExpenditureincurredfortrainingprogramme"
                                            ErrorMessage="Please Eneter Expenditure incurred for training programme" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">6
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                        <asp:Label ID="Label3" runat="server" CssClass="LBLBLACK" Width="200px">Amount claimed in Rs.<font 
                                                            color="red">*</font></asp:Label>
                                    </td>
                                    <td style="padding: 5px; margin: 5px">:
                                    </td>
                                    <td style="padding: 5px; margin: 5px">
                                        <asp:TextBox ID="txtAmountclaimedinRs" runat="server" class="form-control txtbox"
                                            Height="28px" MaxLength="30" TabIndex="1" ValidationGroup="group" Width="180px"></asp:TextBox>
                                    </td>
                                    <td style="padding: 5px; margin: 5px">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAmountclaimedinRs"
                                            ErrorMessage="Please Eneter Amount claimed in Rs." ValidationGroup="group">*</asp:RequiredFieldValidator>
                                    </td>
                                      <td style="padding: 5px; margin: 5px; text-align: left;">
                                      </td>
                                    <td style="padding: 5px; margin: 5px"> </td>
                                </tr>
                                <tr>
                                    <td style="padding: 5px; margin: 5px" colspan="10" align="center"></td>
                                      <td style="padding: 5px; margin: 5px; text-align: left;">
                                      </td>
                                    <td style="padding: 5px; margin: 5px"> </td>
                                </tr>
                                <tr id="Tr1" runat="server">
                                    <td style="padding: 5px; margin: 5px"></td>
                                    <td colspan="10" style="padding: 5px; margin: 5px; text-align: left;"><b>Enclosures: </b>
                                    </td>
                                      <td style="padding: 5px; margin: 5px; text-align: left;">
                                      </td>                                    
                                </tr>
                                <tr id="Panelpcb1" runat="server">
                                    <td style="padding: 5px; margin: 5px">1
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;"
                                        colspan="4">Copy of certification of institute along with the list of participants with their
                                signature
                                    </td>
                                    <td style="padding: 5px; margin: 5px;">:
                                    </td>
                                    <td class="style6" style="padding: 5px; margin: 5px;"
                                        colspan="4">
                                        <asp:FileUpload ID="FileUpload10" runat="server" CssClass="CS" Height="28px" />
                                        <asp:HyperLink ID="Label453" runat="server" CssClass="LBLBLACK" Target="_blank"></asp:HyperLink>
                                        <br />
                                        <asp:Label ID="Label454" runat="server" Visible="False"></asp:Label>
                                    </td>
                                    <td style="padding: 5px; margin: 5px;">
                                        <asp:Button ID="Button8" runat="server" CssClass="btn btn-xs btn-warning" Height="28px"
                                            TabIndex="10" Text="Upload" ValidationGroup="gg" Width="72px" OnClick="Button8_Click" />
                                    </td>
                                      <td style="padding: 5px; margin: 5px; text-align: left;">
                                      </td>
                                  
                                </tr>
                                <tr id="panelTSCT1" runat="server">
                                    <td style="padding: 5px; margin: 5px">2
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;"
                                        colspan="4">Original bills & payment proof certified by the training institute<br />(Rar Or Pdf)</td>
                                    <td style="padding: 5px; margin: 5px;">:
                                    </td>
                                    <td class="style6" style="padding: 5px; margin: 5px; text-align: left;"
                                        colspan="4">
                                        <asp:FileUpload ID="FileUpload11" runat="server" CssClass="CS" Height="28px" />
                                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="LBLBLACK" Target="_blank"></asp:HyperLink>
                                        <br />
                                        <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
                                    </td>
                                    <td style="padding: 5px; margin: 5px;">
                                        <asp:Button ID="Button9" runat="server" CssClass="btn btn-xs btn-warning" Height="28px"
                                            TabIndex="10" Text="Upload" ValidationGroup="gg" Width="72px" OnClick="Button9_Click" />
                                    </td>                                   
                                    <td style="padding: 5px; margin: 5px"> </td>
                                </tr>
                                <tr id="panelPRD1" runat="server">
                                    <td style="padding: 5px; margin: 5px">3
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;"
                                        colspan="4">Details of employees trained as per format
                                        (FORM - C)
                                        <br />
                                        <asp:HyperLink ID="HyperLink2" runat="server" Visible="true" CssClass="LBLBLACK" Width="300px" Target="_blank" NavigateUrl="~/docs/Employee Details Format (FORM - C ).pdf">Click here for Prescribed Format</asp:HyperLink>
                                    </td>
                                    <td style="padding: 5px; margin: 5px;">&nbsp;:&nbsp;
                                    </td>
                                    <td class="style6" style="padding: 5px; margin: 5px; text-align: left;"
                                        colspan="4">
                                        <asp:FileUpload ID="FileUpload13" runat="server" CssClass="CS" Height="28px" />
                                        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="LBLBLACK" Target="_blank"></asp:HyperLink>
                                        <br />
                                        <asp:Label ID="Label14" runat="server" Visible="False"></asp:Label>
                                    </td>
                                    <td style="padding: 5px; margin: 5px;">
                                        <asp:Button ID="Button11" runat="server" CssClass="btn btn-xs btn-warning" Height="28px"
                                            TabIndex="10" Text="Upload" ValidationGroup="gg" Width="72px" OnClick="Button11_Click" />
                                    </td>
                                        <td style="padding: 5px; margin: 5px"> </td>
                                </tr>
                                <tr id="Tr2" runat="server">
                                    <td style="padding: 5px; margin: 5px">3
                                    </td>
                                    <td style="padding: 5px; margin: 5px; text-align: left;"
                                        colspan="4">CA Certificate as per prescribed format
                                        <asp:HyperLink ID="HyperLinkCivilEngineersFormat" runat="server" Visible="true" CssClass="LBLBLACK" Width="300px" Target="_blank" NavigateUrl="~/docs/Skil Upgradation CA Format.pdf">Click here for Prescribed Format</asp:HyperLink>
                                    </td>
                                    <td style="padding: 5px; margin: 5px;">&nbsp;:&nbsp;
                                    </td>
                                    <td class="style6" style="padding: 5px; margin: 5px; text-align: left;"
                                        colspan="4">
                                        <asp:FileUpload ID="FileUpload14" runat="server" CssClass="CS" Height="28px" />
                                        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="LBLBLACK" Target="_blank"></asp:HyperLink>
                                        <br />
                                        <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
                                    </td>
                                    <td style="padding: 5px; margin: 5px;">
                                        <asp:Button ID="Button12" runat="server" CssClass="btn btn-xs btn-warning" Height="28px"
                                            TabIndex="10" Text="Upload" ValidationGroup="gg" Width="72px" OnClick="Button12_Click" />
                                    </td>
                                        <td style="padding: 5px; margin: 5px"> </td>
                                </tr>
                                <tr>
                                    <td colspan="11" style="padding: 5px; margin: 5px; text-align: center;"></td>
                                        <td style="padding: 5px; margin: 5px"> </td>
                                   
                                </tr>
                                <tr>
                                    <td colspan="11" style="padding: 5px; margin: 5px; text-align: left;">
                                        <b>DECLARATION :  </b>
                                        <br />
                                        I / We hereby confirm that to the best of our knowledge and belief, information given herein before and
other papers enclosed are true and correct in all respects. We further undertake to substantiate the
particulars about promoter(s) and other details with documentary evidence as and when called for.<br />
I/We hereby agree that I/We shall forthwith repay the amount to me/us under &nbsp; <asp:Label ID="lblscheme" runat="server"></asp:Label>
                                &nbsp;, if it is found to be
disbursed in excess actually admissible whatsoever the reason. 

                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="11" style="padding: 5px; margin: 5px; text-align: center;"></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="11" style="padding: 5px; margin: 5px; text-align: center;">
                                        <asp:Button ID="BtnSave1" runat="server" CssClass="btn btn-primary" Height="32px"
                                            OnClick="BtnSave_Click" TabIndex="10" Text="Submit" Width="90px" ValidationGroup="group" />
                                        &nbsp;
                                <asp:Button ID="BtnDelete0" runat="server" CssClass="btn btn-danger" Height="32px"
                                    OnClick="BtnDelete0_Click" TabIndex="10" Text="Previous" Width="90px" Visible="true" />
                                        &nbsp; &nbsp;&nbsp;<asp:Button ID="BtnDelete" runat="server" CssClass="btn btn-danger"
                                            Height="32px" OnClick="BtnClear0_Click" TabIndex="10" Text="Next" Width="90px" Enabled="false"
                                            ValidationGroup="group" />
                                        &nbsp;<asp:Button ID="BtnClear" runat="server" CausesValidation="False" CssClass="btn btn-warning"
                                            Height="32px" OnClick="BtnClear_Click" TabIndex="10" Text="ClearAll" ToolTip="To Clear  the Screen"
                                            Width="90px" />
                                    </td>
                                        <td style="padding: 5px; margin: 5px"> </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="11" style="padding: 5px; margin: 5px">
                                        <div id="success" runat="server" visible="false" class="alert alert-success">
                                            <a href="AddQualification.aspx" class="close" data-dismiss="alert" aria-label="close">&times;</a> <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                        </div>
                                        <div id="Failure" runat="server" visible="false" class="alert alert-danger">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Warning!</strong>
                                            <asp:Label ID="lblmsg0" runat="server"></asp:Label>
                                        </div>
                                    </td>
                                        <td style="padding: 5px; margin: 5px"> </td>
                                </tr>
                                <tr>
                                    <td colspan="10">&nbsp;
                                    </td>
                                        <td style="padding: 5px; margin: 5px"> </td>
                                        <td style="padding: 5px; margin: 5px"> </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%-- </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress ID="UpdateProgress" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
        <ProgressTemplate>
            <div class="update">
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>--%>
</asp:Content>

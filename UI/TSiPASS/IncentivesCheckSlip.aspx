<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true"
    CodeFile="IncentivesCheckSlip.aspx.cs" Inherits="UI_TSiPASS_IncentivesAnnexure_IncentivesCheckSlip" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../../Resource/Scripts/js/validations.js" type="text/javascript"></script>
    <link href="assets/css/basic.css" rel="stylesheet" />
    <style type="text/css">
        .overlay
        {
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
        
        .update
        {
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
        
        .style5
        {
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
        <Triggers>
            <asp:PostBackTrigger ControlID="btnUpload1" />
            <asp:PostBackTrigger ControlID="Button101" />
            <asp:PostBackTrigger ControlID="Button102" />
            <asp:PostBackTrigger ControlID="Button103" />
            <asp:PostBackTrigger ControlID="Button104" />
            <asp:PostBackTrigger ControlID="Button105" />
            <asp:PostBackTrigger ControlID="Button106" />
            <asp:PostBackTrigger ControlID="Button201" />
            <asp:PostBackTrigger ControlID="Button202" />
            <asp:PostBackTrigger ControlID="Button203" />
            <asp:PostBackTrigger ControlID="Button204" />
            <asp:PostBackTrigger ControlID="Button205" />
            <asp:PostBackTrigger ControlID="Button206" />
            <asp:PostBackTrigger ControlID="Button207" />
            <asp:PostBackTrigger ControlID="Button208" />
            <asp:PostBackTrigger ControlID="Button209" />
            <asp:PostBackTrigger ControlID="Button210" />
            <asp:PostBackTrigger ControlID="Button211" />
            <asp:PostBackTrigger ControlID="Button212" />
            <asp:PostBackTrigger ControlID="Button213" />
            <asp:PostBackTrigger ControlID="Button214" />
            <asp:PostBackTrigger ControlID="Button215" />
            <asp:PostBackTrigger ControlID="Button216" />
            <asp:PostBackTrigger ControlID="Button217" />
            <asp:PostBackTrigger ControlID="Button218" />
            <asp:PostBackTrigger ControlID="Button219" />
            <asp:PostBackTrigger ControlID="Button220" />
            <asp:PostBackTrigger ControlID="Button221" />
            <asp:PostBackTrigger ControlID="Button222" />
            <asp:PostBackTrigger ControlID="Button223" />
            <asp:PostBackTrigger ControlID="Button224" />
            <asp:PostBackTrigger ControlID="Button225" />
            <asp:PostBackTrigger ControlID="Button226" />
            <asp:PostBackTrigger ControlID="Button227" />
            <asp:PostBackTrigger ControlID="Button228" />
            <asp:PostBackTrigger ControlID="Button229" />
            <asp:PostBackTrigger ControlID="btnBLAStatement_Brw" />
            <asp:PostBackTrigger ControlID="btnddlCCCoBorrwer" />
            <asp:PostBackTrigger ControlID="btnFacLicense" />
            <asp:PostBackTrigger ControlID="btnTMCStar" />
            <asp:PostBackTrigger ControlID="btnlocalemp1" />
            <asp:PostBackTrigger ControlID="btnlocalemp2" />
        </Triggers>
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
                                    <td style="font-weight: bold;">
                                        Incentives Check Slip
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
                        <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>--%>
                        <div class="panel-body" align="left">
                            <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                <tr>
                                    <td style="padding: 5px; margin: 5px" valign="top">
                                        <table cellpadding="4" cellspacing="5" width="100%">
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center; font-weight: bold">
                                                    1
                                                </td>
                                                <td colspan="8" style="font: bold; font-weight: bold">
                                                    Documents to be enclosed
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    1.1
                                                </td>
                                                <td style="padding: 5px; margin: 5px; width: 1000px; text-align: left;" valign="top">
                                                    Certificate from the financing institution concerned showing term loan released
                                                    and the value of assets acquired as on prior to filing of claim/within 6 months
                                                    from the date of commencement of commercial production whichever is earlier together
                                                    with other details and machinery statement as a statement of account in the form
                                                    prescribed with attested copies of bills in case of institutionally financed Enterprises/industries.
                                                    (OR)
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left; width: 30px;" valign="top">
                                                    <asp:DropDownList ID="ddlCSbillsofinstitutfinancedEnterpriseindustries" runat="server"
                                                        AutoPostBack="True" class="form-control txtbox" Height="28px" MaxLength="40"
                                                        TabIndex="1" ValidationGroup="group" Width="100px" OnSelectedIndexChanged="ddlCSbillsofinstitutfinancedEnterpriseindustries_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <%-- NumberOnly()--%>
                                                <td style="padding: 5px; margin: 5px; width: 10px;" valign="top">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlCSbillsofinstitutfinancedEnterpriseindustries"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 1.1" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="fuDocuments1" runat="server" Visible="false" />
                                                    <asp:Button ID="btnUpload1" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="btnUpload1_Click1" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="lblupload1" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank"></asp:HyperLink>
                                                    <asp:Label ID="lblAttachedFileName1" runat="server" Font-Bold="true" ForeColor="Green"
                                                        Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="middle">
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    List of Plant & Machinery & Equipment purchased and installed in the prescribed
                                                    form with attested copies of bills and payment proof in respect of self financed
                                                    Enterprises/industries.
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left; vertical-align: top">
                                                    <asp:DropDownList ID="ddlCSbillandpymtproofrespectofselffinancedEnterprisesindustries"
                                                        runat="server" AutoPostBack="True" class="form-control txtbox" Height="28px"
                                                        MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px" OnSelectedIndexChanged="ddlCSbillandpymtproofrespectofselffinancedEnterprisesindustries_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlCSbillandpymtproofrespectofselffinancedEnterprisesindustries"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 1.1" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload101" runat="server" Visible="false" />
                                                    <asp:Button ID="Button101" runat="server" Text="Click here to Upload" OnClick="Button101_Click"
                                                        Visible="False" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink101" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank" NavigateUrl='<%#Eval("FilePath") %>'></asp:HyperLink>
                                                    <asp:Label ID="Label101" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="middle">
                                                    1.2
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Caste Certificates issued by Tahsildar/ M.R.O&#39;s concerned in case of SC/ST Entrepreneur.
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left; vertical-align: top">
                                                    <asp:DropDownList ID="ddlCSCasteCertificatesSCST" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSCasteCertificatesSCST_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlCSCasteCertificatesSCST"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 1.3" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload102" runat="server" Visible="False" />
                                                    <asp:Button ID="Button102" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button102_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink102" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label102" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="middle">
                                                    1.3
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    &nbsp;Aadhar of the Entrepreneur.
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px; vertical-align: top">
                                                    <asp:DropDownList ID="ddlCSEntrepreneurAadhar" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSEntrepreneurAadhar_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="ddlCSEntrepreneurAadhar"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 1.3" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload103" runat="server" Visible="false" />
                                                    <asp:Button ID="Button103" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button103_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink103" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label103" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="middle">
                                                    1.4
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    PAN Card of the Entrepreneur.
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    :
                                                </td>
                                                <td style="padding: 5px; vertical-align: top; margin: 5px">
                                                    <asp:DropDownList ID="ddlCSEntrepreneurPANCard" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSEntrepreneurPANCard_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlCSEntrepreneurPANCard"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 1.4" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload104" runat="server" Visible="false" />
                                                    <asp:Button ID="Button104" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button104_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink104" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label104" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    1.5
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Certificate from the Chartered Accountant and % of holding of equity in the company
                                                    by each partner/director.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; vertical-align: top; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSCertificateofCA" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlCSCertificateofCA_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlCSCertificateofCA"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 1.5" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload105" runat="server" Visible="false" />
                                                    <asp:Button ID="Button105" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button105_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink105" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label105" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    1.6
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Regd. Partnership Deed/Articles of Association and Memorandum of Association in
                                                    case of Pvt. Ltd and Limited companies along with incorporation certificate / Bye-laws
                                                    in case of Indl. Cooperative along with Registration Certificate.
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    :
                                                </td>
                                                <td style="padding: 5px; vertical-align: top; margin: 5px">
                                                    <asp:DropDownList ID="ddlCSRegdPartnershipDeedArticles" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSRegdPartnershipDeedArticles_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlCSRegdPartnershipDeedArticles"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 1.6" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload106" runat="server" Visible="false" />
                                                    <asp:Button ID="Button106" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button106_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink106" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label106" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="8" style="padding: 5px; margin: 5px; text-align: center;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding: 5px; margin: 5px" valign="top">
                                        <table cellpadding="4" cellspacing="5" style="width: 100%">
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center; font-weight: bold">
                                                    2
                                                </td>
                                                <td colspan="6" style="font: bold; font-weight: bold">
                                                    Documents in original to be produced to the inspecting officer of DIC for verification
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.1
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left; width: 1500px;" valign="top">
                                                    Approval of Director of Factories.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;" valign="top">
                                                    <asp:DropDownList ID="ddlCSApprovalDirectorFactories" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSApprovalDirectorFactories_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <%-- NumberOnly()--%>
                                                <td style="padding: 5px; margin: 5px; width: 10px;" valign="top">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlCSApprovalDirectorFactories"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.1" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload201" runat="server" Visible="false" />
                                                    <asp:Button ID="Button201" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button201_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink201" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label201" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="middle">
                                                    2.2
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Boilers Certificate.
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    <asp:DropDownList ID="ddlCSBoilersCertificate" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSBoilersCertificate_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlCSBoilersCertificate"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.2" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload202" runat="server" Visible="false" />
                                                    <asp:Button ID="Button202" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button202_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink202" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label202" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="middle">
                                                    2.3
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Approval of Director of Town & Country Planning / UDA.
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:DropDownList ID="ddlCSApprovalDirectorTownCountryPlanningUDA" runat="server"
                                                        AutoPostBack="True" class="form-control txtbox" Height="28px" MaxLength="40"
                                                        TabIndex="1" ValidationGroup="group" Width="100px" OnSelectedIndexChanged="ddlCSApprovalDirectorTownCountryPlanningUDA_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlCSApprovalDirectorTownCountryPlanningUDA"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.3" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload203" runat="server" Visible="false" />
                                                    <asp:Button ID="Button203" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button203_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink203" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label203" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="middle">
                                                    2.4
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Regular building plans approval of Municipality or Gram Panchayat.
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:DropDownList ID="ddlCSRegularbuildingplansapprovalofMunicipalityGramPanchayat"
                                                        runat="server" AutoPostBack="True" class="form-control txtbox" Height="28px"
                                                        MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px" OnSelectedIndexChanged="ddlCSRegularbuildingplansapprovalofMunicipalityGramPanchayat_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlCSRegularbuildingplansapprovalofMunicipalityGramPanchayat"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.4" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload204" runat="server" Visible="false" Style="height: 22px" />
                                                    <asp:Button ID="Button204" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button204_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink204" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label204" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="middle">
                                                    2.5
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Consent for Operation from TSPCB/Acknowledgement from the General Manager, DIC concerned.
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:DropDownList ID="ddlCSOperationTSPCBAcknowledgementGM" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSOperationTSPCBAcknowledgementGM_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlCSOperationTSPCBAcknowledgementGM"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.5" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload205" runat="server" Visible="false" />
                                                    <asp:Button ID="Button205" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button205_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink205" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label205" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.6
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Power release Certificate from TSTRANSCO/DISCOM.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSPowerreleaseCertificatefrmTSTRANSCODISCOM" runat="server"
                                                        AutoPostBack="True" class="form-control txtbox" Height="28px" MaxLength="40"
                                                        TabIndex="1" ValidationGroup="group" Width="100px" OnSelectedIndexChanged="ddlCSPowerreleaseCertificatefrmTSTRANSCODISCOM_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddlCSPowerreleaseCertificatefrmTSTRANSCODISCOM"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.6" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload206" runat="server" Visible="false" />
                                                    <asp:Button ID="Button206" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button206_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink206" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label206" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.7
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Environmental clearance.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSEnvironmentalclearance" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSEnvironmentalclearance_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlCSEnvironmentalclearance"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.7" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload207" runat="server" Visible="false" />
                                                    <asp:Button ID="Button207" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button207_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink207" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label207" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.8
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Other statutory approvals (specify).
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSOtherstatutoryapprovalsspecif" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSOtherstatutoryapprovalsspecif_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddlCSOtherstatutoryapprovalsspecif"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.8" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload208" runat="server" Visible="false" />
                                                    <asp:Button ID="Button208" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button208_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink208" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label208" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.9
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    EM Part – I full set/IEM/IL.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSEMPartIfullsetIEMIL" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSEMPartIfullsetIEMIL_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ddlCSEMPartIfullsetIEMIL"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.9" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload209" runat="server" Visible="false" />
                                                    <asp:Button ID="Button209" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button209_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink209" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label209" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.10
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Udyog Aadhar.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSUdyogAadhar" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlCSUdyogAadhar_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="ddlCSUdyogAadhar"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.10" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload210" runat="server" Visible="false" />
                                                    <asp:Button ID="Button210" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button210_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink210" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label210" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.11
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Project Report.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSProjectReport" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlCSProjectReport_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="ddlCSProjectReport"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.11" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload211" runat="server" Visible="false" />
                                                    <asp:Button ID="Button211" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button211_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink211" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label211" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.12
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Term loan sanction letters.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSTermloansanctionletters" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSTermloansanctionletters_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="ddlCSTermloansanctionletters"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.12" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload212" runat="server" Visible="false" />
                                                    <asp:Button ID="Button212" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button212_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink212" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label212" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.13
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Board Resolution authorizing to sign and file claim etc., in case of Pvt./Ltd.,
                                                    Companies, Cooperatives and similar authorization in respect of partnership firms.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSBoardResolutionauthorizing" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSBoardResolutionauthorizing_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="ddlCSBoardResolutionauthorizing"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.13" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload213" runat="server" Visible="false" />
                                                    <asp:Button ID="Button213" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button213_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink213" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label213" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.14
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Registered land Sale deed/Premises Lease deed.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSRegisteredlandSaledeedPremisesLeasedeed" runat="server"
                                                        AutoPostBack="True" class="form-control txtbox" Height="28px" MaxLength="40"
                                                        TabIndex="1" ValidationGroup="group" Width="100px" OnSelectedIndexChanged="ddlCSRegisteredlandSaledeedPremisesLeasedeed_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="ddlCSRegisteredlandSaledeedPremisesLeasedeed"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.14" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload214" runat="server" Visible="false" />
                                                    <asp:Button ID="Button214" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button214_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink214" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label214" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.15
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    C.A. and C.E. Certificate regarding 2nd hand plant & machinery.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSCACECertificateregarding2handplantmachinery" runat="server"
                                                        AutoPostBack="True" class="form-control txtbox" Height="28px" MaxLength="40"
                                                        TabIndex="1" ValidationGroup="group" Width="100px" OnSelectedIndexChanged="ddlCSCACECertificateregarding2handplantmachinery_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="ddlCSCACECertificateregarding2handplantmachinery"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.15" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload215" runat="server" Visible="false" />
                                                    <asp:Button ID="Button215" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button215_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink215" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label215" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.16
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    C.E. Certificate for Self fabricated machinery.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSCECertificateSelffabricatedmachinery" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSCECertificateSelffabricatedmachinery_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="ddlCSCECertificateSelffabricatedmachinery"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.16" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload216" runat="server" Visible="false" />
                                                    <asp:Button ID="Button216" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button216_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink216" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label216" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.17
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    BIS Certificate.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSBISCertificate" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlCSBISCertificate_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="ddlCSBISCertificate"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.17" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload217" runat="server" Visible="false" />
                                                    <asp:Button ID="Button217" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button217_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink217" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label217" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.18
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Drug License.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSDrugLicense" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlCSDrugLicense_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="ddlCSDrugLicense"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.18" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload218" runat="server" Visible="false" />
                                                    <asp:Button ID="Button218" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button218_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink218" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label218" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.19
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Explosive License.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSExplosiveLicense" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlCSExplosiveLicense_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="ddlCSExplosiveLicense"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.19" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload219" runat="server" Visible="false" />
                                                    <asp:Button ID="Button219" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button219_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink219" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label219" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.20
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    VAT/CST/GST Certificate.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSVATCSTSGSTCertificate" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCSVATCSTSGSTCertificate_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="ddlCSVATCSTSGSTCertificate"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.20" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload220" runat="server" Visible="false" />
                                                    <asp:Button ID="Button220" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button220_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink220" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label220" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr id="trFormA" runat="server" visible="false">
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.21
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Form – A.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSFormA" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlCSFormA_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="ddlCSFormA"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.21" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload221" runat="server" Visible="false" />
                                                    <asp:Button ID="Button221" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button221_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink221" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label221" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr id="trFormB" runat="server" visible="false">
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.22
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Form – B.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCSFormB" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlCSFormB_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="ddlCSFormB"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.22" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload222" runat="server" Visible="false" />
                                                    <asp:Button ID="Button222" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button222_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink222" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label222" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.23
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Production particulars for the last 3 years as per fixed capital investment and
                                                    Line of Activity of the application duly certified by CA for the 1st time of the
                                                    claim, if it is expansion / diversification project.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlProductionParticulars3Years" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlProductionParticulars3Years_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="ddlProductionParticulars3Years"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.23" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload223" runat="server" Visible="false" />
                                                    <asp:Button ID="Button223" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button223_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink223" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label223" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.24
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    RTA Certificate.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlRTACertificate" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlRTACertificate_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="ddlRTACertificate"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.24" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload224" runat="server" Visible="false" />
                                                    <asp:Button ID="Button224" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button224_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink224" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label224" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.25
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    PH Certificate.
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlPHCertificate" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlPHCertificate_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="ddlPHCertificate"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.25" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload225" runat="server" Visible="false" />
                                                    <asp:Button ID="Button225" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button225_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink225" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label225" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.26
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Undertaking and Finance Certificate Prescrbed Format
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlUntertakingForm" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlUntertakingForm_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="ddlUntertakingForm"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.26" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload226" runat="server" Visible="false" />
                                                    <asp:Button ID="Button226" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button226_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink226" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label226" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.27
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;">
                                                    Photo of the applicant along with the equipment in respect of mobile units
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlApplicantVehiclePhoto" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlApplicantVehiclePhoto_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="ddlApplicantVehiclePhoto"
                                                        InitialValue="S" ErrorMessage="Please select File Upload Slno 2.27" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload227" runat="server" Visible="false" />
                                                    <asp:Button ID="Button227" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button227_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink227" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank">[lblFileName]</asp:HyperLink>
                                                    <asp:Label ID="Label227" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.28
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">
                                                    First Sale Bill
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlfirstsalebill" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlfirstsalebill_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload228" runat="server" Visible="false" />
                                                    <asp:Button ID="Button228" runat="server" Visible="false" Text="Click here to Upload"
                                                        OnClick="Button228_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink228" runat="server" Visible="false" CssClass="LBLBLACK"
                                                        Width="100px" Target="_blank"></asp:HyperLink>
                                                    <asp:Label ID="Label228" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.29
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">
                                                    UNDERTAKING ON CO-BORROWER / CO-APPLICANT / CO-OBLIGANT(T-Pride)
                                                    <asp:HyperLink ID="HypLnkFinancialInstidtutionFormat" runat="server" Visible="true"
                                                        CssClass="LBLBLACK" Width="300px" Target="_blank" NavigateUrl="~/UI/TSIPASS/DisplayDocs/UNDERTAKINGs.pdf">Click here for Prescribed Format</asp:HyperLink>
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCOBORROWER" Enabled="false" runat="server" AutoPostBack="True"
                                                        class="form-control txtbox" Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group"
                                                        Width="100px" OnSelectedIndexChanged="ddlCOBORROWER_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    &nbsp;
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="FileUpload229" runat="server" Visible="false" />
                                                    <asp:Button ID="Button229" runat="server" Text="Click here to Upload" Visible="false"
                                                        OnClick="Button229_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="HyperLink229" runat="server" CssClass="LBLBLACK" Target="_blank"
                                                        Visible="false" Width="100px"></asp:HyperLink>
                                                    <asp:Label ID="Label229" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.30
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">
                                                    Bank loan account statement showing the details of borrower and co-borrower etc,
                                                    if any
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlBLAStatement_Brw" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlBLAStatement_Brw_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    &nbsp;
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="fulBLAStatement_Brw" runat="server" Visible="false" />
                                                    <asp:Button ID="btnBLAStatement_Brw" runat="server" Text="Click here to Upload" Visible="false"
                                                        OnClick="btnStatementBrw_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="hplBLAStatement_Brw" runat="server" CssClass="LBLBLACK" Target="_blank"
                                                        Visible="false" Width="100px"></asp:HyperLink>
                                                    <asp:Label ID="lblBLAStatement_Brw" runat="server" Font-Bold="true" ForeColor="Green"
                                                        Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.31
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">
                                                    Caste certificate of co-borrower if any
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlCCCoBorrwer" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlCCCoBorrwer_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    &nbsp;
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="fulddlCCCoBorrwer" runat="server" Visible="false" />
                                                    <asp:Button ID="btnddlCCCoBorrwer" runat="server" Text="Click here to Upload" Visible="false"
                                                        OnClick="btnCCCoBorrwer_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="hplddlCCCoBorrwer" runat="server" CssClass="LBLBLACK" Target="_blank"
                                                        Visible="false" Width="100px"></asp:HyperLink>
                                                    <asp:Label ID="lblddlCCCoBorrwer" runat="server" Font-Bold="true" ForeColor="Green"
                                                        Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.32
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">
                                                    Factory License
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlFacLicense" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlFacLicense_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    &nbsp;
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="fulFacLicense" runat="server" Visible="false" />
                                                    <asp:Button ID="btnFacLicense" runat="server" Text="Click here to Upload" Visible="false"
                                                        OnClick="btnFacLicense_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="hplFacLicense" runat="server" CssClass="LBLBLACK" Target="_blank"
                                                        Visible="false" Width="100px"></asp:HyperLink>
                                                    <asp:Label ID="lblFacLicense" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.33
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">
                                                    TMC and Star Rating certificate for cotton ginning industries
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddlTMCStar" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddlTMCStar_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    &nbsp;
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="fulTMCStar" runat="server" Visible="false" />
                                                    <asp:Button ID="btnTMCStar" runat="server" Text="Click here to Upload" Visible="false"
                                                        OnClick="btnTMCStar_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="hplTMCStar" runat="server" CssClass="LBLBLACK" Target="_blank"
                                                        Visible="false" Width="100px"></asp:HyperLink>
                                                    <asp:Label ID="lblTMCStar" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr id=trlocal1 runat="server" visible="false">
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top" class="auto-style2">
                                                    2.34
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;" valign="top" class="auto-style2">
                                                    Additional Local Employment
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top" class="auto-style2">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top" class="auto-style2">
                                                    <asp:DropDownList ID="ddladdlocalemp1" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddladdlocalemp1_SelectedIndexChanged">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px" class="auto-style2">
                                                </td>
                                                <td align="center" style="vertical-align: top" class="auto-style3">
                                                    <asp:FileUpload ID="Addlocalempup1" runat="server" Visible="false" />
                                                    <asp:Button ID="btnlocalemp1" runat="server" Text="Click here to Upload" Visible="false"
                                                        OnClick="btnlocalemp1_Click" />
                                                </td>
                                                <td align="left" class="auto-style3" style="vertical-align: top">
                                                    <asp:HyperLink ID="hplAddlocalemp1" runat="server" CssClass="LBLBLACK" Target="_blank"
                                                        Visible="false" Width="100px"></asp:HyperLink>
                                                    <asp:Label ID="lbllocalemp1" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr id=trlocal2 runat="server" visible="false">
                                                <td style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                    2.35
                                                </td>
                                                <td style="padding: 5px; margin: 5px; text-align: left;" valign="top">
                                                    Additional Local Employment
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    :
                                                </td>
                                                <td style="padding: 5px; margin: 5px" valign="top">
                                                    <asp:DropDownList ID="ddladdlocalemp2" runat="server" AutoPostBack="True" class="form-control txtbox"
                                                        Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="100px"
                                                        OnSelectedIndexChanged="ddladdlocalemp2_SelectedIndexChanged" Visible="true">
                                                        <asp:ListItem Value="S">--Select--</asp:ListItem>
                                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                        <asp:ListItem Value="N">No</asp:ListItem>
                                                        <asp:ListItem Value="I">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="padding: 5px; margin: 5px">
                                                    &nbsp;
                                                </td>
                                                <td align="center" style="width: 50px; vertical-align: top">
                                                    <asp:FileUpload ID="Addlocalempup2" runat="server" Visible="false" />
                                                    <asp:Button ID="btnlocalemp2" runat="server" Text="Click here to Upload" Visible="false"
                                                        OnClick="btnlocalemp2_Click" />
                                                </td>
                                                <td align="left" class="auto-style1" style="width: 50px; vertical-align: top">
                                                    <asp:HyperLink ID="hplAddlocalemp2" runat="server" CssClass="LBLBLACK" Target="_blank"
                                                        Visible="false" Width="100px"></asp:HyperLink>
                                                    <asp:Label ID="lbllocalemp2" runat="server" Font-Bold="true" ForeColor="Green" Visible="false" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="8" style="padding: 5px; margin: 5px; text-align: center;">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3" style="padding: 5px; margin: 5px; text-align: center;">
                                        <asp:Button ID="BtnSave" runat="server" CssClass="btn btn-primary" Height="32px"
                                            TabIndex="10" Text="Save" Width="90px" ValidationGroup="group" OnClick="BtnSave_Click" />
                                        &nbsp;&nbsp;
                                        <asp:Button ID="BtnPrevious" runat="server" CssClass="btn btn-danger" Height="32px"
                                            TabIndex="10" Text="Previous" Width="90px" OnClick="BtnPrevious_Click" Visible="true" />
                                        &nbsp; &nbsp;&nbsp;<asp:Button ID="BtnNext" runat="server" CssClass="btn btn-danger"
                                            Height="32px" Enabled="false" TabIndex="10" Text="Next" Width="90px" ValidationGroup="group"
                                            OnClick="BtnNext_Click" />
                                        <%--<asp:Button ID="BtnNext" runat="server" CssClass="btn btn-danger" Height="32px"
                                                        TabIndex="10" Text="Next" Width="90px"  OnClick="BtnNext_Click" />--%>
                                        &nbsp; &nbsp;<asp:Button ID="BtnClear" runat="server" CausesValidation="False" CssClass="btn btn-warning"
                                            Height="32px" TabIndex="10" Text="ClearAll" ToolTip="To Clear  the Screen" Width="90px"
                                            OnClick="BtnClear_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3" style="padding: 5px; margin: 5px">
                                        <div id="success" runat="server" visible="false" class="alert alert-success">
                                            <a href="AddQualification.aspx" class="close" data-dismiss="alert" aria-label="close">
                                                &times;</a> <strong>Success!</strong><asp:Label ID="lblmsg" runat="server"></asp:Label>
                                        </div>
                                        <div id="Failure" runat="server" visible="false" class="alert alert-danger">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>
                                                Warning!</strong>
                                            <asp:Label ID="lblmsg0" runat="server"></asp:Label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:HiddenField ID="hdfID" runat="server" />
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                            ShowSummary="False" ValidationGroup="group" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <%-- </ContentTemplate>
                        </asp:UpdatePanel>--%>
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
        .ui-datepicker
        {
            font-size: 8pt !important;
            height: 250px;
            padding: 0.2em 0.2em 0;
            width: 200px;
        }
        
        .auto-style1
        {
            width: 50px;
        }
        .auto-style2
        {
            height: 55px;
        }
        .auto-style3
        {
            width: 50px;
            height: 55px;
        }
    </style>
</asp:Content>

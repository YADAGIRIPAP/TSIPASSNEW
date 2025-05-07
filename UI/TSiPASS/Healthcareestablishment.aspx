<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true"
    CodeFile="Healthcareestablishment.aspx.cs" Inherits="UI_TSiPASS_Healthcareestablishment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    &nbsp;<script src="../../Resource/Scripts/js/validations.js" type="text/javascript"></script><style
        type="text/css">
                                                                                                     .overlay {
                                                                                                         position: fixed;
                                                                                                         z-index: 999;
                                                                                                         height: 100%;
                                                                                                         width: 100%;
                                                                                                         top: 1px;
                                                                                                         background-color: Gray;
                                                                                                         filter: alpha(opacity=60);
                                                                                                         opacity: 0.9;
                                                                                                         -moz-opacity: 0.9;
                                                                                                     }
                                                                                                 </style><script type="text/javascript" language="javascript">

                                                                                                             function OpenPopup() {

                                                                                                                 window.open("Lookups/LookupTST.aspx", "List", "scrollbars=yes,resizable=yes,width=1000,height=650;display = block;position=absolute");

                                                                                                                 return false;
                                                                                                             }
                                                                                                 </script><script type="text/javascript">
                                                                                                              function pageLoad() {
                                                                                                                  var date = new Date();
                                                                                                                  var currentMonth = date.getMonth();
                                                                                                                  var currentDate = date.getDate();
                                                                                                                  var currentYear = date.getFullYear();

                                                                                                                  $("input[id$='txtdate']").datepicker(
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
                                                                                                                  $("input[id$='txtdate']").datepicker(
                                                                                                                      {
                                                                                                                          //dateFormat: "dd/mm/yy",
                                                                                                                          dateFormat: "dd/mm/yy",
                                                                                                                          //maxDate: new Date(currentYear, currentMonth, currentDate)
                                                                                                                      });
                                                                                                              });
                                                                                                 </script><script type="text/javascript">
                                                                                                              function pageLoad() {
                                                                                                                  var date = new Date();
                                                                                                                  var currentMonth = date.getMonth();
                                                                                                                  var currentDate = date.getDate();
                                                                                                                  var currentYear = date.getFullYear();

                                                                                                                  $("input[id$='txttodate']").datepicker(
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
                                                                                                                  $("input[id$='txttodate']").datepicker(
                                                                                                                      {
                                                                                                                          //dateFormat: "dd/mm/yy",
                                                                                                                          dateFormat: "dd/mm/yy",
                                                                                                                          //maxDate: new Date(currentYear, currentMonth, currentDate)
                                                                                                                      });
                                                                                                              });
                                                                                                 </script><%-- <script type="text/javascript">
        function checkLength(el) {
            if (el.value.length != 10) {
                alert("Mobile number length must be exactly 10 characters")
            }--%><%--     }
    </script>--%><%--  <script type="text/javascript">
        function checkLength1(el) {
            if (el.value.length != 12) {
                alert("Aadhar number length must be exactly 12 characters")
            }
        }
    </script>--%><%--    <script type="text/javascript">
        function showProgress() {
            var updateProgress = $get("<%= UpdateProgress.ClientID %>");
            updateProgress.style.display = "block";
        }
    </script>--%><asp:UpdatePanel ID="upd1" runat="server">
        <ContentTemplate>
            <div align="left">
                <%--<ol class="breadcrumb">You are here
        &nbsp;!&nbsp; &nbsp; &nbsp; 
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="Home.aspx">Dashboard</a>
                            </li>
                            <li class="">
                                <i class="fa fa-fw fa-table"></i> Masters
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> <a href="#">TST Team</a>
                            </li>
                        </ol>--%>
            </div>
            <input type="hidden" id="hdnfocus" value="" runat="server" />
            <%--<div>
                <table style="width: 100%">
                    <tr>
                        <td align="center" colspan="8" style="padding: 5px; margin: 5px">
                             <div id="Div1" runat="server" visible="false" class="alert alert-success">
                                <a href="AddQualification.aspx" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Success!</strong><asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                            <div id="Div2" runat="server" visible="false" class="alert alert-danger">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Warning!</strong>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>--%>
            <div align="center">
                <div class="row" align="center">
                    <div class="col-lg-11">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <asp:Label ID="lblHeading" runat="server" align="center" Text="Application for Authorization under BiomedicalWasteManagement Rules 2016"></asp:Label>
                                </h3>
                            </div>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <div class="panel-body" style="vertical-align: middle">
                                        <div runat="server" id="divbtn" visible="false" style="padding-left: 20%; padding-right: 20%; vertical-align: middle">
                                            &nbsp;
                                        </div>
                                        <div>
                                            <table id="Table1" runat="server" align="center" cellpadding="10" cellspacing="5"
                                                style="width: 30%">
                                                <tr>
                                                    <td style="vertical-align: middle; text-align: center;" valign="middle" colspan="2"
                                                        align="center"></td>
                                                </tr>
                                                <tr runat="server" id="tblRegister">
                                                    <td style="padding: 5px; margin: 5px;" valign="top">
                                                        <table cellpadding="4" cellspacing="5" style="width: 83%">
                                                            <tr>
                                                                <td style="padding: 5px; margin: 5px">
                                                                    <asp:Label ID="lblHCEname" runat="server" CssClass="LBLBLACK" Width="165px">Health care establishment (HCE) name<font
                                                                        color="red">*</font></asp:Label>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px">:
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px; width: 192px;">
                                                                    <asp:TextBox ID="txtHCEname" runat="server" class="form-control txtbox" Height="28px"
                                                                        MaxLength="300" TabIndex="1" ValidationGroup="group" Width="180px">
                                                                    </asp:TextBox>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px; width: 10px;"></td>
                                                                <td style="padding: 5px; margin: 5px; width: 10px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHCEname"
                                                                        ErrorMessage="Enter Name" ValidationGroup="group">
                                                                        *</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding: 5px; margin: 5px">
                                                                    <asp:Label ID="lblHCElocation" runat="server" CssClass="LBLBLACK" Width="165px">HCE location- Postal Address<font
                                                                        color="red">*</font></asp:Label>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px">:
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px; width: 192px;">
                                                                    <asp:TextBox ID="txtHCElocation" runat="server" TextMode="MultiLine" class="form-control txtbox"
                                                                        Height="28px" MaxLength="500" TabIndex="1" ValidationGroup="group" Width="180px">
                                                                    </asp:TextBox>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px; width: 10px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtHCElocation"
                                                                        ErrorMessage="Please enter Location" ValidationGroup="group">
                                                                        *</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding: 5px; margin: 5px">
                                                                    <asp:Label ID="lblPincode" runat="server" CssClass="LBLBLACK" Width="165px">Pin code<font
                                                                        color="red">*</font></asp:Label>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px">:
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px; width: 192px;">
                                                                    <asp:TextBox ID="txtPincode" runat="server" class="form-control txtbox" Height="28px"
                                                                        MaxLength="6" TabIndex="1" onkeypress="NumberOnly()" ValidationGroup="group"
                                                                        Width="180px">
                                                                    </asp:TextBox>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px; width: 10px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPincode"
                                                                        ErrorMessage="Please enter pincode" ValidationGroup="group">
                                                                        *</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding: 5px; margin: 5px">
                                                                    <asp:Label ID="lblRevenuedistrict" runat="server" CssClass="LBLBLACK" Width="165px">Revenue district<font
                                                                        color="red">*</font></asp:Label>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px">:
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px; width: 192px;">
                                                                    <asp:DropDownList ID="ddldistrict" runat="server" class="form-control txtbox" Height="30px"
                                                                        AutoPostBack="True" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged"
                                                                        TabIndex="4" Width="180px">
                                                                        <asp:ListItem>--Select--</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px; width: 10px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddldistrict"
                                                                        ErrorMessage="Please select district" InitialValue="--Select--" ValidationGroup="group">
                                                                        *</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding: 5px; margin: 5px">
                                                                    <asp:Label ID="lblMandal" runat="server" CssClass="LBLBLACK" Width="165px">Mandal<font
                                                                        color="red">*</font></asp:Label>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px">:
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px; width: 192px;">
                                                                    <asp:DropDownList ID="ddlmandal" runat="server" class="form-control txtbox" Height="30px"
                                                                        TabIndex="4" AutoPostBack="True" OnSelectedIndexChanged="ddlmandal_SelectedIndexChanged"
                                                                        Width="180px">
                                                                        <asp:ListItem>--Select--</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px; width: 10px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlmandal"
                                                                        ErrorMessage="Please select Mandal" InitialValue="--Select--" ValidationGroup="group">
                                                                        *</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding: 5px; margin: 5px">
                                                                    <asp:Label ID="lblVillage" runat="server" CssClass="LBLBLACK" Width="165px">Village<font
                                                                        color="red">*</font></asp:Label>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px">:
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px; width: 192px;">
                                                                    <asp:DropDownList ID="ddlVillage" runat="server" class="form-control txtbox" Height="30px"
                                                                        TabIndex="4" Width="180px">
                                                                        <asp:ListItem>--Select--</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px; width: 10px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlVillage"
                                                                        ErrorMessage="Please select village" InitialValue="--Select--" ValidationGroup="group">
                                                                        *</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding: 5px; margin: 5px">
                                                                    <asp:Label ID="lblapptype" runat="server" CssClass="LBLBLACK" Width="165px">Application Type<font
                                                                        color="red">*</font></asp:Label>
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px">:
                                                                </td>
                                                                <td style="padding: 5px; margin: 5px; width: 192px;">
                                                                    <asp:DropDownList ID="ddlapptype" runat="server" class="form-control txtbox" Height="30px"
                                                                        TabIndex="4" Width="180px">
                                                                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                                                                        <asp:ListItem Value="1">FRESH</asp:ListItem>
                                                                        <asp:ListItem Value="2">RENEWAL</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <asp:HiddenField ID="hdnhcid" runat="server" />
                                                                <td style="padding: 5px; margin: 5px; width: 10px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlapptype"
                                                                        ErrorMessage="Please select type" InitialValue="--Select--" ValidationGroup="group">
                                                                        *</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>

                                                        </table>
                                                        <table cellpadding="4" cellspacing="5" style="width: 83%">
                                                            <asp:Label runat="server" Height="32px"></asp:Label>
                                                        </table>
                                                        <table cellpadding="4" cellspacing="5" style="width: 83%">
                                                            <tr id="tblRegister1" runat="server">
                                                                <td>
                                                                    <asp:Button ID="btnsave" runat="server" ValidationGroup="group" CssClass="btn btn-primary"
                                                                        Height="32px" TabIndex="10" Text="Save" Width="90px" OnClick="Btnsave_Click"
                                                                        Visible="true" />
                                                                </td>
                                                                <td>
                                                                    <asp:Button ID="btnnext" runat="server" ValidationGroup="group" CssClass="btn btn-danger"
                                                                        Height="32px" TabIndex="10" Text="Next" Width="90px" OnClick="Btnnext_Click"
                                                                        Visible="true" />
                                                                </td>
                                                                <td>
                                                                    <asp:Button ID="BtnClear" runat="server" ValidationGroup="group" CssClass="btn btn-warning"
                                                                        Height="32px" TabIndex="10" Text="ClearAll" OnClick="BtnClear_Click" ToolTip="To Clear  the Screen"
                                                                        Width="90px" />
                                                                    <asp:HiddenField ID="hdnQueid" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="4" style="color: crimson;"><br />
                                                                    <img src="../../images/Dealers/1aHD.gif" height="40px" />
                                                                    
                                                                    <b>After entering the PCB portal, fill in all the required details, including attachments (if necessary). While saving, select &quot;Do you want to save the application&quot; as completed and then click Save. After that, in TGIPASS pay the fee. Then your application will be completed.</b>&nbsp;
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td align="center" valign="top">&nbsp;<tr>
                                                        <td style="padding: 5px; margin: 5px">&nbsp;
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">&nbsp;
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">&nbsp;
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">&nbsp;
                                                        </td>
                                                    </tr>
                                                    </td>
                                                </tr>
                                            </table>
                                            </td> </tr> </table>
                                            <tr id="tblRegister2" runat="server">
                                                <td align="center" colspan="2" style="padding: 5px; margin: 5px; text-align: center;">
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
                                        </div>
                                        <asp:HiddenField ID="hdfID" runat="server" />
                                        <asp:HiddenField ID="hdfUploadFile1" runat="server" />
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                            ShowSummary="False" ValidationGroup="group" />
                                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True"
                                            ShowSummary="False" ValidationGroup="group1" />
                                        <asp:HiddenField ID="hdfFlagID" runat="server" />
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
            <%-- <asp:UpdateProgress ID="UpdateProgress" runat="server" AssociatedUpdatePanelID="updatepanel1">
                <ProgressTemplate>
                    <div class="overlay">
                        <div style="z-index: 1000; margin-left: 250px; margin-top: 100px; opacity: 1; -moz-opacity: 1;">
                            <img alt="" src="../../Resource/Images/Processing.gif" />
                        </div>
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
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

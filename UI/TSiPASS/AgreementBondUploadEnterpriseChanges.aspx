<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true" CodeFile="AgreementBondUploadEnterpriseChanges.aspx.cs" Inherits="UI_TSiPASS_AgreementBondUploadEnterpriseChanges" %>


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
            color: #FF0000;
            font-weight: bold;
        }

        .GRD {
            height: auto;
            border-color: #013161;
            border-style: solid;
            border-width: 1px;
            text-transform: capitalize;
            padding: 10px;
        }

        .GRDITEM {
            /*background-color: WHITE;*/
            color: black;
            font-size: 12px;
            font-weight: normal;
            font-family: Verdana;
            padding: 10px; /*text-decoration:none;*/ /*border-color:#013161;*/ /*border-style:solid;*/
            text-transform: uppercase; /*border-width:1px;*/ /*height:23px;*/ /*text-indent:5px;*/
            padding: 10px; /*BACKGROUND-IMAGE: url(../images/grid_bg_.gif);*/
        }
              
        .GRDHEADER {
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
            background-image: url(../images/bg_blue_grd.gif);
            border-color: #ffffff;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style1 {
            height: 45px;
        }
        .auto-style2 {
            height: 45px;
            width: 291px;
        }
        .auto-style3 {
            width: 291px
        }
        .auto-style4 {
            height: 45px;
            width: 274px;
        }
        .auto-style5 {
            float: left;
            width: 274px;
        }
        .auto-style6 {
            width: 274px;
        }
        .auto-style8 {
            height: 30px;
            width: 502px;
        }
        .auto-style10 {
            float: left;
            width: 101px;
        }
        .auto-style11 {
            height: 57px;
        }
        .auto-style12 {
            width: 200px;
            height: 57px;
        }
        </style>
    <script type="text/javascript">
        function pageLoad() {
            var date = new Date();
            var currentMonth = date.getMonth();
            var currentDate = date.getDate();
            var currentYear = date.getFullYear();

            $("input[id$='txtBreakFromDate0']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback

            $("input[id$='txtBreakFromDate']").datepicker(
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
            $("input[id$='txtDateofCommencement']").datepicker(
                {
                    //dateFormat: "dd/mm/yy",
                    dateFormat: "dd/mm/yy",
                    //maxDate: new Date(currentYear, currentMonth, currentDate)
                });
            $("input[id$='txtNewPowerReleaseDate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback   

            $("input[id$='txtExistingPowerReleaseDate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback

            $("input[id$='txtExpanDiverPowerReleaseDate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback

            $("input[id$='txttermload']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback

            $("input[id$='txtdatesome']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback 

            $("input[id$='txtCSTRegDate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback 
            //added newly
            $("input[id$='txtGSTDate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback 

            $("input[id$='txtdateofreg']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback 

            $("input[id$='txtTermLoanReleasedDate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback  

        });
    </script>
    <script type="text/javascript" language="javascript">

        function OpenPopup() {

            window.open("Lookups/LookupBDC.aspx", "List", "scrollbars=yes,resizable=yes,width=1000,height=650;display = block;position=absolute");

            return false;
        }
    </script>
    <%--<script type="text/javascript">
        function showProgress() {
            var updateProgress = $get("<%= UpdateProgress.ClientID %>");
            updateProgress.style.display = "block";
        }
    </script>--%>

    <div align="center">
        <div class="row" align="center">
            <div class="col-lg-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3>Release Documents</h3>
                    </div>

                    <div class="panel-body">
                        <table style="vertical-align: top; text-align: center;" cellpadding="0" cellspacing="0"
                            width="90%">
                            <tr>
                                <td>
                                    <table style="vertical-align: top; text-align: center;" cellpadding="0" cellspacing="0"
                                        width="100%">
                                        <tr>
                                            <td></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                        </table>
                    </div>
                    <div class="panel-body" runat="server" id="divFirst">
                        <table style="vertical-align: top; text-align: center;" cellpadding="0" cellspacing="0"
                            width="90%">
                            <tr>
                                <td class="auto-style4">

                                    <div style="float: right; margin-top: 5px; margin-left: 20px;">
                                         <b> Upload Agreement Bond Copy : </b>
                                            
                                    </div>
                                    </td>
                                <td class="auto-style2">

                                    <div style="float: left">
                                        <asp:FileUpload ID="fucAgreementBond" runat="server" class="form-control txtbox" />
                                    </div>
                                    </td>
                                <td class="auto-style1">
                                    <div style="float: left">
                                        <asp:Button runat="server" Text="Upload" ID="bntUpload" CssClass="btn btn-primary"
                                            Style="margin-left: 12px; margin-top: 1px;" OnClick="bntUploadAgreement_Click" />
                                    </div>

                                </td>
                            </tr>
                            <tr>
                                
                                <td class="auto-style5">
                                     <div>
                                        <asp:HyperLink ID="hplFilenameLink" Text="Click here for format" runat="server" CssClass="LBLBLACK" Width="165px" Visible="false"
                                            Target="_blank"></asp:HyperLink>
                                    </div>
                                </td>
                                <td class="auto-style3">
                                    
                                        <asp:HyperLink ID="lblFileName" runat="server" CssClass="LBLBLACK" Width="165px" Visible="false"
                                            Target="_blank"></asp:HyperLink>
                                    
                                </td>
                                <td>

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                     

                                    <div>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style6">

                                    <div style="float: right; margin-top: 5px; margin-left: 20px;">
                                      <b>Upload Assignment Letter : </b>
                                            
                                    </div>
                                 

                                    </td>
                                <td class="auto-style3">
                                    <div style="float: left">
                                        <asp:FileUpload ID="fucAssignment" runat="server" class="form-control txtbox" />
                                    </div>
                                    </td>
                                <td>
                                    <div style="float: left">
                                        <asp:Button runat="server" Text="Upload" ID="btnUploadAssignmentLetter" CssClass="btn btn-primary"
                                            Style="margin-left: 12px; margin-top: 1px;" OnClick="btnUploadAssignmentLetter_Click" />
                                    </div>

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <div>
                                    </div>
                                </td>
                                <td class="auto-style3">

                                        <asp:HyperLink runat="server" ID="lnkAssignmentLetter" Target="_blank" ></asp:HyperLink>

                                </td>
                                <td>

                                </td>
                            </tr>
                        </table>
                    </div>
                    
                     <div class="panel-body" runat="server" id="divSecond">
                        <table style="vertical-align: top; text-align: center;" cellpadding="0" cellspacing="0" width="85%">
                          
                                        
                                        <tr>
                                            <td colspan="2" style="float:left">

                                                Please select the box, if there is</td>
                                            <td>

                                            </td>
                                        </tr>
                                
                            </table>

                        <table style="vertical-align: top; " cellpadding="0" cellspacing="0"
                                        >
                                                          
                                     
                                       <tr>
                                            <td style="text-align: left; height: 30px;">
                                                <asp:CheckBox runat="server" ID="chkBankChange" Text="" AutoPostBack="true" OnCheckedChanged="chkBankChange_CheckedChanged" />
                                                Change of Bank by the Enterprise</td>
                                        </tr>
                                     
                                 
                            <tr id="trBankDtls" runat="server" visible="false">
                                <td>
                                    <table cellpadding="4" cellspacing="5" style="width: 100%">
                                                    <tr>
                                                        <td class="style21" style="padding: 5px; margin: 5px; text-align: left; vertical-align: middle;">1
                                                        </td>
                                                        <td class="style21" style="padding: 5px; margin: 5px; text-align: left; vertical-align: middle;">Name of the Bank
                                                        </td>
                                                        <td class="style21" style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td class="style21" style="padding: 5px; margin: 5px; text-align: left;" colspan="6">
                                                            <asp:DropDownList ID="ddlBank" runat="server" class="form-control txtbox" TabIndex="5"
                                                                Width="250px" ValidationGroup="group">
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="rfvBank" runat="server" InitialValue="-- SELECT --"
                                                                ControlToValidate="ddlBank" ErrorMessage="Please Select Bank Name" ValidationGroup="group"
                                                                SetFocusOnError="true" Display="None"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 5px; margin: 5px; text-align: left; vertical-align: middle;">2
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">Branch Name<%--<span style="font-weight: bold; color: Red;">*</span>--%>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:TextBox ID="txtBranchName" runat="server" class="form-control txtbox" Height="28px"
                                                                MaxLength="40" TabIndex="5" ValidationGroup="group" Width="250px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" ControlToValidate="txtBranchName"
                                                                ErrorMessage="Please Enter Bank Name" ValidationGroup="group" SetFocusOnError="true"
                                                                Display="None"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">&nbsp;
                                                        </td>
                                                        <td class="style21" style="padding: 5px; margin: 5px; vertical-align: middle;">3
                                                        </td>
                                                        <td class="style23" style="padding: 5px; margin: 5px; text-align: left;">Account Number<%--<span style="font-weight: bold; color: Red;">*</span>--%>
                                                        </td>
                                                        <td class="style21" style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td class="style21" style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:TextBox ID="txtAccNumber" runat="server" class="form-control txtbox" Height="28px"
                                                                MaxLength="25" TabIndex="5" ValidationGroup="group" Width="250px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvAcNo" runat="server" ControlToValidate="txtAccNumber"
                                                                ErrorMessage="Please Enter Bank Account Number" ValidationGroup="group" SetFocusOnError="true"
                                                                Display="None" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 5px; margin: 5px; width: 10px; vertical-align: middle;">4
                                                        </td>
                                                        <td class="style20" style="padding: 5px; margin: 5px; text-align: left;">IFSC Code<%--<span style="font-weight: bold; color: Red;">*</span>--%>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:TextBox ID="txtIfscCode" runat="server" class="form-control txtbox" Height="28px"
                                                                MaxLength="12" TabIndex="5" ValidationGroup="group" Width="250px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvIFSCCode" runat="server" ControlToValidate="txtIfscCode"
                                                                ErrorMessage="Please Enter IFSC Code" ValidationGroup="group" SetFocusOnError="true"
                                                                Display="None" />
                                                        </td>
                                                        <td colspan="3">
                                                            <a href="https://www.bankifsccode.com/" target="_blank">Find IFSC code</a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 5px; margin: 5px; width: 10px; vertical-align: middle;">5
                                                        </td>
                                                        <td class="style20" style="padding: 5px; margin: 5px; text-align: left;">Account Type<%--<span style="font-weight: bold; color: Red;">*</span>--%>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px" align="left">
                                                            <asp:DropDownList ID="ddlaccounttype" class="form-control txtbox" Width="250px" runat="server">
                                                                <asp:ListItem Value="0" Text="--Select--"></asp:ListItem>
                                                                <asp:ListItem Value="1" Text="Savings Account"></asp:ListItem>
                                                                <asp:ListItem Value="2" Text="Current Account"></asp:ListItem>
                                                                <asp:ListItem Value="3" Text="Term Loan Account"></asp:ListItem>
                                                                <%--<asp:ListItem Value="5" Text="Corporate Account"></asp:ListItem>--%>
                                                                <asp:ListItem Value="4" Text="Non Operative Account"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">&nbsp;
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; width: 10px; vertical-align: middle;">6
                                                        </td>
                                                        <td class="style20" style="padding: 5px; margin: 5px; text-align: left;">Remarks<%--<span style="font-weight: bold; color: Red;">*</span>--%>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:TextBox ID="txtremarks" TextMode="MultiLine" runat="server" class="form-control txtbox"
                                                                Height="60px" MaxLength="12" TabIndex="5" ValidationGroup="group" Width="300px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <%--  <tr>
                                                        <td class="style21" style="padding: 5px; margin: 5px; text-align: left; vertical-align: middle;">7
                                                        </td>
                                                        <td class="style21" style="padding: 5px; margin: 5px; text-align: left; vertical-align: middle;">Upload the letter from Banker indication Account Details
                                                        </td>
                                                        <td class="style21" style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="CS"
                                                                Height="28px" />

                                                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="LBLBLACK" Width="165px" Visible="false"
                                                                Target="_blank"></asp:HyperLink>
                                                            <br />
                                                            <asp:Label ID="Label444" runat="server" Visible="False"></asp:Label>

                                                            <asp:Button ID="BtnSave3" runat="server" CssClass="btn btn-xs btn-warning"
                                                                Height="28px" TabIndex="10" Text="Upload"
                                                                Width="72px" OnClick="BtnSave3_Click" />
                                                        </td>
                                                    </tr>--%>
                                                    <%-- <tr id="troptpbutton" runat="server" visible="false">
                                                        <td class="style21" style="padding: 5px; margin: 5px; text-align: left; vertical-align: middle;"></td>
                                                        <td class="style21" style="padding: 5px; margin: 5px; text-align: left; vertical-align: middle;"><a href="" target="_blank">Certificate from Banker</a></td>
                                                        <td class="style21" style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-xs btn-warning" Height="30px" Text="Please Click Here to Confirm Entered Details" Width="300px" OnClick="Button1_Click" ValidationGroup="group" /></td>
                                                    </tr>
                                                    <tr id="trotp" runat="server" visible="false">
                                                        <td class="style21" style="padding: 5px; margin: 5px; text-align: left; vertical-align: middle;"></td>
                                                        <td class="style21" style="padding: 5px; margin: 5px; text-align: left; vertical-align: middle;">Please Enter OTP Recieved on your phone
                                                        </td>
                                                        <td class="style21" style="padding: 5px; margin: 5px">:
                                                        </td>
                                                        <td class="style6" style="padding: 5px; margin: 5px; text-align: left;">
                                                            <asp:TextBox ID="txtOTPVerify" Enabled="false" runat="server" class="form-control txtbox" MaxLength="6" Height="28px" Width="180px" ToolTip="Please enter OTP Rcvd on your phone here" OnTextChanged="txtOTPVerify_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                        </td>
                                                    </tr>--%>
                                                </table>
                                </td>
                            </tr>
                                                
                                  </table>
                        <table style="vertical-align: top; text-align: center;" cellpadding="0" cellspacing="0" width="97%">
                                    
                                        <tr>
                                            <td style="text-align: left; " class="auto-style8">
                                                <asp:CheckBox runat="server" ID="chkManagementChange" Text="" AutoPostBack="true" OnCheckedChanged="chkManagementChange_CheckedChanged" />
                                                Change of Management by the Enterprise</td>
                                        </tr>
                           
                                        <tr id="trManagementDtls" visible="false" runat="server">
                                            <td>
                                             <table>
                                                 <tr>
                                                     <td>
                                                           <td style="float:left">
                                                    Partner or Director dropped
                                                               </td>
                                                         <td>
                                                             :
                                                         </td>
                                                         <td>

                                                 <asp:TextBox ID="txtManagement" runat="server" Width="221px"></asp:TextBox>
                                                 </td>
                                            
                                               
                                            <td>
                                                Partner or Director Included
                                            </td>
                                                         <td>
                                                             :
                                                         </td>
                                            <td>
                                                <asp:TextBox ID="txtINCPartner" runat="server" Width="221px"></asp:TextBox>

                                            </td>
                                                     </td>
                                                 </tr>
                                             </table>
                                           
                                             </td>
                                        </tr>
                            <tr>
                                <td>

                                </td>
                            </tr>
                                        <tr>
                                            <td style="text-align: left; "  >
                                                <asp:CheckBox runat="server" ID="chkBreakProd" Text="" AutoPostBack="true" OnCheckedChanged="chkBreakProd_CheckedChanged" />
                                                Break in Production</td>
                                        </tr>
                                        <tr runat="server" id="trBreakDtls" visible="false">
                                           <td>
                                               <table>
                                                   <tr>
                                                           <td>
                                                  From Date 
                                             </td>
                                                   <td>
                                                       :
                                                   </td>
                                                       <td>

 <asp:TextBox ID="txtBreakFromDate0" runat="server" MaxLength="10" Width="221px"></asp:TextBox>

                                            </td>
                                                   <td></td>
                                                       <td>
                                                            To date
                                                        </td>
                                                   <td>
                                                       :
                                                   </td>
                                                      <td>
 <asp:TextBox ID="txtBreakFromDate" runat="server" MaxLength="10"  Width="221px"></asp:TextBox>
                                                      </td>
                                         <td style="margin:20px">

                                         </td>
                                                        
                                                   </tr>
                                                 
                                            
                                               </table>
                                           </td>
                                              
                                                           
                                                 
                                            
                                        </tr>
                            <tr>
                                <td>

                                </td>
                            </tr>
                                        <tr>
                                            <td style="text-align: left; " class="auto-style8">
                                                <asp:CheckBox runat="server" ID="chkSickness" Text="" AutoPostBack="true" OnCheckedChanged="chkSickness_CheckedChanged" />
                                                Closure / Sickness of the unit found</td>
                                        </tr>
                                        <tr runat="server" id="trSicknessDtls" visible="false">
                                            <td style="text-align: left; " class="auto-style8">
                                                <asp:TextBox ID="txtSickness" runat="server" Width="611px"></asp:TextBox>
                                            </td>
                                        </tr>
                            <tr>
                                <td>

                                </td>
                            </tr>
                                        <tr>
                                            <td style="text-align: left; " class="auto-style8">
                                                <asp:CheckBox runat="server" ID="chkLocationChange" Text="" AutoPostBack="true" OnCheckedChanged="chkLocationChange_CheckedChanged" />
                                                Change in location of the Unit</td>
                                        </tr>
                                        <tr runat="server" id="trLocation" visible="false">
                                            <td style="text-align: left; ">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            Plot/Survey No
                                                        </td>
                                                        <td>

                                                        </td>
                                                        <td>

                                                            <asp:TextBox ID="txtSurveyNo" Height="40px" TextMode="MultiLine"  Width="180px" runat="server"></asp:TextBox>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>District: </td>
                                                        <td style="width: 20px;"></td>
                                                        <td style="padding: 5px; margin: 5px">
                                                            <asp:DropDownList ID="ddlProp_intDistrictid" runat="server" class="form-control txtbox"
                                                                Height="33px" Width="180px" AutoPostBack="True" OnSelectedIndexChanged="ddlProp_intDistrictid_SelectedIndexChanged">
                                                                <asp:ListItem>--District--</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Mandal: </td>
                                                        <td style="width: 20px;"></td>
                                                        <td style="padding: 5px; margin: 5px">
                                                            <asp:DropDownList ID="ddlProp_intMandalid" runat="server" class="form-control txtbox"
                                                                Height="33px" Width="180px" AutoPostBack="True" OnSelectedIndexChanged="ddlProp_intMandalid_SelectedIndexChanged">
                                                                <asp:ListItem>--Mandal--</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Village: </td>
                                                        <td style="width: 20px;"></td>
                                                        <td style="padding: 5px; margin: 5px">
                                                            <asp:DropDownList ID="ddlProp_intVillageid" runat="server" class="form-control txtbox"
                                                                Height="33px" Width="180px" AutoPostBack="True">
                                                                <asp:ListItem>--Village--</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            
                                        </tr>
                            <tr>
                                <td>

                                </td>
                            </tr>
                                        <tr>
                                            <td style="text-align: left; " class="auto-style8">
                                                <asp:CheckBox runat="server" ID="chkLOAChange" Text="" AutoPostBack="true" OnCheckedChanged="chkLOAChange_CheckedChanged" />
                                                Change in Line of Activity</td>
                                        </tr>
                                       
                            <tr id="loatr" runat="server" visible="false">
                                <td>
                                    <table>
                                        <tr>
                                        <td style="float:left">
                                           <b>Activities Added</b>
                                        </td>
                                        <td style="width: 27px">
                                            &nbsp;</td>
                                        <td valign="top">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 5px; margin: 5px" valign="top">
                                            <table cellpadding="4" cellspacing="5" style="width: 83%">
                                                <tr>
                                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                                        1</td>
                                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                                        <asp:Label ID="Label387" runat="server" CssClass="LBLBLACK" Width="210px">Manufacture Item <font 
                                                            color="red">*</font></asp:Label>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        :</td>
                                                    <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                        <asp:TextBox ID="txtitem" runat="server" class="form-control txtbox" 
                                                            Height="28px" MaxLength="40"  TabIndex="1" onkeypress="Names()"
                                                            ValidationGroup="group" Width="180px"></asp:TextBox>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px; width: 10px;">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                            ControlToValidate="txtitem" ErrorMessage="Please enter Item" 
                                                            ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                                        2</td>
                                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                                        <asp:Label ID="Label396" runat="server" CssClass="LBLBLACK" Width="165px">Quantity Per<font 
                                                            color="red">*</font></asp:Label>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        :</td>
                                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                                        <asp:DropDownList ID="ddlQuantityper1" runat="server" class="form-control txtbox" TabIndex="1"
                                                            Height="33px" Width="180px">
                                                            <asp:ListItem>--Select--</asp:ListItem>
                                                            <asp:ListItem Value="Day">Day</asp:ListItem>
                                                            <asp:ListItem Value="Week">Week</asp:ListItem>
                                                            <asp:ListItem Value="Month">Month</asp:ListItem>
                                                            <asp:ListItem Value="Years">Years</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                            ControlToValidate="ddlQuantityper1" ErrorMessage="Please select Quantity" 
                                                            InitialValue="--Select--" ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="width: 27px">
                                            <asp:Label ID="Label348" runat="server" CssClass="LBLBLACK" Width="50px"></asp:Label>
                                        </td>
                                        <td valign="top">
                                            <table cellpadding="4" cellspacing="5" style="width: 100%">
                                                <tr>
                                                    <td style="padding: 5px; margin: 5px">
                                                        3</td>
                                                    <td style="width: 200px;">
                                                        <asp:Label ID="Label431" runat="server" CssClass="LBLBLACK" Width="165px">Quantity<font 
                                                            color="red">*</font></asp:Label>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        :</td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        <asp:TextBox ID="txtquantity" runat="server" class="form-control txtbox" 
                                                            Height="28px" MaxLength="40" onkeypress="return inputOnlyNumbers(event)" TabIndex="1" 
                                                            ValidationGroup="group" Width="180px"></asp:TextBox>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                            ControlToValidate="txtquantity" ErrorMessage="Please enter Quantity" 
                                                            ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 5px; margin: 5px">
                                                        4</td>
                                                    <td style="width: 200px;">
                                                        <asp:Label ID="Label429" runat="server" CssClass="LBLBLACK" Width="165px">Quantity In</asp:Label>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        :</td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        <asp:DropDownList ID="ddlquantityin" runat="server" class="form-control txtbox" TabIndex="1"
                                                            Height="33px" Width="180px" AutoPostBack="True" 
                                                            onselectedindexchanged="ddlquantityin_SelectedIndexChanged">
                                                            <asp:ListItem>--Select--</asp:ListItem>
                                                            <asp:ListItem Value="KG">KG</asp:ListItem>
                                                            <asp:ListItem Value="Tone">Tone</asp:ListItem>
                                                            <asp:ListItem Value="Liters">Liters</asp:ListItem>
                                                            <asp:ListItem Value="Others">Others</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr id="qty" runat="server" visible="false">
                                                    <td style="padding: 5px; margin: 5px" class="auto-style11">
                                                        </td>
                                                    <td class="auto-style12">
                                                        <asp:Label ID="Label432" runat="server" CssClass="LBLBLACK" Width="165px">Quantity In</asp:Label>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px" class="auto-style11">
                                                        :</td>
                                                    <td style="padding: 5px; margin: 5px" class="auto-style11">
                                                        <asp:TextBox ID="txtitem2" runat="server" class="form-control txtbox" onkeypress="Names()"
                                                            Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="180px"></asp:TextBox>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px" class="auto-style11">
                                                        </td>
                                                </tr>
                                                <tr ID="tr2" runat="server">
                                                    <td style="padding: 5px; margin: 5px">
                                                        &nbsp;</td>
                                                    <td style="width: 200px;">
                                                        &nbsp;</td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        &nbsp;</td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        <asp:Button ID="BtnSave2" runat="server" CssClass="btn btn-xs btn-warning" 
                                                            Height="28px" TabIndex="10" Text="Add New" ValidationGroup="group" 
                                                            Width="72px" onclick="BtnSave2_Click1" />
                                                        &nbsp;<asp:Button ID="BtnClear0" runat="server" CausesValidation="False" 
                                                            CssClass="btn btn-xs btn-danger" Height="28px" TabIndex="10" Text="Cancel" 
                                                            ToolTip="To Clear  the Screen" Width="73px" onclick="BtnClear0_Click2" /></td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr id="trLOA" runat="server">
                                        <td style="padding: 5px; margin: 5px" valign="top" align="left" colspan="3">
                                            <asp:GridView ID="gvCertificate" runat="server" AutoGenerateColumns="False" 
                                                BorderColor="#003399" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" 
                                                CssClass="GRD" ForeColor="#333333" GridLines="None" 
                                                OnRowDataBound="gvCertificate_RowDataBound" 
                                                OnRowDeleting="gvCertificate_RowDeleting" Width="100%" 
                                                DataKeyNames="incid">
                                                <rowstyle backcolor="#ffffff" />
                                                <columns>
                                                    <asp:CommandField HeaderText="Edit" ShowSelectButton="True" Visible="False" />
                                                    <asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE"  ShowDeleteButton="True" />
                                                    <asp:BoundField DataField="Manf_ItemName" HeaderText="Item Name" />
                                                    <asp:BoundField DataField="Manf_Item_Quantity" HeaderText="Item Quantity" />
                                                    <asp:BoundField DataField="Manf_Item_Quantity_In" HeaderText="Quantity In" />
                                                    <asp:BoundField DataField="Manf_Item_Quantity_Per" HeaderText="Quantity Per" />
                                                    
                                                    <asp:BoundField DataField="OtherItemName" HeaderText="Type of Quantity" />
                                                    
                                                </columns>
                                                <footerstyle backcolor="#013161" font-bold="True" forecolor="White" />
                                                <pagerstyle backcolor="#013161" forecolor="White" horizontalalign="Center" />
                                                <selectedrowstyle backcolor="#D1DDF1" font-bold="True" forecolor="#333333" />
                                                <headerstyle backcolor="#013161" font-bold="True" forecolor="White" />
                                                <editrowstyle backcolor="#013161" />
                                                <alternatingrowstyle backcolor="White" />
                                            </asp:GridView>
                                        </td>
                                        
                              
                         
                                        
                                    </tr>
                                        <tr id="loaSaveButton" runat="server" visible="false">
                                            <td>

                                            </td>
                                                    
                                <td>
                                     <asp:Button ID="BtnSave1" runat="server" CssClass="btn btn-primary" 
                                                Height="32px"  TabIndex="10" Text="Save" 
                                                Width="90px" OnClick="BtnSave1_Click"   />
                                </td>
                                        </tr>

                                    </table>
                                </td>
                            </tr>
                           
                            <tr>
                                <td>

                                   

                                </td>
                            </tr>
                                        <tr>
                                            <td style="text-align: left; " class="auto-style8">
                                                <asp:CheckBox runat="server" ID="chkOther" Text="" AutoPostBack="true" OnCheckedChanged="chkOther_CheckedChanged" />
                                                Any other specific reasons not worthy of receiving incentives Enterprise
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trOtherReasons" visible="false">
                                            <td style="text-align: left; " class="auto-style8">
                                                <asp:TextBox ID="txtOtherReasons" runat="server" Width="332px" Height="98px" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                        </div> 
                    <div id="divAbide" runat="server">
                        <table style="vertical-align: top; text-align: center;" cellpadding="0" cellspacing="0" width="85%">
                          
                                        <tr id="chkAbideTr" runat="server" visible="false">                                           

                                        <td class="auto-style10" >
                                                    <asp:CheckBox runat="server" ID="chkAbide" Text="" AutoPostBack="true" />
                                                </td>                                                
                                        <td style="float:left;color:red">
<b> I Hereby abide by the conditions specified in the agreement bond submitted by the Unit.</b>

                                                </td>
                                        <td>

                                        </td>
                                            
                                        </tr>
<%--
                                        <tr id="trselectBox">
                                            <td colspan="2" style="float:left">

                                                Please select the box, if there is</td>
                                            <td>

                                            </td>
                                        </tr>--%>
                                
                            </table>
                    </div>
                             <div>
                        <table>
                            <tr>
                                <td style="text-align:justify">
                                    <b><u>Note:</u> After uploading the Agreement Bond Copy & Assignment Letter, click on submit. Afterwards, once again open the incentives dashboard and then click on update latest details and then on "LATEST DETAILS UPDATION". In the details updation page you will be seeing the earlier uploaded documents. Please change the details if there are any and then click on "I Hereby abide by the conditions specified in the agreement bond submitted by the Unit." or if there are no changes to be made then directly click on "I Hereby abide by the conditions specified in the agreement bond submitted by the Unit." and click on Submit button for final submission. </b>
                                </td>
                            </tr>
                        </table>
                    </div>    
                   
                    <div>
                        <table>
                            <tr>
                                <td align="center" style="padding: 5px; margin: 5px; text-align: center;">&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="padding: 5px; margin: 5px" align="center" class="style7">
                                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Height="32px"
                                        Text="Submit" Width="150px" OnClick="btnSave_Click" /></td>
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
                            <tr>
                                <td>
                                     <asp:HiddenField ID="hdfID" runat="server" />
                                    <asp:HiddenField ID="hdfFlagID" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </div>
</asp:Content>


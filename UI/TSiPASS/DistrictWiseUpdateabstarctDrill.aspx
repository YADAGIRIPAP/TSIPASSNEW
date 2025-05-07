<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSIPASS/CCMaster.master" AutoEventWireup="true" CodeFile="DistrictWiseUpdateabstarctDrill.aspx.cs" Inherits="UI_TSIPASS_DistrictWiseUpdateabstarctDrill" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        function GetRowValue(val) {
            if (val != '&nbsp;') {
                val1 = 0;
                window.opener.document.getElementById('ctl00_ContentPlaceHolder1_hdfID').value = val;
                window.opener.document.getElementById('ctl00_ContentPlaceHolder1_hdfFlagID').value = val1;

            }
            window.opener.document.forms[0].submit();
            self.close();

        }
        $(function () {

            $('#MstLftMenu').remove();

        });
    </script>
    <link href="../../css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
    <style type="text/css">
        .ui-datepicker
        {
            font-size: 8pt !important;
           
            padding: 0.2em 0.2em 0;
            width: 250px;
            color: Black;
            z-index:9999 !important;
        }
        select
        {
            color: Black !important;
        }
    </style>

    <style>
        .algnCenter
        {
            text-align: center;
        }
    </style>
        <script type="text/javascript">
            function pageLoad() {
                var date = new Date();
                var yrRange = "2015:" + (date.getFullYear() + 1);

                var currentMonth = date.getMonth();
                var currentDate = date.getDate();
                var currentYear = date.getFullYear();

                $("input[id$='TXTINTERACTIONDATE']").datepicker(
                    {
                        dateFormat: "dd-mm-yy",
                        changeMonth: true,
                        changeYear: true,
                        yearRange: yrRange

                        //  maxDate: new Date(currentYear, currentMonth, currentDate)
                    }); // Will run at every postback/AsyncPostback
               
            }
            $(function () {
                var date = new Date();
                var yrRange = "2015:" + (date.getFullYear() + 1);
                var currentMonth = date.getMonth();
                var currentDate = date.getDate();
                var currentYear = date.getFullYear();
                $("input[id$='TXTINTERACTIONDATE']").datepicker(
                    {
                        //dateFormat: "dd/mm/yy",
                        dateFormat: "dd-mm-yy",
                        //maxDate: new Date(currentYear, currentMonth, currentDate)
                        changeMonth: true,
                        changeYear: true,
                        yearRange: yrRange
                    });
               
            });
        </script>
    <style type="text/css" media="print">
        @page {
            size: landscape;
        }
    </style>
    <style type="text/css">
        blink, .blink {
            animation: blinker 1s linear infinite;
        }

        @keyframes blinker {
            50% {
                opacity: 0;
            }
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
    </style>
    <asp:UpdateProgress ID="UpdateProgress" runat="server" AssociatedUpdatePanelID="updatepanel1">
        <ProgressTemplate>
            <div class="update">
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">

        <ContentTemplate>
            <asp:Panel ID="Panel_1" runat="server">

                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td style="padding-top: 10px; padding-bottom: 20px; padding-left: 9px; height: 675px;"
                            valign="top" align="center">



                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="verdana" Font-Size="15px"></asp:Label><%--<a id="A2" href="#" onserverclick="BtnSave2_Click1" runat="server">
                    <img src="../../Resource/Images/Excel-icon.png" width="20px;" height="20px;" style="float: right;"
                        alt="Excel" /></a>--%>
                                        <asp:ImageButton ImageUrl="~/Resource/Images/Excel-icon.png" ID="excel_button" OnClick="BtnSave2_Click1" Width="20px" Height="20px" Style="float: right;" runat="server" />
                                    </h3>
                                </div>
                                <div class="panel-body">
                                    <table align="center" cellpadding="10" cellspacing="5" style="width: 80%">
                                        <tr>
                                            <td align="center" style="padding: 5px; margin: 5px">
                                                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Names="verdana" Font-Size="13px"
                                                    ForeColor="#006600"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left">
                                                <asp:HyperLink CssClass="btn btn-link" ID="HyperLink1" runat="server" NavigateUrl="~/UI/TSiPASS/DistrictWiseUpdateabstarct.aspx" Text="<< Back"> </asp:HyperLink>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="padding: 5px; margin: 5px">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td align="center" style="text-align: right" valign="middle">
                                                            <asp:Label ID="Label450" runat="server" CssClass="LBLBLACK" Width="200px">District</asp:Label>
                                                        </td>
                                                        <td>:
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlConnectLoad" runat="server" class="form-control txtbox"
                                                                Height="33px" Width="180px" TabIndex="1">
                                                                <asp:ListItem>--Select--</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td>&nbsp;&nbsp; &nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label451" runat="server" CssClass="LBLBLACK" Width="200px">Unit name</asp:Label>
                                                        </td>
                                                        <td>&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtUnitname" runat="server" class="form-control txtbox" Height="28px"
                                                                MaxLength="80" TabIndex="2" ValidationGroup="Save" Width="180px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="8" align="center">
                                                            <asp:Label ID="lblMsg0" runat="server" Font-Bold="True" Font-Names="verdana" Font-Size="13px"
                                                                ForeColor="#006600"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="padding: 5px; margin: 5px; text-align: center;">
                                                <asp:Button ID="BtnSave1" runat="server" CssClass="btn btn-primary" Height="32px"
                                                    OnClick="BtnSave1_Click" TabIndex="10" Text="Search" ValidationGroup="group"
                                                    Width="90px" />
                                                &nbsp;
                                    <asp:Button ID="BtnClear" runat="server" CausesValidation="False" CssClass="btn btn-warning"
                                        Height="32px" TabIndex="10" Text="Cancel" ToolTip="To Clear  the Screen" Width="90px"
                                        OnClick="BtnClear_Click" />



                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="padding: 5px; margin: 5px; text-align: left;">
                                                <b>Note :1) DIC has to upload Undertaking form from the unit holder, describe that they
                                        have dropped the project</b>
                                                <br />
                                                <div align="right">
                                                    <blink><b style="color: red;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2) The Uploaded file size should be less than 2MB</b></blink>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="padding: 5px; margin: 5px" id="Panel1" runat="server">
                                                <%--<asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Style="width: 1000px" Height="600px">--%>
                                                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                    ForeColor="#333333" Height="62px" OnRowDataBound="grdDetails_RowDataBound"
                                                    Width="100%" OnPageIndexChanging="grdDetails_PageIndexChanging"
                                                    ShowFooter="True" OnRowCreated="grdDetails_RowCreated">
                                                    <HeaderStyle ForeColor="#FFFFFF" BackColor="#009688" Height="40px" CssClass="GridviewScrollC1HeaderWrap" />
                                                    <RowStyle Height="40px" CssClass="GridviewScrollC1Item" />
                                                    <PagerStyle CssClass="GridviewScrollC1Pager" />
                                                    <FooterStyle ForeColor="#FFFFFF" BackColor="#009688" Height="40px" CssClass="GridviewScrollC1Footer" />
                                                    <AlternatingRowStyle Height="40px" CssClass="GridviewScrollC1Item2" />
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
                                                        <asp:TemplateField HeaderText="Unit Name">
                                                            <ItemTemplate>
                                                                <asp:HyperLink ID="HyperLink2" Target="_blank" runat="server" NavigateUrl='<%# Eval("intQuessionaireid", "ApplicationTrakerDetailed.aspx?ID={0}") %>'
                                                                    Text='<%# Eval("UnitName") %>' />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <%-- <asp:BoundField DataField="UnitName" HeaderText="Unit Name" />--%>
                                                        <asp:TemplateField HeaderText="UID No">
                                                            <ItemTemplate>
                                                                <asp:HyperLink ID="HyperLink1" Target="_blank" runat="server" NavigateUrl='<%# Eval("intCFEEnterpidnew", "ViewCFEPrint.aspx?Id={0}") %>'
                                                                    Text='<%# Eval("UID_No") %>' />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <%--<asp:BoundField DataField="UID_No" HeaderText="UID No" />--%>
                                                        <asp:BoundField DataField="Mno" HeaderText="Mobile Number" />
                                                        <asp:BoundField DataField="lineofActivity" HeaderText="line of Activity" />
                                                        <asp:BoundField DataField="District" HeaderText="District" />
                                                        <asp:BoundField DataField="Manda_lName" HeaderText="Mandal" />
                                                        <asp:BoundField DataField="Investment" HeaderText="Investment(Rs. in Crs)" />
                                                        <asp:BoundField DataField="NoofEmployee" HeaderText="No of Employee" />
                                                        <asp:BoundField DataField="ApplicationDate" HeaderText="Application Date" DataFormatString="{0:dd/MM/yyyy}" />
                                                        <asp:BoundField DataField="ApprovalDate" HeaderText="Approval Date" DataFormatString="{0:dd/MM/yyyy}" />
                                                        <asp:BoundField DataField="Progress" HeaderText="Progress" />
                                                        <%--<asp:BoundField DataField="Status" HeaderText="Status" />--%>
                                                        <asp:TemplateField HeaderText="Update The Status">
                                                            <ItemTemplate>
                                                                <table style="width: 100%" cellpadding="4" cellspacing="5">
                                                                    <tr>
                                                                        <td style="width: 132px; height: 29px">
                                                                            <asp:DropDownList ID="ddlStatus" runat="server" Width="220px" CssClass="DROPDOWN"
                                                                                AutoPostBack="True" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged">
                                                                                <asp:ListItem>--Select--</asp:ListItem>
                                                                                <asp:ListItem>COMMENCED OPERATIONS</asp:ListItem>
                                                                                <asp:ListItem>YET TO START CONSTRUCTION</asp:ListItem>
                                                                                <asp:ListItem>ADVANCED STAGE</asp:ListItem>
                                                                                <asp:ListItem>INITIAL STAGE</asp:ListItem>
                                                                                <asp:ListItem>DROPPED</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr ID="TRRBTINTERACTED" runat="server" visible="false">
                                                                        <td style="width: 132px; height: 29px">
                                                                            <b>Whether interacted :</b>
                                                                            <asp:RadioButtonList ID="rbtinteracted" RepeatDirection="Horizontal" AutoPostBack="true" runat="server" OnSelectedIndexChanged="rbtinteracted_SelectedIndexChanged" >
                                                                                <asp:ListItem Value="1">YES</asp:ListItem>
                                                                                <asp:ListItem Value="0">NO</asp:ListItem>
                                                                            </asp:RadioButtonList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="TRRBTINTERACTIONDATE" runat="server" visible="false">
                                                                        <td style="width: 132px; height: 29px">
                                                                            <b>Date of Interaction :</b>
                                                                            <asp:TextBox ID="TXTINTERACTIONDATE" Height="30PX" Width="220px"
                                                                                 runat="server"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="TRWORKINGSTATUS" runat="server" visible="false">
                                                                        <td style="width: 132px; height: 29px">
                                                                            <b>Present Working Status :</b>
                                                                            <asp:TextBox ID="TXTPRESENTWORKINGSTATUS"  Height="30px" Width="220px"
                                                                                 runat="server"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="width: 132px; height: 29px">
                                                                            <b>Remarks For Status Change :</b>
                                                                            <asp:TextBox ID="txtreasonschange" TextMode="MultiLine" Height="80px" Width="250px"
                                                                                Text='<%# Eval("RemarksStatus") %>' runat="server"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="dropupload" runat="server" visible="false">
                                                                        <td><b>Upload Document : </b>
                                                                            <div style="float: left">
                                                                                <asp:FileUpload ID="fluPrincipalEmployersRegistrationCertificate" Width="220px" runat="server"
                                                                                    Height="28px" />
                                                                                <asp:Label ForeColor="Blue" runat="server" ID="Label6new"></asp:Label>
                                                                            </div>
                                                                        </td>
                                                                    </tr>

                                                                    <tr id="Truploadpicture" runat="server">
                                                                        <td><b>Upload Picture : </b>
                                                                            <div style="float: left">
                                                                                <asp:FileUpload ID="FileUpload1" Width="220px" runat="server"
                                                                                    Height="28px" />
                                                                                <asp:Label ForeColor="Blue" runat="server" ID="Label2"></asp:Label>
                                                                            </div>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td align="center">
                                                                            <asp:Button ID="BtnSaveg" runat="server" CssClass="btn btn-primary" Height="30px" TabIndex="10"
                                                                                Text="Submit" ValidationGroup="group" Width="80px" OnClick="BtnSaveg_Click" />
                                                                            <asp:HiddenField ID="HdfintApplicationid" runat="server" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="LastUpdateddate" ItemStyle-Font-Bold="true" HeaderText="Last Updated Date" />
                                                    </Columns>

                                                </asp:GridView>
                                                <%--</asp:Panel>--%>
                                                <asp:Label ID="lblresult" runat="server" CssClass="LBLBLACK" Width="200px"></asp:Label>
                                            </td>
                                        </tr>
                                        <%--<tr id="divExport" visible="false" runat="server">
                                <td align="center" style="text-align: center;" valign="top">
                                    <asp:GridView ID="grdExport1" runat="server" AutoGenerateColumns="true" ShowFooter="true">
                                        <Columns>
                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"
                                                HeaderText="S.No">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1%>
                                                </ItemTemplate>
                                                <ItemStyle CssClass="text-center" HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <RowStyle Wrap="true" />
                                    </asp:GridView>
                                </td>
                            </tr>--%>
                                        <tr id="Tr1" runat="server" visible="false">
                                            <td align="center" style="padding: 5px; margin: 5px">
                                                <asp:Panel ID="Panel2" runat="server" ScrollBars="Both" Style="width: 1000px" Height="600px">
                                                    <asp:GridView ID="GridExport" runat="server" AutoGenerateColumns="False">
                                                        <Columns>
                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                <ItemTemplate>
                                                                    <%# Container.DataItemIndex + 1%>
                                                                </ItemTemplate>
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <ItemStyle Width="50px" />
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="UnitName" HeaderText="Unit Name" />
                                                            <asp:BoundField DataField="UID_No" HeaderText="UID No" />
                                                            <asp:BoundField DataField="Address" HeaderText="Address" />
                                                            <asp:BoundField DataField="lineofActivity" HeaderText="line of Activity" />
                                                            <asp:BoundField DataField="District" HeaderText="District" />
                                                            <asp:BoundField DataField="Manda_lName" HeaderText="Mandal" />
                                                            <asp:BoundField DataField="MobileNumber" HeaderText="Mobile No" />
                                                            <asp:BoundField DataField="Sector" HeaderText="Sector" />
                                                            <asp:BoundField DataField="Investment" HeaderText="Investment(Rs. in Crs)" />
                                                            <asp:BoundField DataField="NoofEmployee" HeaderText="No of Employee" />
                                                            <asp:BoundField DataField="ApplicationDate" HeaderText="Application Date" DataFormatString="{0:dd/MM/yyyy}" />
                                                            <asp:BoundField DataField="ApprovalDate" HeaderText="Approval Date" DataFormatString="{0:dd/MM/yyyy}" />
                                                            <asp:BoundField DataField="Progress" HeaderText="Progress" />
                                                            <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        </Columns>
                                                    </asp:GridView>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left">
                                                <asp:HyperLink CssClass="btn btn-link" ID="HyperLink2" runat="server" NavigateUrl="~/UI/TSiPASS/DistrictWiseUpdateabstarct.aspx" Text="<< Back"> </asp:HyperLink>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>

            </asp:Panel>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="excel_button" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

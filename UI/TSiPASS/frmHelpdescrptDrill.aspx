<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSIPASS/CCMaster.master" AutoEventWireup="true"
    CodeFile="frmHelpdescrptDrill.aspx.cs" Inherits="UI_TSIPASS_frmHelpdescrptDrill"
    EnableEventValidation="false" %>

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

        .algnRight {
            text-align: center;
            padding-right: 5px;
        }
    </style>
    <script type="text/javascript" language="javascript">

        function OpenPopup() {

            window.open("Lookups/LookupBDC.aspx", "List", "scrollbars=yes,resizable=yes,width=1000,height=650;display = block;position=absolute");

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
    <%-- <script type="text/javascript" src="../../js/jquery.min.js"></script>

    <script type="text/javascript" src="../../js/jquery-ui.min.js"></script>

    <script type="text/javascript" src="../../js/gridviewScroll.min.js"></script>--%>
    <script type="text/javascript">

        //        function pageLoad() {

        //            $('#<%=grdDetails.ClientID%>').gridviewScroll({
        //                width: "100%",
        //                height: "100%",
        //                arrowsize: 30,
        //                varrowtopimg: "../../images/arrowvt.png",
        //                varrowbottomimg: "../../images/arrowvb.png",
        //                harrowleftimg: "../../images/arrowhl.png",
        //                harrowrightimg: "../../images/arrowhr.png"
        //            });
        //        }

        $(function () {

            $('#MstLftMenu').remove();

        });

    </script>
    <style>
        .GridviewScrollC1Item TD {
            border-bottom: none !important;
        }
    </style>
    <asp:UpdatePanel ID="upnl_newRegistration" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Panel ID="pnl_Data" runat="server">
                <div align="left">
                    <ol class="breadcrumb">
                        You are here &nbsp;!&nbsp; &nbsp; &nbsp;
                        <li><i class="fa fa-dashboard"></i><a href="Home.aspx"></a></li>
                        <li class=""><i class="fa fa-fw fa-edit"></i></li>
                        <li class="active"><i class="fa fa-edit"></i><a href="#">VIEW DETAILS</a> </li>
                    </ol>
                </div>
                <div align="left">
                    <div class="row" align="left">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading" align="center">
                                    <h3 class="panel-title" style="font-weight: bold;">
                                        <asp:Label ID="lblHeading" runat="server"></asp:Label></h3>
                                </div>
                                <div class="panel-body">
                                    <table align="center" cellpadding="10" cellspacing="5" style="width: 100%">
                                        <tr align="center">
                                            <td style="padding: 5px; margin: 5px" valign="top" align="center">
                                                <table width="80%">
                                                    <tr>
                                                        <td style="padding: 5px; margin: 5px" align="left">
                                                            <asp:HyperLink CssClass="btn btn-link" ID="HyperLink1" runat="server" Text="<< Back">
                                                            </asp:HyperLink>
                                                        </td>
                                                        <td class="col-xs-3" style="padding: 5px; margin: 5px">&nbsp;
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px" align="center">&nbsp;
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">&nbsp;
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px" align="right">&nbsp;
                                                        </td>
                                                        <td class="col-xs-5" style="padding: 5px; text-align: right; margin: 5px">&nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr align="center">
                                                        <td style="padding: 5px; margin: 5px" align="center">
                                                            <div class="input-group">
                                                                <div class="input-group-addon">
                                                                    From Date
                                                                </div>
                                                                <asp:TextBox ID="txtFromDate" runat="server" Enabled="false" class="form-control txtbox"
                                                                    Height="28px" MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group"
                                                                    Width="125px"></asp:TextBox>
                                                                <%--<cc1:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd-MM-yyyy" TargetControlID="txtFromDate">
                                                                </cc1:CalendarExtender>--%>
                                                            </div>
                                                        </td>
                                                        <td style="padding: 5px; margin: 5px">
                                                            <div class="input-group">
                                                                <div class="input-group-addon">
                                                                    To Date
                                                                </div>
                                                                <asp:TextBox ID="txtTodate" runat="server" Enabled="false" class="form-control txtbox"
                                                                    Height="28px" MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group"
                                                                    Width="125px"></asp:TextBox>
                                                                <%-- <cc1:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd-MM-yyyy" TargetControlID="txtTodate">
                                                                </cc1:CalendarExtender>--%>
                                                            </div>
                                                        </td>
                                                        <td class="col-xs-5" style="padding: 5px; text-align: right; margin: 5px" colspan="5">
                                                            <asp:Label ID="Label1" runat="server" CssClass="LBLBLACK">Report as on date</asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="Left" style="border: none;">
                                                <asp:Button ID="btn_export" runat="server" OnClientClick="exportData();" CssClass="btn btn-success btn-sm"
                                                    Text="&#xf019; Exports To Excel" Style="float: right; font-family: FontAwesome;"
                                                    OnClick="btn_export_Click" />
                                            </td>
                                        </tr>
                                        <tr id="divPrint" runat="server" style="width: 100%">
                                            <td align="center" style="padding: 5px; margin: 5px; text-align: center;" valign="top">
                                                <asp:GridView ID="grdDetails" CssClass="floatingTable" runat="server" AutoGenerateColumns="false"
                                                    CellPadding="5" ShowFooter="True" Width="100%" OnRowDataBound="grdDetails_RowDataBound">
                                                    <HeaderStyle Height="40px" CssClass="GridviewScrollC1HeaderWrap" />
                                                    <RowStyle CssClass="GridviewScrollC1Item" />
                                                    <PagerStyle CssClass="GridviewScrollC1Pager" />
                                                    <FooterStyle Height="40px" CssClass="GridviewScrollC1Header" />
                                                    <AlternatingRowStyle CssClass="GridviewScrollC1Item2" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                            <ItemTemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="int_fbid" HeaderText="Helpdesk ID" />
                                                        <asp:BoundField DataField="hd_Code" HeaderText="Reference No" />
                                                        <asp:TemplateField HeaderText="Uid NO">
                                                            <ItemTemplate>
                                                                <asp:HyperLink ID="HyperLink2" Target="_blank" Text='<%# Eval("UID_No") %>' runat="server"
                                                                    NavigateUrl='<%# Eval("TrackerUrl") %>'></asp:HyperLink>
                                                                <asp:Label ID="lblCreatedby" runat="server" Text='<%#Eval("Created_by")%>'></asp:Label>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Left" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="NameofIndustrialUnder" HeaderText="Unit Name" />
                                                        <asp:BoundField DataField="Fb_Type" HeaderText="Feedback Type"></asp:BoundField>
                                                        <asp:BoundField DataField="hd_desc" HeaderText="User change Request/ Comments">
                                                            <HeaderStyle HorizontalAlign="Left" Width="300px"></HeaderStyle>
                                                            <ItemStyle HorizontalAlign="Left" Width="300px"></ItemStyle>
                                                            <ControlStyle Width="450px" />
                                                        </asp:BoundField>
                                                        <asp:TemplateField HeaderText="Uploaded Document">
                                                            <ItemTemplate>
                                                                <asp:HyperLink ID="hypLetter" runat="server" NavigateUrl='<%#Eval("industriesFilePath") %>' Target="_blank"> </asp:HyperLink>
                                                                <asp:HyperLink ID="hprlink" runat="server" NavigateUrl='<%#Eval("FilePath") %>' Target="_blank"></asp:HyperLink>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Status" HeaderText="Status">
                                                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle"></HeaderStyle>
                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="Remarks" HeaderText="Remarks"></asp:BoundField>
                                                        <asp:BoundField DataField="regdate" HeaderText="Date of Submition">
                                                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle"></HeaderStyle>
                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="150px"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="respdate" HeaderText="Date of Closure" />
                                                        <asp:BoundField DataField="Up_Date" HeaderText="Date of Under Proccess" />
                                                        <asp:TemplateField HeaderText="Change Status">
                                                            <ItemTemplate>
                                                                <table style="width: 100%" cellspacing="0" cellpadding="2" border="0">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td style="text-align: left" align="left">
                                                                                <asp:DropDownList ID="ddlchStatus" runat="server" Width="152px" CssClass="DROPDOWN"
                                                                                    ValidationGroup="group">
                                                                                    <asp:ListItem>Closed</asp:ListItem>
                                                                                    <asp:ListItem>Rejected</asp:ListItem>
                                                                                    <%--<asp:ListItem>Under Process</asp:ListItem>--%>
                                                                                </asp:DropDownList>
                                                                            </td>
                                                                        </tr>
                                                                        <tr id="Pending" runat="server">
                                                                            <td style="text-align: left" align="left">
                                                                                <asp:TextBox ID="txtremarks" TabIndex="1" runat="server" Width="300px" CssClass="TXTBOX"
                                                                                    ValidationGroup="group" Height="80px" TextMode="MultiLine"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="text-align: left" align="left">
                                                                                <asp:DropDownList ID="ddltypeprob" runat="server" Width="152px" CssClass="DROPDOWN"
                                                                                    ValidationGroup="group">
                                                                                    <asp:ListItem>Select</asp:ListItem>
                                                                                    <asp:ListItem>Application Problem</asp:ListItem>
                                                                                    <asp:ListItem>General Enquiry</asp:ListItem>
                                                                                    <asp:ListItem>Data Correction</asp:ListItem>
                                                                                    <asp:ListItem>Other</asp:ListItem>
                                                                                </asp:DropDownList>
                                                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator68" runat="server" ControlToValidate="ddltypeprob"
                                                                        ErrorMessage="Please Select Type of Problem" InitialValue="Select" ValidationGroup="group">*</asp:RequiredFieldValidator>--%>
                                                                            </td>

                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:FileUpload runat="server" ID="fupReply" />
                                                                            </td>

                                                                        </tr>
                                                                        <tr id="Close" runat="server">
                                                                            <td style="padding-bottom: 5px; padding-top: 5px; text-align: center">&nbsp;<asp:Button ID="BtnSave" TabIndex="10" OnClick="BtnSave_Click" runat="server"
                                                                                Width="122px" Text="Change Status" CssClass="BUTTONLONG" ValidationGroup="group"
                                                                                ToolTip="To Save  the data" Height="30px"></asp:Button>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="300px"></ItemStyle>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="anothermailid" Visible="False" />
                                                        <%-- <asp:BoundField DataField="intDepartmentApprovalid" HeaderText="Department Approval ID" />--%>
                                                        <asp:TemplateField HeaderText="Attachment" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblFileName" runat="server" Text='<%#Eval("LINKNEW") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr id="divExport" visible="false" runat="server">
                                            <td align="center" style="text-align: center;" valign="top">
                                                <asp:GridView ID="grdExport" runat="server" AutoGenerateColumns="true" ShowFooter="true">
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
                                        </tr>
                                        <tr>
                                            <td align="left" style="padding: 5px; margin: 5px; text-align: left;" valign="top">&nbsp;
                                            </td>
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
                                    <asp:HiddenField ID="hdfID" runat="server" />
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                        ShowSummary="False" ValidationGroup="group" />
                                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True"
                                        ShowSummary="False" ValidationGroup="child" />
                                    <asp:HiddenField ID="hdfFlagID" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btn_export" />
             <asp:PostBackTrigger ControlID="grdDetails" />
        </Triggers>
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

            $("input[id$='txtFromDate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback
            $("input[id$='txtTodate']").datepicker(
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
            $("input[id$='txtFromDate']").datepicker(
                {
                    //dateFormat: "dd/mm/yy",
                    dateFormat: "dd/mm/yy",
                    //maxDate: new Date(currentYear, currentMonth, currentDate)
                });
            $("input[id$='txtTodate']").datepicker(
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
            width: 250px;
        }
    </style>
</asp:Content>

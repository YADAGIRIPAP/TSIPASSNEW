<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true" CodeFile="frmFirmRegistrationDetails.aspx.cs" Inherits="UI_TSiPASS_frmFirmRegistrationDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript" language="javascript">    </script>
    <script src="../../Resource/Scripts/js/validations.js" type="text/javascript"></script>
    <link href="../../css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
    <style type="text/css">
        .ui-datepicker {
            font-size: 8pt !important;
            padding: 0.2em 0.2em 0;
            width: 250px;
            color: Black;
            z-index: 9999 !important;
        }

        select {
            color: Black !important;
        }
    </style>

    <style>
        .algnCenter {
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

            $("input[id$='txtFromDate']").datepicker(
                {
                    dateFormat: "dd-mm-yy",
                    changeMonth: true,
                    changeYear: true,
                    yearRange: yrRange

                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback
            $("input[id$='txtTodate']").datepicker(
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
            $("input[id$='txtFromDate']").datepicker(
                {
                    //dateFormat: "dd/mm/yy",
                    dateFormat: "dd-mm-yy",
                    //maxDate: new Date(currentYear, currentMonth, currentDate)
                    changeMonth: true,
                    changeYear: true,
                    yearRange: yrRange
                });
            $("input[id$='txtTodate']").datepicker(
                {
                    dateFormat: "dd-mm-yy",
                    changeMonth: true,
                    changeYear: true,
                    yearRange: yrRange

                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback
        });
    </script>
    <asp:UpdatePanel ID="updatepanel1" runat="server">
        <ContentTemplate>
            <div align="left">
                <ol class="breadcrumb">
                    You are here &nbsp;!&nbsp; &nbsp; &nbsp;
                    <li><i class="fa fa-dashboard"></i><a href="#">Registration of Partnership</a> </li>
                </ol>
            </div>
            <div align="center">
                <div class="row" align="center">
                    <div class="col-lg-11">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Registration of Partnership Firms and Societies</h3>
                            </div>
                            <div class="panel-body">
                                <table align="center" cellpadding="10" cellspacing="5" style="width: 100%">
                                    <tr>
                                        <td style="padding: 5px; margin: 5px">
                                            <div class="panel panel-default">
                                                <div class="panel-body" align="center">
                                                    <table cellpadding="3" cellspacing="5" style="width: 100%; text-align: center">
                                                        <tr align="center">
                                                            <td align="center" valign="top">&nbsp;
                                                                 <div class="input-group">
                                                                     <div class="input-group-addon">
                                                                         From Date
                                                                     </div>
                                                                     <asp:TextBox ID="txtFromDate" runat="server" class="form-control txtbox" Height="28px" MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group" Width="125px"></asp:TextBox>
                                                                 </div>
                                                            </td>
                                                            <td align="center" valign="top">&nbsp;
                                                                 <div class="input-group">
                                                                     <div class="input-group-addon">
                                                                         To Date
                                                                     </div>
                                                                     <asp:TextBox ID="txtTodate" runat="server" class="form-control txtbox" Height="28px" MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group" Width="125px"></asp:TextBox>
                                                                 </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 395px; font-size: 16px;">&nbsp;
                                                            </td>
                                                            <td style="width: 30px">&nbsp;
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" align="center">
                                                                <asp:RadioButtonList ID="rdregistration" runat="server" RepeatDirection="Horizontal"
                                                                    AutoPostBack="True" OnSelectedIndexChanged="rdregistration_SelectedIndexChanged">
                                                                    <asp:ListItem Text=" &nbsp; Firm Name Change  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" Value="Name"></asp:ListItem>
                                                                    <asp:ListItem Text="&nbsp; Firm Address Change &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" Value="Address"></asp:ListItem>
                                                                    <asp:ListItem Text=" &nbsp; Firm Partner Change &nbsp;&nbsp;&nbsp;&nbsp;" Value="Partner"></asp:ListItem>
                                                                    <asp:ListItem Text=" &nbsp; Firm Partner Address Change &nbsp;&nbsp;&nbsp;&nbsp;" Value="PartnerAddress"></asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </td>

                                                        </tr>

                                                        <tr>
                                                            <td style="width: 395px; font-size: 16px;">&nbsp;
                                                            </td>
                                                            <td style="width: 30px">&nbsp;
                                                            </td>

                                                        </tr>
                                                        <tr runat="server" visible="false" id="trgrid">
                                                            <td style="width: 100%" align="center" colspan="3" valign="top">
                                                                <div style="width: 100%">
                                                                    <asp:GridView ID="grdfirmnamechange" runat="server" AutoGenerateColumns="True"
                                                                        CellPadding="5" ForeColor="#333333" Height="62px"
                                                                        ShowFooter="True" Width="100%">
                                                                        <FooterStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                                        <RowStyle BackColor="#EBF2FE" HorizontalAlign="Left" VerticalAlign="Middle" />
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1%>
                                                                                </ItemTemplate>
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <ItemStyle Width="50px" />
                                                                            </asp:TemplateField>

                                                                        </Columns>
                                                                        <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                        <HeaderStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                                        <EditRowStyle BackColor="#B9D684" />
                                                                        <AlternatingRowStyle BackColor="White" />
                                                                    </asp:GridView>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <br />
                                                        <tr runat="server" visible="false" id="trfirmAddresschange">
                                                            <td style="width: 100%" align="center" colspan="3" valign="top">
                                                                <div style="width: 100%">
                                                                    <asp:GridView ID="grdfirmAddresschange" runat="server" AutoGenerateColumns="True"
                                                                        CellPadding="5" ForeColor="#333333" Height="62px"
                                                                        ShowFooter="True" Width="100%">
                                                                        <FooterStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                                        <RowStyle BackColor="#EBF2FE" HorizontalAlign="Left" VerticalAlign="Middle" />
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1%>
                                                                                </ItemTemplate>
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <ItemStyle Width="50px" />
                                                                            </asp:TemplateField>

                                                                        </Columns>
                                                                        <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                        <HeaderStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                                        <EditRowStyle BackColor="#B9D684" />
                                                                        <AlternatingRowStyle BackColor="White" />
                                                                    </asp:GridView>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <br />
                                                        <tr runat="server" visible="false" id="trfirmPartnerchange">
                                                            <td style="width: 100%" align="center" colspan="3" valign="top">
                                                                <div style="width: 100%">
                                                                    <asp:GridView ID="grdfirmPartnerchange" runat="server" AutoGenerateColumns="True"
                                                                        CellPadding="5" ForeColor="#333333" Height="62px"
                                                                        ShowFooter="True" Width="100%">
                                                                        <FooterStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                                        <RowStyle BackColor="#EBF2FE" HorizontalAlign="Left" VerticalAlign="Middle" />
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1%>
                                                                                </ItemTemplate>
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <ItemStyle Width="50px" />
                                                                            </asp:TemplateField>

                                                                        </Columns>
                                                                        <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                        <HeaderStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                                        <EditRowStyle BackColor="#B9D684" />
                                                                        <AlternatingRowStyle BackColor="White" />
                                                                    </asp:GridView>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <br />
                                                        <tr runat="server" visible="false" id="trfirmPartneraddresschange">
                                                            <td style="width: 100%" align="center" colspan="3" valign="top">
                                                                <div style="width: 100%">
                                                                    <asp:GridView ID="grdfirmPartneraddresschange" runat="server" AutoGenerateColumns="True"
                                                                        CellPadding="5" ForeColor="#333333" Height="62px"
                                                                        ShowFooter="True" Width="100%">
                                                                        <FooterStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                                        <RowStyle BackColor="#EBF2FE" HorizontalAlign="Left" VerticalAlign="Middle" />
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1%>
                                                                                </ItemTemplate>
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <ItemStyle Width="50px" />
                                                                            </asp:TemplateField>

                                                                        </Columns>
                                                                        <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                        <HeaderStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                                        <EditRowStyle BackColor="#B9D684" />
                                                                        <AlternatingRowStyle BackColor="White" />
                                                                    </asp:GridView>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 100%" align="center" colspan="3" valign="top"></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" colspan="3" style="width: 100%" valign="top">&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" colspan="3" style="width: 100%" valign="top">&nbsp;</td>
                                                        </tr>

                                                        <caption>
                                                            <br />
                                                            <br />
                                                            <tr>
                                                                <td align="center" style="padding: 5px; margin: 5px">
                                                                    <div id="success" runat="server" class="alert alert-success" visible="false">
                                                                        <a aria-label="close" class="close" data-dismiss="alert" href="AddQualification.aspx">×</a> <strong>Success!</strong><asp:Label ID="lblmsg" runat="server"></asp:Label>
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
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                &nbsp;
                            </div>
                        </div>
                        <tr>
                            <td align="center" style="padding: 5px; margin: 5px">
                                <table cellpadding="2" style="width: 100%">
                                    <tr>
                                        <td style="width: 417px">&nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="padding: 5px; margin: 5px"></td>
                        </tr>
                        <asp:HiddenField ID="hdfID" runat="server" />
                        <asp:HiddenField ID="hdfFlagID" runat="server" />
                    </div>
                </div>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
    <%--</div>
       </td>
        </tr>
    </table>--%>
</asp:Content>


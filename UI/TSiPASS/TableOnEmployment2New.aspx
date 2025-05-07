<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true" CodeFile="TableOnEmployment2New.aspx.cs" Inherits="UI_TSiPASS_TableOnEmployment2New" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script language="javascript" type="text/javascript">
        function Panel1() {
            document.getElementById('<%=Button1.ClientID %>').style.display = "none";
              document.getElementById('<%=Button2.ClientID %>').style.display = "none";
              document.getElementById('<%=tblselection.ClientID %>').style.display = "none";

              var panel = document.getElementById("<%=divPrint1.ClientID %>");
              var printWindow = window.open('', '', 'height=400,width=800');
              printWindow.document.write('<html><head><h3 style="width: 100%;text-align: center;">Government of Telangana</h3>');

              printWindow.document.write('</head><body >');
              printWindow.document.write(panel.innerHTML);
              printWindow.document.write('</body></html>');
              printWindow.document.close();

              setTimeout(function () {
                  printWindow.print();
                  location.reload(true);
                  printWindow.close();
              }, 1000);
              return false;

          }


          $(function () {

              $('#MstLftMenu').remove();

          });
    </script>
     <%--datepicker added on 17/01/2019--%>
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

    <table id="divPrint" runat="server" border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td style="padding-top: 10px; padding-bottom: 20px; padding-left: 9px; height: 675px;"
                valign="top" align="center">
                <div class="panel panel-default">
                    <div class="panel-heading" style="text-align: center">
                        <h3 class="panel-title" style="font-weight: bold;">
                            <asp:Label ID="lblHeading" runat="server">R6.4 : Employment Potential Abstract</asp:Label>
                            <a id="Button2" href="#" onclick="javascript:return Panel1();"
                                runat="server">
                              <%--  <img src="../../Resource/Images/pdf-icon.png" width="20px;" height="20px;" style="float: right;"
                                    alt="PDF" />--%></a> <a id="Button1" href="#" onserverclick="BtnSave2_Click" runat="server">
                                        <img src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/Resource/Images/Excel-icon.png" width="20px;" height="20px;" style="float: right;"
                                            alt="Excel" /></a>
                                            <a id="pdfPrint" href="#" onclick="javascript:return Panel1();"
                                                    runat="server">
                                                    <img src="../../Resource/Images/pdf-printer-icon.jpg" alt="PDF" width="30px;" height="30px;"
                                                        style="float: right;" /></a>
                                            </h3>
                    </div>
                    <div class="panel-body">
                        <table align="center" cellpadding="10" cellspacing="5" style="width: 50%; font-family: 'Trebuchet MS'">
                            <tr>
                                <td style="padding: 5px; margin: 5px" align="right">
                                    <table runat="server" id="tblselection" cellpadding="4" cellspacing="5" style="width: 100%">
                                        <tr>
                                            <td class="col-xs-3" style="padding: 5px; margin: 5px">
                                                <asp:HyperLink CssClass="btn btn-link" ID="HyperLink1" runat="server" NavigateUrl="~/UI/TSiPASS/ReportsDashboardNew.aspx"
                                                    Text="<< Back">
                                                </asp:HyperLink>
                                            </td>
                                            <td class="col-xs-3" style="padding: 5px; margin: 5px" runat="server" visible="false">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        Type
                                                    </div>
                                                    <asp:DropDownList ID="ddlType" runat="server" class="form-control txtbox" Height="33px"
                                                        Width="180px" OnSelectedIndexChanged="ddlType_SelectedIndexChanged" AutoPostBack="true">
                                                        <asp:ListItem>--Select--</asp:ListItem>
                                                        <%-- <asp:ListItem Value="1">Cumulative</asp:ListItem>--%>
                                                        <%--<asp:ListItem Value="2">2015-16</asp:ListItem>--%>
                                                        <asp:ListItem Value="3">2016-17</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </td>
                                            <td style="padding: 5px; margin: 5px" align="center" runat="server" id="tdFromDate">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        From Date
                                                    </div>

                                                    <asp:TextBox ID="txtFromDate" runat="server" class="form-control txtbox" Height="28px" MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group" Width="125px"></asp:TextBox>
                                                  <%--  <cc1:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd-MM-yyyy" TargetControlID="txtFromDate">
                                                    </cc1:CalendarExtender>--%>
                                                </div>
                                            </td>
                                            <td style="padding: 5px; margin: 5px" runat="server" id="tdToDate">

                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        To Date
                                                    </div>
                                                    <asp:TextBox ID="txtTodate" runat="server" class="form-control txtbox" Height="28px" MaxLength="40" onkeypress="NumberOnly()" TabIndex="1" ValidationGroup="group" Width="125px"></asp:TextBox>
                                                    <%--<cc1:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd-MM-yyyy" TargetControlID="txtTodate">
                                                    </cc1:CalendarExtender>--%>
                                                </div>
                                            </td>
                                            <td style="padding: 5px; margin: 5px" align="right">
                                                <asp:Button ID="Button3" runat="server" CssClass="btn btn-default" TabIndex="10"
                                                    Text="Submit" OnClick="BtnSave1_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="col-xs-5" style="padding: 5px; text-align: right; margin: 5px">
                                    <%--<asp:Label ID="Label1" runat="server" CssClass="LBLBLACK">Report as on date</asp:Label>--%>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="col-xs-5" style="padding: 5px; text-align: right; margin: 5px">
                                    <asp:Label ID="Label1" runat="server" CssClass="LBLBLACK">Report as on date</asp:Label>
                                </td>
                            </tr>
                            <tr runat="server" id="rptdatef">
                                <td colspan="2" class="col-xs-5" style="padding: 5px; text-align: right; margin: 5px">
                                    <asp:Label ID="Label2" runat="server" CssClass="LBLBLACK"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="col-xs-5" style="padding: 5px; text-align: right; margin: 5px">
                                    <asp:Button ID="btnNewPdf" runat="server" CssClass="btn btn-primary" Height="32px"
                                        TabIndex="10" Text="Generate Pdf" OnClick="btnNewPdf_Click" />
                                </td>
                            </tr>
                            <tr id="divPrint1" runat="server">
                                <td colspan="2" align="center" style="padding: 5px; margin: 5px">
                                    <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                        OnRowDataBound="grdDetails_RowDataBound" Width="100%" OnPageIndexChanging="grdDetails_PageIndexChanging"
                                        ShowFooter="True" OnRowCreated="grdDetails_RowCreated" OnSelectedIndexChanged="grdDetails_SelectedIndexChanged">
                                        <HeaderStyle ForeColor="#FFFFFF" BackColor="#009688" Height="40px" CssClass="GridviewScrollC1HeaderWrap" />
                                        <RowStyle Height="40px" CssClass="GridviewScrollC1Item" />
                                        <PagerStyle CssClass="GridviewScrollC1Pager" />
                                        <FooterStyle ForeColor="#FFFFFF" BackColor="#009688" Height="40px" CssClass="GridviewScrollC1Footer" />
                                        <AlternatingRowStyle Height="40px" CssClass="GridviewScrollC1Item2" />
                                        <Columns>
                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S.No">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex +1 %>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Employment Range" HeaderText="Employment Range"></asp:BoundField>
                                            <asp:HyperLinkField ControlStyle-Font-Underline="false" 
                                                FooterStyle-CssClass="text-right" DataTextField="Number" HeaderText="No of Industries">
                                                <FooterStyle HorizontalAlign="Center" Font-Bold="true" Font-Underline="false" CssClass="text-right" />
                                                <ItemStyle Font-Underline="false" HorizontalAlign="Center" CssClass="text-right" />
                                            </asp:HyperLinkField>
                                            <asp:HyperLinkField ControlStyle-Font-Underline="false" 
                                                FooterStyle-CssClass="text-center" DataTextField="Investment" HeaderText="Investment (Rs. in Cr)">
                                                <FooterStyle HorizontalAlign="Center" Font-Bold="true" Font-Underline="false" CssClass="text-right" />
                                                <ItemStyle Font-Underline="false" HorizontalAlign="Center" CssClass="text-right" />
                                            </asp:HyperLinkField>
                                            <asp:HyperLinkField ControlStyle-Font-Underline="false" 
                                                FooterStyle-CssClass="text-center" DataTextField="Employment" HeaderText="Total Employment">
                                                <FooterStyle HorizontalAlign="Center" Font-Bold="true" Font-Underline="false" CssClass="text-right" />
                                                <ItemStyle Font-Underline="false" HorizontalAlign="Center" CssClass="text-right" />
                                            </asp:HyperLinkField>
                                        </Columns>
                                    </asp:GridView>
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
                    </div>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>



﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true" CodeFile="CheckVerifyCOI.aspx.cs" Inherits="UI_TSiPASS_CheckVerifyCOI" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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

        .CS {
            background-color: #abcdef;
            color: Yellow;
            border: 1px solid #1d9a5b;
            font: Verdana 10px;
            padding: 1px 4px;
            font-family: Palatino Linotype, Arial, Helvetica, sans-serif;
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

        .style7 {
            color: #FF3300;
        }

        .style8 {
            color: #FF0000;
            font-weight: bold;
        }

        .GRD {
            width: 800px;
            height: auto;
            border-color: #013161;
            border-style: solid;
            border-width: 1px;
            text-transform: capitalize;
            padding: 5px;
        }

        .GRDHEADER {
            border: 1px solid #1d9a5b;
            color: #1d9a5b;
            vertical-align: middle;
            text-align: center;
            height: 25px;
            width: 50px;
            padding: 10px;
            font-size: 12px;
            font-weight: bold;
            text-transform: capitalize;
            font-family: Verdana;
            background-image: url('../../Resource/Styles/images/bg_blue_grd.gif');
        }

        .GRDITEM {
            /*background-color: WHITE;*/
            color: black;
            font-size: 12px;
            font-weight: normal;
            font-family: Verdana;
            padding: 10px; /*text-decoration:none;*/ /*border-color:#013161;*/ /*border-style:solid;*/
            text-transform: uppercase; /*border-width:1px;*/ /*height:23px;*/ /*text-indent:5px;*/ /*BACKGROUND-IMAGE: url(../images/grid_bg_.gif);*/
        }

        .LBLBLACK {
        }
    </style>
    <script type="text/javascript">
        function Popup(randomNo) {
            window.open("UniqueChecklist.aspx?Random=" + randomNo,
                "PopupWindow",
                "scrollbars=yes,resizable=yes,width=780,height=400,left=" +
                ((screen.width / 2) - 390) + ",top=" +
                ((screen.height / 2) - 200));

            return false;
        }
    </script>

    <%-- <script type="text/javascript">
        function showProgress() {
            var updateProgress = $get("<%= UpdateProgress.ClientID %>");
            updateProgress.style.display = "block";
        }
    </script>--%>
    <style>
        tr.GRDITEM td {
            padding: 3px 7px;
        }
    </style>
    <link href="assets/css/basic.css" rel="stylesheet" />
    <asp:UpdatePanel ID="upd1" runat="server">
        <ContentTemplate>
            <div align="left">
                <div class="row" align="left">
                    <div class="col-lg-12">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <div class="panel-body">
                                        <table align="left" cellpadding="10" cellspacing="5" style="width: 100%">
                                            <tr>
                                                <td style="padding: 15px; margin: 5px; width: 20px"></td>
                                                <td style="padding: 5px; margin: 5px; width: 100%" valign="top" colspan="3" align="left">
                                                    <div id="divprint">

                                                        <div style="width: 100%">
                                                            <h3 style="color: #333333; font-weight: bold;">Check processing</h3>
                                                            <asp:GridView ID="GVCOIDET" runat="server" AutoGenerateColumns="False"
                                                                CellPadding="4" CssClass="GRD" ForeColor="#333333" Height="62px"
                                                                PageSize="15" ShowFooter="false" Width="95%" CellSpacing="4" OnRowDataBound="GVCOIDET_RowDataBound">
                                                                <FooterStyle BackColor="#be8c2f" Font-Bold="True" ForeColor="White" />
                                                                <RowStyle BackColor="#EBF2FE" CssClass="GRDITEM" HorizontalAlign="Left" VerticalAlign="Middle" />
                                                                <Columns>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="S No">
                                                                        <ItemTemplate>
                                                                            <%# Container.DataItemIndex + 1%>
                                                                            <asp:HiddenField ID="HdfQueid" runat="server" />
                                                                            <asp:HiddenField ID="HdfApprovalid" runat="server" />
                                                                            <asp:HiddenField ID="HdfDeptid" runat="server" />
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                        <ItemStyle Width="50px" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Category">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblCategory" runat="server" Text='<%#Eval("CASTE") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                                                    </asp:TemplateField>

                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Incentive Type">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblIncentive" runat="server" Text='<%#Eval("MSTINCNAME") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                                                    </asp:TemplateField>

                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="RANDOM NO">
                                                                        <ItemTemplate>
                                                                           <%-- <asp:LinkButton runat="server" ID="lnkRandom" Text='<%#Eval("RANDOMNO") %>' />--%>
                                                                             <asp:Label ID="lnkRandom" runat="server" Text='<%#Eval("RANDOMNO") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="No.of Claims">
                                                                        <ItemTemplate>
                                                                          <%--  <asp:LinkButton runat="server" ID="lnkCount" Text='<%#Eval("UNITSCOUNT") %>' />--%>
                                                                            <asp:Label ID="lnkCount" runat="server" Text='<%#Eval("UNITSCOUNT") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" Width="80px" />
                                                                    </asp:TemplateField>

                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Claims Amount">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblClaimAmount" runat="server" Text='<%#Eval("CLAIMAMOUNT") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                                                    </asp:TemplateField>

                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="SLC/DIPC">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lbltype" runat="server" Text='<%#Eval("TYPE") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                                                    </asp:TemplateField>

                                                                    <%-- Column No:07--%>
                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Process Date" Visible="false">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblDate" runat="server" Text='<%#Eval("PROCESSDATE") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" Width="80px" />
                                                                    </asp:TemplateField>


                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Stageid" Visible="false">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblstageid" runat="server" Text='<%#Eval("STAGEID") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                                                    </asp:TemplateField>

                                                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Action">
                                                                        <ItemTemplate>
                                                                            <asp:Button ID="btnProcess" CssClass="btn btn-primary" Style="" runat="server" Text="Process" OnClick="btnProcess_Click" />
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                                                    </asp:TemplateField>                                                               

                                                                </Columns>
                                                                <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                <HeaderStyle BackColor="#1d9a5b" CssClass="GRDHEADER" Font-Bold="True" ForeColor="White" />
                                                                <EditRowStyle BackColor="#B9D684" />
                                                                <AlternatingRowStyle BackColor="White" />
                                                            </asp:GridView>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                        </table>
                                    </div>
                                    <%--   </div>--%>
                                </td>
                            </tr>
                         

                            <tr>
                                <td align="center" style="padding: 5px; margin: 5px; text-align: center;">&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="padding: 5px; margin: 5px" align="center" class="style7"></td>
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
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>


    <%--  <div style="text-align: center" id="divbtnprint" runat="server">
        <asp:Button ID="btnprint" runat="server" Height="32px" CausesValidation="False" Width="90px"
            CssClass="btn btn-warning" UseSubmitBehavior="False" Text="Print " OnClientClick="javascript:CallPrint('divprint');return false;" />
        <br />
        <br />
    </div>--%>
    <link href="../../css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
    <script src="../../js/jquery-1.7.2.min.js"></script>
    <script src="../../js/jquery-ui-1.8.19.custom.min.js"></script>
    <link href="<%= ResolveUrl("css/ui-lightness/jquery-ui-1.8.19.custom.css") %>" rel="stylesheet"
        type="text/css" />
    <script type="text/javascript" src="<%= ResolveUrl("js/jquery-1.7.2.min.js") %>"></script>
    <script src="<%= ResolveUrl("js/jquery-ui-1.8.19.custom.min.js") %>" type="text/javascript"></script>




    <script type="text/javascript">
        function CallPrint(strid) {
            var prtContent = document.getElementById(strid);
            var WinPrint = window.open('', '', 'letf=0,top=0,width=0,height=0,toolbar=0,scrollbars=1,status=0');
            var strOldOne = prtContent.innerHTML;
            WinPrint.document.write(prtContent.innerHTML);
            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
            WinPrint.close();
            prtContent.innerHTML = strOldOne;
        }
    </script>
    <script type="text/javascript">
        function pageLoad() {
            var date = new Date();
            var currentMonth = date.getMonth();
            var currentDate = date.getDate();
            var currentYear = date.getFullYear();

            $("input[id$='txtinspectiondate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback
            $("input[id$='txtslcnodate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback
            $("input[id$='txtsvcdate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                });
        }
        $(function () {
            var date = new Date();
            var currentMonth = date.getMonth();
            var currentDate = date.getDate();
            var currentYear = date.getFullYear();
            $("input[id$='txtinspectiondate']").datepicker(
                {
                    //dateFormat: "dd/mm/yy",
                    dateFormat: "dd/mm/yy",
                    //maxDate: new Date(currentYear, currentMonth, currentDate) txtsvcdate
                });
            $("input[id$='txtslcnodate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                }); // Will run at every postback/AsyncPostback

            $("input[id$='txtsvcdate']").datepicker(
                {
                    dateFormat: "dd/mm/yy",
                    //  maxDate: new Date(currentYear, currentMonth, currentDate)
                });
        });
    </script>
    <style type="text/css">
        .ui-datepicker {
            font-size: 8pt !important;
            height: 250px;
            padding: 0.2em 0.2em 0;
        }
    </style>
</asp:Content>


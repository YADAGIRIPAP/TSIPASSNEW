<%@ Page Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true" CodeFile="HelpdeskDet.aspx.cs" Inherits="HelpdeskDet" Title=":: CAP Foundation :: Help Desk Report Details" %>

<script runat="server">

    protected void grdHelpdesk_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:UpdatePanel ID="upd1" runat="server">
        <ContentTemplate>
            <div align="left">
                <ol class="breadcrumb">
                    You are here
        &nbsp;!&nbsp; &nbsp; &nbsp; 
                            <li>
                                <i class="fa fa-dashboard"></i><a href="Home.aspx">Dashboard</a>
                            </li>
                    <li class="">
                        <i class="fa fa-fw fa-table"></i>Masters
                    </li>
                    <li class="active">
                        <i class="fa fa-edit"></i><a href="#">Add States</a>
                    </li>
                </ol>
            </div>

            <div align="center">
                <div class="row" align="center">
                    <div class="col-lg-11">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Helpdesk Details</h3>
                            </div>
                            <div class="panel-body">

                                <table cellpadding="0" cellspacing="0" style="width: 99%">
                                    <tr>
                                        <td style="vertical-align: top; width: 50%; text-align: center">
                                            <table style="vertical-align: top; text-align: center;" cellpadding="0" cellspacing="0"
                                                width="100%">

                                                <tr>
                                                    <td align="center"
                                                        style="padding: 5px; vertical-align: middle; text-align: left"
                                                        valign="middle"></td>
                                                </tr>
                                                <tr>
                                                    <td align="center"
                                                        style="padding: 5px; vertical-align: middle; height: 35px; text-align: left"
                                                        valign="middle">

                                                        <asp:GridView ID="grdHelpdesk" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                            CssClass="GRD" ForeColor="#333333" GridLines="both"
                                                            PageSize="15" ShowFooter="True" Style="position: static" Width="100%"
                                                            OnRowDataBound="grdHelpdesk_RowDataBound">
                                                            <RowStyle BackColor="#FFFFFF" CssClass="GRDITEM" HorizontalAlign="Left" VerticalAlign="Middle" />
                                                            <Columns>
                                                                <asp:BoundField HeaderText="Sno" />
                                                                <asp:BoundField HeaderText="FeedBack Type" />
                                                                <asp:BoundField HeaderText="From Whom" Visible="false" DataField="user_Type" />
                                                                <asp:BoundField HeaderText="Comments" DataField="hd_desc" />
                                                                <asp:TemplateField HeaderText="Uploaded Document">                                                                  
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="hypLetter" Text='<%# Bind("hd_uplddocname") %>' runat="server" Target="_blank"> </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                 <asp:BoundField HeaderText="Remarks" DataField="Remarks" />
                                                                <asp:BoundField HeaderText="Remarks" DataField="Remarks" />
                                                                <asp:TemplateField HeaderText="Response Document">
                                                                    <EditItemTemplate>
                                                                        <asp:TextBox ID="txtReply_Filename" runat="server" Text='<%# Bind("Reply_Filename") %>'></asp:TextBox>
                                                                    </EditItemTemplate>
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="hypReply_Filepath" Text='<%# Bind("Reply_Filename") %>' runat="server" Target="_blank"> </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField HeaderText="Status" DataField="Status" />
                                                            </Columns>
                                                            <FooterStyle BackColor="#013161" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle BackColor="#013161" ForeColor="White" HorizontalAlign="Center" />
                                                            <EmptyDataTemplate>
                                                                <table align="center">
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana"
                                                                        Font-Size="11px" ForeColor="Red" Text="No Issues Found"></asp:Label>
                                                                </table>
                                                            </EmptyDataTemplate>
                                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                            <HeaderStyle BackColor="#013161" CssClass="GRDHEADER" Font-Bold="True" ForeColor="White" />
                                                            <EditRowStyle BackColor="#013161" />
                                                            <AlternatingRowStyle BackColor="White" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center"
                                                        style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: middle; padding-top: 5px; height: 35px; text-align: center"
                                                        valign="middle">&nbsp;&nbsp;&nbsp;</td>
                                                </tr>
                                            </table>
                                            <asp:Button ID="BtnBack" runat="server" CssClass="BUTTON"
                                                Height="20px" TabIndex="10"
                                                Text="Back" ToolTip="Go To Feed Back Details" ValidationGroup="group"
                                                OnClick="BtnBack_Click" />
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>


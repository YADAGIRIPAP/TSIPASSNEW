<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master" AutoEventWireup="true" CodeFile="TGSPDCLPreEstimation.aspx.cs" Inherits="UI_TSiPASS_TGSPDCLPreEstimation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <script src="../../Resource/Scripts/js/validations.js" type="text/javascript"></script>
    <style>
        .text-danger {
            color: #ff0500;
        }
        table#ctl00_ContentPlaceHolder1_GrdDetails td {
    border: 1px solid #ccc !important;
}
        td {
    border: none !important;
}
    </style>
    <div class="panel panel-default mt-4">
        <div class="panel-heading">
            <h3 ><b>TGSPDCL Preliminary Estimate</b></h3>
        </div>
        <div class="card-body">
            <div class="col-md-12 ">
                <div id="success" runat="server" visible="false" class="alert alert-success alert-dismissible fade show" align="Center">
                    <strong>Success!</strong><asp:Label ID="lblmsg" runat="server"></asp:Label>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                </div>
            </div>
            <div class="col-md-12 ">
                <div id="Failure" runat="server" visible="false" class="alert alert-danger alert-dismissible fade show" align="Center">
                    <strong>Warning!</strong>
                    <asp:Label ID="lblmsg0" runat="server"></asp:Label>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
            </div>

            <div class="panel-body">
                <table class="table" border="0px">
                    <tr>
                        <td>
                            <asp:Label ID="lblHeading" runat="server" Font-Bold="true" Text="Feasibility Report Details:"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:GridView ID="GrdDetails" runat="server" AutoGenerateColumns="False" CssClass="table table-striped">
                                <columns>

                                    <asp:BoundField DataField="UID_No" HeaderText="UID No" />
                                    <asp:BoundField DataField="REGDATE" HeaderText="Date" />
                                    <asp:BoundField DataField="NameofIndustrialUnder" HeaderText="Unit Name" />
                                    <asp:BoundField DataField="Email" HeaderText="Email Id" />
                                    <asp:BoundField DataField="MobileNumber" HeaderText="Mobile No" />
                                    <asp:BoundField DataField="TSSPDCL_TOT_PTR" HeaderText="Required Load" />
                                </columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:30%;">
                            <label>Technical Feasibility Issued Date:</label>
                        </td>
                        <td>
                            <asp:Label ID="lblFeasibilityDate" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Sub-Station:</label></td>
                        <td>
                            <asp:Label ID="lblSubStation" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Feeder Name:</label></td>
                        <td>
                            <asp:Label ID="lblFeederName" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>

               

                <h4 class="mt-4">Technical Parameters for Pre Estimation</h4>
                <div class="row mt-2">
                    <div class="col-md-5">
                        <label>Distance from nearest 11KV Line of the above Feasible Feeder:</label>

                    </div>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtFeeder" width="250px"  runat="server" CssClass="form-control" ></asp:TextBox>

                    </div>
                    <div class="col-md-2">
                        <label>in Meters</label></div>
                </div>

                <h5 class="text-danger mt-3">Note:-This is a preliminary tentative estimate. The actual estimate may vary based on field conditions.
                </h5>
                <h5 class="text-danger">** The additional amount if any raised during the actual Estimation, Will be included/adjusted in the first bill after service release.</h5>
                <asp:CheckBoxList ID="chkTerm" runat="server" CssClass="m-2 p-2" >
                    <asp:ListItem Text=" I accept the Terms and Conditions" Value="1" ></asp:ListItem>
                </asp:CheckBoxList>

                <%--     <div class="mt-3">
                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" />
            </div>--%>
                <div class="col-md-12 text-center mb-3">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" class="btn btn-rounded btn-success btn-lg" Width="150px" />
                </div>

            </div>
        </div>
    </div>
</asp:Content>


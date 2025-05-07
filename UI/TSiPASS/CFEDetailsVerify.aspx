<%@ Page Title="" Language="C#" MasterPageFile="~/UI/TSiPASS/ccmaster.master" AutoEventWireup="true" CodeFile="CFEDetailsVerify.aspx.cs" Inherits="UI_CFEDetailsVerify" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css">
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .panel-primary {
            border-color: #337ab7;
        }

        .panel-heading {
            background-color: #337ab7;
            color: white;
            font-weight: bold;
        }

        .table {
            margin: 20px 0;
        }

            .table th, .table td {
                vertical-align: middle;
                padding: 10px;
            }

        .btn-submit {
            background-color: #28a745;
            color: white;
            border: none;
            transition: background-color 0.3s ease;
        }

            .btn-submit:hover {
                background-color: #218838;
            }

        .btn-info {
            background-color: #17a2b8;
            color: white;
            border: none;
        }

            .btn-info:hover {
                background-color: #138496;
            }
    </style>
    <div class="container">
        <div class="row" align="left">
            <div class="col-lg-11">
                <div class="panel panel-primary">
                    <div class="panel-heading" style="text-align: center;">
                        <h3 class="panel-title">CFE Details Verify</h3>
                    </div>

                    <div class="panel-body">
                        <table class="table table-bordered table-striped" style="width: 90%; margin: auto;">
                            <tr>
                                <td></td>
                                <td>UID No:
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblUidNo" runat="server"></asp:Label>
                                    
                                     <asp:Label ID="lblCFEEnterpid" runat="server" Visible="false"></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>NAME OF INDUSTRY</td>
                                <td>:</td>
                                <td>
                                    <span>
                                        <asp:Label ID="lblNameOfUndertaker" runat="server"></asp:Label>
                                    </span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUnitName" runat="server" CssClass="form-control" placeholder="Company Name as per PAN card"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td style="text-align: left;">1</td>
                                <td style="text-align: left;">PAN NO</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblpan" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPan" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left;">2</td>
                                <td style="text-align: left;">GST</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblgst" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtgst" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left;">3</td>
                                <td style="text-align: left;">Type of Sector</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblSector" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="rblSector" runat="server" RepeatDirection="Horizontal" TabIndex="1">
                                        <asp:ListItem Text="Manufacture" Value="1" />
                                        <asp:ListItem Text="Service" Value="2" />
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left;">4</td>
                                <td style="text-align: left;">New & Expansion</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblExpansion" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="rblExpansion" runat="server" RepeatDirection="Horizontal" TabIndex="1" AutoPostBack="true" OnSelectedIndexChanged="rblExpansion_SelectedIndexChanged">
                                        <asp:ListItem Text="New" Value="New" />
                                        <asp:ListItem Text="Expansion" Value="Expansion" />
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="6" style="text-align: left; font-weight: bold;">5. Investment
                                </td>
                            </tr>

                            <tr>
                                <td style="text-align: left;">(i)</td>
                                <td style="text-align: left;">Plant & Machinery</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblPlant" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNewPlantMachnryCost" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td rowspan="8" style="padding-top: -35px">
                                    <table class="table table-bordered " style="width: 90%; margin: auto;">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtExpPlantMachnryCost" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtExpBuildingCost" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtExpLandCost" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtExpTurnover" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtExpMale" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtExpFemale" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtExpTotal" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>

                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left;">(ii)</td>
                                <td style="text-align: left;">Building</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblBuild" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNewBuildingCost" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left;">(iii)</td>
                                <td style="text-align: left;">Land</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblLandCost" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNewLandCost" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>

                            </tr>
                            <tr>
                                <td style="text-align: left;">(iv)</td>
                                <td style="text-align: left;">Annual Turnover</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblAnnual" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNewTurnover" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>

                            </tr>
                            <tr>
                                <td colspan="6" style="text-align: left; font-weight: bold;">6.Employment
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left;">(i)</td>
                                <td style="text-align: left;">Male</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblMale" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNewMale" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>

                            </tr>
                            <tr>
                                <td style="text-align: left;">(ii)</td>
                                <td style="text-align: left;">Female</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblFemale" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNewFemale" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>

                            </tr>
                            <tr>
                                <td style="text-align: left;"></td>
                                <td style="text-align: left;">Total</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblTotal" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNewTotal" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>

                            </tr>
                            <tr>
                                <td style="text-align: left;">7</td>
                                <td style="text-align: left;">Already TSiPASS Login</td>
                                <td>:</td>
                                <td>
                                    <asp:RadioButtonList ID="rblTsipass" runat="server" RepeatDirection="Horizontal" TabIndex="1" AutoPostBack="true" OnSelectedIndexChanged="rblTsipass_SelectedIndexChanged">
                                        <asp:ListItem Text="Yes" Value="Y" />
                                        <asp:ListItem Text="No" Value="N" />
                                    </asp:RadioButtonList>
                                </td>
                                <td id="Login" runat="server" visible="false">
                                    <asp:TextBox ID="txtTSiPasslogins" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="6" style="text-align: center;">
                                    <asp:Button ID="btnSave" Text="Submit" runat="server" OnClick="btnSave_Click" CssClass="btn btn-submit btn-lg" Width="150px" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


<%@ Page Title=":: TS-iPASS ::  " Language="C#" MasterPageFile="~/UI/TSiPASS/CCMaster.master"AutoEventWireup="true" CodeFile="frmLINEOFMANUFACTURE.aspx.cs" Inherits="TSTBDCReg1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script src="../../Resource/Scripts/js/validations.js" type="text/javascript"></script>
    
<style type="text/css">
.overlay
{
position: fixed;
z-index: 999;
height: 100%;
width: 100%;
top: 112px;
background-color:Gray;
filter: alpha(opacity=60);
opacity: 0.9;
-moz-opacity: 0.9;
}
.update {
            position: fixed;
            top: 0px;
            left: 0px;
            min-height: 100%;
            min-width: 100%;
            background-image: url("../../Images/ajax-loaderblack.gif");
            /*background-image: url("Images/spinner_60.gif");*/
            background-position: center center;
            background-repeat: no-repeat;
            /*background-color: #e4e4e6;*/
            background-color: #535252;
            z-index: 500 !important;
            opacity: 0.6;
            overflow: hidden;
        }
    </style>

<script type="text/javascript" language="javascript">

function OpenPopup() 
 
   {

    window.open("Lookups/LookupBDC.aspx","List","scrollbars=yes,resizable=yes,width=1000,height=650;display = block;position=absolute");

    return false;
    }
    </script>
 <script type="text/javascript">
    function showProgress() {
        var updateProgress = $get("<%= UpdateProgress.ClientID %>");
        updateProgress.style.display = "block";
    }
</script>

<script type="text/javascript">
    function Names() {
        var AsciiValue = event.keyCode
        if ((AsciiValue >= 65 && AsciiValue <= 90) || (AsciiValue >= 97 && AsciiValue <= 122) || (AsciiValue == 46) || (AsciiValue == 32))
            event.returnValue = true;
        else {
            event.returnValue = false;

            alert("Enter Alphabets, '.' and Space Only");
        }
    }
   </script>

 <script type="text/javascript">
     function inputOnlyNumbers(evt) {
         var e = window.event || evt; // for trans-browser compatibility  
         var charCode = e.which || e.keyCode;
         if ((charCode > 45 && charCode < 58) || charCode == 8) {
             return true;
         }
         return false;
     }

</script>
    <asp:UpdatePanel ID="upd1" runat="server">
<ContentTemplate>
<div align="left">
    <ol class="breadcrumb">You are here
        &nbsp;!&nbsp; &nbsp; &nbsp; 
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="Home.aspx"></a>
                            </li>
                            <li class="">
                                <i class="fa fa-fw fa-edit">CAF</i> 
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> <a href="#">LINE OF ACTIVITY</a>
                            </li>
                        </ol>
     </div>
    
<div align="left">
<div class="row" align="left">
                    <div class="col-lg-11" >
                        <div class="panel panel-primary">
                            <div class="panel-heading" align="center">
                                <h3 class="panel-title">LINE OF ACTIVITY</h3>
                            </div>
                             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
                            <div class="panel-body" >
                                <table align="center" cellpadding="10" cellspacing="5" style="width: 90%">
                                    
                                    <tr>
                                        <td style="padding: 5px; margin: 5px" valign="top" colspan="3">
                                            <table width="100%">
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="Label395" runat="server" CssClass="LBLBLACK" Width="165px">Line of Activity<font color="red">*</font></asp:Label>
                                                    </td>
                                                    <td width="20px">
                                                        :</td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlintLineofActivity" runat="server" 
                                                            class="form-control txtbox" Height="33px" Width="550px">
                                                            <asp:ListItem>--Select--</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                                            ControlToValidate="ddlintLineofActivity" 
                                                            ErrorMessage="Please Select Line of Activity" InitialValue="--Select--" 
                                                            ValidationGroup="group">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 5px; margin: 5px" valign="top">
                                            <asp:Label ID="Label424" runat="server" CssClass="LBLBLACK" Font-Bold="True" 
                                                Width="210px">LINE OF MANUFACTURE<font 
                                                            color="red">*</font></asp:Label>
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
                                                        <asp:Label ID="Label387" runat="server" CssClass="LBLBLACK" Width="210px">Item <font 
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
                                                        <asp:DropDownList ID="ddlquantityper" runat="server" class="form-control txtbox" TabIndex="1"
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
                                                            ControlToValidate="ddlquantityper" ErrorMessage="Please select Quantity" 
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
                                                    <td style="padding: 5px; margin: 5px">
                                                        &nbsp;</td>
                                                    <td style="width: 200px;">
                                                        <asp:Label ID="Label432" runat="server" CssClass="LBLBLACK" Width="165px">Quantity In</asp:Label>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        :</td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        <asp:TextBox ID="txtitem2" runat="server" class="form-control txtbox" onkeypress="Names()"
                                                            Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="180px"></asp:TextBox>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        &nbsp;</td>
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
                                    <tr>
                                        <td style="padding: 5px; margin: 5px" valign="top" align="left" colspan="3">
                                            <asp:GridView ID="gvCertificate" runat="server" AutoGenerateColumns="False" 
                                                BorderColor="#003399" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" 
                                                CssClass="GRD" ForeColor="#333333" GridLines="None" 
                                                OnRowDataBound="gvCertificate_RowDataBound" 
                                                OnRowDeleting="gvCertificate_RowDeleting" Width="100%" 
                                                DataKeyNames="intLineofActivityMid">
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
                                    <tr>
                                        <td align="left" style="padding: 5px; margin: 5px" valign="top">
                                            <asp:Label ID="Label423" runat="server" CssClass="LBLBLACK" Font-Bold="True" 
                                                Width="356px">RAW MATERIALS USED IN PROCESS<font 
                                                            color="red">*</font></asp:Label>
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
                                                        <asp:Label ID="Label426" runat="server" CssClass="LBLBLACK" Width="210px">Item <font 
                                                            color="red">*</font></asp:Label>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        :</td>
                                                    <td style="padding: 5px; margin: 5px; width: 192px; text-align: left;">
                                                        <asp:TextBox ID="txtitem1" runat="server" class="form-control txtbox" onkeypress="Names()"
                                                            Height="28px" MaxLength="40"  TabIndex="1" 
                                                            ValidationGroup="group" Width="180px"></asp:TextBox>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px; width: 10px;">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                            ControlToValidate="txtitem1" ErrorMessage="Please enter item Name" 
                                                            ValidationGroup="child">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                                        2</td>
                                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                                        <asp:Label ID="Label427" runat="server" CssClass="LBLBLACK" Width="165px">Quantity Per<font 
                                                            color="red">*</font></asp:Label>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        :</td>
                                                    <td style="padding: 5px; margin: 5px; text-align: left;">
                                                        <asp:DropDownList ID="ddlQuantityper1" runat="server" class="form-control txtbox" TabIndex="1"
                                                            Height="33px" Width="180px">
                                                            <asp:ListItem>--Select--</asp:ListItem>
                                                            <asp:ListItem Value="Day" >Day</asp:ListItem>
                                                            <asp:ListItem Value="Week" >Week</asp:ListItem>
                                                            <asp:ListItem  Value="Month">Month</asp:ListItem>
                                                            <asp:ListItem  Value="Years">Years</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                            ControlToValidate="ddlQuantityper1" ErrorMessage="Please Select Quantity" 
                                                            InitialValue="--Select--" ValidationGroup="child">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="width: 27px">
                                            &nbsp;</td>
                                        <td valign="top">
                                            <table cellpadding="4" cellspacing="5" style="width: 100%">
                                                <tr>
                                                    <td style="padding: 5px; margin: 5px">
                                                        3</td>
                                                    <td style="width: 200px;">
                                                        <asp:Label ID="Label428" runat="server" CssClass="LBLBLACK" Width="155px">Quantity<font 
                                                            color="red">*</font></asp:Label>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        :</td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        <asp:TextBox ID="txtquantity1" runat="server" class="form-control txtbox" 
                                                            Height="28px" MaxLength="40" onkeypress="return inputOnlyNumbers(event)" 
                                                            ontextchanged="txtquantity1_TextChanged" TabIndex="1" ValidationGroup="group" 
                                                            Width="180px"></asp:TextBox>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 5px; margin: 5px">
                                                        4</td>
                                                    <td style="width: 200px;">
                                                        <asp:Label ID="Label430" runat="server" CssClass="LBLBLACK" Width="155px">Quantity In</asp:Label>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        :</td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        <asp:DropDownList ID="ddlquantity1" runat="server" class="form-control txtbox" TabIndex="1"
                                                            Height="33px" Width="180px" AutoPostBack="True" 
                                                            onselectedindexchanged="ddlquantity1_SelectedIndexChanged">
                                                            <asp:ListItem>--Select--</asp:ListItem>
                                                            <asp:ListItem Value="KG">KG</asp:ListItem>
                                                            <asp:ListItem Value="Tonne">Tone</asp:ListItem>
                                                            <asp:ListItem Value="Liters">Liters</asp:ListItem>
                                                        <asp:ListItem Value="Others">Others</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr id="Qty1" runat="server" visible="false">
                                                    <td style="padding: 5px; margin: 5px">
                                                        &nbsp;</td>
                                                    <td style="width: 200px;">
                                                        <asp:Label ID="Label433" runat="server" CssClass="LBLBLACK" Width="155px">Quantity In</asp:Label>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        :</td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        <asp:TextBox ID="txtitem3" runat="server" class="form-control txtbox" onkeypress="Names()"
                                                            Height="28px" MaxLength="40" TabIndex="1" ValidationGroup="group" Width="180px"></asp:TextBox>
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr ID="tr3" runat="server">
                                                    <td style="padding: 5px; margin: 5px">
                                                        &nbsp;</td>
                                                    <td style="width: 200px;">
                                                        &nbsp;</td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        &nbsp;</td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        <asp:Button ID="BtnSave3" runat="server" CssClass="btn btn-xs btn-warning" 
                                                            Height="28px" TabIndex="10" Text="Add New" ValidationGroup="child" 
                                                            Width="72px" onclick="BtnSave3_Click" />
                                                        &nbsp;<asp:Button ID="BtnClear1" runat="server" CausesValidation="False" 
                                                            CssClass="btn btn-xs btn-danger" Height="28px" TabIndex="10" Text="Cancel" 
                                                            ToolTip="To Clear  the Screen" Width="73px" onclick="BtnClear1_Click" />
                                                    </td>
                                                    <td style="padding: 5px; margin: 5px">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 5px; margin: 5px" colspan="3" align="center">
                                            <asp:GridView ID="gvCertificate0" runat="server" AutoGenerateColumns="False" 
                                                BorderColor="#003399" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" 
                                                CssClass="GRD" ForeColor="#333333" GridLines="None" 
                                                OnRowDataBound="gvCertificate0_RowDataBound" 
                                                OnRowDeleting="gvCertificate0_RowDeleting" Width="100%" 
                                                DataKeyNames="intLineofActivityRid">
                                                <rowstyle backcolor="#ffffff" />
                                                <columns>
                                                    <asp:CommandField HeaderText="Edit" ShowSelectButton="True" Visible="False" />
                                                    <asp:CommandField HeaderText="DELETE" ControlStyle-ForeColor="Red" ControlStyle-Font-Bold="true" DeleteText="DELETE" ShowDeleteButton="True" />
                                                    <asp:BoundField DataField="Raw_ItemName" HeaderText="Item Name" />
                                                    <asp:BoundField DataField="Raw_Item_Quantity" HeaderText="Item Quantity" />
                                                    <asp:BoundField DataField="Raw_Item_Quantity_In" HeaderText="Quantity In" />
                                                    <asp:BoundField DataField="Raw_Item_Quantity_Per" HeaderText="Quantity Per" />
                                                    <asp:BoundField DataField="OtherItemName" HeaderText="Type of Quantity" />
                                                </columns>
                                                <footerstyle backcolor="#013161" font-bold="True" forecolor="White" />
                                                <pagerstyle backcolor="#013161" forecolor="White" horizontalalign="Center" />
                                                <selectedrowstyle backcolor="#D1DDF1" font-bold="True" forecolor="#333333" />
                                                <headerstyle backcolor="#013161" font-bold="True" forecolor="White" />
                                                <editrowstyle backcolor="#013161" />
                                                <alternatingrowstyle backcolor="White" />
                                            </asp:GridView>
                                           <tr>
                                        <td style="padding: 5px; margin: 5px" colspan="3" align="center">
                                            &nbsp;</td>
                                    </tr> 
                                            <caption>
                                                &nbsp;</caption>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="3" 
                                            style="padding: 5px; margin: 5px; text-align: center;">
                                             <asp:Button ID="BtnClear" runat="server" CausesValidation="False" 
                                                CssClass="btn btn-warning" Height="32px" onclick="BtnClear_Click" TabIndex="10" 
                                                Text="ClearAll" ToolTip="To Clear  the Screen" Width="90px" />&nbsp;

                                            <asp:Button ID="BtnSave1" runat="server" CssClass="btn btn-primary" 
                                                Height="32px" onclick="BtnSave_Click" TabIndex="10" Text="Save" 
                                                Width="90px" CausesValidation="False" />
                                            &nbsp;<asp:Button ID="BtnDelete0" runat="server" CausesValidation="False" 
                                                CssClass="btn btn-danger" Height="32px" onclick="BtnDelete0_Click" 
                                                TabIndex="10" Text="Previous" Width="90px" />
                                            &nbsp;&nbsp;<asp:Button ID="BtnDelete" runat="server" CausesValidation="False" 
                                                CssClass="btn btn-danger" Height="32px" onclick="BtnClear0_Click" TabIndex="10" 
                                                Text="Next" Width="90px" />
                                            
                                           
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="3" style="padding: 5px; margin: 5px">
                                            
                                            
                                            <div id="success" runat="server" visible="false" class="alert alert-success">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong><asp:Label ID="lblmsg" runat="server"></asp:Label> 
  </div>
                                            
                                            
                                            <div id="Failure" runat="server" visible="false" class="alert alert-danger">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Warning!</strong> 
                                                <asp:Label ID="lblmsg0" runat="server"></asp:Label>
  </div>
                                            </td>
                                    </tr>
                                </table>
                                <asp:HiddenField ID="hdfID" runat="server" />
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                    ShowMessageBox="True" ShowSummary="False" ValidationGroup="group" />
                                <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
                                    ShowMessageBox="True" ShowSummary="False" ValidationGroup="child" />
                                <asp:HiddenField ID="hdfFlagID" runat="server" />
                                <asp:HiddenField ID="hdfFlagID0" runat="server" />
                                <asp:HiddenField ID="hdfpencode" runat="server" />
                            </div>
                             </ContentTemplate>
</asp:UpdatePanel>
                        </div>
                    </div>
                </div>

    </div>
            <asp:UpdateProgress ID="UpdateProgress" runat="server" AssociatedUpdatePanelID="upd1">
        <ProgressTemplate>
            <div class="update">
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>  
                 
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
 <%--</div>
       </td>
        </tr>
    </table>--%>

</asp:Content>


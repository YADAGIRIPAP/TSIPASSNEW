<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="UI_TSiPASS_ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div align="center">
            <table>
                <tr>
                    <td>
                        <img  src="viewpdf.aspx?filepathnew=D:/TS-iPASSFinal/images/ErrorImage.jpg"  style="margin-left: 96px;" />
                    </td>
                </tr>
                <tr>
                <td align="center">
                    <asp:Label  runat="server" ID="lbl" style="font-family: math;font-size: xx-large;color: black;">Error Occurred...!</asp:Label>
                </td>
                    <td>
                        <asp:HyperLink runat="server"  ID="hplprev" >Please try again</asp:HyperLink>
                    </td>
            </tr>
            </table>
        </div>
    </form>
    </form>
</body>
</html>

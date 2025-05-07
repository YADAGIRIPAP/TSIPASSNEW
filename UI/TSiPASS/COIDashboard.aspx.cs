using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_TSiPASS_COIDashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["uid"]) ==""|| Convert.ToString(Session["username"])!="Commissioner")
        {
            Response.Redirect("~/TSHome.aspx");
        }
    }

    protected void btnCFE_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmCommissionerReportDashboard.aspx");
    }

    protected void btnCFO_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmCommissionerReportDashboardCFO.aspx");
    }

    protected void btnINC_Click(object sender, EventArgs e)
    {
        Response.Redirect("IncentiveDashBoard.aspx");
    }
    protected void btnsvc_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmSVCDEPTProcessedApplication_Commissioner.aspx");
    }
}
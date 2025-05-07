using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_TSiPASS_HomeJDDashboard : System.Web.UI.Page
{

General Gen = new General();

protected void Page_Load(object sender, EventArgs e)
{
    if (Session.Count <= 0)
    {
         Response.Redirect("~/Index.aspx");
    }
    if (!IsPostBack)
    {



    }
   // jdbutton.Enabled = false;


}

protected void BtnSave1_Click(object sender, EventArgs e)
{

    Response.Redirect("CFEDashboardJD.aspx");

}

protected void BtnDelete_Click(object sender, EventArgs e)
{

    Response.Redirect("CFOJDDASHBOARD.aspx");
}

protected void btnincentivenew_Click(object sender, EventArgs e)
{
    Response.Redirect("frmJDashboard.aspx");
}

    protected void Renewals_Click(object sender, EventArgs e)
    {
        Response.Redirect("RenewalsJD.aspx");
    }


    protected void Incentivesreport_Click(object sender, EventArgs e)
    {
        Response.Redirect("IncentiveReportsDashboard.aspx");
    }
}

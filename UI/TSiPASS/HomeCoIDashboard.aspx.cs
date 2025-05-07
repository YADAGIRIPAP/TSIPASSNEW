using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_TSiPASS_HomeCoIDashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count <= 0)
        {
            Response.Redirect("~/IpassLogin.aspx");
        }
    }

    protected void BtnSave1_Click(object sender, EventArgs e)
    {
        string user = Session["uid"].ToString();
        if (user == "57783")
        {
            Response.Redirect("frmDashBoardSLC.aspx");
        }
        else if (Session["Role_Code"].ToString() == "COI-CLERK")
        {
            Response.Redirect("frmCoiDashboardclerk.aspx");
        }
        else if (Session["Role_Code"].ToString() == "COI-SUPDT")
        {
            Response.Redirect("frmCoiDashboardSUPDT.aspx");
        }
        else if (Session["Role_Code"].ToString() == "COI-AD")
        {
            if (user == "32952" || user == "32953")
            {
                Response.Redirect("frmCoiDashboardAD.aspx");
            }
            else
            {
                Response.Redirect("frmCoiDashboardadNew.aspx");
            }
        }
        else if (Session["Role_Code"].ToString() == "COI-DD")
        {
            Response.Redirect("frmCoiDashboardDD.aspx");
        }
        else
        {
            Response.Redirect("frmCoiDashboard.aspx");
        }
    }

    protected void BTNPRINT_Click(object sender, EventArgs e)
    {
        Response.Redirect("Appraisalnoteprint.aspx");
    }
    protected void btnbulk_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmappraisalnoteprintbluk.aspx");
    }
}
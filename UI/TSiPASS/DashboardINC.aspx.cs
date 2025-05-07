using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class UI_TSiPASS_DashboardINC : System.Web.UI.Page
{    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("~/TSHome.aspx");

        }
        else
        {
            if (Convert.ToString(Session["uid"]) == "324563" || Convert.ToString(Session["uid"]) == "324565" ||
                Convert.ToString(Session["uid"]) == "324566" || Convert.ToString(Session["uid"]) == "324567" ||
                Convert.ToString(Session["uid"]) == "324568" || Convert.ToString(Session["uid"]) == "324569" ||
                Convert.ToString(Session["uid"]) == "324570")
            {
                TableCell leftMenuTd = (TableCell)Master.FindControl("MstLftMenu");
                if (leftMenuTd != null)
                {
                    // Hide the left side menu by modifying its style
                    leftMenuTd.Style.Add("display", "none");
                }

                btnIncentive.Visible = true;
                
            }
            else
            {
                Response.Redirect("~/TSHome.aspx");
            }
        }
    }

    protected void btnIncentive_Click(object sender, EventArgs e)
    {
        Response.Redirect("IncentiveApplicationsList.aspx?status=INC");
    }

    protected void btncmpltd_Click(object sender, EventArgs e)
    {
        Response.Redirect("IncentiveApplicationsList.aspx?status=Completed");

    }
    private Control FindControlRecursive(Control root, string id)
    {
        if (root.ID == id)
        {
            return root;
        }

        foreach (Control control in root.Controls)
        {
            Control foundControl = FindControlRecursive(control, id);
            if (foundControl != null)
            {
                return foundControl;
            }
        }

        return null;
    }
}
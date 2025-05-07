using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UI_TSiPASS_frmIncentiveCAFDetails : System.Web.UI.Page
{
    General Gen = new General();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = Gen.GetAllIncentives(Session["uid"].ToString().Trim());
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                Session["EntprIncentive"] = ds.Tables[0].Rows[0]["EnterperIncentiveID"].ToString();
                Session["incentivedata"] = ds;
                grdDetails.DataSource = ds;
                grdDetails.DataBind();
            }
            else
            {
                BtnSave1.Visible = false;
                BtnClear.Visible = false;
            }
        }
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        Response.Redirect("InvestmentSubsidy.aspx?next=" + "N");
    }
    protected void BtnClear0_Click(object sender, EventArgs e)
    {

    }
    protected void BtnClear_Click(object sender, EventArgs e)
    {

    }
}
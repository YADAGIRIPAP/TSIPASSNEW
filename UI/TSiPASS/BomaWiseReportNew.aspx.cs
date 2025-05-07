﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


//created by suresh as on 17-1-2016 tables:td_IPDetails,getIPSearch

public partial class BomaWiseReportNew : System.Web.UI.Page
{
    #region Declaration
    General Gen = new General();

    #endregion
    decimal NoofPayams1, NoofBomas1, TotalWorkProposed1, TotaltobeApproved1, TotalInProgress1, TotalClosed1, TotalFundsDisbursed1, TotalBeneficiaries1, TotalFemaleBeneficiaries1, TotalWorkDays1, Type11, Type21, Type31, Type41, Type51, Type61, TotalWorkProposed12;
    #region Page_Load
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session.Count <= 0)
            {
                Response.Redirect("../../frmUserLogin.aspx");
            }
            if (!IsPostBack)
            {
                // Gen.getStates(ddlState);
                fillgrid();
            }
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg1.Text = ex.Message;

        }
    }
    #endregion


    protected void BtnSave_Click(object sender, EventArgs e)
    {
        try
        {
            fillgrid();
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg1.Text = ex.Message;

        }
    }
    void fillgrid()
    {
        try
        {
            string TST = "", IP = "";
            if (Session["user_type"].ToString() == "TST")
            {
                TST = "%";
                IP = "%";
            }
            else
            {
                TST = "%";
                IP = "%";
            }

            if (Session["user_type"].ToString() == "IP")
            {
                TST = "%";
                IP = Session["User_Code"].ToString();
            }
            else
            {
                TST = "%";
                IP = "%";
            }


            DataSet ds = Gen.BomawiseReport("%", IP);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblMsg.Text = ds.Tables[0].Rows.Count.ToString() + " Records found.";
                grdDetails.DataSource = ds.Tables[0];
                grdDetails.DataBind();
            }
            else
            {
                lblMsg.Text = "No Records found.";
                grdDetails.DataSource = null;
                grdDetails.DataBind();
            }


            DataSet dsNew = Gen.BomawisereportByType("%", IP);
            if (dsNew.Tables[0].Rows.Count > 0)
            {
                lblMsg.Text = dsNew.Tables[0].Rows.Count.ToString() + " Records found.";
                grdDetails0.DataSource = dsNew.Tables[0];
                grdDetails0.DataBind();
            }
            else
            {
                lblMsg.Text = "No Records found.";
                grdDetails0.DataSource = null;
                grdDetails0.DataBind();
            }
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg1.Text = ex.Message;

        }
    }
    protected void BtnClear_Click(object sender, EventArgs e)
    {

    }
    protected void grdDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void grdDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if ((e.Row.RowType == DataControlRowType.DataRow))
            {

                //NoofPayams1, NoofBomas1,TotalWorkProposed1, TotaltobeApproved1, TotalInProgress1, TotalClosed1, 
                //TotalFundsDisbursed1, TotalBeneficiaries1, TotalFemaleBeneficiaries1, TotalWorkDays1;
                //decimal NoofPayams = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "NoofPayams"));
                //NoofPayams1 = NoofPayams + NoofPayams1;

                //decimal NoofBomas = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "NoofBomas"));
                //NoofBomas1 = NoofBomas + NoofBomas1;


                decimal TotalWorkProposed = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "TotalWorkProposed"));
                TotalWorkProposed1 = TotalWorkProposed + TotalWorkProposed1;

                decimal TotaltobeApproved = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "TotaltobeApproved"));
                TotaltobeApproved1 = TotaltobeApproved + TotaltobeApproved1;

                decimal TotalInProgress = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "TotalInProgress"));
                TotalInProgress1 = TotalInProgress + TotalInProgress1;

                decimal TotalClosed = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "TotalClosed"));
                TotalClosed1 = TotalClosed + TotalClosed1;

                decimal TotalFundsDisbursed = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "TotalFundsDisbursed"));
                TotalFundsDisbursed1 = TotalFundsDisbursed + TotalFundsDisbursed1;

                decimal TotalBeneficiaries = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "TotalBeneficiaries"));
                TotalBeneficiaries1 = TotalBeneficiaries + TotalBeneficiaries1;

                decimal TotalFemaleBeneficiaries = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "TotalFemaleBeneficiaries"));
                TotalFemaleBeneficiaries1 = TotalFemaleBeneficiaries + TotalFemaleBeneficiaries1;

                decimal TotalWorkDays = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "TotalWorkDays"));
                TotalWorkDays1 = TotalWorkDays + TotalWorkDays1;

                //HyperLink h1 = (HyperLink)e.Row.Cells[0].Controls[0];
                //h1.Text = "Edit";
                //h1.NavigateUrl = "TSTIPregistration.aspx?prj=" + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intIP")).Trim();
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                //NoofPayams1, NoofBomas1,TotalWorkProposed1, TotaltobeApproved1, TotalInProgress1, TotalClosed1, 
                //TotalFundsDisbursed1, TotalBeneficiaries1, TotalFemaleBeneficiaries1, TotalWorkDays1;

                e.Row.Cells[1].Text = "Total";

                //e.Row.Cells[3].Text = NoofPayams1.ToString();
                // e.Row.Cells[5].Text = NoofBomas1.ToString();
                e.Row.Cells[5].Text = TotalWorkProposed1.ToString();
                e.Row.Cells[7].Text = TotalInProgress1.ToString();
                e.Row.Cells[6].Text = TotaltobeApproved1.ToString();
                e.Row.Cells[8].Text = TotalClosed1.ToString();
                e.Row.Cells[9].Text = TotalFundsDisbursed1.ToString();
                e.Row.Cells[10].Text = TotalBeneficiaries1.ToString();
                e.Row.Cells[11].Text = TotalFemaleBeneficiaries1.ToString();
                e.Row.Cells[12].Text = TotalWorkDays1.ToString();
            }
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg1.Text = ex.Message;

        }
    }


    protected void grdDetails_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grdDetails0_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if ((e.Row.RowType == DataControlRowType.DataRow))
            {


                decimal Type1 = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Type1"));
                Type11 = Type1 + Type11;

                decimal Type2 = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Type2"));
                Type21 = Type2 + Type21;


                decimal Type3 = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Type3"));
                Type31 = Type3 + Type31;

                decimal Type4 = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Type4"));
                Type41 = Type4 + Type41;

                decimal Type5 = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Type5"));
                Type51 = Type5 + Type51;

                decimal Type6 = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Type6"));
                Type61 = Type6 + Type61;

                //decimal TotalWorkProposed = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "TotalWorkProposed"));
                //TotalWorkProposed12 = TotalWorkProposed + TotalWorkProposed12;

            }
            //Type11,Type21,Type31,Type41,Type51,Type61,TotalWorkProposed12
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[1].Text = "Total";

                e.Row.Cells[5].Text = Type11.ToString();
                e.Row.Cells[6].Text = Type21.ToString();
                e.Row.Cells[7].Text = Type31.ToString();
                e.Row.Cells[8].Text = Type41.ToString();
                e.Row.Cells[9].Text = Type51.ToString();
                e.Row.Cells[10].Text = Type61.ToString();
                //  e.Row.Cells[11].Text = TotalWorkProposed12.ToString();

            }
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg1.Text = ex.Message;

        }
    }
}

﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class UI_TSiPASS_frmBWMRedirectDashboard : System.Web.UI.Page
{
    BMWClass ObjBMW = new BMWClass();
    int delete = 0;
    comFunctions cmf = new comFunctions();
    General Gen = new General();
    DataRow dtrdr;
    DataTable myDtNewRecdr = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["user"] != null && Session["user"] != "")
        //{ }
        //else
        //{
        //    Response.Redirect("/Account/Login.aspx?link=" + System.Web.HttpContext.Current.Request.Url.PathAndQuery);
        //}
        DataSet ds = new DataSet();
        string status = Request.QueryString[1].ToString().Trim();
        string id = Request.QueryString[0].ToString().Trim();
        string intquestionnaireid = "";
        //if (Request.QueryString[1].ToString().Trim() != null && Request.QueryString[1].ToString().Trim() != "")
        //{
        //    intquestionnaireid = Request.QueryString[2].ToString().Trim();
        //}
        DataSet dscheck1 = new DataSet();
        dscheck1 = ObjBMW.GetBWMdatabyReq(Request.QueryString[0].ToString());
        //GetShowBWMQuestionaries(Session["uid"].ToString().Trim(), Request.QueryString[0].ToString());

        if (dscheck1.Tables[0].Rows.Count > 0)
        {

            intquestionnaireid = dscheck1.Tables[0].Rows[0]["HCEID"].ToString().Trim();
        }
        else
        {
            intquestionnaireid = "0";
        }


        if (!IsPostBack)
        {
            ds = ObjBMW.getBWMdashboarddrilldown(Session["uid"].ToString().Trim(), status, Request.QueryString[0].ToString().Trim(), "");

            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                grdDetails.DataSource = ds.Tables[0];
                grdDetails.DataBind();
                if (status == "Approval - Issued")
                {

                    grdDetails.Columns[15].Visible = true;
                    grdDetails.Columns[16].Visible = false;
                    grdDetails.Columns[17].Visible = false;
                }


                else if (status == "Approval - Rejected")
                {
                    grdDetails.Columns[15].Visible = false;
                    //grdDetails.Columns[16].Visible = false;  commented on 24.01.2019. Not to uncomment
                    grdDetails.Columns[16].Visible = true;
                    grdDetails.Columns[17].Visible = false;
                }


                else if (status == "Pre-Scrutiny - Rejected")
                {
                    grdDetails.Columns[15].Visible = false;
                    grdDetails.Columns[16].Visible = true;
                    grdDetails.Columns[17].Visible = false;
                }
                else if (status == "Queries -Yet to Respond")
                {
                    grdDetails.Columns[15].Visible = false;
                    grdDetails.Columns[16].Visible = true;
                    grdDetails.Columns[17].Visible = false;
                }
                else if (status == "Approval - Pending")
                {
                    grdDetails.Columns[15].Visible = false;
                    grdDetails.Columns[16].Visible = false;
                    grdDetails.Columns[17].Visible = false;
                    //grdDetails.Columns[21].Visible = true;
                    int c = ds.Tables[0].Rows.Count;
                    int i = 0;
                    while (i < c)
                    {
                        if (ds.Tables[0].Rows[i]["intapprovalid"].ToString() == "55")
                        {
                            grdDetails.Columns[21].Visible = true;
                        }
                        else
                        {
                            grdDetails.Columns[21].Visible = false;
                        }
                        i++;
                    }
                }
                else
                {

                    grdDetails.Columns[15].Visible = false;
                    grdDetails.Columns[16].Visible = false;
                    grdDetails.Columns[17].Visible = false;
                    grdDetails.Columns[21].Visible = false;
                }

            }
        }


    }


    protected void btnOrgLookup_Click(object sender, EventArgs e)
    {

    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {



    }
    void clear()
    {




    }


    protected void BtnClear0_Click(object sender, EventArgs e)
    {


    }
    void FillDetails()
    {


    }
    protected void BtnClear_Click(object sender, EventArgs e)
    {

    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    void getcounties()
    {

    }
    protected void ddlCounties_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    void getPayams()
    {

    }
    protected void ddlState_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void ddlCounties_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void BtnSave2_Click(object sender, EventArgs e)
    {

        try
        {



        }
        catch (Exception ex)
        {
            // lblmsg.Text = ex.ToString();
        }
        finally
        {

        }

    }



    protected void ddlProp_intDistrictid_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void grdDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {


        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField HdfApprovalid = (HiddenField)e.Row.FindControl("HdfApprovalid");
            HdfApprovalid.Value = DataBinder.Eval(e.Row.DataItem, "intApprovalid").ToString().Trim();
            string createdby = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Created_by"));
            string Commondetatilsupdated = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "CommonDetailsUpdatedFlag"));
            string NICApplicationno = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "NICApplicationno"));
            HyperLink h1 = (HyperLink)e.Row.Cells[15].Controls[0];

            h1.Target = "_blank";
            h1.NavigateUrl = "frmViewAttachmentDetailsBMW.aspx?intApplicationId=" + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "hceid")).Trim();

            HyperLink h2 = (HyperLink)e.Row.Cells[16].Controls[0];

            h2.Target = "_blank";
            if (HdfApprovalid.Value == "166")
            {
                if (NICApplicationno != "" && NICApplicationno != null)
                {
                    if (Request.QueryString[1].ToString().Trim() == "Queries -Yet to Respond")
                    {
                       
                        if (Commondetatilsupdated != "" && Commondetatilsupdated == "Y")
                        {
                            h2.NavigateUrl = "http://tsocmms.nic.in/TLNPCB/industryRegMaster/industryHomeNew?swiftApplicationNo=" + createdby + "&applicationNo=" + NICApplicationno;
                            h2.Text = "Respond";
                        }
                        else
                        {
                            h2.NavigateUrl = "frmResponceQueriesBMW.aspx?intApplicationid=" + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intQueryTrnsid")).Trim();
                            h2.Text = "Respond";
                        }
                    }
                    else
                    {
                        if (Commondetatilsupdated != "" && Commondetatilsupdated == "Y")
                        {
                           // h2.NavigateUrl = "http://tsocmms.nic.in/TLNPCB/industryRegMaster/industryHomeNew?swiftApplicationNo=" + createdby + "&applicationNo=" + NICApplicationno;
                            h2.Text = "Rejected";
                            grdDetails.Columns[17].Visible = false;
                        }
                    }

                }
            }

            else
            {
                if (Request.QueryString[1].ToString().Trim() == "Queries -Yet to Respond")
                {

                    h2.NavigateUrl = "frmResponceQueriesRenewal.aspx?intApplicationid=" + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intQueryTrnsid")).Trim();
                    h2.Text = "Respond";

                }
                else if (Request.QueryString[1].ToString().Trim() == "Approval - Pending")
                {
                    if (HdfApprovalid.Value == "55")
                    {
                        HyperLink bolierlink = (HyperLink)e.Row.Cells[21].Controls[0];
                        grdDetails.Columns[21].Visible = true;
                        bolierlink.Target = "_blank";
                        bolierlink.NavigateUrl = "frmBoilerInspectionUpload.aspx?intApplicationId=" + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intCFEEnterpid")).Trim();
                    }
                    else
                    {
                        grdDetails.Columns[21].Visible = false;
                    }
                }
                else
                {
                    if (Commondetatilsupdated != "" && Commondetatilsupdated == "Y")
                    {
                        h2.NavigateUrl = "http://tsocmms.nic.in/TLNPCB/industryRegMaster/industryHomeNew?swiftApplicationNo=" + createdby + "&applicationNo=" + NICApplicationno;
                        h2.Text = "Click here to Appeal";

                    }
                }
            }
        }
    }
    protected void grdDetails_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void BtnSave1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UI/TSIPASS/AcknowledgmentEntrPrint.aspx?id=" + Request.QueryString[0].ToString().Trim());

    }
}
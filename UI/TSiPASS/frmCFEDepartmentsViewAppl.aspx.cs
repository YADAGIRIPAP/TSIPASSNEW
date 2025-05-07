using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Web.UI.HtmlControls;
//created by suresh as on 13-1-2016
//tables is td_BDCDet,tbl_Users
//procedures CheckUserid,insrtBDC,deleteBDC,getBDCbyID
public partial class TSTBDCReg1 : System.Web.UI.Page
{
    int delete = 0;
    comFunctions cmf = new comFunctions();
    General Gen = new General();
    DataRow dtrdr;
    DataTable myDtNewRecdr = new DataTable();
    string rstages = "0";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session.Count <= 0)
        {
            // Response.Redirect("../../frmUserLogin.aspx");
            Response.Redirect("~/Index.aspx");
        }

        if (!IsPostBack)
        {
            DataSet dsd = new DataSet();
            dsd = Gen.GetDistrictsWithoutHYD();
            ddldistrict.DataSource = dsd.Tables[0];
            ddldistrict.DataValueField = "District_Id";
            ddldistrict.DataTextField = "District_Name";
            ddldistrict.DataBind();
            ddldistrict.Items.Insert(0, "--Select--");
            GetDetails();
        }
        if ((hdfID.Value.ToString().Trim() != "" && hdfFlagID.Value.ToString().Trim() == "0"))
        {

        }
    }
    public void GetDetails()
    {
        if (Request.QueryString.Count > 0)
        {
            rstages = Request.QueryString[0].ToString().Trim();

            DataSet dsn = new DataSet();
            //Response.Write(Session["User_Code"].ToString().Trim()  +  "_" +  rstages.ToString().Trim() + "-" + Session["DistrictID"].ToString().Trim());
            //return;
            dsn = Gen.GetShowDepartmentFiles(Session["User_Code"].ToString().Trim(), rstages.ToString().Trim(), Session["DistrictID"].ToString().Trim());

            if (dsn.Tables[0].Rows.Count > 0)
            {
                if (rstages == "5" || rstages == "6" || rstages == "7" || rstages == "8" || rstages == "12" || rstages == "17" || rstages == "21")
                {
                    grdDetails.DataSource = dsn.Tables[0];
                    grdDetails.DataBind();
                }
                else
                {
                    rptDetails.DataSource = dsn.Tables[0];
                    rptDetails.DataBind();
                }
                if (rstages == "13")
                {
                    // grdDetails.Columns[17].Visible = true;
                    //  grdDetails.Columns[18].Visible = true;
                    rptDetails.FindControl("tdRefNO").Visible = true;
                    rptDetails.FindControl("thRefNO").Visible = true;
                    //if (Convert.ToString(Session["uid"]) == "1027")
                    //    HyperLink(rptDetails.FindControl("thRefNO")).NavigateUrl = "RPTTSNPDCL.aspx?intApplicationId=" + hdnhdnEntrID.Value;
                    //else if (Convert.ToString(Session["uid"]) == "1028")
                    //    hplFeasibility.NavigateUrl = "RPTTSSPDCL.aspx?intApplicationId=" + hdnhdnEntrID.Value;

                }
                else if (rstages == "16")
                {
                    //grdDetails.Columns[20].Visible = true;
                    rptDetails.FindControl("thRejection").Visible = true;
                    rptDetails.FindControl("tdRejection").Visible = true;

                }
                else
                {
                    grdDetails.Columns[17].Visible = false;
                    grdDetails.Columns[18].Visible = false;
                }
                if (Session["uid"].ToString().Trim() == "1027" || Session["uid"].ToString().Trim() == "1028")
                {
                    grdDetails.Columns[18].Visible = true;
                }
                else
                {
                    grdDetails.Columns[18].Visible = false;
                }
                if (Session["uid"].ToString().Trim() == "1042")
                {
                    grdDetails.Columns[11].Visible = false;
                    grdDetails.Columns[12].Visible = false;
                }
                else
                {
                    grdDetails.Columns[11].Visible = true;
                    grdDetails.Columns[12].Visible = true;
                }

                //if (dsn != null && dsn.Tables.Count > 0 && dsn.Tables[0].Rows.Count > 0)
                //{
                //    if (dsn.Tables[0].Rows[0]["UPDATEDFLAG"].ToString() != null && dsn.Tables[0].Rows[0]["UPDATEDFLAG"].ToString() != "")
                //    {
                //        if (dsn.Tables[0].Rows[0]["UPDATEDFLAG"].ToString() == "Y")
                //        {
                //            grdDetails.Columns[22].Visible = true;
                //        }
                //        else
                //        {
                //            grdDetails.Columns[22].Visible = false;
                //        }
                //    }
                //    else
                //    {
                //        grdDetails.Columns[22].Visible = false;
                //    }
                //}
            }
            else
            {
                grdDetails.DataSource = null;
                grdDetails.DataBind();
            }
        }
        if (Request.QueryString.Count > 0)
        {
            if (Request.QueryString[0].ToString().Trim() == "5" || Request.QueryString[0].ToString().Trim() == "6")
            {
            }
            else
            {
                // grdDetails.Columns[10].Visible = false;
                //grdDetails.Columns[11].Visible = false;

                grdDetails.Columns[11].Visible = false;
                grdDetails.Columns[12].Visible = false;
            }
        }
        else
        {
            //grdDetails.Columns[10].Visible = false;
            //grdDetails.Columns[11].Visible = false;
            grdDetails.Columns[11].Visible = false;
            grdDetails.Columns[12].Visible = false;
        }

    }
    protected void btnOrgLookup_Click(object sender, EventArgs e)
    {
    }

    protected void BtnSave_Click(object sender, EventArgs e)
    {
        GetDetails();

    }
    void clear()
    {



    }
    public void GetDetailsSearch()
    {
        if (TxtnameofUnit.Text == String.Empty && TxtnameofUnit0.Text == String.Empty && ddldistrict.SelectedItem.Text == "--Select--" && ddldistrict0.SelectedItem.Text == "--Select--")
        {
            GetDetails();
        }
        else
        {
            if (Request.QueryString.Count > 0)
            {
                rstages = Request.QueryString[0].ToString().Trim();
                DataSet dsn = new DataSet();
                //Response.Write(Session["User_Code"].ToString().Trim()  +  "_" +  rstages.ToString().Trim() + "-" + Session["DistrictID"].ToString().Trim());
                //return;
                dsn = Gen.GetShowDepartmentFilesIndusSearchCFE(Session["User_Code"].ToString().Trim(), rstages.ToString().Trim(), Session["DistrictID"].ToString().Trim(), TxtnameofUnit.Text, TxtnameofUnit0.Text, ddldistrict.SelectedValue.ToString(), ddldistrict0.SelectedValue.ToString());
                if (dsn.Tables[0].Rows.Count > 0)
                {
                    grdDetails.DataSource = dsn.Tables[0];
                    grdDetails.DataBind();
                }
                else
                {
                    grdDetails.DataSource = null;
                    grdDetails.DataBind();
                }
            }
            if (Request.QueryString.Count > 0)
            {
                if (Request.QueryString[0].ToString().Trim() == "5" || Request.QueryString[0].ToString().Trim() == "6")
                {
                }
                else
                {
                    // grdDetails.Columns[10].Visible = false;
                    //grdDetails.Columns[11].Visible = false;
                    grdDetails.Columns[11].Visible = false;
                    grdDetails.Columns[12].Visible = false;
                }
            }
            else
            {
                //grdDetails.Columns[10].Visible = false;
                //grdDetails.Columns[11].Visible = false;
                grdDetails.Columns[11].Visible = false;
                grdDetails.Columns[12].Visible = false;
            }
        }
    }
    protected void BtnClear0_Click(object sender, EventArgs e)
    {
        GetDetailsSearch();

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
            lblmsg.Text = ex.ToString();
        }
        finally
        {
        }

    }
    private void fillTrademappingGriddr(DataTable tmpTabledr, string MemType, string authorised, string designation, string gender, string mobile, string email2, string Created_by)
    {

    }

    protected void BtnClear0_Click1(object sender, EventArgs e)
    {

    }
    protected void gvpractical0_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GetNewRectoInsertdr()
    {

    }
    protected void grdDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            switch (Session["uid"].ToString().Trim())
            {
                case "1027":
                case "1028":
                    e.Row.Cells[19].Visible = true;
                    break;
                default:
                    e.Row.Cells[19].Visible = false;
                    break;
            }
            if (Session["User_Code"].ToString().Trim() == "1")
            {
                grdDetails.Columns[21].Visible = true;
            }
            else
            {
                grdDetails.Columns[21].Visible = false;
            }
            //if (Session["User_Code"].ToString().Trim() == "1" || Session["User_Code"].ToString().Trim() == "9" || Session["User_Code"].ToString().Trim() == "3")
            //{
            //    grdDetails.Columns[22].Visible = true;
            //}
            //else
            //{
            //    grdDetails.Columns[22].Visible = false;
            //}
        }
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //if (Session["User_Code"].ToString().Trim() == "1" || Session["User_Code"].ToString().Trim() == "9")
            //{
            DropDownList ddlStatus1 = (DropDownList)e.Row.Cells[11].FindControl("ddlStatus");
            if (Session["uid"].ToString().Trim() != "1031")
            {
                if (e.Row.Cells[22].Text.Trim() == "Y")
                {
                    e.Row.Cells[22].Text = "Please process this application in Concerned Department portal";
                    e.Row.Cells[22].Font.Bold = true;
                    ddlStatus1.Enabled = false;
                }
                else
                {
                    e.Row.Cells[22].Text = "Please process this application in TS-iPASS portal";
                    ddlStatus1.Enabled = true;
                }
            }
            else
            {
                e.Row.Cells[22].Text = "Please process this application in TS-iPASS portal";
                ddlStatus1.Enabled = true;
            }
            //}
            HyperLink h1 = (HyperLink)e.Row.Cells[8].Controls[0];
            HyperLink h2 = (HyperLink)e.Row.Cells[9].Controls[0];
            HyperLink h3 = (HyperLink)e.Row.Cells[10].Controls[0];
            HyperLink h4 = (HyperLink)e.Row.Cells[16].Controls[0];
            //HyperLink h5 = (HyperLink)e.Row.Cells[18].Controls[0];
            string intUid = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "UID_No")).Trim();
            LinkButton btn = (LinkButton)e.Row.FindControl("LinkButton1");
            btn.Text = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "UID_No")).Trim();
            btn.OnClientClick = "javascript:return Popup('" + intUid + "')";
            h1.Target = "_blank";
            //h1.NavigateUrl = "ViewCFEPrint.aspx?intApplid=" + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intCFEEnterpid")).Trim();  commented on 21.1.2019
            h1.NavigateUrl = "CFEPrint.aspx?intApplid=" + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intCFEEnterpid")).Trim();
            h2.Target = "_blank";
            h2.NavigateUrl = "frmViewAttachmentDetails.aspx?intApplicationId=" + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intCFEEnterpid")).Trim();
            h3.Target = "_blank";
            h3.NavigateUrl = "frmQurieResponseStatus.aspx?intApplicationId=" + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intCFEEnterpid")).Trim();
            h4.Target = "_blank";
            h4.NavigateUrl = "RptPaymentDetails.aspx?intApplicationId=" + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "UID_No")).Trim();
            // h5.Target = "_blank";
            //h5.NavigateUrl = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "FilePath"));
            DropDownList ddlStatus = (DropDownList)e.Row.Cells[11].FindControl("ddlStatus");
            TextBox txtPromotor = (TextBox)e.Row.Cells[11].FindControl("txtPromotor");
            Label Label378 = (Label)e.Row.Cells[11].FindControl("Label378");
            Label Label379 = (Label)e.Row.Cells[11].FindControl("Label379");
            Label LabelDiscription = (Label)e.Row.Cells[11].FindControl("LabelDiscription");
            TextBox txtAmount = (TextBox)e.Row.Cells[11].FindControl("txtAmount");

            HiddenField hdfApplID = (HiddenField)e.Row.Cells[12].FindControl("hdfApplID");
            hdfApplID.Value = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intQuessionaireid")).Trim();

            HiddenField hdfGroundedNo = (HiddenField)e.Row.Cells[12].FindControl("hdfGroundedNo");
            hdfGroundedNo.Value = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intCFEEnterpid")).Trim();

            HiddenField hdfGroundedNo0 = (HiddenField)e.Row.Cells[12].FindControl("hdfGroundedNo0");
            hdfGroundedNo0.Value = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intDeptid")).Trim();

            HiddenField hdfGroundedNo1 = (HiddenField)e.Row.Cells[12].FindControl("hdfGroundedNo1");
            hdfGroundedNo1.Value = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intApprovalid")).Trim();

            HiddenField hdfGroundedNo2 = (HiddenField)e.Row.Cells[12].FindControl("hdfGroundedNo2");
            hdfGroundedNo2.Value = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "LastDateofPreScrutiy")).Trim();

            HiddenField hdfGroundedNo3 = (HiddenField)e.Row.Cells[12].FindControl("hdfGroundedNo3");
            hdfGroundedNo3.Value = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intStatusid")).Trim();
            //if (Session["uid"].ToString().Trim() == "1027" || Session["uid"].ToString().Trim() == "1028")
            //{
            //    HyperLink h6 = (HyperLink)e.Row.Cells[19].Controls[0];
            //    h6.Target = "_blank";
            //    h6.NavigateUrl = "RPTTSSPDCL.aspx?intApplicationId=" + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intCFEEnterpid")).Trim();
            //}
            DataSet dsquery = new DataSet();
            dsquery = Gen.GetQueryRaised(hdfGroundedNo.Value, hdfGroundedNo0.Value, hdfGroundedNo1.Value);
            if (dsquery.Tables[0].Rows.Count > 0)
            {

                ddlStatus.Items.RemoveAt(3);
                //ddlStatus.Items.RemoveAt(2);
            }

            if (Session["intDeptid"] != null && Session["User_Code"].ToString() == "1" || Session["intDeptid"] != null && Session["User_Code"].ToString() == "3" || Session["intDeptid"] != null && Session["User_Code"].ToString() == "13" || Session["intDeptid"] != null && Session["User_Code"].ToString() == "142"
                || Session["intDeptid"] != null && Session["User_Code"].ToString() == "1016" || Session["intDeptid"] != null && Session["User_Code"].ToString() == "1018" || Session["intDeptid"] != null && Session["User_Code"].ToString() == "1019" || Session["intDeptid"] != null && Session["User_Code"].ToString() == "1020")
            {

            }
            else
            {
                if (hdfGroundedNo1.Value == "34" || hdfGroundedNo1.Value == "28")//28. Added forest department also..
                {
                }
                else
                {
                    if (ddlStatus.Items.FindByValue("11") != null)
                        ddlStatus.Items.RemoveAt(ddlStatus.Items.IndexOf(ddlStatus.Items.FindByValue("11")));
                }
            }




            HyperLink h6 = (HyperLink)e.Row.Cells[19].Controls[0];
            e.Row.Cells[19].Visible = true;
            h6.Target = "_blank";
            switch (Session["uid"].ToString().Trim())
            {
                case "1027":
                    h6.NavigateUrl = "RPTTSNPDCL.aspx?intApplicationId=" + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intCFEEnterpid")).Trim();
                    break;
                case "1028":
                    h6.NavigateUrl = "RPTTSSPDCL.aspx?intApplicationId=" + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intCFEEnterpid")).Trim();
                    break;
                default:
                    e.Row.Cells[19].Visible = false;
                    break;
            }

            if (Session["User_Code"].ToString().Trim() == "1")
            {
                grdDetails.Columns[21].Visible = true;
            }
            else
            {
                grdDetails.Columns[21].Visible = false;
            }

            Button BtnSave = (Button)e.Row.Cells[12].FindControl("BtnSave");
            if (Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intApprovalid")).Trim() != "")
            {
                if (Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intApprovalid")).Trim() == "34")
                {
                    Cls_Dharnidata obj_dharanidata = new Cls_Dharnidata();
                    DataTable dt_dharani = obj_dharanidata.DB_statusdisabledformrocount(Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intQuessionaireid")).Trim());
                    if (dt_dharani != null)
                    {
                        if (dt_dharani.Rows.Count > 0)//&& dt_dharani.Rows[n]["redirectcount"].ToString() !="0"
                        {
                            ddlStatus.Visible = false;
                            txtPromotor.Visible = false;
                            BtnSave.Visible = false;
                            //e.Row.Cells[11].Visible = false;
                            // e.Row.Cells[12].Visible = false;
                        }
                        else
                        {
                            ddlStatus.Visible = true;
                            BtnSave.Visible = true;
                        }
                    }
                    else
                    {
                        ddlStatus.Visible = true;
                        BtnSave.Visible = true;
                    }

                }
            }

            DataSet dsDCR = new DataSet();
            dsDCR = checkDCRPortal(Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intCFEEnterpid")));

            if (Session["User_Code"].ToString().Trim() == "11" || Session["User_Code"].ToString().Trim() == "13")
            {
                if (Convert.ToString(dsDCR.Tables[0].Rows[0]["DCRPORTAL"]) == "Y")
                {
                    e.Row.Cells[22].Text = "Please process this application in Concerned Department portal";
                    e.Row.Cells[22].Font.Bold = true;
                    ddlStatus.Enabled = false;
                }
                else
                {
                    e.Row.Cells[22].Text = "Please process this application in TS-iPASS portal";
                    ddlStatus.Enabled = true;
                }
            }

        }
    }
    protected void ddlStatus_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList ddlStatus = (DropDownList)sender;
        GridViewRow row = (GridViewRow)ddlStatus.NamingContainer;
        TextBox txtPromotor = (TextBox)row.FindControl("txtPromotor");
        Label Label378 = (Label)row.FindControl("Label378");
        TextBox txtAmount = (TextBox)row.FindControl("txtAmount");
        Label Label379 = (Label)row.FindControl("Label379");
        Label LabelDiscription = (Label)row.FindControl("LabelDiscription");
        //DropDownList ddlCorporation1 = (DropDownList)row.FindControl("ddlCorporation");
        //DropDownList ddlWard = (DropDownList)row.FindControl("ddlWard");
        //GetWards(ddlWard, ddlCorporation1.SelectedValue);
        ////DropDownList ddlStatus = (DropDownList).FindControl("ddlStatus");
        //Button BtnSave = (Button)sender;
        //GridViewRow row = (GridViewRow)BtnSave.NamingContainer;
        //DropDownList ddlStatus = (DropDownList)row.FindControl("ddlStatus");

        if (ddlStatus.SelectedValue.ToString() == "5")
        {
            txtPromotor.Visible = true;
            Label378.Visible = true;
            Label379.Visible = false;
            txtAmount.Visible = false;
            LabelDiscription.Visible = false;
        }
        else if (ddlStatus.SelectedValue.ToString() == "16")
        {

            txtPromotor.Visible = true;
            Label378.Visible = true;
            LabelDiscription.Visible = true;

            LabelDiscription.Text = "Rejection in pre-scrutiny stage is allowed only if the application is not in accordance with any act / rules. Pl. indicate the provision of act /rules that necessitate rejection of this application.Please mention on which act or rule,you are Rejecting?";
            string CloseWindow; CloseWindow = "alert('Rejection in pre-scrutiny stage is allowed only if the application is not in accordance with any act / rules. Pl. indicate the provision of act /rules that necessitate rejection of this application.Please mention on which act or rule,you are Rejecting?')";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "CloseWindow", CloseWindow, true);
            // success.Visible = true;
            // Failure.Visible = false;
            //  lblmsg.Text = "Please Mention on which act or rule,you are Rejecting?";
            //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + lblmsg.Text + "');", true);
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "Alert", "Rejection in pre-scrutiny stage is allowed only if the application is not in accordance with any act / rules. Pl. indicate the provision of act /rules that necessitate rejection of this application.Please Mention on which act or rule,you are Rejecting?", true);

            string message = "Please mention on which act or rule,you are Rejecting?";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);

            // string message = "Your request is being processed.";

            sb.Append("alert('");
            sb.Append(message);
            sb.Append("');");
            ClientScript.RegisterOnSubmitStatement(this.GetType(), "alert", sb.ToString());

            Label378.Text = "Reason For Rejection";
            Label379.Visible = false;
            txtAmount.Visible = false;

        }
        else if (ddlStatus.SelectedValue.ToString() == "7")
        {
            txtPromotor.Visible = true;
            Label378.Visible = true;
            Label379.Visible = true;
            txtAmount.Visible = true;
            LabelDiscription.Visible = false;
        }
        else if (ddlStatus.SelectedValue.ToString() == "11")
        {
            txtPromotor.Visible = false;
            Label378.Visible = false;
            Label379.Visible = true;
            txtAmount.Visible = true;
            LabelDiscription.Visible = false;
        }
        else
        {
            txtPromotor.Visible = false;
            Label378.Visible = false;
            Label379.Visible = false;
            txtAmount.Visible = false;
            LabelDiscription.Visible = false;
        }

        // if(ddlStatus.)
        //if()
    }
    protected void BtnSave_Click1(object sender, EventArgs e)
    {
        Button BtnSave = (Button)sender;
        GridViewRow row = (GridViewRow)BtnSave.NamingContainer;
        HiddenField hdfApplID = (HiddenField)row.FindControl("hdfApplID");
        DropDownList ddlStatus = (DropDownList)row.FindControl("ddlStatus");
        TextBox txtPromotor = (TextBox)row.FindControl("txtPromotor");
        TextBox txtAmount = (TextBox)row.FindControl("txtAmount");
        HyperLink h1 = (HyperLink)row.FindControl("h1");
        HyperLink h2 = (HyperLink)row.FindControl("h2");
        HyperLink h3 = (HyperLink)row.FindControl("h3");
        HiddenField hdfGroundedNo = (HiddenField)row.FindControl("hdfGroundedNo");
        HiddenField hdfGroundedNo0 = (HiddenField)row.FindControl("hdfGroundedNo0");
        HiddenField hdfGroundedNo1 = (HiddenField)row.FindControl("hdfGroundedNo1");
        HiddenField hdfGroundedNo2 = (HiddenField)row.FindControl("hdfGroundedNo2");
        HiddenField hdfGroundedNo3 = (HiddenField)row.FindControl("hdfGroundedNo3");
        if (ddlStatus.SelectedValue.ToString() == "--Select--")
        {
            Failure.Visible = true;
            success.Visible = false;
            lblmsg.Text = "Please Select Status";
        }
        int result = 0;
        result = Gen.insertDepartmentProcess(hdfGroundedNo.Value, hdfGroundedNo0.Value, hdfGroundedNo1.Value, ddlStatus.SelectedValue.ToString(), hdfGroundedNo2.Value, Session["uid"].ToString().Trim());
        if (ddlStatus.SelectedValue.ToString() == "5")//|| ddlStatus.SelectedValue.ToString()=="9"
        {
            //HiddenField hdfApplID = (HiddenField)e.Row.Cells[10].FindControl("hdfApplID");
            //hdfApplID.Value = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intQuessionaireid")).Trim();
            ////HiddenField hdfGroundedNo0 = (HiddenField)e.Row.Cells[11].FindControl("hdfGroundedNo0");
            ////hdfGroundedNo0.Value = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intDeptid")).Trim();
            ////HiddenField hdfGroundedNo1 = (HiddenField)e.Row.Cells[11].FindControl("hdfGroundedNo1");
            ////hdfGroundedNo1.Value = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intApprovalid")).Trim();
            if (txtPromotor.Text == "")
            {
                lblmsg.Text = "Please Enter Query Description";
            }
            else
            {
                int j = Gen.UpdateAdditionalpayments(hdfGroundedNo.Value, "", "Completed", Session["uid"].ToString(), ddlStatus.SelectedValue.ToString(), hdfGroundedNo0.Value, hdfGroundedNo1.Value, getclientIP());
                int i = Gen.insertQueryResponsedata(result.ToString(), hdfGroundedNo.Value, txtPromotor.Text, "Y", Session["uid"].ToString(), hdfGroundedNo0.Value, hdfGroundedNo1.Value, hdfApplID.Value);
                try
                {
                    int k = Gen.InsertDeptDateTracing(hdfGroundedNo0.Value, hdfApplID.Value, "", null, null, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, "CFE", hdfGroundedNo1.Value);
                }
                catch (Exception ex)
                {

                }

                //Approvals status queryraised to nsws
                Cls_nswswebapiafterpayment obj_nsws = new Cls_nswswebapiafterpayment();
                string ApplicationID = hdfGroundedNo.Value; string DeptID = hdfGroundedNo0.Value;
                string ApprovalID = hdfGroundedNo1.Value;
                string CategoryType = "CFE"; string StatusType = "query";
                string sedqueryraisedtonswsapp = obj_nsws.callwebapitosendqueryraiseddata(ApplicationID, DeptID, ApprovalID, CategoryType);
                string approvalstatusqueryraised = obj_nsws.getlicencesstatusupdated(ApplicationID, DeptID, ApprovalID, CategoryType, StatusType);


                DataSet dsMail = new DataSet();
                dsMail = Gen.GetShowEmailidandMobileNumber(hdfApplID.Value);
                if (dsMail.Tables[0].Rows.Count > 0)
                {
                    cmf.SendMailTSiPASS(dsMail.Tables[0].Rows[0]["Email"].ToString().Trim(), "Dear " + dsMail.Tables[0].Rows[0]["Names"].ToString().Trim() + "  :<br/><br/> <b> " + Session["user_id"].ToString() + "  has raised a query on your application. </b><br/><br/>Please respond to the query in your login in https://ipass.telangana.gov.in/. Thank You.");
                }
                if (dsMail.Tables[0].Rows[0]["MobileNo"].ToString().Trim() != "")
                {
                    //SendSingleSMS(dsMail.Tables[0].Rows[0]["MobileNo"].ToString().Trim(), "Dear " + row.Cells[3].Text + " - (" + row.Cells[1].Text + ") :<br/><br/> <b> " + Session["user_id"].ToString() + "  has raised a query on your application. </b><br/><br/>Please respond to the query in your login in TS-iPASS. Thank You.");
                    cmf.SendSingleSMS(dsMail.Tables[0].Rows[0]["MobileNo"].ToString().Trim(), "Dear " + dsMail.Tables[0].Rows[0]["Names"].ToString().Trim() + " : " + Session["user_id"].ToString() + "  has raised a query on your application. Please respond to the query in your login in https://ipass.telangana.gov.in. Thank You.");
                }
                GetDetails();
            }
        }
        else if (ddlStatus.SelectedValue.ToString() == "7")
        {
            int i = Gen.insertQueryResponsedata(result.ToString(), hdfGroundedNo.Value, txtPromotor.Text, "Y", Session["uid"].ToString(), hdfGroundedNo0.Value, hdfGroundedNo1.Value, hdfApplID.Value);
            int j = Gen.UpdateAdditionalpayments(hdfGroundedNo.Value, txtAmount.Text, "Y", Session["uid"].ToString(), ddlStatus.SelectedValue.ToString(), hdfGroundedNo0.Value, hdfGroundedNo1.Value, getclientIP());

            //Approvals status queryraised  to nsws
            Cls_nswswebapiafterpayment obj_nsws = new Cls_nswswebapiafterpayment();
            string ApplicationID = hdfGroundedNo.Value; string DeptID = hdfGroundedNo0.Value;
            string ApprovalID = hdfGroundedNo1.Value;
            string CategoryType = "CFE"; string StatusType = "query";
            string sedqueryraisedtonswsapp = obj_nsws.callwebapitosendqueryraiseddata(ApplicationID, DeptID, ApprovalID, CategoryType);
            string approvalstatusqueryraised = obj_nsws.getlicencesstatusupdated(ApplicationID, DeptID, ApprovalID, CategoryType, StatusType);


            DataSet dsMail = new DataSet();
            dsMail = Gen.GetShowEmailidandMobileNumber(hdfApplID.Value);
            if (dsMail.Tables[0].Rows.Count > 0)
            {
                cmf.SendMailTSiPASS(dsMail.Tables[0].Rows[0]["Email"].ToString().Trim(), "Dear " + dsMail.Tables[0].Rows[0]["Names"].ToString().Trim() + " :<br/><br/> <b> " + Session["user_id"].ToString() + "  has raised a query and requested additional payment on your application. </b><br/><br/>Please respond to the query in your login in https://ipass.telangana.gov.in/. Thank You.");
            }
            if (dsMail.Tables[0].Rows[0]["MobileNo"].ToString().Trim() != "")
            {
                cmf.SendSingleSMS(dsMail.Tables[0].Rows[0]["MobileNo"].ToString().Trim(), "Dear " + dsMail.Tables[0].Rows[0]["Names"].ToString().Trim() + ": " + Session["user_id"].ToString() + "  has raised a query  and requested additional payment on your application. Please respond to the query  in your login in TS-iPASS. Thank You.");
                //cmf.SendSingleSMS("9247492919", "Dear " + row.Cells[3].Text + " - (" + row.Cells[1].Text + ") : " + Session["user_id"].ToString() + "  has raised a query on your application. Please respond to the query in your login in https://ipass.telangana.gov.in. Thank You.");
            }
        }
        else if (ddlStatus.SelectedValue.ToString() == "11")
        {
            if (txtAmount.Text.Trim() == "")
            {
                Failure.Visible = true;
                success.Visible = false;
                lblmsg.Text = "Please Eneter Additional Payment Amount";
                return;
            }
            int j = Gen.UpdateAdditionalpayments(hdfGroundedNo.Value, txtAmount.Text.Replace(",", ""), "Completed", Session["uid"].ToString(), ddlStatus.SelectedValue.ToString(), hdfGroundedNo0.Value, hdfGroundedNo1.Value, getclientIP());
            DataSet dsMail = new DataSet();
            try
            {
                int k = Gen.InsertDeptDateTracing(hdfGroundedNo0.Value, hdfApplID.Value, "", null, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, "CFE", hdfGroundedNo1.Value);
            }
            catch (Exception ex)
            {

            }
            dsMail = Gen.GetShowEmailidandMobileNumber(hdfApplID.Value);

            if (dsMail.Tables[0].Rows.Count > 0)
            {
                cmf.SendMailTSiPASS(dsMail.Tables[0].Rows[0]["Email"].ToString().Trim(), "Dear " + dsMail.Tables[0].Rows[0]["Names"].ToString().Trim() + " :<br/><br/> <b> " + Session["user_id"].ToString() + "  has completed pre-scrutiny of your application. Thank You.");
            }
            if (dsMail.Tables[0].Rows[0]["MobileNo"].ToString().Trim() != "")
            {
                cmf.SendSingleSMS(dsMail.Tables[0].Rows[0]["MobileNo"].ToString().Trim(), "Dear " + dsMail.Tables[0].Rows[0]["Names"].ToString().Trim() + " : " + Session["user_id"].ToString() + "  has completed pre-scrutiny of your application. Thank You.");
                //cmf.SendSingleSMS("9247492919", "Dear " + row.Cells[3].Text + " - (" + row.Cells[1].Text + ") : " + Session["user_id"].ToString() + "  has completed pre-scrutiny of your application. Thank You.");
            }
        }
        else if (ddlStatus.SelectedValue.ToString() == "12")
        {
            int j = Gen.UpdateAdditionalpayments(hdfGroundedNo.Value, "", "Completed", Session["uid"].ToString(), ddlStatus.SelectedValue.ToString(), hdfGroundedNo0.Value, hdfGroundedNo1.Value, getclientIP());
            try
            {
                int k = Gen.InsertDeptDateTracing(hdfGroundedNo0.Value, hdfApplID.Value, "", null, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, "CFE", hdfGroundedNo1.Value);
            }
            catch (Exception ex)
            {

            }
            DataSet dsMail = new DataSet();
            dsMail = Gen.GetShowEmailidandMobileNumber(hdfApplID.Value);
            if (dsMail.Tables[0].Rows.Count > 0)
            {
                cmf.SendMailTSiPASS(dsMail.Tables[0].Rows[0]["Email"].ToString().Trim(), "Dear " + dsMail.Tables[0].Rows[0]["Names"].ToString().Trim() + " :<br/><br/> <b> " + Session["user_id"].ToString() + "  has completed pre-scrutiny of your application. Thank You.");
            }
            if (dsMail.Tables[0].Rows[0]["MobileNo"].ToString().Trim() != "")
            {
                cmf.SendSingleSMS(dsMail.Tables[0].Rows[0]["MobileNo"].ToString().Trim(), "Dear " + dsMail.Tables[0].Rows[0]["Names"].ToString().Trim() + " : " + Session["user_id"].ToString() + "  has completed pre-scrutiny of your application. Thank You.");
                //  cmf.SendSingleSMS("9247492919", "Dear " + row.Cells[3].Text + " - (" + row.Cells[1].Text + ") : " + Session["user_id"].ToString() + "  has completed pre-scrutiny of your application. Thank You.");
            }
        }
        else if (ddlStatus.SelectedValue.ToString() == "16")
        {

            //if (txtPromotor.Text == "" || txtPromotor.Text == null)
            //{
            //    Failure.Visible = true;
            //    success.Visible = false;

            //    lblmsg0.Text = " Rejection in pre-scrutiny stage is allowed only if the application is not in accordance with any act / rules. Pl. indicate the provision of act /rules that necessitate rejection of this application.";

            //   // lblmsg0.Text = " File size should be less than 300KB";
            //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + lblmsg0.Text + "');", true);
            //    return;


            //   // return;
            //}
            if (txtPromotor.Text.Trim() != "")
            {

                int j = Gen.UpdateAdditionalpaymentsBeforePre(hdfGroundedNo.Value, "", "Rejected", Session["uid"].ToString(), ddlStatus.SelectedValue.ToString(), hdfGroundedNo0.Value, hdfGroundedNo1.Value, txtPromotor.Text, getclientIP());
                int k = Gen.InsertDeptDateTracing(hdfGroundedNo0.Value, hdfApplID.Value, "", null, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, "CFE", hdfGroundedNo1.Value);

                //Approvals status rejected to nsws
                Cls_nswswebapiafterpayment obj_nsws = new Cls_nswswebapiafterpayment();
                string ApplicationID = hdfGroundedNo.Value; string DeptID = hdfGroundedNo0.Value;
                string ApprovalID = hdfGroundedNo1.Value;
                string CategoryType = "CFE"; string StatusType = "rejected";
                obj_nsws.getlicencesstatusupdated(ApplicationID, DeptID, ApprovalID, CategoryType, StatusType);

                DataSet dsMail = new DataSet();
                dsMail = Gen.GetShowEmailidandMobileNumber(hdfApplID.Value);
                if (dsMail.Tables[0].Rows.Count > 0)
                {
                    cmf.SendMailTSiPASS(dsMail.Tables[0].Rows[0]["Email"].ToString().Trim(), "Dear " + dsMail.Tables[0].Rows[0]["Names"].ToString().Trim() + " :<br/><br/> <b> " + Session["user_id"].ToString() + "  has Rejected your application. Please login to TS-iPASS Appeal for Rejection. Thank You.");
                }
                if (dsMail.Tables[0].Rows[0]["MobileNo"].ToString().Trim() != "")
                {
                    cmf.SendSingleSMS(dsMail.Tables[0].Rows[0]["MobileNo"].ToString().Trim(), "Dear " + dsMail.Tables[0].Rows[0]["Names"].ToString().Trim() + " : " + Session["user_id"].ToString() + "  has Rejected your application. Please login to TS-iPASS Appeal for Rejection. Thank You.");
                    //  cmf.SendSingleSMS("9247492919", "Dear " + row.Cells[3].Text + " - (" + row.Cells[1].Text + ") : " + Session["user_id"].ToString() + "  has completed pre-scrutiny of your application. Thank You.");
                }
            }
            else
            {
                success.Visible = false;
                Failure.Visible = true;
                lblmsg0.Text = "Please Enter Reason For Rejection";
            }
        }
        if (result > 0)
        {
            success.Visible = true;
            Failure.Visible = false;
            lblmsg.Text = "Successfully Updated";
            if (ddlStatus.SelectedValue.ToString() == "16")
            {
                if (txtPromotor.Text.Trim() == "")
                {
                    success.Visible = false;
                    Failure.Visible = true;
                    lblmsg0.Text = "Please Enter Reason For Rejection";
                }
            }
            ddlStatus.SelectedIndex = 0;
            txtAmount.Text = "";
            txtPromotor.Text = "";
        }
        else
        {
            success.Visible = false;
            Failure.Visible = true;
            lblmsg.Text = "Failed..";
        }
        GetDetails();
        //else if (ddlStatus.SelectedValue.ToString() == "--Select--")
        //{
        //    Failure.Visible = true;
        //    success.Visible = false;
        //    lblmsg.Text = "Please Select Status";

        //}
    }

    public static string getclientIP()
    {
        string result = string.Empty;
        string ip = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        if (!string.IsNullOrEmpty(ip))
        {
            string[] ipRange = ip.Split(',');
            int le = ipRange.Length - 1;
            result = ipRange[0];
        }
        else
        {
            result = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
        }

        return result;
    }

    public DataSet checkDCRPortal(string intcfeid)
    {
        DB.DB con = new DB.DB();
        con.OpenConnection();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        try
        {
            da = new SqlDataAdapter("USP_CHECK_DCRPORTAL", con.GetConnection);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;


            if (intcfeid.Trim() == "" || intcfeid.Trim() == null)
                da.SelectCommand.Parameters.Add("@INTCFEID", SqlDbType.VarChar).Value = "%";
            else
                da.SelectCommand.Parameters.Add("@INTCFEID", SqlDbType.VarChar).Value = intcfeid.ToString();


            da.Fill(ds);
            return ds;


        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {

        }

    }


    protected void grdDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdDetails.PageIndex = e.NewPageIndex; // Set new page index
        GetDetails();
    }

    protected void rptDetails_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {


        try
        {
            if (Convert.ToString(Session["uid"]) == "1027" || Convert.ToString(Session["uid"]) == "1028")
            {
                //HtmlTableCell thFeasibility; HtmlTableCell tdFeasibility;
                if (e.Item.ItemType == ListItemType.Header)
                {
                    HtmlTableCell thFeasibility = (HtmlTableCell)e.Item.FindControl("thFeasibility");
                    thFeasibility.Visible = true;
                }
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {
                    HyperLink hplFeasibility = e.Item.FindControl("hplFeasibility") as HyperLink;
                    HtmlTableCell tdFeasibility = (HtmlTableCell)e.Item.FindControl("tdFeasibility");


                    HiddenField hdnhdnEntrID = (HiddenField)e.Item.FindControl("hdnEntrID");
                    tdFeasibility.Visible = true;


                    if (Convert.ToString(Session["uid"]) == "1027")
                        hplFeasibility.NavigateUrl = "RPTTSNPDCL.aspx?intApplicationId=" + hdnhdnEntrID.Value;
                    else if (Convert.ToString(Session["uid"]) == "1028")
                        hplFeasibility.NavigateUrl = "RPTTSSPDCL.aspx?intApplicationId=" + hdnhdnEntrID.Value;


                }
            }
        }
        catch (Exception ex)
        { throw ex; }

    }
}

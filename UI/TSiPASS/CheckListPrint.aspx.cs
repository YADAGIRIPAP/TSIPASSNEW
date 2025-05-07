using System;
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
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Data.SqlClient;
using System.Globalization;
using Org.BouncyCastle.Asn1.Ocsp;
using System.Text.RegularExpressions;

public partial class UI_TSiPASS_CheckListPrint : System.Web.UI.Page
{
    General gen = new General();
    string Cast = "";
    string Investmentid = "";
    string SubInctypeid = "";
    string rlsproceedNO = "";
    string DIPCFlag = "";
    string WORKINGSTATUS = "";
    string fromdate = "";
    string todate = "", result;
    string Grivance_File_Path, Grivance_File_Type, Grievnace_FileName;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                //    string Cast = Request.QueryString["Cast"].ToString();
                //    string Investmentid = Request.QueryString["MstIncentiveId"].ToString();
                //    h1heading.InnerHtml = Cast + " Category";
                //    TXTCHEQUEGENERATEPRINTDATE.Text = Request.QueryString["Date"].ToString();
                //    string SubInctypeid = Request.QueryString["SubIncTypeId"].ToString();
                //    string rlsproceedNO = Request.QueryString["RlsProceedNo"].ToString();
                //    lblRlsProceedNo.Text = rlsproceedNO;
                //    if (rlsproceedNO.Trim().TrimStart() == "0")
                //    {
                //        lblRlsProceedNo.Text = "All";

                //    }
                //    else
                //    {
                //        lblRlsProceedNo.Text = rlsproceedNO;
                //    }
                //    string DIPCFlag = "";
                //    if (Request.QueryString["DIPC"] != null && Request.QueryString["DIPC"].ToString() != "")
                //    {
                //        DIPCFlag = Request.QueryString["DIPC"].ToString();
                //        DIPCFlag = "Y";
                //    }
                //    else
                //    {
                //        DIPCFlag = null;
                //    }
                //    string WORKINGSTATUS = "";

                //    if (Request.QueryString["WORKINGSTATUS"] != null && Request.QueryString["WORKINGSTATUS"].ToString() != "")
                //    {
                //        WORKINGSTATUS = Request.QueryString["WORKINGSTATUS"].ToString();
                //    }

                //    string fromdate = Request.QueryString["FromDate"].ToString();
                //    string todate = Request.QueryString["ToDate"].ToString();

                //    DataSet ds = new DataSet();

                //    SqlParameter[] pp = new SqlParameter[] {
                //    new SqlParameter("@IncentiveTypID",SqlDbType.VarChar),
                //    new SqlParameter("@Cast",SqlDbType.VarChar),
                //    new SqlParameter("@date",SqlDbType.VarChar),
                //    new SqlParameter("@SubIncTypeId",SqlDbType.VarChar),
                //    new SqlParameter("@DIPCFlag",SqlDbType.VarChar),

                //     new SqlParameter("@WORKINGSTATUS",SqlDbType.VarChar),
                //      new SqlParameter("@FromDate",SqlDbType.VarChar),
                //       new SqlParameter("@ToDate",SqlDbType.VarChar)
                //};
                //    pp[0].Value = Investmentid;
                //    pp[1].Value = Cast;
                //    pp[2].Value = rlsproceedNO;
                //    pp[3].Value = SubInctypeid;
                //    pp[4].Value = DIPCFlag;
                //    pp[5].Value = WORKINGSTATUS;
                //    pp[6].Value = fromdate;
                //    pp[7].Value = todate;

                //    ds = gen.GenericFillDs("USP_GET_UNIT_INCENTIVEWISE_CheckLIst", pp);


                //    //  ds = gen.getReleaseProceedingsCheckListprint(Cast, Investmentid, rlsproceedNO, SubInctypeid);
                //    if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                //    {
                //        tdinvestments.InnerHtml = "--> " + ds.Tables[1].Rows[0]["IncentiveName"].ToString();
                //        grdDetails.DataSource = ds.Tables[0];
                //        grdDetails.DataBind();
                //    }
                bindgrid();
                //  lblRandom.Text = Cast + Investmentid + System.DateTime.Now.ToString("yyyyMMddmmss");

            }
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg0.Text = ex.Message;
            Failure.Visible = true;
        }
    }
    public void bindgrid()
    {
        Cast = Request.QueryString["Cast"].ToString();
        Investmentid = Request.QueryString["MstIncentiveId"].ToString();
        h1heading.InnerHtml = Cast + " Category";
        TXTCHEQUEGENERATEPRINTDATE.Text = Request.QueryString["Date"].ToString();
        SubInctypeid = Request.QueryString["SubIncTypeId"].ToString();
        rlsproceedNO = Request.QueryString["RlsProceedNo"].ToString();
        lblRlsProceedNo.Text = rlsproceedNO;
        if (rlsproceedNO.Trim().TrimStart() == "0")
        {
            lblRlsProceedNo.Text = "All";

        }
        else
        {
            lblRlsProceedNo.Text = rlsproceedNO;
        }
        if (Request.QueryString["DIPC"] != null && Request.QueryString["DIPC"].ToString() != "")
        {
            DIPCFlag = Request.QueryString["DIPC"].ToString();
            DIPCFlag = "Y";
        }
        else
        {
            DIPCFlag = null;
        }

        if (Request.QueryString["WORKINGSTATUS"] != null && Request.QueryString["WORKINGSTATUS"].ToString() != "")
        {
            WORKINGSTATUS = Request.QueryString["WORKINGSTATUS"].ToString();
        }

        fromdate = Request.QueryString["FromDate"].ToString();
        todate = Request.QueryString["ToDate"].ToString();

        DataSet ds = new DataSet();

        SqlParameter[] pp = new SqlParameter[] {
                new SqlParameter("@IncentiveTypID",SqlDbType.VarChar),
                new SqlParameter("@Cast",SqlDbType.VarChar),
                new SqlParameter("@date",SqlDbType.VarChar),
                new SqlParameter("@SubIncTypeId",SqlDbType.VarChar),
                new SqlParameter("@DIPCFlag",SqlDbType.VarChar),

                 new SqlParameter("@WORKINGSTATUS",SqlDbType.VarChar),
                  new SqlParameter("@FromDate",SqlDbType.VarChar),
                   new SqlParameter("@ToDate",SqlDbType.VarChar)
            };
        pp[0].Value = Investmentid;
        pp[1].Value = Cast;
        pp[2].Value = rlsproceedNO;
        pp[3].Value = SubInctypeid;
        pp[4].Value = DIPCFlag;
        pp[5].Value = WORKINGSTATUS;
        pp[6].Value = fromdate;
        pp[7].Value = todate;

        ds = gen.GenericFillDs("USP_GET_UNIT_INCENTIVEWISE_CheckLIst", pp);


        //  ds = gen.getReleaseProceedingsCheckListprint(Cast, Investmentid, rlsproceedNO, SubInctypeid);
        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            tdinvestments.InnerHtml = "--> " + ds.Tables[1].Rows[0]["IncentiveName"].ToString();
            grdDetails.DataSource = ds.Tables[0];
            grdDetails.DataBind();
        }
    }
    protected void PrintPdf()
    {
        try
        {
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {

                    grdDetails.HeaderRow.ForeColor = System.Drawing.Color.Black;
                    grdDetails.HeaderStyle.ForeColor = System.Drawing.Color.Black;

                    grdDetails.FooterRow.ForeColor = System.Drawing.Color.Black;
                    grdDetails.FooterStyle.ForeColor = System.Drawing.Color.Black;

                    // grdExport.Columns[1].Visible = false;
                    grdDetails.RenderControl(hw);
                    StringReader sr = new StringReader(sw.ToString());
                    Document pdfDoc = new Document(PageSize.A3, 10f, 10f, 10f, 0f);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    htmlparser.Parse(sr);
                    pdfDoc.Close();


                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename= SLCAgenda.pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Write(pdfDoc);
                    Response.Flush();
                    Response.End();
                }
            }
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg0.Text = ex.Message;
            Failure.Visible = true;
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            int valid = 0;
            string isDipc = Request.QueryString[5].ToString();
            Cast = Request.QueryString["Cast"].ToString();
            Investmentid = Request.QueryString["MstIncentiveId"].ToString();
            foreach (GridViewRow gvrow in grdDetails.Rows)
            {
                var checkbox = gvrow.FindControl("chkRow") as CheckBox;
                if (checkbox.Checked)
                {
                    int rowIndex = gvrow.RowIndex;
                    string EnterperIncentiveID = ((Label)gvrow.FindControl("lblEnterperIncentiveID")).Text.ToString();
                    // string[] datett = TXTCHEQUEGENERATEPRINTDATE.Text.Trim().Split('/');
                    //frmvo.Slcdate = datett[2] + "/" + datett[1] + "/" + datett[0];
                    //string ProposedDate = datett[2] + "/" + datett[1] + "/" + datett[0];
                    string ProposedDate = "";
                    if (TXTCHEQUEGENERATEPRINTDATE.Text.Trim().Contains('/'))
                    {
                        string[] datett = TXTCHEQUEGENERATEPRINTDATE.Text.Trim().Split('/');
                        ProposedDate = datett[2] + "/" + datett[1] + "/" + datett[0];
                    }
                    else if (TXTCHEQUEGENERATEPRINTDATE.Text.Trim().Contains('-'))
                    {
                        string[] datett1 = TXTCHEQUEGENERATEPRINTDATE.Text.Trim().Split('-');
                        ProposedDate = datett1[2] + "/" + datett1[1] + "/" + datett1[0];
                    }
                    if (Cast == "General")
                    {
                        lblRandom.Text = "TIDEA" + Investmentid + System.DateTime.Now.ToString("yyyyMMddHHmmss");
                    }
                    else if (Cast == "SC")
                    {
                        lblRandom.Text = "SCP" + Investmentid + System.DateTime.Now.ToString("yyyyMMddHHmmss");
                    }
                    else if (Cast == "ST")
                    {
                        lblRandom.Text = "TSP" + Investmentid + System.DateTime.Now.ToString("yyyyMMddHHmmss");
                    }
                    else if (Cast == "PHC")
                    {
                        lblRandom.Text = "PHC" + Investmentid + System.DateTime.Now.ToString("yyyyMMddHHmmss");
                    }
                    string MstIncentiveId = ((Label)gvrow.FindControl("lblIncentiveID")).Text.ToString();

                    SqlParameter[] pp = new SqlParameter[] {
                new SqlParameter("@EnterperIncentiveID",SqlDbType.VarChar),
                new SqlParameter("@MstIncentiveId",SqlDbType.VarChar),
                new SqlParameter("@CreatedByid",SqlDbType.VarChar),
                //new SqlParameter("@ProposedSVCDate",SqlDbType.VarChar),
                new SqlParameter("@RlsProceedNo",SqlDbType.VarChar),
                new SqlParameter("@Dipc",SqlDbType.VarChar),
                new SqlParameter("@RandomNo",SqlDbType.VarChar),
                new SqlParameter("@ForwardTo",SqlDbType.VarChar),
                 new SqlParameter("@StageID",SqlDbType.VarChar),
                new SqlParameter("@Forward_Remarks",SqlDbType.VarChar),
                new SqlParameter("@Valid",SqlDbType.Int)
            };
                    pp[0].Value = EnterperIncentiveID;
                    pp[1].Value = MstIncentiveId;
                    pp[2].Value = Session["uid"].ToString();
                    // pp[3].Value = ProposedDate;
                    pp[3].Value = lblRlsProceedNo.Text;
                    pp[4].Value = isDipc;

                    pp[5].Value = lblRandom.Text;
                    pp[6].Value = ddlForward.SelectedItem.Text;
                    pp[7].Value = ddlForward.SelectedValue;
                    pp[8].Value = txtRemarks.Text.Trim();
                    pp[9].Direction = ParameterDirection.Output;

                    valid = gen.GenericExecuteNonQuery("USP_UPD_UPDATECHeckLIst_COI_NEW", pp); /*USP_UPD_UPDATECHeckLIst_COI*/

                    //valid = gen.UpdateincentiveProposedSLCCheckListdate(EnterperIncentiveID, MstIncentiveId, ProposedDate,lblRlsProceedNo.Text, Session["uid"].ToString());
                }
            }
            if (valid == 1)
            {
                trUpload.Visible = false;
                trgrivenance.Visible = false;
                trRemarks.Visible = false;
                RandomNo.Visible = true;
                string randomValue = lblRandom.Text.Replace("'", "\\'");
                string message = string.Format("alert('Updated Successfully: {0}');", randomValue);
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                bindgrid();
                lblMessage.Text = "Updated Successfully!";
                lblMessage.Visible = true;
                Button1.Enabled = false;
                Button6.Visible = true;

            }
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg0.Text = ex.Message;
            Failure.Visible = true;
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {
            PrintPdf();
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg0.Text = ex.Message;
            Failure.Visible = true;
        }

    }
    protected void BtnSave2_Click(object sender, EventArgs e)
    {
        try
        {
            ExportToExcel();
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg0.Text = ex.Message;
            Failure.Visible = true;
        }
    }
    protected void grdDetails_RowCreated(object sender, GridViewRowEventArgs e)
    {
        foreach (TableCell cell in e.Row.Cells)
        {
            cell.Style.Add("mso-style-parent", "style0");
            cell.Style.Add("mso-number-format", "\\@");
        }
    }
    protected void ExportToExcel()
    {
        try
        {
            Button6.Visible = false;
            Response.Clear();
            Response.Buffer = true;
            string FileName = lblHeading.Text;
            string Grid = "";
            FileName = FileName.Replace(" ", "");
            Response.AddHeader("content-disposition", "attachment;filename=" + FileName + DateTime.Now.ToString("dd/M/yyyy") + ".xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                Government.Visible = true;
                divPrint.Style["width"] = "680px";
                Button1.Visible = false;
                Button2.Visible = false;
                HtmlTextWriter hw = new HtmlTextWriter(sw);
                divPrint.RenderControl(hw);
                string label1text = TXTCHEQUEGENERATEPRINTDATE.Text;
                //Grid = sw.ToString();
                string headerTable = @"<table width='100%' class='TestCssStyle'><tr><td align='center' colspan='5'><h4>" + lblHeading.Text + "</h4></td></td></tr><tr><td align='center' colspan='5'><h4>" + label1text + "</h4></td></td></tr></table>";
                HttpContext.Current.Response.Write(headerTable);
                Response.Write(@"<style>.text { mso-number-format:\@; } </style>");
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();

            }
            //Button1.Visible = true;
            //Button2.Visible = true;
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg0.Text = ex.Message;
            Failure.Visible = true;
        }
        finally
        {
            Button6.Visible = true;
        }
    }
    protected void ExportToExcel(object sender, EventArgs e)
    {
        try
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=PendingGenerateCheckList.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            Government.Visible = true;
            divPrint.Style["width"] = "680px";
            Button1.Visible = false;
            Button2.Visible = false;
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                //To Export all pages
                grdDetails.AllowPaging = false;

                divPrint.RenderControl(hw);

                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg0.Text = ex.Message;
            Failure.Visible = true;
        }
    }

    protected void grdDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }

    protected void chkRow_CheckedChanged(object sender, EventArgs e)
    {
        try
        {

            foreach (GridViewRow row in grdDetails.Rows)
            {
                CheckBox chkRow = (CheckBox)row.FindControl("chkRow");

                if (chkRow != null && chkRow.Checked)
                {
                    divForward.Visible = true;
                    return;
                }
            }

            divForward.Visible = false;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void BtnUpload_Click1(object sender, EventArgs e)
    {
        try
        {
            string Error = ""; string message = "";
            if (FileUpload.HasFile)
            {
                if (string.IsNullOrEmpty(Error))
                {
                    foreach (GridViewRow row in grdDetails.Rows)
                    {
                        CheckBox chkRow = row.FindControl("chkRow") as CheckBox;
                        if (chkRow != null && chkRow.Checked)
                        {

                            //  Label lblId = (Label)row.FindControl("lblIncentiveID");
                            Label lblMsatIncentiveID = row.FindControl("lblEnterperIncentiveID") as Label;

                            string InvestmentId = Request.QueryString["MstIncentiveId"];

                            string baseDir = ConfigurationManager.AppSettings["CheckListPath"];
                            string serverPath = Path.Combine(baseDir, lblMsatIncentiveID.Text, InvestmentId, "File Upload");

                            if (!Directory.Exists(serverPath))
                                Directory.CreateDirectory(serverPath);

                            string[] existingFiles = Directory.GetFiles(serverPath);
                            foreach (string file in existingFiles)
                                File.Delete(file);

                            string fullFilePath = Path.Combine(serverPath, FileUpload.PostedFile.FileName);
                            FileUpload.SaveAs(fullFilePath);

                            Attachments objAttachment = new Attachments
                            {
                                SLC_DIPC = !string.IsNullOrEmpty(Request.QueryString["DIPC"]) ? Request.QueryString["DIPC"] : null,
                                FILEPATH = fullFilePath,
                                FILENAME = FileUpload.PostedFile.FileName,
                                INCENTIVEID = lblMsatIncentiveID.Text,
                                MasterIncentiveId = InvestmentId
                            };

                            string result = InsertAttachments(objAttachment);
                            if (!string.IsNullOrEmpty(result))
                            {
                                lblFileName1.Text = FileUpload.PostedFile.FileName;
                                lblFileName1.NavigateUrl = "~/User/Dashboard/ServePdfFile.ashx?filePath=" + fullFilePath;
                                lblFileName1.Target = "_blank";

                                message = "alert('Document Uploaded successfully')";
                                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                            }
                        }
                    }
                }
                else
                {
                    message = "alert('" + Error + "')";
                    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);

                }
            }
            else
            {
                message = "alert('" + "Please Upload Document" + "')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            }
        }
        catch (Exception ex)
        {
            Failure.Visible = true;
            lblmsg0.Text = ex.Message;
        }
    }
    public string InsertAttachments(Attachments objAttachment)
    {
        string Result = "";
        string connstr = ConfigurationManager.ConnectionStrings["TSiPASSSkils"].ToString();
        SqlConnection connection = new SqlConnection(connstr);
        SqlTransaction transaction = null;
        try
        {
            connection.Open();
            transaction = connection.BeginTransaction();

            SqlCommand com = new SqlCommand();
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "USP_DISBURSEMENTDIPCSLC";

            com.Transaction = transaction;
            com.Connection = connection;

            if (objAttachment.SLC_DIPC != null && objAttachment.SLC_DIPC != "")
            {
                com.Parameters.AddWithValue("@SLC_DIPC", objAttachment.SLC_DIPC);
            }
            com.Parameters.AddWithValue("@ADRTGS_FILEPATH", objAttachment.FILEPATH);
            com.Parameters.AddWithValue("@ADRTGS_FILENAME", objAttachment.FILENAME);
            com.Parameters.AddWithValue("@INCENTIVEID", objAttachment.MasterIncentiveId );
            com.Parameters.AddWithValue("@MasterIncentiveId", Convert.ToInt32(objAttachment.INCENTIVEID));



            com.Parameters.Add("@RESULT", SqlDbType.VarChar, 100);
            com.Parameters["@RESULT"].Direction = ParameterDirection.Output;
            com.ExecuteNonQuery();

            Result = com.Parameters["@RESULT"].Value.ToString();
            transaction.Commit();
            connection.Close();

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            connection.Close();
            connection.Dispose();
        }
        return Result;
    }
    public class Attachments
    {
        public string SLC_DIPC { get; set; }
        public string FILEPATH { get; set; }
        public string FILENAME { get; set; }
        public string INCENTIVEID { get; set; }
        public string MasterIncentiveId { get; set; }

    }

}
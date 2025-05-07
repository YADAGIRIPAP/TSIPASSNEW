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
using System.Globalization;
using System.Data.SqlClient;

public partial class UI_TSiPASS_CheckListPrintRePrint : System.Web.UI.Page
{
    private SqlConnection connSqlHelper = new SqlConnection(ConfigurationManager.ConnectionStrings["TSiPASSSkils"].ConnectionString);
    DB.DB con = new DB.DB();
    string linkfile = "";
    General gen = new General();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                string Cast = Request.QueryString[0].ToString();
                string Investmentid = Request.QueryString[1].ToString();
                h1heading.InnerHtml = Cast + " Category";
                txtsvcdate.Text = Request.QueryString[2].ToString();
                string SubInctypeid = Request.QueryString[3].ToString();
                string rlsproceedNO = Request.QueryString[4].ToString();
                if (rlsproceedNO.Trim().TrimStart() == "0")
                {
                    lblRlsProceedNo.Text = "All";
                    
                }
                else
                {
                    lblRlsProceedNo.Text = rlsproceedNO;
                }

                string DIPCFlag = "";
                if (Request.QueryString["DIPCFlag"] != null && Request.QueryString["DIPCFlag"].ToString() != "")
                {
                    DIPCFlag = Request.QueryString["DIPCFlag"].ToString();
                    DIPCFlag = "Y";
                }
                else
                {
                    DIPCFlag = null;
                }
                string UCSTATUS = "", WORKINGSTATUS="";
                if (Request.QueryString["UCSTATUS"] != null && Request.QueryString["UCSTATUS"].ToString() != "")
                {
                    UCSTATUS = Request.QueryString["UCSTATUS"].ToString();
                }
                if (Request.QueryString["WORKINGSTATUS"] != null && Request.QueryString["WORKINGSTATUS"].ToString() != "")
                {
                    WORKINGSTATUS = Request.QueryString["WORKINGSTATUS"].ToString();
                }

                if(UCSTATUS=="UC")
                {
                    if (WORKINGSTATUS == "1")
                    {
                        Label2.Text = "Working Units";
                    }
                    else if (WORKINGSTATUS == "2")
                    {
                        Label2.Text = "Not Working Units";
                    }
                    else
                    {
                        Label2.Text = "Working and Not Working Units";
                    }
                }
                else if(UCSTATUS=="NUC")
                {
                    Label2.Text = "UC Not Updated Units";
                }
                string ProposedDate = "";
                string fromdate = Request.QueryString[5].ToString();
                string todate = Request.QueryString[6].ToString();

                DataSet ds = new DataSet();
                //  ds = gen.getReleaseProceedingsCheckListprint(Cast, Investmentid, ProposedDate, SubInctypeid);

                ds = gen.getReleaseProceedingsCheckListprintRePrint(Cast, Investmentid, rlsproceedNO, SubInctypeid, fromdate, todate, Session["DistrictID"].ToString().Trim(), DIPCFlag, UCSTATUS, WORKINGSTATUS);

                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    linkfile = ds.Tables[0].Rows[0]["LinkFile"].ToString();
                    tdinvestments.InnerHtml = "--> " + ds.Tables[1].Rows[0]["IncentiveName"].ToString();
                    grdDetails.DataSource = ds.Tables[0];
                    grdDetails.DataBind();
                    lblfromdate.Text = fromdate;
                    lbltodate.Text = todate;
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            //lbl.Text = ex.Message;
            //Failure.Visible = true;
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
            //lblmsg0.Text = ex.Message;
            // Failure.Visible = true;
        }
    }

    public override void VerifyRenderingInServerForm(Control control)
    {

    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    PrintPdf();

    //    //int valid = 0;
    //    //foreach (GridViewRow gvrow in grdDetails.Rows)
    //    //{
    //    //    int rowIndex = gvrow.RowIndex;
    //    //    string EnterperIncentiveID = ((Label)gvrow.FindControl("lblEnterperIncentiveID")).Text.ToString();
    //    //    // string[] datett = txtsvcdate.Text.Trim().Split('/');
    //    //    //frmvo.Slcdate = datett[2] + "/" + datett[1] + "/" + datett[0];
    //    //    //string ProposedDate = datett[2] + "/" + datett[1] + "/" + datett[0];
    //    //    string ProposedDate = "";
    //    //    if (txtsvcdate.Text.Trim().Contains('/'))
    //    //    {
    //    //        string[] datett = txtsvcdate.Text.Trim().Split('/');
    //    //        ProposedDate = datett[2] + "/" + datett[1] + "/" + datett[0];
    //    //    }
    //    //    else if (txtsvcdate.Text.Trim().Contains('-'))
    //    //    {
    //    //        string[] datett1 = txtsvcdate.Text.Trim().Split('-');
    //    //        ProposedDate = datett1[2] + "/" + datett1[1] + "/" + datett1[0];
    //    //    }
    //    //    string MstIncentiveId = ((Label)gvrow.FindControl("lblIncentiveID")).Text.ToString();
    //    //    valid = gen.UpdateincentiveProposedSLCCheckListdate(EnterperIncentiveID, MstIncentiveId, ProposedDate, lblRlsProceedNo.Text, Session["uid"].ToString());
    //    //}
    //    //if (valid == 1)
    //    //{
    //    //    string message = "alert('Updated Successfully')";
    //    //    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
    //    //    Button6.Visible = true;
    //    //}

    //}

    protected void Button6_Click(object sender, EventArgs e)
    {
        PrintPdf();
    }

    protected void BtnSave2_Click(object sender, EventArgs e)
    {
        ExportToExcel();

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
                string label1text = txtsvcdate.Text;
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
        catch (Exception e)
        {

        }
        finally
        {
            Button6.Visible = true;
        }
    }
    protected void grdDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        // Label lbl = (e.Row.FindControl("LBLATTACHMENTNAME") as Label);
        HyperLink HyperLinkSubsidy = (e.Row.FindControl("hprlink") as HyperLink);
        HyperLink h1 = (HyperLink)e.Row.FindControl("lnkFile");
        //h1.NavigateUrl = "CS.aspx?filepathnew=" + encpassword;

        string filepathnew = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "LINKNEW"));
        string filepathnewREL = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "ReleaseLINKNEW"));
        if (filepathnew != "")
        {
            string encpassword = gen.Encrypt(filepathnew, "SYSTIME");
            HyperLinkSubsidy.NavigateUrl = "CS.aspx?filepathnew=" + encpassword;
        }


        if (filepathnewREL != "")
        {
            string encpassword = gen.Encrypt(filepathnewREL, "SYSTIME");
            h1.NavigateUrl = "CS.aspx?filepathnew=" + encpassword;
        }

    }
    protected void ExportToExcel(object sender, EventArgs e)
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



}
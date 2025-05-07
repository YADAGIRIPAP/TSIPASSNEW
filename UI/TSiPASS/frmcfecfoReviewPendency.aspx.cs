using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

public partial class UI_TSiPASS_frmcfecfoReviewPendency : System.Web.UI.Page
{
    int Before, After, Before_Due, After_Due;

    string conString = ConfigurationManager.ConnectionStrings["TSiPASSSkils"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            txtFromDate.Text = "01-01-2016";
            // txtTodate.Text = DateTime.Now.ToString("dd-MM-yyyy");
            //binddata(txtFromDate.Text, txtTodate.Text);
            txtFromDate.Enabled = false;

            //DateTime currentDate = DateTime.Today;
            //Console.WriteLine("Current Date: " + currentDate);
            txtTodate.Text = DateTime.Now.ToString("dd-MM-yyyy");

        }


    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        DateTime selectedDate = DateTime.Parse(txtTodate.Text);
        string applicationType = CFO_Dropdown.SelectedItem.Text;

        //if (txtFromDate !="" && txtTodate.Text != "" && applicationType != "")
        //{ binddata(txtTodate.Text, applicationType); }


        if (txtTodate.Text != "" && txtFromDate.Text != "" && applicationType != "")
        { binddata(txtFromDate.Text, txtTodate.Text, applicationType); }


    }
    protected void binddata(string fromdate, string todate, string applicationType)
    {
        try
        {

            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("DeptReportDepartmentWise_New1_CFE_FORAGENDA", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@APPLICATIONTYPE", SqlDbType.VarChar).Value = applicationType;
            da.SelectCommand.Parameters.Add("@FromDate", SqlDbType.Date).Value = Convert.ToDateTime(DateTime.ParseExact(fromdate, "dd-MM-yyyy", CultureInfo.InvariantCulture).ToString("yyyy-MM-dd"));
            da.SelectCommand.Parameters.Add("@ToDate", SqlDbType.Date).Value = Convert.ToDateTime(DateTime.ParseExact(todate, "dd-MM-yyyy", CultureInfo.InvariantCulture).ToString("yyyy-MM-dd"));
            DataSet ds = new DataSet();

            da.Fill(ds);
            grdDetails.DataSource = ds;
            grdDetails.DataBind();
            Report.Visible = true;
            con.Close();

        }
        catch (Exception Ex)
        { throw Ex; }

    }

    protected void grdDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        string Service_id = "";
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            int Before1 = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending Less than 3 Days"));
            Before = Before1 + Before;

            int After1 = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending More than 3 Days"));
            After = After1 + After;

            int Before_Due1 = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedWithinDays"));
            Before_Due = Before_Due1 + Before_Due;

            int After_Due1 = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedBeyondDays"));
            After_Due = After_Due1 + After_Due;

            Service_id = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Dept_Id"));

            HyperLink h1 = (HyperLink)e.Row.Cells[3].Controls[0];
            if (h1.Text != "0")
            {
                h1.NavigateUrl = "CFECFODrilldownpage.aspx?DeptId=" + Service_id + "&Status=1 &fromdate=" + txtFromDate.Text.Trim() + "&todate=" + txtTodate.Text + "&Type=" + CFO_Dropdown.SelectedItem.Text;
            }
            HyperLink h2 = (HyperLink)e.Row.Cells[4].Controls[0];
            if (h2.Text != "0")
            {
                h2.NavigateUrl = "CFECFODrilldownpage.aspx?DeptId=" + Service_id + "&Status=2 &fromdate=" + txtFromDate.Text.Trim() + "&todate=" + txtTodate.Text + "&Type=" + CFO_Dropdown.SelectedItem.Text;
            }
            HyperLink h3 = (HyperLink)e.Row.Cells[5].Controls[0];
            if (h3.Text != "0")
            {
                h3.NavigateUrl = "CFECFODrilldownpage.aspx?DeptId=" + Service_id + "&Status=3 &fromdate=" + txtFromDate.Text.Trim() + "&todate=" + txtTodate.Text + "&Type=" + CFO_Dropdown.SelectedItem.Text;
            }
            HyperLink h4 = (HyperLink)e.Row.Cells[6].Controls[0];
            if (h4.Text != "0")
            {
                h4.NavigateUrl = "CFECFODrilldownpage.aspx?DeptId=" + Service_id + "&Status=4 &fromdate=" + txtFromDate.Text.Trim() + "&todate=" + txtTodate.Text + "&Type=" + CFO_Dropdown.SelectedItem.Text;
            }
        }

        if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[1].Text = "Grand Total";
            e.Row.Cells[3].Text = Before.ToString();
            e.Row.Cells[4].Text = After.ToString();
            e.Row.Cells[5].Text = Before_Due.ToString();
            e.Row.Cells[6].Text = After_Due.ToString();

            Service_id = "%";
            HyperLink h1 = new HyperLink();
            h1.Text = Before.ToString();
            if (h1.Text != "0")
            {
                h1.NavigateUrl = "CFECFODrilldownpage.aspx?DeptId=" + "%" + "&Status=1 &fromdate=" + txtFromDate.Text.Trim() + "&todate=" + txtTodate.Text + "&Type=" + CFO_Dropdown.SelectedItem.Text;
                e.Row.Cells[3].Controls.Add(h1);
            }
            HyperLink h2 = new HyperLink();
            h2.Text = After.ToString();
            if (h2.Text != "0")
            {
                h2.NavigateUrl = "CFECFODrilldownpage.aspx?DeptId=" + "%" + "&Status=2 &fromdate=" + txtFromDate.Text.Trim() + "&todate=" + txtTodate.Text + "&Type=" + CFO_Dropdown.SelectedItem.Text;
                e.Row.Cells[4].Controls.Add(h2);
            }
            HyperLink h3 = new HyperLink();
            h3.Text = Before_Due.ToString();
            if (h3.Text != "0")
            {
                h3.NavigateUrl = "CFECFODrilldownpage.aspx?DeptId=" + "%" + "&Status=3 &fromdate=" + txtFromDate.Text.Trim() + "&todate=" + txtTodate.Text + "&Type=" + CFO_Dropdown.SelectedItem.Text;
                e.Row.Cells[5].Controls.Add(h3);
            }
            HyperLink h4 = new HyperLink();
            h4.Text = After_Due.ToString();
            if (h4.Text != "0")
            {
                h4.NavigateUrl = "CFECFODrilldownpage.aspx?DeptId=" + "%" + "&Status=4 &fromdate=" + txtFromDate.Text.Trim() + "&todate=" + txtTodate.Text + "&Type=" + CFO_Dropdown.SelectedItem.Text;
                e.Row.Cells[6].Controls.Add(h4);
            }
            h1.ForeColor = System.Drawing.Color.White;
            h2.ForeColor = System.Drawing.Color.White;
            h3.ForeColor = System.Drawing.Color.White;
            h4.ForeColor = System.Drawing.Color.White;
        }


    }

    protected void grdDetails_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            GridView HeaderGrid = (GridView)sender;

            GridViewRow HeaderGridRow = new GridViewRow(1, 2, DataControlRowType.Header, DataControlRowState.Insert);
            HeaderGridRow.HorizontalAlign = HorizontalAlign.Center;

            TableCell HeaderCell0 = new TableCell();
            HeaderCell0.Text = "";
            HeaderCell0.ColumnSpan = 2;
            HeaderGridRow.Cells.Add(HeaderCell0);


            TableCell HeaderCell1 = new TableCell();
            HeaderCell1.Text = "Scrutiny-Under Process";
            HeaderCell1.ColumnSpan = 2;
            HeaderCell1.HorizontalAlign = HorizontalAlign.Center;
            HeaderGridRow.Cells.Add(HeaderCell1);
            HeaderGridRow.Controls.Add(HeaderCell1);


            TableCell HeaderCell2 = new TableCell();
            HeaderCell2.Text = "Approval - Under Process";
            HeaderCell2.ColumnSpan = 2;
            HeaderCell2.HorizontalAlign = HorizontalAlign.Center;
            HeaderGridRow.Cells.Add(HeaderCell2);
            HeaderGridRow.Controls.Add(HeaderCell2);
            grdDetails.Controls[0].Controls.AddAt(0, HeaderGridRow);
        }


    }

    protected void ExportToExcel()
    {
        try
        {
            lblHeading.Visible = true;
            // grdsupport.Columns[6].Visible = false;
            Response.Clear();
            Response.Buffer = true;
            string FileName = lblHeading.Text;
            FileName = FileName.Replace(" ", "");
            Response.AddHeader("content-disposition", "attachment;filename=" + FileName + DateTime.Now.ToString("M/d/yyyy") + ".xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                Government.Visible = true;
                grdDetails.Style["width"] = "680px";
                Button1.Visible = false;
                Button2.Visible = false;
                HtmlTextWriter hw = new HtmlTextWriter(sw);
                grdDetails.RenderControl(hw);
                string label1text = Label1.Text;
                string headerTable = @"<table width='100%' class='TestCssStyle'><tr><td align='center' colspan='5'><h4>" + lblHeading.Text + "</h4></td></td></tr><tr><td align='center' colspan='5'><h4>" + label1text + "</h4></td></td></tr></table>";
                HttpContext.Current.Response.Write(headerTable);
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
    }

    protected void Button2_ServerClick1(object sender, EventArgs e)
    {
        lblHeading.Visible = true;
        using (StringWriter sw = new StringWriter())
        {
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {
                grdDetails.AllowPaging = false;

                // this.fillgrid();

                grdDetails.HeaderRow.ForeColor = System.Drawing.Color.Black;
                grdDetails.HeaderStyle.ForeColor = System.Drawing.Color.Black;

                grdDetails.FooterRow.ForeColor = System.Drawing.Color.Black;
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
                Response.AddHeader("content-disposition", "attachment;filename=R6.1:TSiPASS-TotalReportold2NewReport" + ".pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.Flush();
                Response.End();
            }
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {

    }

    protected void Button1_ServerClick1(object sender, EventArgs e)
    {
        ExportToExcel();
    }
}
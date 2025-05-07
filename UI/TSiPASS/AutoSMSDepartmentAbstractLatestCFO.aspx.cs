//By Srikanth on 13-05-2013
// For: Abstract for All Zone
// Tables Used: COMPLAINT_MASTER,COMPLAINT_TRANS,DEPT,SERVICE,LOCALITY,SERVICE_USERS,USERS
///Storedprocedure Name : Queries also used.

using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Net.Mail;
using System.Text;
using System.Net;
using System.Threading;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;


public partial class FrmUsers : System.Web.UI.Page
{
    HtmlTableRow tRow;
    HtmlTableCell tcell1;
    DataSet ds = new DataSet();
    comFunctions cmf = new comFunctions();
    int cnt = 0;

    string Dept = "";
    DB.DB con1 = new DB.DB();
    General tran1 = new General();
    General csRegComplaint = new General();
    int pendingafter, pendingbefore, closedafter, closedbefore, total, Reject, QueryRaised, QueryRaiseda, Pending, Pendinga, Approved, Approveda, tomorrow, tomorrowa;
    int pendingaftera, pendingbeforea, closedaftera, closedbeforea, totala, Rejecta;
    string zone = "%";
    protected void Page_Load(object sender, EventArgs e)
    {
        // this.txtFrom.Attributes.Add("onfocus", "popUpCalendarLeft(this,document.getElementById('ctl00_ContentPlaceHolder1_txtFrom'), 'dd-mmm-yyyy')");
        // this.txtTo.Attributes.Add("onfocus", "popUpCalendarLeft(this,document.getElementById('ctl00_ContentPlaceHolder1_txtTo'), 'dd-mmm-yyyy')");


        //if (Session.Count == 0)
        //    Response.Redirect("../../Index.aspx");
        //else
        //{
        //    if (Session["user_id"].ToString().Trim().ToLower() == "fruxhelpdesk")
        //    {
        //        BtnSave1.Visible = true;
        //    }
        //    else
        //    { BtnSave1.Visible = false; }
        if (!Page.IsPostBack)
        {
            // Modified by Srikanth on 13-05-2013


            hdfsms.Value = "1";
            THeader();
            FillGrid();
            tbl1.Width = "750";
            //  TTotal("Sr");
            TTotal("Gr");

            //SendSingleSMSnew("9985328475", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")", "1007865062836812218");

            SendSingleSMSnew("9030904595", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action.  Cases that could cross timelimit tomorrow : " + tomorrowa.ToString().Trim() + ". TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")", "1007674500065132243");

            SendSingleSMSnew("9985328475", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action.  Cases that could cross timelimit tomorrow : " + tomorrowa.ToString().Trim() + ". TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")", "1007674500065132243");

            //SendSingleSMSnew("9866584550", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");

            SendSingleSMSnew("9908077333", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action.  Cases that could cross timelimit tomorrow : " + tomorrowa.ToString().Trim() + ". TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")", "1007674500065132243");

            //SendSingleSMSnew("9100986717", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");commented on 02/02/2020

            SendSingleSMSnew("8331029999", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action.  Cases that could cross timelimit tomorrow : " + tomorrowa.ToString().Trim() + ". TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")", "1007674500065132243");

            //cmf.SendSingleSMS("9848080271", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");

            //SendSingleSMSnew("8008007748", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");

            // Manick Raj IAS
            //SendSingleSMSnew("7702542727", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action.  Cases that could cross timelimit tomorrow : " + tomorrowa.ToString().Trim() + ". TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")", "1007674500065132243");
            //SendSingleSMSnew("9441882727", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action.  Cases that could cross timelimit tomorrow : " + tomorrowa.ToString().Trim() + ". TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")", "1007674500065132243");

            SendSingleSMSnew("9000728887", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action.  Cases that could cross timelimit tomorrow : " + tomorrowa.ToString().Trim() + ". TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")", "1007674500065132243");

            SendSingleSMSnew("8096465555", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action.  Cases that could cross timelimit tomorrow : " + tomorrowa.ToString().Trim() + ". TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")", "1007674500065132243");
            //SendSingleSMSnew("9502036517", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");
            SendSingleSMSnew("9618445500", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action.  Cases that could cross timelimit tomorrow : " + tomorrowa.ToString().Trim() + ". TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")", "1007674500065132243");

            SendSingleSMSnew("7702948880", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")", "1007865062836812218");
            //SendSingleSMSnew("9182775855", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");
            hdfsms.Value = "0";

        }

        // }
    }

    //public string SendSingleSMSnew(String mobileNo, String message)
    //{
    //    //String username = "cgg-tipass";
    //    //String password = "tip@$$@2016";
    //    //String senderid = "TiPASS";

    //    String username = "TSIPASS";
    //    String password = "kcsb@786";
    //    String senderid = "TSIPAS";

    //    HttpWebRequest request;


    //    string responseFromServer = "";
    //    try
    //    {
    //        request = (HttpWebRequest)WebRequest.Create("https://msdgweb.mgov.gov.in/esms/sendsmsrequest");
    //        request.ProtocolVersion = HttpVersion.Version10;
    //        //((HttpWebRequest)request).UserAgent = ".NET Framework Example Client";
    //        ((HttpWebRequest)request).UserAgent = "Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)";
    //        request.Method = "POST";
    //        String smsservicetype = "singlemsg"; //For single message.
    //        String query = "username=" + HttpUtility.UrlEncode(username) +
    //            "&password=" + HttpUtility.UrlEncode(password) +
    //            "&smsservicetype=" + HttpUtility.UrlEncode(smsservicetype) +
    //            "&content=" + HttpUtility.UrlEncode("TS-iPASS:" + message) +
    //            "&mobileno=" + HttpUtility.UrlEncode(mobileNo) +
    //            "&senderid=" + HttpUtility.UrlEncode(senderid);

    //        byte[] byteArray = Encoding.ASCII.GetBytes(query);
    //        request.ContentType = "application/x-www-form-urlencoded";
    //        request.ContentLength = byteArray.Length;
    //        Stream dataStream = request.GetRequestStream();
    //        dataStream.Write(byteArray, 0, byteArray.Length);
    //        dataStream.Close();
    //        WebResponse response = request.GetResponse();
    //        String Status = ((HttpWebResponse)response).StatusDescription;
    //        dataStream = response.GetResponseStream();
    //        StreamReader reader = new StreamReader(dataStream);
    //        responseFromServer = reader.ReadToEnd();
    //        reader.Close();
    //        response.Close();
    //        dataStream.Close();
    //        //  request.KeepAlive = false;
    //    }
    //    catch (Exception ex)
    //    {
    //        throw new Exception(ex.Message);

    //    }
    //    responseFromServer = responseFromServer.Replace("\r\n", string.Empty);
    //    return responseFromServer.Trim();
    //    // return "402,1,0";

    //}
    public void FillGrid()
    {
        DataSet vehicleDS = new DataSet();
        //if (Session["DistrictID"].ToString().Trim() != null)
        //{
        //    vehicleDS = tran1.DeptReportDepartmentWise_NewCFO(Session["DistrictID"].ToString().Trim(), "%");
        //}
        //else
        //{
        //vehicleDS = tran1.DeptReportDepartmentWise_NewCFO("%", "%");
        vehicleDS = tran1.DeptReportDepartmentWise_NewCFO_SMS("%", "%");
        //}
        GridView1.DataSource = vehicleDS;
        GridView1.DataBind();
    }

    protected void BtnSave2_Click1(object sender, EventArgs e)
    {
        ExportToExcel();
    }

    protected void ExportToExcel()
    {
        try
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=R5: Department wise performance Tracker" + DateTime.Now.ToString("M/d/yyyy") + ".xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                //grdDetails.Columns[1].Visible = false;
                HtmlTextWriter hw = new HtmlTextWriter(sw);





                DataSet vehicleDS = new DataSet();
                //if (Session["DistrictID"].ToString().Trim() != null)
                //{
                //  vehicleDS = tran1.DeptReportDepartmentWise_NewCFO_export(Session["DistrictID"].ToString().Trim(), "%");
                //}
                //else
                //{
                vehicleDS = tran1.DeptReportDepartmentWise_NewCFO_export("%", "%");
                // }

                grdExport.DataSource = vehicleDS.Tables[0];
                grdExport.DataBind();

                grdExport.RenderControl(hw);
                //grdDetails.Columns.RemoveAt("View");
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }
        }
        catch (Exception e)
        {

        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
    }


    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            TChildHead(Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intDeptid")), Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Department Name")), Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Department Name")), Convert.ToString(DataBinder.Eval(e.Row.DataItem, "NoofapplicationsApplied")), Convert.ToString(DataBinder.Eval(e.Row.DataItem, "CompletedWithinDays")), Convert.ToString(DataBinder.Eval(e.Row.DataItem, "CompletedBeyondDays")), Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Pending Less than 3 Days")), Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Pending More than 3 Days")), Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Rejected")), Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Completed")), Convert.ToString(DataBinder.Eval(e.Row.DataItem, "QueryRaised")), Convert.ToString(DataBinder.Eval(e.Row.DataItem, "TOMORROW")), Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Approved")));




            if (Convert.ToString(DataBinder.Eval(e.Row.DataItem, "MobileNumber")).Trim() != "" && hdfsms.Value == "1")
            {
                if ((Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedBeyondDays")) + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending More than 3 Days"))) > 0)
                {
                    //SendSingleSMSnew(Convert.ToString(DataBinder.Eval(e.Row.DataItem, "MobileNumber")).Trim(), "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending More than 3 Days")).ToString().Trim() + "  and Approvals stage : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedBeyondDays")).ToString().Trim().ToString().Trim() + " . Application status informed for perusal and necessary action. TS-iPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");
                    if (Convert.ToString(DataBinder.Eval(e.Row.DataItem, "NodalMobileNumber")).Trim() != "")
                    {
                        SendSingleSMSnew(Convert.ToString(DataBinder.Eval(e.Row.DataItem, "NodalMobileNumber")).Trim(), "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending More than 3 Days")).ToString().Trim() + "  and Approvals stage : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedBeyondDays")).ToString().Trim().ToString().Trim() + " . Application status informed for perusal and necessary action. Cases that could cross timelimit tomorrow : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "TOMORROW")).ToString().Trim().ToString().Trim() + ". TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")", "1007674500065132243");
                    }
                    if (Convert.ToString(DataBinder.Eval(e.Row.DataItem, "MobileNumber")).Trim() != "")
                    {
                        SendSingleSMSnew(Convert.ToString(DataBinder.Eval(e.Row.DataItem, "MobileNumber")).Trim(), "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending More than 3 Days")).ToString().Trim() + "  and Approvals stage : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedBeyondDays")).ToString().Trim().ToString().Trim() + " . Application status informed for perusal and necessary action. Cases that could cross timelimit tomorrow : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "TOMORROW")).ToString().Trim().ToString().Trim() + ". TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")", "1007674500065132243");
                    }


                    //cmf.SendSingleSMS("9848080271", " " + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Department Name")) + " - Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending More than 3 Days")).ToString().Trim() + "  and Approvals stage : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedBeyondDays")).ToString().Trim().ToString().Trim() + " . Application status informed for perusal and necessary action. TS-iPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");

                    // cmf.SendSingleSMS("9885696486", " " + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Department Name")) + " - Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending More than 3 Days")).ToString().Trim() + "  and Approvals stage : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedBeyondDays")).ToString().Trim().ToString().Trim() + " . Application status informed for perusal and necessary action. TS-iPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");

                    //  cmf.SendSingleSMS("9247492919", " " + Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Department Name")) + " - Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending More than 3 Days")).ToString().Trim() + "  and Approvals stage : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedBeyondDays")).ToString().Trim().ToString().Trim() + " . Application status informed for perusal and necessary action. TS-iPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");


                }

                //cmf.SendSingleSMS(Convert.ToString(DataBinder.Eval(e.Row.DataItem, "MobileNumber")).Trim(), "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending More than 3 Days")).ToString().Trim() + "  and Approvals stage : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedBeyondDays")).ToString().Trim().ToString().Trim() + ".Application status informed for perusal and necessary action. TS-iPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");



                //if (Convert.ToString(DataBinder.Eval(e.Row.DataItem, "intDeptid")) == "1")
                //{
                //    //cmf.SendSingleSMS(Convert.ToString(DataBinder.Eval(e.Row.DataItem, "MobileNumber")).Trim(), "Respected Sir / Madam, TS-iPASS CFE Status on " + System.DateTime.Now.ToString("dd-MMM-yyyy") + " - Pendency beyond due date - Pre-scrutiny stage  : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending More than 3 Days")).ToString().Trim() + "  and Approvals stage : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedBeyondDays")).ToString().Trim().ToString().Trim() + " .Thank You");

                //    cmf.SendSingleSMS("9247492919", "Respected Sir / Madam, TS-iPASS CFE Status on " + System.DateTime.Now.ToString("dd-MMM-yyyy") + " - Pendency beyond due date - Pre-scrutiny stage  : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending More than 3 Days")).ToString().Trim() + "  and Approvals stage : " + Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedBeyondDays")).ToString().Trim().ToString().Trim() + " .Thank You");
                //}
            }

            int total1 = Convert.ToInt32(Convert.ToString(DataBinder.Eval(e.Row.DataItem, "NoofapplicationsApplied")));
            total = total1 + total;
            totala = total1 + totala;

            int pendingafter1 = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending More than 3 Days"));
            pendingafter = pendingafter1 + pendingafter;
            pendingaftera = pendingafter1 + pendingaftera;

            int pendingbefore1 = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Pending Less than 3 Days"));
            pendingbefore = pendingbefore1 + pendingbefore;
            pendingbeforea = pendingbefore1 + pendingbeforea;

            int closedafter1 = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedBeyondDays"));
            closedafter = closedafter1 + closedafter;
            closedaftera = closedafter1 + closedaftera;

            int closedbefore1 = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "CompletedWithinDays"));
            closedbefore = closedbefore1 + closedbefore;
            closedbeforea = closedbefore1 + closedbeforea;

            int Reject1 = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Rejected"));
            Reject = Reject1 + Reject;
            Rejecta = Reject1 + Rejecta;

            int QueryRaised1 = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "QueryRaised"));
            QueryRaised = QueryRaised1 + QueryRaised;
            QueryRaiseda = QueryRaised1 + QueryRaiseda;


            int Pending1 = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Completed"));
            Pending = Pending1 + Pending;
            Pendinga = Pending1 + Pendinga;

            int Approved1 = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Approved"));
            Approved = Approved1 + Approved;
            Approveda = Approved1 + Approveda;

            int tomorrow1 = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "TOMORROW"));
            tomorrow = tomorrow1 + tomorrow;
            tomorrowa = tomorrow1 + tomorrowa;

        }

        if (e.Row.RowType == DataControlRowType.Footer)
        {
            //e.Row.Cells[1].Text = "Total: ";
            //e.Row.Cells[2].Text = total.ToString().Trim();
            //e.Row.Cells[3].Text = closedbefore.ToString().Trim();
            //e.Row.Cells[4].Text = closedafter.ToString().Trim();
            //e.Row.Cells[5].Text = pendingbefore.ToString().Trim();
            //e.Row.Cells[6].Text = pendingafter.ToString().Trim();
            //e.Row.Cells[7].Text = Pending.ToString().Trim();
            //e.Row.Cells[8].Text = QueryRaised.ToString().Trim();
            //e.Row.Cells[9].Text = Reject.ToString().Trim();

            //e.Row.Cells[1].HorizontalAlign = HorizontalAlign.Center;
            //e.Row.Cells[2].HorizontalAlign = HorizontalAlign.Center;
            //e.Row.Cells[3].HorizontalAlign = HorizontalAlign.Center;
            //e.Row.Cells[4].HorizontalAlign = HorizontalAlign.Center;
            //e.Row.Cells[5].HorizontalAlign = HorizontalAlign.Center;
            //e.Row.Cells[6].HorizontalAlign = HorizontalAlign.Center;
            //e.Row.Cells[7].HorizontalAlign = HorizontalAlign.Center;

            e.Row.Font.Bold = true;

        }
    }


    #region Create Dynamic Table

    public void THeader()
    {

        #region First Copy
        tRow = new HtmlTableRow();
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<font color=white><b>S.No.</b></font>";
        tcell1.Align = "Center";
        tcell1.ColSpan = 1;
        tcell1.RowSpan = 2;
        tRow.Cells.Add(tcell1);
        tRow.Style.Add("Padding", "3px");
        tRow.Style.Add("Align", "center");
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<font color=white><b>Department Name</b></font>";
        tcell1.Align = "Left";
        tcell1.ColSpan = 1;
        tcell1.RowSpan = 2;






        tRow.Cells.Add(tcell1);
        tRow.Style.Add("Padding", "3px");
        tRow.Style.Add("Align", "center");
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<font color=white><b>Approvals Applied</b></font>";
        tcell1.Align = "Center";
        tcell1.ColSpan = 1;
        tcell1.RowSpan = 2;
        tRow.Cells.Add(tcell1);

        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<font color=white><b>Query Raised</b></font>";
        tcell1.Align = "Center";
        tcell1.ColSpan = 1;
        tcell1.RowSpan = 2;


        tRow.Cells.Add(tcell1);
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<font color=white><b>Pre-Scrutiny-Under Process</b></font>";
        tcell1.Align = "Center";
        tcell1.ColSpan = 2;


        //tRow.Cells.Add(tcell1);


        //tcell1 = new HtmlTableCell();
        //tcell1.InnerHtml = "<font color=white><b>Total</b></font>";
        //tcell1.Align = "Center";
        //tcell1.ColSpan = 1;


        tRow.Cells.Add(tcell1);
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<font color=white><b>Pre-Scrutiny-Completed</b></font>";
        tcell1.Align = "Center";
        tcell1.ColSpan = 1;
        tcell1.RowSpan = 2;


        tRow.Cells.Add(tcell1);
        tRow.Style.Add("Padding", "3px");
        tRow.Style.Add("Align", "center");
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<font color=white><b>Department Approval - Under Process</b></font>";
        tcell1.Align = "Center";
        tcell1.ColSpan = 2;




        tRow.Cells.Add(tcell1);

        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<font color=white><b>Department-Approved</b></font>";
        tcell1.Align = "Center";
        tcell1.ColSpan = 1;
        tcell1.RowSpan = 2;
        tRow.Cells.Add(tcell1);





        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<font color=white><b>Rejected</b></font>";
        tcell1.Align = "Center";
        tcell1.ColSpan = 1;
        tcell1.RowSpan = 2;

        tRow.Cells.Add(tcell1);
        tRow.BgColor = "#009688";
        tRow.BorderColor = "#ffffff";
        tbl1.Rows.Add(tRow);

        tRow = new HtmlTableRow();
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<font color=white><b>Before Due Date</b></font>";
        tcell1.Align = "Center";
        tcell1.ColSpan = 1;
        tRow.Cells.Add(tcell1);
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<font color=white><b>After Due Date</b></font>";
        tcell1.Align = "Center";
        tcell1.ColSpan = 1;


        tRow.Cells.Add(tcell1);
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<font color=white><b>Before Due Date</b></font>";
        tcell1.Align = "Center";
        tcell1.ColSpan = 1;
        tRow.Cells.Add(tcell1);
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<font color=white><b>After Due Date</b></font>";
        tcell1.Align = "Center";
        tcell1.ColSpan = 1;
        //tRow.Cells.Add(tcell1);

        //tcell1 = new HtmlTableCell();
        //tcell1.InnerHtml = "<font color=white><b>Total</b></font>";
        //tcell1.Align = "Center";
        //tcell1.ColSpan = 1;
        tRow.Cells.Add(tcell1);


        tRow.BgColor = "#009688";
        tRow.BorderColor = "#ffffff";

        tbl1.Rows.Add(tRow);

        #endregion

    }

    public void TChildHead(string Service_id, string Department, string Service, string totalReceived, string beforeclose, string afterclose, string beforeopen, string afteropen, string Rejected, string PPending, string QQueryRaised, string Approvals, string tomorrow)
    {
        cnt = cnt + 1;
        ////if (Dept.Trim() != Department.Trim())
        ////{            
        ////    if(cnt>1)
        ////    TTotal("Sr");
        ////totala = 0;
        ////pendingaftera = 0;
        ////pendingbeforea = 0;
        ////closedaftera = 0;
        ////closedbeforea = 0;
        ////    Dept = Department.Trim();
        ////    tRow = new HtmlTableRow();
        ////    tcell1 = new HtmlTableCell();
        ////    tcell1.InnerHtml = "<b>" + Department.Trim() + "</b>";
        ////    tcell1.Align = "Center";
        ////    tcell1.ColSpan = 8;
        ////    tRow.Cells.Add(tcell1);
        ////    tRow.BgColor = "#E6EDF7";
        ////    tbl1.Rows.Add(tRow);
        ////}

        // tRow = new HtmlTableRow();
        //        tRow.Cells.Add(tcell1);
        #region First Copy
        tRow = new HtmlTableRow();
        tcell1 = new HtmlTableCell();
        tcell1.InnerText = cnt.ToString().Trim();
        tcell1.Align = "Center";
        tcell1.Width = "50";

        tRow.Cells.Add(tcell1);
        tcell1 = new HtmlTableCell();
        tcell1.InnerText = Service.Trim().ToUpper();
        tcell1.Align = "Left";


        tRow.Cells.Add(tcell1);
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<a href='frmDeptstatusbytypeCFO.aspx?Id=" + Service_id.Trim() + "&Status=4&Type=Total'> " + totalReceived.Trim() + "</a>";
        tcell1.Align = "Right";

        tRow.Cells.Add(tcell1);
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<a href='frmDeptstatusbytypeCFO.aspx?Id=" + Service_id.Trim() + "&Status=2&Type=Total'> " + QQueryRaised.Trim() + "</a>";
        tcell1.Align = "Right";

        tRow.Cells.Add(tcell1);
        tbl1.Rows.Add(tRow);

        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<a href='frmDeptstatusbytypeCFO.aspx?Id=" + Service_id.Trim() + "&Status=1&Type=Within Three Days'> " + beforeopen.Trim() + "</a>";
        tcell1.Align = "Right";
        tRow.Cells.Add(tcell1);





        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<a href='frmDeptstatusbytypeCFO.aspx?Id=" + Service_id.Trim() + "&Status=1&Type=Beyond Three Days'> " + afteropen.Trim() + "</a>";
        tcell1.Align = "Right";






        tRow.Cells.Add(tcell1);

        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<a href='frmDeptstatusbytypeCFO.aspx?Id=" + Service_id.Trim() + "&Status=3&Type=Total'> " + PPending.ToString() + "</a>";
        tcell1.Align = "Right";

        tRow.Cells.Add(tcell1);
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<a href='frmDeptstatusbytype1CFO.aspx?Id=" + Service_id.Trim() + "&Status=2&Type=Within time limits'> " + beforeclose.Trim() + "</a>";
        tcell1.Align = "Right";

        tRow.Cells.Add(tcell1);
        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<a href='frmDeptstatusbytype1CFO.aspx?Id=" + Service_id.Trim() + "&Status=2&Type=Beyond time limits'> " + afterclose.Trim() + "</a>";
        tcell1.Align = "Right";



        //tcell1 = new HtmlTableCell();
        //tcell1.InnerHtml = Convert.ToString(Convert.ToInt32(afterclose.Trim()) + Convert.ToInt32(beforeclose));
        //tcell1.Align = "Center";
        //tRow.Cells.Add(tcell1);




        //tcell1 = new HtmlTableCell();
        //tcell1.InnerHtml = Convert.ToString(Convert.ToInt32(beforeopen.Trim()) + Convert.ToInt32(afteropen));
        //tcell1.Align = "Right";
        //tRow.Cells.Add(tcell1);


        tRow.Cells.Add(tcell1);
        tbl1.Rows.Add(tRow);

        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<a href='frmDeptstatusbytype1CFO.aspx?Id=" + Service_id.Trim() + "&Status=1&Type=Total'> " + Approvals + "</a>";
        tcell1.Align = "Right";

        tRow.Cells.Add(tcell1);
        tbl1.Rows.Add(tRow);


        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<a href='frmDeptstatusbytype1CFO.aspx?Id=" + Service_id.Trim() + "&Status=3&Type=Total'> " + Rejected.Trim() + "</a>";
        tcell1.Align = "Right";
        tRow.Cells.Add(tcell1);
        tbl1.Rows.Add(tRow);

        tcell1 = new HtmlTableCell();
        tcell1.InnerHtml = "<a href='frmDeptstatusbytype1CFO.aspx?Id=" + Service_id.Trim() + "&Status=3&Type=Total'> " + tomorrow.Trim() + "</a>";
        tcell1.Align = "Right";
        tRow.Cells.Add(tcell1);
        tbl1.Rows.Add(tRow);
        #endregion

    }

    public void TTotal(string totStatus)
    {
        //tRow = new HtmlTableRow();


        #region First Copy
        tRow = new HtmlTableRow();
        tcell1 = new HtmlTableCell();
        if (totStatus.Trim() == "Gr")
            tcell1.InnerHtml = "<font color=white><b> Grand Total </b></font>";
        else
            tcell1.InnerHtml = "<b> Sub Total </b>";
        tcell1.ColSpan = 2;
        tcell1.Align = "Center";
        tRow.Cells.Add(tcell1);

        tcell1 = new HtmlTableCell();
        if (totStatus.Trim() == "Gr")
            tcell1.InnerHtml = "<font color=white><b>" + total.ToString().Trim() + "</b></font>";
        else
            tcell1.InnerHtml = "<b>" + totala.ToString().Trim() + "</b>";


        tcell1.Align = "Right";

        tRow.Cells.Add(tcell1);

        tcell1 = new HtmlTableCell();
        if (totStatus.Trim() == "Gr")
            tcell1.InnerHtml = "<font color=white><b>" + QueryRaised.ToString().Trim() + "</b></font>";
        else
            tcell1.InnerHtml = "<b>" + QueryRaiseda.ToString().Trim() + "</b>";
        tcell1.Align = "Right";


        tRow.Cells.Add(tcell1);




        tcell1 = new HtmlTableCell();
        if (totStatus.Trim() == "Gr")
            tcell1.InnerHtml = "<font color=white><b>" + pendingbefore.ToString().Trim() + "</b></font>";
        else
            tcell1.InnerHtml = "<b>" + pendingbeforea.ToString().Trim() + "</b>";
        tcell1.Align = "Right";
        tRow.Cells.Add(tcell1);

        tcell1 = new HtmlTableCell();
        if (totStatus.Trim() == "Gr")
            tcell1.InnerHtml = "<font color=white><b>" + pendingafter.ToString().Trim() + "</b></font>";
        else
            tcell1.InnerHtml = "<b>" + pendingaftera.ToString().Trim() + "</b>";
        tcell1.Align = "Right";


        tRow.Cells.Add(tcell1);

        tcell1 = new HtmlTableCell();
        if (totStatus.Trim() == "Gr")
            tcell1.InnerHtml = "<font color=white><b>" + Pending.ToString().Trim() + "</b></font>";
        else
            tcell1.InnerHtml = "<b>" + Pendinga.ToString().Trim() + "</b>";
        tcell1.Align = "Right";


        tRow.Cells.Add(tcell1);




        tcell1 = new HtmlTableCell();
        if (totStatus.Trim() == "Gr")
            tcell1.InnerHtml = "<font color=white><b>" + closedbefore.ToString().Trim() + "</b></font>";
        else
            tcell1.InnerHtml = "<b>" + closedbeforea.ToString().Trim() + "</b>";
        tcell1.Align = "Right";
        tRow.Cells.Add(tcell1);

        tcell1 = new HtmlTableCell();
        if (totStatus.Trim() == "Gr")
            tcell1.InnerHtml = "<font color=white><b>" + closedafter.ToString().Trim() + "</b></font>";
        else
            tcell1.InnerHtml = "<b>" + closedaftera.ToString().Trim() + "</b>";
        tcell1.Align = "Right";
        //tRow.Cells.Add(tcell1);


        //tcell1 = new HtmlTableCell();
        //if (totStatus.Trim() == "Gr")
        //    tcell1.InnerHtml = "<font color=white><b>" + Convert.ToString(Convert.ToInt32(closedbefore.ToString().Trim()) + Convert.ToInt32(closedafter.ToString().Trim())) + "</b></font>";
        //else
        //    tcell1.InnerHtml = "<b>" + Convert.ToString(Convert.ToInt32(closedbeforea.ToString().Trim()) + Convert.ToInt32(closedaftera.ToString().Trim())) + "</b>";
        //tcell1.Align = "Right";


        //tRow.Cells.Add(tcell1);


        //tcell1 = new HtmlTableCell();
        //if (totStatus.Trim() == "Gr")
        //    tcell1.InnerHtml = "<font color=white><b>" + Convert.ToString(Convert.ToInt32(pendingbefore.ToString().Trim()) + Convert.ToInt32(pendingafter.ToString().Trim())) + "</b></font>";
        //else
        //    tcell1.InnerHtml = "<b>" + Convert.ToString(Convert.ToInt32(pendingbeforea.ToString().Trim()) + Convert.ToInt32(pendingaftera.ToString().Trim())) + "</b>";
        //tcell1.Align = "Right";

        tRow.Cells.Add(tcell1);

        tcell1 = new HtmlTableCell();
        if (totStatus.Trim() == "Gr")
            tcell1.InnerHtml = "<font color=white><b>" + Approved.ToString().Trim() + "</b></font>";
        else
            tcell1.InnerHtml = "<b>" + Approveda.ToString().Trim() + "</b>";
        tcell1.Align = "Right";

        tRow.Cells.Add(tcell1);

        tcell1 = new HtmlTableCell();
        if (totStatus.Trim() == "Gr")
            tcell1.InnerHtml = "<font color=white><b>" + Reject.ToString().Trim() + "</b></font>";
        else
            tcell1.InnerHtml = "<b>" + Rejecta.ToString().Trim() + "</b>";
        tcell1.Align = "Right";
        tRow.Cells.Add(tcell1);

        if (totStatus.Trim() == "Gr")
            tRow.BgColor = "#009688";
        else
            tRow.BgColor = "#009688";
        tbl1.Rows.Add(tRow);
        #endregion


        if (total <= 0)
        {
            //tbl1.Visible = false;
            //  LblStatus.Text = " No Records Found ";
        }
    }

    #endregion

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Modified by Srikanth on 13-05-2013
        // Tables Used: COMPLAINT_MASTER,COMPLAINT_TRANS,DEPT,SERVICE,LOCALITY,SERVICE_USERS,USERS
        //if (Session["Dept_Code"].ToString().Trim() == "20")
        //{
        //    if (ddlZone.SelectedIndex == 0)
        //    {
        //        zone = "%";
        //    }
        //    else
        //    {
        //        zone = ddlZone.SelectedValue;
        //    }
        //}
        //else
        //{
        //    ddlZone.SelectedValue = ddlZone.Items.FindByValue(Session["Zone"].ToString().Trim()).Value;
        //    ddlZone.Enabled = false;
        //    zone = ddlZone.SelectedValue.ToString().Trim();
        //}
        // Modified by Srikanth on 13-05-2013
        // Tables Used: COMPLAINT_MASTER,COMPLAINT_TRANS,DEPT,SERVICE,LOCALITY,SERVICE_USERS,USERS

        THeader();
        FillGrid();
        tbl1.Width = "750";
        //  TTotal("Sr");
        TTotal("Gr");
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        hdfsms.Value = "1";
        THeader();
        FillGrid();
        tbl1.Width = "750";
        //  TTotal("Sr");
        TTotal("Gr");

        //SendSingleSMSnew("9985328475", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");

        SendSingleSMSnew("9866584550", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");

        SendSingleSMSnew("9908077333", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");

        SendSingleSMSnew("9100986717", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");

        SendSingleSMSnew("8331029999", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");

        //cmf.SendSingleSMS("9848080271", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");

        SendSingleSMSnew("8008007748", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");

        SendSingleSMSnew("9000728887", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");
        SendSingleSMSnew("9490694577", "Madam/Sir, CFO : Pendency beyond due date - Pre-scrutiny stage  : " + pendingafter.ToString().Trim() + "  and Approvals stage : " + closedafter.ToString().Trim() + " . Application status informed for perusal and necessary action. TSiPASS (" + System.DateTime.Now.ToString("dd-MMM-yyyy") + ")");//COI MALSUR






        hdfsms.Value = "0";

    }

    public String SendSingleSMSnew(String mobileNo, String message)
    {
        String username = "TSIPASS";
        String password = "kcsb@786";
        String senderid = "TSIPAS";
        String secureKey = "e8750728-53e8-4f29-9bc9-9f06975accb0";
        //Latest Generated Secure Key

        Stream dataStream;
        System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12 | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls;
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://msdgweb.mgov.gov.in/esms/sendsmsrequest");
        request.ProtocolVersion = HttpVersion.Version10;
        request.KeepAlive = false;
        request.ServicePoint.ConnectionLimit = 1;
        //((HttpWebRequest)request).UserAgent = ".NET Framework Example Client";
        ((HttpWebRequest)request).UserAgent = "Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)";
        request.Method = "POST";
        //System.Net.ServicePointManager.CertificatePolicy = new MyPolicy();
        //System.Net.ServicePointManager.CertificatePolicy= new 
        String encryptedPassword = encryptedPasswod(password);
        String NewsecureKey = hashGenerator(username.Trim(), senderid.Trim(), message.Trim(), secureKey.Trim());
        String smsservicetype = "singlemsg"; //For single message.
        String query = "username=" + HttpUtility.UrlEncode(username.Trim()) +
            "&password=" + HttpUtility.UrlEncode(encryptedPassword) +
            "&smsservicetype=" + HttpUtility.UrlEncode(smsservicetype) +
            "&content=" + HttpUtility.UrlEncode(message.Trim()) +
            "&mobileno=" + HttpUtility.UrlEncode(mobileNo) +
            "&senderid=" + HttpUtility.UrlEncode(senderid.Trim()) +
            "&key=" + HttpUtility.UrlEncode(NewsecureKey.Trim());
        byte[] byteArray = Encoding.ASCII.GetBytes(query);
        request.ContentType = "application/x-www-form-urlencoded";
        request.ContentLength = byteArray.Length;
        dataStream = request.GetRequestStream();
        dataStream.Write(byteArray, 0, byteArray.Length);
        dataStream.Close();
        WebResponse response = request.GetResponse();
        String Status = ((HttpWebResponse)response).StatusDescription;
        dataStream = response.GetResponseStream();
        StreamReader reader = new StreamReader(dataStream);
        String responseFromServer = reader.ReadToEnd();
        reader.Close();
        dataStream.Close();
        response.Close();
        return responseFromServer;
    }

    protected String encryptedPasswod(String password)
    {
        byte[] encPwd = Encoding.UTF8.GetBytes(password);
        //static byte[] pwd = new byte[encPwd.Length];
        HashAlgorithm sha1 = HashAlgorithm.Create("SHA1");
        byte[] pp = sha1.ComputeHash(encPwd);
        // static string result = System.Text.Encoding.UTF8.GetString(pp);
        StringBuilder sb = new StringBuilder();
        foreach (byte b in pp)
        {
            sb.Append(b.ToString("x2"));
        }
        return sb.ToString();
    }

    /// <summary>

    /// Method to Generate hash code 

    /// </summary>

    /// <param name="secure_key">your last generated Secure_key

    protected String hashGenerator(String Username, String sender_id, String message, String secure_key)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append(Username).Append(sender_id).Append(message).Append(secure_key);
        byte[] genkey = Encoding.UTF8.GetBytes(sb.ToString());
        //static byte[] pwd = new byte[encPwd.Length];
        HashAlgorithm sha1 = HashAlgorithm.Create("SHA512");
        byte[] sec_key = sha1.ComputeHash(genkey);
        StringBuilder sb1 = new StringBuilder();
        for (int i = 0; i < sec_key.Length; i++)
        {
            sb1.Append(sec_key[i].ToString("x2"));
        }
        return sb1.ToString();
    }

    public String SendSingleSMSnew(String mobileNo, String message, string templID)
    {
        String username = "TSIPASS";
        String password = "kcsb@786";
        String senderid = "TSIPAS";
        String secureKey = "e8750728-53e8-4f29-9bc9-9f06975accb0";
        //Latest Generated Secure Key

        Stream dataStream;
        System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12 | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls;
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://msdgweb.mgov.gov.in/esms/sendsmsrequestDLT");
        request.ProtocolVersion = HttpVersion.Version10;
        request.KeepAlive = false;
        request.ServicePoint.ConnectionLimit = 1;
        //((HttpWebRequest)request).UserAgent = ".NET Framework Example Client";
        ((HttpWebRequest)request).UserAgent = "Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)";
        request.Method = "POST";
        //System.Net.ServicePointManager.CertificatePolicy = new MyPolicy();
        //System.Net.ServicePointManager.CertificatePolicy= new 
        String encryptedPassword = encryptedPasswod(password);
        String NewsecureKey = hashGenerator(username.Trim(), senderid.Trim(), message.Trim(), secureKey.Trim());
        String smsservicetype = "singlemsg"; //For single message.
        String query = "username=" + HttpUtility.UrlEncode(username.Trim()) +
            "&password=" + HttpUtility.UrlEncode(encryptedPassword) +
            "&smsservicetype=" + HttpUtility.UrlEncode(smsservicetype) +
            "&content=" + HttpUtility.UrlEncode(message.Trim()) +
            "&mobileno=" + HttpUtility.UrlEncode(mobileNo) +
            "&senderid=" + HttpUtility.UrlEncode(senderid.Trim()) +
            "&key=" + HttpUtility.UrlEncode(NewsecureKey.Trim()) +
            "&templateid=" + HttpUtility.UrlEncode(templID.Trim());


        byte[] byteArray = Encoding.ASCII.GetBytes(query);
        request.ContentType = "application/x-www-form-urlencoded";
        request.ContentLength = byteArray.Length;
        dataStream = request.GetRequestStream();
        dataStream.Write(byteArray, 0, byteArray.Length);
        dataStream.Close();
        WebResponse response = request.GetResponse();
        String Status = ((HttpWebResponse)response).StatusDescription;
        dataStream = response.GetResponseStream();
        StreamReader reader = new StreamReader(dataStream);
        String responseFromServer = reader.ReadToEnd();
        if (responseFromServer.Contains("402"))
        {
            try
            {
                GetTESTVALUES(message, "", mobileNo, "", "", "");
            }
            catch (Exception ex)
            {

            }
        }
        reader.Close();
        dataStream.Close();
        response.Close();
        return responseFromServer;
    }

    public void GetTESTVALUES(string Responce, string UIDNO, string MOBILENO, string INTQUESSIONAREID, string INTDEPTID, string INTAPPROVALID)
    {
        DB.DB con = new DB.DB();
        con.OpenConnection();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        try
        {
            da = new SqlDataAdapter("USP_INS_SMSSENDDATA", con.GetConnection);
            da.SelectCommand.Parameters.Add("@responce", SqlDbType.VarChar).Value = Responce.ToString();
            da.SelectCommand.Parameters.Add("@UIDno", SqlDbType.VarChar).Value = UIDNO.ToString();
            da.SelectCommand.Parameters.Add("@Mobileno", SqlDbType.VarChar).Value = MOBILENO.ToString();
            da.SelectCommand.Parameters.Add("@intQuessionaireid", SqlDbType.VarChar).Value = INTQUESSIONAREID.ToString();
            da.SelectCommand.Parameters.Add("@intDeptid", SqlDbType.VarChar).Value = INTDEPTID.ToString();
            da.SelectCommand.Parameters.Add("@intApprovalid", SqlDbType.VarChar).Value = INTAPPROVALID.ToString();

            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.Fill(ds);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.CloseConnection();
        }
    }
}

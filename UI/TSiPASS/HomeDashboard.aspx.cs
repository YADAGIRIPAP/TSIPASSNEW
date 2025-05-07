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
using System.Xml.Linq;
using System.Web.Configuration;
using System.Threading;
using System.ComponentModel;
using System.Text;

public partial class Default3 : System.Web.UI.Page
{

    General Gen = new General();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count <= 0)
        {
            Response.Redirect("../../Index.aspx");
        }

        if (!IsPostBack)
        {

            DataSet ds = new DataSet();
            ds = Gen.GetShowQuestionariesCFO(Session["uid"].ToString().Trim());
            if (ds.Tables[0].Rows.Count > 0)
            {
                BtnDelete.Visible = true;
            }
            else
            {

                BtnDelete.Visible = false;
            }

            if (Session.Count <= 0)
            {
                Response.Redirect("../../Index.aspx");
            }

            if (!IsPostBack)
            {
                FillDetails();
                FillDetailsnew();
            }
        }


    }



    protected void BtnSave1_Click(object sender, EventArgs e)
    {

        Response.Redirect("Dashboard.aspx");

    }

    protected void BtnDelete_Click(object sender, EventArgs e)
    {

        Response.Redirect("DashboardNewCFO.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Grievance.aspx");
    }
    //protected void btnAmendments_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Ammendments.aspx");

    //}

    void FillDetails()
    {
        DataSet ds = new DataSet();
        ds = Gen.GetEnterpreneourDashboardDetails(Session["uid"].ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            //labUidNumber.Text = ds.Tables[0].Rows[0]["UID Number"].ToString();
            //labNameandAddress.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            //labLineofActivity.Text = ds.Tables[0].Rows[0]["LineofActivity"].ToString();
            //labTotalInvestment.Text = ds.Tables[0].Rows[0]["Total Investment"].ToString();
            //labCategoryofIndustry.Text = ds.Tables[0].Rows[0]["Category of Industry"].ToString();
            //labDOA.Text = ds.Tables[0].Rows[0]["Date of Application"].ToString();
            //labNameandAddress0.Text = ds.Tables[0].Rows[0]["PropAddress"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["Quessionaire"].ToString();
            //  Label5.Text = ds.Tables[0].Rows[0]["In Complete (Draft)"].ToString();
            if (ds.Tables[0].Rows[0]["Submitted"].ToString() == "No")
            {

                Label6.Text = "Draft";
            }
            else
            {
                Label6.Text = "Submitted";
            }
            Label7.Text = ds.Tables[0].Rows[0]["Approvals Required as per TS-iPASS"].ToString();
            Label8.Text = ds.Tables[0].Rows[0]["Approvals already Obtained"].ToString();
            Label10.Text = ds.Tables[0].Rows[0]["Approvals - Applied now"].ToString();
            //  Label9.Text =  ds.Tables[0].Rows[0]["Approvals - Payment Done"].ToString();
            Label12.Text = ds.Tables[0].Rows[0]["Approvals - Payment not required"].ToString();
            Label11.Text = ds.Tables[0].Rows[0]["Approvals - Yet to be applied"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["Queries Raised"].ToString();
            Label13.Text = ds.Tables[0].Rows[0]["Queries Responded"].ToString();
            Label14.Text = ds.Tables[0].Rows[0]["Queries -Yet to Respond"].ToString();
            lblpreRejected.Text = ds.Tables[0].Rows[0]["Pre-Scrutiny - Rejected"].ToString();
            Label15.Text = ds.Tables[0].Rows[0]["Approval - Payment Required"].ToString();
            Label16.Text = ds.Tables[0].Rows[0]["Approval - Paid for"].ToString();
            Label17.Text = ds.Tables[0].Rows[0]["Approvals - Awaiting Payment"].ToString();
            Label1.Text = ds.Tables[0].Rows[0]["Approval - Issued"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["Approval - Pending"].ToString();
            lblaprRejected.Text = ds.Tables[0].Rows[0]["Approval - Rejected"].ToString();
            lblPreScrutinyCompleted.Text = ds.Tables[0].Rows[0]["PreScrutinyCompleted"].ToString();
            lblScrPndng.Text = ds.Tables[0].Rows[0]["PreScrutinyPending"].ToString();
        }

        BusinessLogic.Fetch objFetch = new BusinessLogic.Fetch();
        DataSet dsEntpDtls = objFetch.GETEntrepreneurDetails(Session["uid"].ToString().Trim());

        if (dsEntpDtls != null && dsEntpDtls.Tables.Count > 0 && dsEntpDtls.Tables[0].Rows.Count > 0)
        {
            string str = "http://tsocmms.nic.in/TELPCB/industryRegMaster/doLoginWithDetails?indName=" + dsEntpDtls.Tables[0].Rows[0]["IndustryName"].ToString() + "&indDistrict=" + dsEntpDtls.Tables[0].Rows[0]["DistrictName"].ToString() + "&indAddress= " + dsEntpDtls.Tables[0].Rows[0]["StreetName"].ToString() + " " + dsEntpDtls.Tables[0].Rows[0]["DoorNo"].ToString() + "&indPhoneNo=" + dsEntpDtls.Tables[0].Rows[0]["Telephone"].ToString() + "&industryEmail=" + dsEntpDtls.Tables[0].Rows[0]["Emailid"].ToString() + "&caf_unique_no=" + Session["uid"].ToString().Trim() + "&pinCode=" + dsEntpDtls.Tables[0].Rows[0]["Pincode"].ToString() + "&firstName=" + dsEntpDtls.Tables[0].Rows[0]["PromoterName"].ToString() + "&lastName=" + dsEntpDtls.Tables[0].Rows[0]["PromoterName"].ToString() + " &occName=" + dsEntpDtls.Tables[0].Rows[0]["PromoterName"].ToString() + " &mobile=" + dsEntpDtls.Tables[0].Rows[0]["CellNo"].ToString() + "&email=" + dsEntpDtls.Tables[0].Rows[0]["Emailid"].ToString() + "&custId=" + dsEntpDtls.Tables[0].Rows[0]["UID"].ToString() + "&village=" + dsEntpDtls.Tables[0].Rows[0]["VillageName"].ToString();

            hplPCB.Visible = false;
            TSSPDCL.Visible = false;

            DataSet dtDept1 = new DataSet();
            dtDept1 = objFetch.IsTSSPDCLTSNPDCL(Convert.ToInt32(dsEntpDtls.Tables[0].Rows[0]["intCFEEnterpid"].ToString()));
            DataTable dtDept = dtDept1.Tables[0];
            DataTable dtSPDCLDept = dtDept1.Tables[1];

            if (dtDept.Rows.Count > 0)
            {
                if (dtDept.Rows[0]["PCB"].ToString().Trim() == "Y")
                {
                    if (dtDept.Rows[0]["PCB"].ToString().ToUpper() == "Y") hplPCB.Visible = true;
                }
                else
                {
                    hplPCB.Visible = false;
                }
                if (dtDept.Rows[0]["TSSPDCL"].ToString().ToUpper() == "Y")
                {
                    if (dtDept.Rows[0]["TSSPDCL"].ToString().ToUpper() == "Y") TSSPDCL.Visible = true;
                }
                else
                {
                    TSSPDCL.Visible = false;
                }
                if (dtDept.Rows[0]["TSNPDCL"].ToString().ToUpper() == "Y")
                {
                    if (dtDept.Rows[0]["TSNPDCL"].ToString().ToUpper() == "Y") TSNPDCL.Visible = true;
                }
                else
                {
                    TSNPDCL.Visible = false;
                }
                hplPCB.NavigateUrl = str;
                //Response.Redirect(str, false);
            }
            if (dtSPDCLDept.Rows.Count > 0)
            {
                if (dtSPDCLDept.Rows[0]["intStageid"].ToString().Trim() == "12" || dtSPDCLDept.Rows[0]["intStageid"].ToString().Trim() == "13"
                    || dtSPDCLDept.Rows[0]["intStageid"].ToString().Trim() == "15")
                {
                    anchrTSSPDCL.Visible = anchrTSSPDCL1.Visible = true;
                    anchrTSSPDCL.HRef= anchrTSSPDCL1.HRef= "TGSPDCLPreEstimation.aspx?intApplicationId=" + dsEntpDtls.Tables[0].Rows[0]["intCFEEnterpid"].ToString();
                }
            }
        }


        // DataSet ds = Gen.YearwiseDashboardforAdmin("2016");
        //if (ds.Tables[0].Rows.Count > 0)
        //{
        //    lbl0.Text = ds.Tables[0].Rows[0]["cnt"].ToString();
        //    lbl1.Text = ds.Tables[1].Rows[0]["cnt"].ToString();
        //    lbl2.Text = ds.Tables[2].Rows[0]["cnt"].ToString();
        //    lbl3.Text = ds.Tables[3].Rows[0]["cnt"].ToString();
        //    lbl4.Text = ds.Tables[4].Rows[0]["cnt"].ToString();
        //    lbl5.Text = ds.Tables[5].Rows[0]["cnt"].ToString();
        //    lbl6.Text = ds.Tables[6].Rows[0]["cnt"].ToString();
        //    lbl7.Text = ds.Tables[7].Rows[0]["cnt"].ToString();
        //    lbl8.Text = ds.Tables[8].Rows[0]["cnt"].ToString();
        //    lbl9.Text = ds.Tables[9].Rows[0]["cnt"].ToString();
        //    lbl10.Text = ds.Tables[10].Rows[0]["cnt"].ToString();
        //    lbl11.Text = ds.Tables[11].Rows[0]["cnt"].ToString();
        //    lbl12.Text = ds.Tables[12].Rows[0]["cnt"].ToString();
        //    lbl13.Text = ds.Tables[13].Rows[0]["cnt"].ToString();   
        //}
    }

    void FillDetailsnew()
    {
        DataSet ds = new DataSet();
        ds = Gen.GetEnterpreneourDashboardDetailsCFO(Session["uid"].ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            //labUidNumber.Text = ds.Tables[0].Rows[0]["UID Number"].ToString();
            //labNameandAddress.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            //labLineofActivity.Text = ds.Tables[0].Rows[0]["LineofActivity"].ToString();
            //labTotalInvestment.Text = ds.Tables[0].Rows[0]["Total Investment"].ToString();
            //labCategoryofIndustry.Text = ds.Tables[0].Rows[0]["Category of Industry"].ToString();
            //labDOA.Text = ds.Tables[0].Rows[0]["Date of Application"].ToString();
            //labNameandAddress0.Text = ds.Tables[0].Rows[0]["PropAddress"].ToString();
            Label4new.Text = ds.Tables[0].Rows[0]["Quessionaire"].ToString();
            //  Label5.Text = ds.Tables[0].Rows[0]["In Complete (Draft)"].ToString();
            if (ds.Tables[0].Rows[0]["Submitted"].ToString() == "No")
            {

                Label6new.Text = "Draft";
            }
            else
            {
                Label6new.Text = "Submitted";
            }
            Label7new.Text = ds.Tables[0].Rows[0]["Approvals Required as per TS-iPASS"].ToString();
            Label8new.Text = ds.Tables[0].Rows[0]["Approvals already Obtained"].ToString();
            Label10new.Text = ds.Tables[0].Rows[0]["Approvals - Applied now"].ToString();
            //  Label9.Text =  ds.Tables[0].Rows[0]["Approvals - Payment Done"].ToString();
            Label12new.Text = ds.Tables[0].Rows[0]["Approvals - Payment not required"].ToString();
            Label11new.Text = ds.Tables[0].Rows[0]["Approvals - Yet to be applied"].ToString();
            Label3new.Text = ds.Tables[0].Rows[0]["Queries Raised"].ToString();
            Label13new.Text = ds.Tables[0].Rows[0]["Queries Responded"].ToString();
            Label14new.Text = ds.Tables[0].Rows[0]["Queries -Yet to Respond"].ToString();
            Label15new.Text = ds.Tables[0].Rows[0]["Approval - Payment Required"].ToString();
            Label16new.Text = ds.Tables[0].Rows[0]["Approval - Paid for"].ToString();
            Label17new.Text = ds.Tables[0].Rows[0]["Approvals - Awaiting Payment"].ToString();
            Label1new.Text = ds.Tables[0].Rows[0]["Approval - Issued"].ToString();
            Label2new.Text = ds.Tables[0].Rows[0]["Approval - Pending"].ToString();
            lblpreRejectednew.Text = ds.Tables[0].Rows[0]["Pre-Scrutiny - Rejected"].ToString();
            lblaprRejectednew.Text = ds.Tables[0].Rows[0]["Approval - Rejected"].ToString();
            lblcomplted.Text = ds.Tables[0].Rows[0]["Pre-Scrutiny - Completed"].ToString();
            lblScrPndgCFO.Text = ds.Tables[0].Rows[0]["PreScrutinyPending"].ToString();
        }
        if (ds != null && ds.Tables.Count > 1 && ds.Tables[1].Rows.Count > 0)
        {
            Div3.Visible = true;
            hplerectionpermission.Target = "blank";
            hplerectionpermission.NavigateUrl = ds.Tables[1].Rows[0]["queryRespDocPath"].ToString();
        }
        else
        {
            Div3.Visible = false;
        }


        // DataSet ds = Gen.YearwiseDashboardforAdmin("2016");
        //if (ds.Tables[0].Rows.Count > 0)
        //{
        //    lbl0.Text = ds.Tables[0].Rows[0]["cnt"].ToString();
        //    lbl1.Text = ds.Tables[1].Rows[0]["cnt"].ToString();
        //    lbl2.Text = ds.Tables[2].Rows[0]["cnt"].ToString();
        //    lbl3.Text = ds.Tables[3].Rows[0]["cnt"].ToString();
        //    lbl4.Text = ds.Tables[4].Rows[0]["cnt"].ToString();
        //    lbl5.Text = ds.Tables[5].Rows[0]["cnt"].ToString();
        //    lbl6.Text = ds.Tables[6].Rows[0]["cnt"].ToString();
        //    lbl7.Text = ds.Tables[7].Rows[0]["cnt"].ToString();
        //    lbl8.Text = ds.Tables[8].Rows[0]["cnt"].ToString();
        //    lbl9.Text = ds.Tables[9].Rows[0]["cnt"].ToString();
        //    lbl10.Text = ds.Tables[10].Rows[0]["cnt"].ToString();
        //    lbl11.Text = ds.Tables[11].Rows[0]["cnt"].ToString();
        //    lbl12.Text = ds.Tables[12].Rows[0]["cnt"].ToString();
        //    lbl13.Text = ds.Tables[13].Rows[0]["cnt"].ToString();   
        //}
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("RawMaterialNew.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UI/TSIPASS/IncetivesNewForm2.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewHelpdesk.aspx");
    }
}

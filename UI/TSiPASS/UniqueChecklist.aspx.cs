using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_TSiPASS_UniqueChecklist : System.Web.UI.Page
{
    DB.DB con = new DB.DB();
    General Gen = new General();
    string Random, Stageid, Dipc, STATUS, ROLECODE;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Convert.ToString(Request.QueryString["ROLECODE"]) == "COI-ADDL")
            {
                Cheque.Visible = true;
            }

            if (Convert.ToString(Request.QueryString["STATUS"]) == "PROCESSED")
            {
                pnlActionInputs.Visible = false;
            }

            if (Request.QueryString.Count > 0)
            {
                Random = Convert.ToString(Request.QueryString[0]);
                Stageid = Convert.ToString(Request.QueryString[1]);
                Dipc = Convert.ToString(Request.QueryString[2]);
            }
            UniqueCheckList();
            GetRecommendationstagenames();
        }
    }
    protected void UniqueCheckList()
    {
        try
        {
            DataSet ds = new DataSet();

            ds = UniqueCheck(Random, Stageid, Dipc);
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                GVUnique.DataSource = ds.Tables[0];
                GVUnique.DataBind();
            }
            else
            {
                GVUnique.DataSource = null;
                GVUnique.DataBind();
            }


        }
        catch (Exception ex)
        {
            lblmsg0.Text = ex.Message;
            Failure.Visible = true;
        }
    }
    public DataSet UniqueCheck(string Random, string Stageid, string Dipc)
    {
        DataSet ds = new DataSet();
        string connStr = ConfigurationManager.ConnectionStrings["TSiPASSSkils"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connStr))
        {
            using (SqlCommand com = new SqlCommand("USP_GETUNIQUECHECKLIST", connection))
            {
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@RandomNo", Random);
                com.Parameters.AddWithValue("@Stageid", Stageid);
                com.Parameters.AddWithValue("@Dipc", Dipc);

                using (SqlDataAdapter da = new SqlDataAdapter(com))
                {
                    da.Fill(ds);
                }
            }
        }

        return ds;
    }
    public class COIDETAILS
    {
        public string RandomNo { get; set; }
        public string ActionId { get; set; }
        public string MasterIncentiveId { get; set; }
        public string Dipc { get; set; }
        public string ForwardRemarks { get; set; }
        public string SendTo { get; set; }
        public string StageId { get; set; }
        public string ROLECODE { get; set; }
        public string ProposedSVCDate { get; set; }
        public string ClerkProcessDate { get; set; }
        public string CreatedBy { get; set; }
    }

    protected void btnAction_Click(object sender, EventArgs e)
    {
        try
        {
            if (GVUnique.Rows.Count > 0)
            {

                GridViewRow row = GVUnique.Rows[0];
                Label lblId = (Label)row.FindControl("lblEnterperIncentiveID");            


                COIDETAILS CoiDetailsCheck = new COIDETAILS();

                CoiDetailsCheck.RandomNo = Convert.ToString(Request.QueryString[0]);
                CoiDetailsCheck.SendTo = ddlForward.SelectedItem.Text;
                CoiDetailsCheck.StageId = ddlForward.SelectedValue;
                CoiDetailsCheck.MasterIncentiveId = lblId.Text.Trim();
                CoiDetailsCheck.Dipc = Convert.ToString(Request.QueryString[2]);
                CoiDetailsCheck.ActionId = ddlForward.SelectedValue;
                CoiDetailsCheck.ROLECODE = Convert.ToString(Request.QueryString["ROLECODE"]);
                if (Convert.ToString(Request.QueryString["ROLECODE"]) == "COI-ADDL")
                {
                    CoiDetailsCheck.ProposedSVCDate = TXTCHEQUEGENERATEPRINTDATE.Text;
                }
                CoiDetailsCheck.CreatedBy = Session["uid"].ToString();
                CoiDetailsCheck.ForwardRemarks = txtremarks.Text.Trim();

                string Result = InsertCOIDetails(CoiDetailsCheck);


                if (Result != "")
                {
                    success.Visible = true;
                    lblmsg.Text = "Details Submitted Successfully";
                    string message = "alert('" + lblmsg.Text + "')";
                    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                    pnlActionInputs.Visible = false;
                    // ROLECODE = Convert.ToString((Session["Role_Code"]));
                    // string Type = Convert.ToString(Request.QueryString[2]); 
                    // STATUS = Convert.ToString(Request.QueryString["STATUS"]);
                    // string CREATEDBY = Convert.ToString(Session["uid"]);
                    // Response.Redirect("CheckVerifyCOI.aspx?Type="+ Type + "&STATUS" + STATUS+ "&CREATEDBY" + CREATEDBY+ "&ROLECODE"+ ROLECODE);

                    string ROLECODE = Convert.ToString(Session["Role_Code"]);
                    string Type = Convert.ToString(Request.QueryString[2]);
                    string STATUS = Convert.ToString(Request.QueryString["STATUS"]);
                    string CREATEDBY = Convert.ToString(Session["uid"]);

                    string redirectUrl = "CheckVerifyCOI.aspx?Type=" + Type + "&STATUS=" + STATUS + "&CREATEDBY=" + CREATEDBY + "&ROLECODE=" + ROLECODE;
                    Response.Redirect(redirectUrl);
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    public string InsertCOIDetails(COIDETAILS CoiDetailsCheck)
    {
        string Result = "";
        string connStr = ConfigurationManager.ConnectionStrings["TSiPASSSkils"].ConnectionString;
        SqlConnection connection = new SqlConnection(connStr);
        SqlTransaction transaction = null;

        try
        {
            connection.Open();
            transaction = connection.BeginTransaction();

            SqlCommand com = new SqlCommand();
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "USP_INSUPADTECLERK";

            com.Transaction = transaction;
            com.Connection = connection;

            com.Parameters.AddWithValue("@RandomNo", CoiDetailsCheck.RandomNo);
            com.Parameters.AddWithValue("@MasterIncentiveId", CoiDetailsCheck.MasterIncentiveId);
            com.Parameters.AddWithValue("@STAGEID", CoiDetailsCheck.StageId);
            com.Parameters.AddWithValue("@Dipc", CoiDetailsCheck.Dipc);
            com.Parameters.AddWithValue("@Forward_Remarks", CoiDetailsCheck.ForwardRemarks);
            com.Parameters.AddWithValue("@SendTO", CoiDetailsCheck.SendTo);
            com.Parameters.AddWithValue("@ROLECODE", CoiDetailsCheck.ROLECODE);
            if (CoiDetailsCheck.ProposedSVCDate != null && CoiDetailsCheck.ProposedSVCDate != "")
            {
                com.Parameters.AddWithValue("@ProposedSVCDate", DateTime.ParseExact(CoiDetailsCheck.ProposedSVCDate, "dd-MM-yyyy", CultureInfo.InvariantCulture).ToString("yyyy-MM-dd"));
            }
            com.Parameters.AddWithValue("@ACTIONID", CoiDetailsCheck.ActionId);
            com.Parameters.AddWithValue("@CREATEDBY", CoiDetailsCheck.CreatedBy);


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

    protected void GVUnique_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        Label lblstageid = (Label)e.Row.FindControl("lblstageid");
    }
    public void GetRecommendationstagenames()
    {
        try
        {
            DataSet dsd = new DataSet();
            ddlForward.Items.Clear();
            dsd = GetRecommendationstagename(Convert.ToString(Request.QueryString["ROLECODE"]));
            if (dsd != null && dsd.Tables.Count > 0 && dsd.Tables[0].Rows.Count > 0)
            {
                ddlForward.DataSource = dsd.Tables[0];
                ddlForward.DataValueField = "intstageid";
                ddlForward.DataTextField = "Description";
                ddlForward.DataBind();
                AddSelect(ddlForward);
            }
            else
            {
                AddSelect(ddlForward);
            }
        }
        catch (Exception ex)
        {
            lblmsg0.Text = ex.Message;
            Failure.Visible = true;
            success.Visible = false;
            Response.Write(ex);
            LogErrorFile.LogerrorDB(ex, HttpContext.Current.Request.Url.AbsoluteUri, Session["uid"].ToString());
        }
    }
    public DataSet GetRecommendationstagename(string rolecode)
    {
        con.OpenConnection();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        try
        {
            da = new SqlDataAdapter("SP_GETRECOMMENDATIONSTAGENAMES", con.GetConnection);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;


            da.SelectCommand.Parameters.Add("@ROLEID", SqlDbType.VarChar).Value = rolecode.ToString();


            da.Fill(ds);
            return ds;


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
    public void AddSelect(DropDownList ddl)
    {
        try
        {
            ListItem li = new ListItem();
            li.Text = "--Select--";
            li.Value = "0";
            ddl.Items.Insert(0, li);
        }
        catch (Exception ex)
        {
            lblmsg0.Text = ex.Message;
            Failure.Visible = true;
            success.Visible = false;
        }
    }




    protected void GVUnique_RowDataBound1(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HyperLink h3 = (HyperLink)e.Row.FindControl("hplAttachment");


            string filepathnew = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "ADRTGS"));
            if (filepathnew != "")
            {
                string encpassword = Gen.Encrypt(filepathnew, "SYSTIME");
                h3.NavigateUrl = "CS.aspx?filepathnew=" + encpassword;
            }
            else
            {
                h3.Visible = false;
            }
        }


    }

    protected void lbtnBack_Click(object sender, EventArgs e)
    {
        try
        {
            string ROLECODE = Convert.ToString(Session["Role_Code"]);
            string Type = Convert.ToString(Request.QueryString[2]);
            string STATUS = Convert.ToString(Request.QueryString["STATUS"]);
            string CREATEDBY = Convert.ToString(Session["uid"]);
            string redirectUrl = "CheckVerifyCOI.aspx?Type=" + Type + "&STATUS=" + STATUS + "&CREATEDBY=" + CREATEDBY + "&ROLECODE=" + ROLECODE;
            Response.Redirect(redirectUrl);
            // Response.Redirect(Request.UrlReferrer.ToString());

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}
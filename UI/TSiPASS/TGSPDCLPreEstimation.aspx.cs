using Org.BouncyCastle.Asn1.Ocsp;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_TSiPASS_TGSPDCLPreEstimation : System.Web.UI.Page
{
    string ErrorMsg, Result;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("~/IpassLogin.aspx");
            }
            else
            {
                if (Request.QueryString.Count > 0)
                {
                    Binddata();
                    txtFeeder.Attributes.Add("onKeyPress", "javascript:return ValidateDecimal(event,this);");
                }
                else { Response.Redirect("RptApplicationWiseDetailedTraker.aspx"); }
            }
        }
        catch (Exception ex)
        { }
    }
    public void Binddata()
    {
        try
        {
            DataSet ds = new DataSet();
            string intCFEEnterpid = Request.QueryString[0].ToString();
            //ds = GetTGSPDCLFeasibility(Request.QueryString[0].ToString(), Session["uid"].ToString());
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["TSiPASSSkils"].ConnectionString))
            {
                connection.Open();
                SqlTransaction transaction = connection.BeginTransaction();
                using (SqlDataAdapter da = new SqlDataAdapter("USP_GET_TSSPDCL_FEASIBILITYDATA", connection))
                {
                    da.SelectCommand.CommandType = CommandType.StoredProcedure;
                    da.SelectCommand.Transaction = transaction;
                    da.SelectCommand.Parameters.AddWithValue("@intCFEEnterpid", intCFEEnterpid);
                    da.Fill(ds);
                }
                transaction.Commit();
            }
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                GrdDetails.DataSource = ds.Tables[0];
                GrdDetails.DataBind();

                lblFeasibilityDate.Text = ds.Tables[0].Rows[0]["FEASIBILITYISSUEDATE"].ToString();
                lblSubStation.Text = ds.Tables[0].Rows[0]["SUBSTNNAME"].ToString();
                lblFeederName.Text = ds.Tables[0].Rows[0]["FEEDERNAME"].ToString();
                txtFeeder.Text = ds.Tables[0].Rows[0]["TSSPDCL_FeederDistance_meters"].ToString();
                if (txtFeeder.Text.Trim() != "")
                {
                   //btnSave.Visible = false;
                   //chkTerm.Visible = false;
                }
            }
        }
        catch
        {
            //transaction.Rollback();
            throw;
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            ErrorMsg = Validations();
            if (ErrorMsg == "")
            {
                TGSPDCL objTGSPDCL = new TGSPDCL();

                objTGSPDCL.DistanceFeeder = txtFeeder.Text;
                objTGSPDCL.IPAddress = getclientIP();

                Result = InsertTGSPDCLPreEstimate(objTGSPDCL);

                if (Result != "")
                {
                    success.Visible = true;
                    lblmsg.Text = "TGSPDCL Pre Estimation Details Submitted Successfully";
                    string message = "alert('" + lblmsg.Text + "')";
                    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                }

            }
            else
            {
                Failure.Visible = true;
                lblmsg.Text = "TGSPDCL Pre Estimation Details No Recordes";
                string message = "alert('" + ErrorMsg + "')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    public string Validations()
    {
        try
        {
            int slno = 1;
            string errormsg = "";
            if (string.IsNullOrEmpty(txtFeeder.Text) || txtFeeder.Text == "" || txtFeeder.Text == null)
            {
                errormsg = errormsg + slno + ". Please Enter Distance from nearest 11KV Line...!  \\n";
                slno = slno + 1;
            }
            if (chkTerm.SelectedIndex == -1)
            {
                errormsg = errormsg + slno + ". Please accept Terms Conditions...! \\n";
                slno = slno + 1;
            }

            return errormsg;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    public class TGSPDCL
    {
        public string CreatedBy { get; set; }
        public string IPAddress { get; set; }
        public string UnitID { get; set; }
        public string TechnicalFesibility { get; set; }
        public string SubStation { get; set; }
        public string FeederName { get; set; }
        public string DistanceFeeder { get; set; }
        public string TermsCondition { get; set; }

    }

    public string InsertTGSPDCLPreEstimate(TGSPDCL objTGSPDCL)
    {
        string Result = "";
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["TSiPASSSkils"].ConnectionString);
        SqlTransaction transaction = null;
        connection.Open();
        transaction = connection.BeginTransaction();

        try
        {
            string intCFEEnterpid = Request.QueryString[0].ToString();
            SqlCommand com = new SqlCommand();
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "USP_INS_TSSPDCL_FEEDERDISTANCE";
            com.Transaction = transaction;
            com.Connection = connection;



            com.Parameters.AddWithValue("@FeederDistance", objTGSPDCL.DistanceFeeder);
            com.Parameters.AddWithValue("@intCFEEnterpid", intCFEEnterpid);

            com.Parameters.Add("@RESULT", SqlDbType.VarChar, 5);
            com.Parameters["@RESULT"].Direction = ParameterDirection.Output;
            com.ExecuteNonQuery();

            Result = com.Parameters["@RESULT"].Value.ToString();

            transaction.Commit();
            connection.Close();
        }
        catch (Exception ex)
        {
            transaction.Rollback();
            throw ex;
        }
        finally
        {
            connection.Close();
            connection.Dispose();
        }
        return Result;
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
    public DataSet GetTGSPDCLFeasibility(string Quid, string userid)
    {
        DataSet ds = new DataSet();

        return ds;
    }
}
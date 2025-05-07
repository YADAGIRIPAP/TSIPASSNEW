using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Drawing;
using System.Security.Cryptography;

public partial class UI_TSiPASS_frmPartialRelease : System.Web.UI.Page
{
    DB.DB con = new DB.DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = GetIncentives_Release_Proceedings_UnitName_search();
        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            gvData2.DataSource = ds.Tables[0];
            gvData2.DataBind();
        }

    }

    public DataSet GetIncentives_Release_Proceedings_UnitName_search()
    {
        con.OpenConnection();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        try
        {
            da = new SqlDataAdapter("USP_GetIncentives_Release_Proceedings_POWER", con.GetConnection);
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

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (gvData2.Rows.Count>0)
        {
             

            foreach (GridViewRow gvrow in gvData2.Rows)
            {
                //CheckBox chk = ((CheckBox)gvrow.FindControl("chkSameUnit"));
                //if (chk.Checked)
                //{
                    string Investmentid = "3";
                    string lblMstIncentiveId = ((Label)gvrow.FindControl("lblMstIncentiveId")).Text;
                    string lblIncentiveID = ((Label)gvrow.FindControl("lblIncentiveID")).Text;
                    //string lblAllotedAmount = ((Label)gvrow.FindControl("lblAllotedAmount")).Text;
                    string lblSLCNumer = ((Label)gvrow.FindControl("lblSLCNumer")).Text;
                    //string mobileNumber = ((Label)gvrow.FindControl("lblUnitMObileNo")).Text;
                    string slno = ((Label)gvrow.FindControl("lblslno")).Text;
                    string PERCE50RELEASE = ((Label)gvrow.FindControl("lblPERCE50RELEASE")).Text;
                    string Balanceamounttobereleased = ((Label)gvrow.FindControl("lblBalanceamounttobereleased")).Text;
                    string SanctionedAmount = ((Label)gvrow.FindControl("lbltotalSanctionAmount")).Text;


                    ReleasingProceedings frmvo = new ReleasingProceedings();
                    frmvo.ReleasingSlcSpeacCaseAmount = PERCE50RELEASE;
                    // string[] releaseProDate = txtReleasingSlcSpeacCaseDate.Text.Split('/');
                    frmvo.ReleasingSlcSpeacCaseDate = "02/25/2025";
                    //releaseProDate[2] + "/" + releaseProDate[1] + "/" + releaseProDate[0];
                    frmvo.Remarks = "PARTIAL RELEASE";
                    frmvo.GOSpeaclCaseNo = "75";
                    frmvo.PendingAmount = Balanceamounttobereleased;// txtPendingAmount.Text;
                    frmvo.SanctionSpecialCaseAmount = SanctionedAmount;// txtActualSanctionAmount.Text;

                    frmvo.EnterperIncentiveID = lblIncentiveID;
                    frmvo.slno = slno;
                    frmvo.MstIncentiveId = Investmentid;
                    frmvo.CreatedByid = Session["uid"].ToString();
                    int valid = InsertSlcspecialDetailspartial(frmvo);
                //}
            }
        }
    }

    public int InsertSlcspecialDetailspartial(ReleasingProceedings objvo)
    {
        int valid = 0;

        con.OpenConnection();
        SqlCommand cmd = new SqlCommand("[USP_Update_SlcSpecialCaseDetals_partial]", con.GetConnection);
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {

            //added by chinna
            cmd.Parameters.AddWithValue("@ReleaseSlcAmount", Convert.ToString(objvo.ReleasingSlcSpeacCaseAmount));
            cmd.Parameters.AddWithValue("@ReleaseSlcSpecicaseProcedingDate", Convert.ToString(objvo.ReleasingSlcSpeacCaseDate));
            cmd.Parameters.AddWithValue("@IncentiveId", Convert.ToString(objvo.EnterperIncentiveID));
            cmd.Parameters.AddWithValue("@MstIncentiveId", Convert.ToString(objvo.MstIncentiveId));
            cmd.Parameters.AddWithValue("@GoNo", Convert.ToString(objvo.GOSpeaclCaseNo));
            cmd.Parameters.AddWithValue("@Remarks", Convert.ToString(objvo.Remarks));
            cmd.Parameters.AddWithValue("@ActualSanctionAmount", Convert.ToString(objvo.SanctionSpecialCaseAmount));
            cmd.Parameters.AddWithValue("@PendingAmount", Convert.ToString(objvo.PendingAmount));
            cmd.Parameters.AddWithValue("@slno", Convert.ToString(objvo.slno));
            cmd.Parameters.AddWithValue("@ModifiedBy", Convert.ToString(objvo.CreatedByid));



            cmd.Parameters.Add("@Valid", SqlDbType.Int, 500);
            cmd.Parameters["@Valid"].Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();
            valid = (Int32)cmd.Parameters["@Valid"].Value;
            con.CloseConnection();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            cmd.Dispose();
            con.CloseConnection();
        }

        return valid;
    }

}
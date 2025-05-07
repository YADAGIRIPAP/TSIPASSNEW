using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_TSiPASS_CheckVerifyCOI : System.Web.UI.Page
{
    string Random, Count, ROLECODE, Type, STATUS, CREATEDBY;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString.Count > 0)
            {
                ROLECODE = Convert.ToString((Session["Role_Code"]));
                Type = Convert.ToString(Request.QueryString[0]);
                STATUS = Convert.ToString(Request.QueryString[1]);
                CREATEDBY = Convert.ToString(Session["uid"]);
            }
            CheckVerifyCOI();
        }

    }
    public void CheckVerifyCOI()
    {
        try
        {

            DataSet ds = GVCOIDETAILS(ROLECODE, Type, STATUS, CREATEDBY);

            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                if (ROLECODE == "COI-CLERK" || ROLECODE == "COI-SUPDT"|| ROLECODE == "COI-AD"|| ROLECODE == "COI-DD"|| ROLECODE == "COI-JD"|| ROLECODE == "COI-ADDL")
                {
                    GVCOIDET.DataSource = ds.Tables[0];
                    GVCOIDET.DataBind();
                }             
                else
                {
                    GVCOIDET.DataSource = null;
                    GVCOIDET.DataBind();
                }
            }
            else
            {
                GVCOIDET.DataSource = null;
                GVCOIDET.DataBind();
            }

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    public DataSet GVCOIDETAILS(string RoleCode, string Type, string Status, string Createdby)
    {
        DataSet ds = new DataSet();
        string connStr = ConfigurationManager.ConnectionStrings["TSiPASSSkils"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connStr))
        {
            using (SqlCommand com = new SqlCommand("SP_GETCOICHECKLIST", connection))
            {
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@ROLECODE", RoleCode);
                com.Parameters.AddWithValue("@TYPE", Type);
                com.Parameters.AddWithValue("@STATUS", Status);
                com.Parameters.AddWithValue("@CREATEDBY", Createdby);


                using (SqlDataAdapter da = new SqlDataAdapter(com))
                {
                    da.Fill(ds);
                }
            }
        }

        return ds;
    }
    protected void GVCOIDET_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

         //   RowDataBound(sender, e);

              Button btnProcess = (Button)e.Row.FindControl("btnProcess");
              Label lblstageid = (Label)e.Row.FindControl("lblstageid");
              Label lblAction = (Label)e.Row.FindControl("lblAction");
              ROLECODE = Convert.ToString((Session["Role_Code"]));

              if ((lblstageid.Text == "151" || lblstageid.Text == "162" || lblstageid.Text == "165" || lblstageid.Text == "168" || lblstageid.Text == "172")&& ROLECODE== "COI-CLERK") 
              {
                  btnProcess.Text = "Process";
                  GVCOIDET.Columns[7].Visible = false;
              }
              else if ((lblstageid.Text == "152" || lblstageid.Text == "155" || lblstageid.Text == "166" || lblstageid.Text == "169" || lblstageid.Text == "173") && ROLECODE == "COI-SUPDT")
              {
                  btnProcess.Text = "Process";
                  GVCOIDET.Columns[7].Visible = false;
              }
              else if ((lblstageid.Text == "153" || lblstageid.Text == "156" || lblstageid.Text == "159" || lblstageid.Text == "170" || lblstageid.Text == "174") && ROLECODE == "COI-AD") 
              {
                  btnProcess.Text = "Process";
                  GVCOIDET.Columns[7].Visible = false;
              }
              else if ((lblstageid.Text == "154" || lblstageid.Text == "157" || lblstageid.Text == "160" || lblstageid.Text == "163" || lblstageid.Text == "175") && ROLECODE == "COI-DD") 
              {
                  btnProcess.Text = "Process";
                  GVCOIDET.Columns[7].Visible = false;
              }
              else if ((lblstageid.Text == "158" || lblstageid.Text == "161" || lblstageid.Text == "164" || lblstageid.Text == "167" || lblstageid.Text == "176") && ROLECODE == "COI-JD")
              {
                  btnProcess.Text = "Process";
                  GVCOIDET.Columns[7].Visible = false;
              }
              else
              {
                  btnProcess.Text = "View";
                  GVCOIDET.Columns[7].Visible = true;
              }

        }
    }
    public void RowDataBound(object sender, GridViewRowEventArgs e)
    {

        string randomValue = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "RANDOMNO"));
        string unitCount = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "UNITSCOUNT"));
        string Stageid = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "STAGEID"));

        //LinkButton lnkRandom = (LinkButton)e.Row.FindControl("lnkRandom");
        //LinkButton lnkCount = (LinkButton)e.Row.FindControl("lnkCount");
        Label lnkRandom = (Label)e.Row.FindControl("lnkRandom");
        Label lnkCount = (Label)e.Row.FindControl("lnkCount");

        Label lblstageid = (Label)e.Row.FindControl("lblstageid");

        //if (lnkRandom.Text != "0")
        //{
        //    lnkRandom.ResolveUrl = ResolveUrl("UniqueChecklist.aspx?Random=" + lnkRandom.Text + "&Stageid=" + lblstageid.Text + "&Type=" + Type.Trim());
        //    lnkRandom.Attributes.Add("formtarget", "_blank");
        //}

        //if (lnkCount.Text != "0")
        //{
        //    lnkCount.PostBackUrl = ResolveUrl("UniqueChecklist.aspx?Random=" + lnkRandom.Text + "&Stageid=" + lblstageid.Text + "&Type=" + Type.Trim());
        //    lnkCount.Attributes.Add("formtarget", "_blank");
        //}

        string lblRandomed = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "RANDOMNO")).Trim();
        string lblCount = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "UNITSCOUNT")).Trim();
        LinkButton btn = (LinkButton)e.Row.FindControl("lnkRandom");
        LinkButton btn1 = (LinkButton)e.Row.FindControl("lnkCount");

        if (lblRandomed != "0")
        {
            btn.OnClientClick = "return Popup('" + lblRandomed + "');";
        }
        if (lblCount != "0")
        {
            btn1.OnClientClick = "return Popup('" + lblRandomed + "');";
        }


    }
    protected void btnProcess_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;

        GridViewRow row = (GridViewRow)btn.NamingContainer;

        // LinkButton lnkRandom = (LinkButton)row.FindControl("lnkRandom");
        Label lnkRandom = (Label)row.FindControl("lnkRandom");
        Label lblstageid = (Label)row.FindControl("lblstageid");
        Type = Convert.ToString(Request.QueryString[0]);
        STATUS = Convert.ToString(Request.QueryString[1]);
        ROLECODE = Convert.ToString((Session["Role_Code"]));

        if (lnkRandom != null && lblstageid != null)
        {
            string url = "UniqueChecklist.aspx?Random=" + lnkRandom.Text + "&Stageid=" + lblstageid.Text + "&Type=" + Type.Trim() + "&STATUS=" + STATUS + "&ROLECODE=" + ROLECODE.Trim();
            Response.Redirect(url);
        }
    }

}
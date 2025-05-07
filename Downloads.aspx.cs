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
using System.Text;

public partial class Downloads : System.Web.UI.Page
{
    General Gen = new General();
    CommonBL objcommon = new CommonBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = objcommon.GetHomepagecontete();
            if (ds != null && ds.Tables.Count > 4 && ds.Tables[4].Rows.Count > 0)
            {
                lbllastupdat.Text = ds.Tables[4].Rows[0]["LastDate"].ToString();
            }
            fillgrid();
        }
    }

    public void fillgrid()
    {
        DataSet dsnew = new DataSet();
        dsnew = Gen.FetchActandRules();
        if (dsnew.Tables[0].Rows.Count > 0)
        {
            grdDetails.DataSource = dsnew.Tables[0];
            grdDetails.DataBind();
        }
        else
        {
            grdDetails.DataSource = null;
            grdDetails.DataBind();
        }
        if (dsnew.Tables[1].Rows.Count > 0)
        {
            GovGos.DataSource = dsnew.Tables[1];
            GovGos.DataBind();
        }
        else
        {
            GovGos.DataSource = null;
            GovGos.DataBind();
        }
    }
    protected void grdDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string filepathnew = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Filepath"));
                //string encpassword = Gen.Encrypt(filepathnew, "SYSTIME");
                HyperLink h1 = (HyperLink)e.Row.FindControl("hprlink");
                h1.NavigateUrl = "viewpdf.aspx?filepathnew=" + filepathnew;
               // h1.Text = "Click Here";
            }
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            //lblmsg0.Text = ex.Message;
            //Failure.Visible = true;
        }
    }
}
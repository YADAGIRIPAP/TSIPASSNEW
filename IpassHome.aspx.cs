using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Text;

public partial class IpassHome : System.Web.UI.Page
{
    comFunctions cmf = new comFunctions();
    CommonBL objcommon = new CommonBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session.Count != 0)
            {
                Session.Clear();
                Session.Abandon();
                Session.RemoveAll();

                if (!Page.IsPostBack)
                    Session.Abandon();
            }
            // txtuname.Focus();
            if (Request.QueryString["OTP"] != null)
            {
                General clsGeneral = new General();
                string userid = Request.QueryString["Uid"].ToString();
                string OTP = Request.QueryString["OTP"].ToString();

                string status = clsGeneral.ValidateOTPMail(userid, OTP);

                if (status == "updated")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Mail OTP Verification sucessfull!!. Please login to continue.');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Mail OTP is already Done!!. Please login to continue.');", true);
                }
                //Label1.Text = Request.QueryString["OTP"];
                //Label1.ForeColor = System.Drawing.Color.Red
            }
            //else
            // Label1.Text = "nikkan";

            StringBuilder line = new StringBuilder();
            StringBuilder sbNews = new StringBuilder();
            DataSet ds = new DataSet();
            ds = objcommon.GetHomepagecontete();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                int j = 0;
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (j == 0)
                    {
                        line.Append("<div class='item active'>");
                    }
                    else
                    {
                        line.Append("<div class='item'>");
                    }
                    string base64String;
                    string UrlSrc = "";
                    if (!string.IsNullOrEmpty(ds.Tables[0].Rows[i]["Image"].ToString()))
                    {
                        byte[] bytes1 = (byte[])ds.Tables[0].Rows[i]["Image"];
                        base64String = Convert.ToBase64String(bytes1, 0, bytes1.Length);
                        // UserImage.Src = "data:image/jpeg;base64," + base64String;
                        UrlSrc = "data:image/jpeg;base64," + base64String;
                        line.Append("<img src=" + UrlSrc + ">");
                        j = j + 1;
                    }
                    line.Append("</div>");
                }

                ulslides.InnerHtml = line.ToString();
            }
            if (ds != null && ds.Tables.Count > 1 && ds.Tables[1].Rows.Count > 0)
            {
                sbNews.Append(" <div class='container position-rel'> <b>Lastest news:</b><marquee behavior='scroll' onmouseover='this.stop()' onmouseout='this.start()' direction='left' scrollamount='5' >");
                for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                {
                    string NewsLatest = ds.Tables[1].Rows[i]["News"].ToString();

                    if (!string.IsNullOrEmpty(NewsLatest))
                    {
                        sbNews.Append("<a href='#'>" + NewsLatest + "</a>");
                    }
                }
                sbNews.Append("</marquee></div>");
               divNews.InnerHtml = sbNews.ToString();
            }
            if (ds != null && ds.Tables.Count > 2 && ds.Tables[2].Rows.Count > 0)
            {
                string base64String1;
                string CMSrc = "";
                if (!string.IsNullOrEmpty(ds.Tables[2].Rows[0]["Image"].ToString()))
                {
                    byte[] bytes1 = (byte[])ds.Tables[2].Rows[0]["Image"];
                    base64String1 = Convert.ToBase64String(bytes1, 0, bytes1.Length);
                    // UserImage.Src = "data:image/jpeg;base64," + base64String;
                    CMSrc = "data:image/jpeg;base64," + base64String1;
                    imgcm.Src = CMSrc;
                }
            }
            if (ds != null && ds.Tables.Count > 3 && ds.Tables[3].Rows.Count > 0)
            {
                string base64String2;
                string itSrc = "";
                if (!string.IsNullOrEmpty(ds.Tables[3].Rows[0]["Image"].ToString()))
                {
                    byte[] bytes1 = (byte[])ds.Tables[3].Rows[0]["Image"];
                    base64String2 = Convert.ToBase64String(bytes1, 0, bytes1.Length);
                    // UserImage.Src = "data:image/jpeg;base64," + base64String;
                    itSrc = "data:image/jpeg;base64," + base64String2;
                    imgitm.Src = itSrc;
                }
            }
        }
    }
}
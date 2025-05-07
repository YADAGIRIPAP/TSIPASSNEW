using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;

public partial class Home2 : System.Web.UI.Page
{
    comFunctions cmf = new comFunctions();
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

            txtuname.Focus();



            if (Request.Browser.Browser.ToString().Trim().ToLower() == "firefox")
            {
                //lblmsg.Text = "Please use Internet Explorer or Google Chrome";
                btnSignIn.Enabled = false;
            }



            if (Request.Browser.Browser.ToString().Trim().ToLower() == "internetexplorer")
            {
                // lblmsg.Text = "Please use Google Chrome";
                btnSignIn.Enabled = false;
            }
        }


    }

    public void SendMailAnother(string anothermail)
    {




    }

    protected void Btnpwd_Click(object sender, EventArgs e)
    {
        lgn.Visible = false;
        pwd.Visible = true;
        Page.ClientScript.RegisterStartupScript(this.GetType(), "myScript", "AnotherFunction();", true);
    }

    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        lgn.Visible = true;
        pwd.Visible = false;
        Page.ClientScript.RegisterStartupScript(this.GetType(), "myScript", "AnotherFunction();", true);
    }

    protected void BtnPassword_Click(object sender, EventArgs e)
    {
        String Email = "",UserID = "", MobileNo = "";
        Email = txtEmail.Text;
        MobileNo = txtMobile.Text;
        UserID =txtuserid.Text;

        General clsGeneral = new General();
        DataSet ds = clsGeneral.ValidateEmail(Email, MobileNo,UserID);//,Dept
        if (ds.Tables[0].Rows.Count > 0)
        {
            string msgs = "Dear " + ds.Tables[0].Rows[0]["Firstname"].ToString() + " " + ds.Tables[0].Rows[0]["Lastname"].ToString() + "\r\n" + " you are Login Credentials." + "\r\n" + " User Id : " + ds.Tables[0].Rows[0]["User_id"].ToString() + "\r\n" + "Password : " + ds.Tables[0].Rows[0]["Password"].ToString() + "\r\n";
            msgs = msgs + "Thanks and Regards," + "\r\n" + "Commissionerate of Industries,TS-iPASS Cell";

            string body = msgs;
            string from = "tsipass.telangana@gmail.com"; //Replace this with your own correct Gmail Address

            string to = ds.Tables[0].Rows[0]["Email"].ToString(); //Replace this with the Email Address to whom you want to send the mail

            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(to);
            //mail.CC.Add("kcsbabu@gmail.com");
            //mail.CC.Add("coi.tsipass@gmail.com");
            //mail.CC.Add("support@fruxsoft.com");

            mail.From = new MailAddress(from, ":: TSiPASS ::", System.Text.Encoding.UTF8);

            mail.Subject = "Enterprenuer -Forgot Password Login Credentials -";// + Session["user_id"].ToString()

            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "Dear " + ds.Tables[0].Rows[0]["Firstname"].ToString() + " " + ds.Tables[0].Rows[0]["Lastname"].ToString() + "<br><br>  <H2>TSiPASS MIS  - Login Credentials</H2><br> Welcome to TS-iPASS. <br/> Dear <b> " + ds.Tables[0].Rows[0]["Firstname"].ToString() + " " + ds.Tables[0].Rows[0]["Lastname"].ToString() + "</b>,<br/> Please use the following credentials to Login. <br><br> USER ID: " + ds.Tables[0].Rows[0]["User_id"].ToString() + "<br> <br> Password : " + ds.Tables[0].Rows[0]["Password"].ToString() + "<br> <br> URL:  <a href='https://ipass.telangana.gov.in' target='_blank' > TSiPASS </a> <br> <br> Please Login by clicking the above link.<br><br>Regards<br>TSiPASS MIS";
            mail.BodyEncoding = System.Text.Encoding.UTF8;

            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;

            SmtpClient client = new SmtpClient();
            //Add the Creddentials- use your own email id and password

            client.Credentials = new System.Net.NetworkCredential(from, "tsipass@2016");

            client.Port = 587; // Gmail works on this port
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true; //Gmail works on Server Secured Layer
            try
            {
                client.Send(mail);
                //Session.Remove("File");
                //Session.Remove("FileName");
            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;
                }
                HttpContext.Current.Response.Write(errorMessage);
            } // end try
            cmf.SendSingleSMS(ds.Tables[0].Rows[0]["MobileNo"].ToString(), body);
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtuserid.Text = "";
            lblmsg0.Text = "Login Credentials sent to Registerd E-Mail and Mobile";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myScript", "AnotherFunction();", true);
            lgn.Visible = false;
            pwd.Visible = true;
        }
        else
        {
            lblmsg0.Text = "Please Enter Registerd E-Mail and Mobile and User Name";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myScript", "AnotherFunction();", true);
        }
    }

    protected void BtnSave4_Click(object sender, EventArgs e)
    {

        Response.Redirect("home2.aspx");
    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(txtuname.Text) || String.IsNullOrEmpty(txtpsw.Text))
        {
            lblmsg.Text = "provide User Name and Password";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myScript", "AnotherFunction();", true);
        }
        else
        {
            String UserID = "", Password = "", Dept = "";

            UserID = txtuname.Text;
            Password = txtpsw.Text;
            Dept = "%";

            General clsGeneral = new General();
            DataSet ds = clsGeneral.ValidateLogin(UserID, Password);//,Dept
            DataView dv = ds.Tables[0].DefaultView;
            DataSet dsnew = new DataSet();

            dsnew = clsGeneral.UpdateCFOUID();

            if (dv.Table.Rows.Count > 0)
            {
                Session["uid"] = dv.Table.Rows[0]["intUserid"].ToString();
                Session["username"] = dv.Table.Rows[0]["User_name"].ToString();
                Session["user_id"] = dv.Table.Rows[0]["User_id"].ToString();
                Session["password"] = dv.Table.Rows[0]["password"].ToString();
                Session["userlevel"] = dv.Table.Rows[0]["User_level"].ToString();
                Session["user_type"] = dv.Table.Rows[0]["User_type"].ToString();
                Session["Type"] = dv.Table.Rows[0]["Fromname"].ToString();
                Session["MobileNumber"] = dv.Table.Rows[0]["MobileNumber"].ToString();
                Session["Email"] = dv.Table.Rows[0]["EmailE"].ToString();

                Session["DistrictID"] = dv.Table.Rows[0]["DistrictID"].ToString();
                Session["User_Code"] = dv.Table.Rows[0]["User_code"].ToString();
                if (Session["userlevel"].ToString().Trim() == "20" || Session["userlevel"].ToString().Trim() == "24")
                {
                    //Response.Redirect("UI/TSiPASS/Dashboard.aspx");
                    Response.Redirect("UI/TSiPASS/Home.aspx");
                }
                else
                    if (Session["userlevel"].ToString().Trim() == "13")
                    {
                        //Response.Redirect("UI/TSiPASS/Dashboard.aspx");
                        Response.Redirect("UI/TSiPASS/HomeDashboard.aspx");
                    }
                    else if (Session["userlevel"].ToString().Trim() == "25")
                    {
                        Response.Redirect("UI/TSiPASS/Home.aspx");
                    }
                    else if (Session["userlevel"].ToString().Trim() == "12")
                    {
                        Response.Redirect("UI/TSiPASS/frmApprovelDocument.aspx");
                    }
                    else if (Session["userlevel"].ToString().Trim() == "10")
                    {

                        if (Session["uid"].ToString().Trim() == "1030")
                        {

                            Response.Redirect("UI/TSiPASS/HomeIndusDashboard.aspx");

                        }

                        else
                        {
                            if ((Convert.ToInt32(Session["User_Code"].ToString()) >= 74 && Convert.ToInt32(Session["User_Code"].ToString()) <= 141) || Session["User_Code"].ToString() == "143" || Session["User_Code"].ToString() == "144" || Session["User_Code"].ToString() == "145" || Session["User_Code"].ToString() == "146" || Session["User_Code"].ToString() == "147" || Session["User_Code"].ToString() == "148" || Session["User_Code"].ToString() == "149" || Session["User_Code"].ToString() == "150"

         || (Convert.ToInt32((Session["User_Code"].ToString())) >= 195 && (Convert.ToInt32((Session["User_Code"].ToString())) <= 262))
                                )
                            {
                                Response.Redirect("UI/TSiPASS/frmIPOIncentiveDashboard.aspx");
                            }
                            else
                            {
                                //Response.Redirect("UI/TSiPASS/frmDepartementDashboardNew.aspx");
                                Response.Redirect("UI/TSiPASS/HomeDeptDashboard.aspx");
                            }


                            //Response.Redirect("UI/TSiPASS/frmDepartementDashboardNew.aspx");
                            //  Response.Redirect("UI/TSiPASS/HomeDeptDashboard.aspx");

                        }

                        //Response.Redirect("UI/TSiPASS/frmDepartementDashboardNew.aspx");
                        //Response.Redirect("UI/TSiPASS/HomeDeptDashboard.aspx");

                    }
                    else
                    {
                        if (Session["user_id"].ToString().Trim().ToLower() == "commissioner" || Session["user_id"].ToString().Trim().ToLower() == "kcsbabu" || Session["uid"].ToString() == "3377" || Session["uid"].ToString() == "3378")
                        {
                            Response.Redirect("UI/TSiPASS/HomeCommDashboard.aspx");
                        }
                        else if (Session["uid"].ToString().Trim() == "1622")
                        {

                            Response.Redirect("UI/TSiPASS/Home.aspx");

                        }
                        else
                        {
                            Response.Redirect("UI/TSiPASS/ReportsDashboard.aspx");
                        }
                    }
            }
            else
            {
                lblmsg.Text = "Invalid UserName or Password";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myScript", "AnotherFunction();", true);
            }
        }
    }
}


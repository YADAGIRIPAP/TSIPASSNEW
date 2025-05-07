﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
//designing and developed by suresh as on 12-1-2016
//Purpose : To Add TST Details
//Tables used : td_TstTeamDet
//Stored procedures Used : sp_getStates,sp_getCounties,sp_getPayams,getTSTbyID,deleteTST,insrtTST,sp_Designations


public partial class CheckPOITD : System.Web.UI.Page
{
    General Gen = new General();
    byte[] Photo = new byte[1];
    string PhotoFileName = "";
    comFunctions cmf = new comFunctions();
    protected void Page_Load(object sender, EventArgs e)
    {
        //btnOrgLookup0.Attributes.Add("onclick", "javascript:return OpenPopup()");
        //if (Session.Count <= 0)
        //{
        //    Response.Redirect("../../frmUserLogin.aspx");
        //}
        try
        {
            if (!IsPostBack)
            {
                //Gen.getStates(ddlstate);
                ////Gen.sp_Designations(ddldesignation);
                //Session["Photo"] = Photo;
                //Session["PhotoFileName"] = "";

                //if (FileUpload1.HasFile)
                //{
                //    Session["FileUpload11"] = FileUpload1;
                //    hdfUploadFile1.Value = FileUpload1.FileName;
                //}
                //else if (Session["FileUpload11"] != null)
                //{
                //    FileUpload1 = (FileUpload)Session["FileUpload11"];
                //    hdfUploadFile1.Value = FileUpload1.FileName;
                //}
                getdistricts();

            }

            //if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.ContentLength > 0)
            //{
            //    if (FileUpload1.PostedFile.ContentLength <= 307200)
            //    {
            //        lblmsg.Text = "";
            //        //lblFileName.Text = "";
            //        UploadImage();

            //    }
            //    else
            //        lblmsg.Text = "Trainee image should be less than 300 KB";
            //}


            //if ((hdfID.Value.ToString().Trim() != "" && hdfFlagID.Value.ToString().Trim() == "0"))
            //{
            //    Failure.Visible = false;
            //    success.Visible = false;
            //    FillDetails();
            //    if (Session["userlevel"].ToString() == "1")
            //    {
            //        BtnDelete.Visible = true;
            //    }
            //    else
            //    {
            //        BtnDelete.Visible = false;
            //    }
            //    BtnSave1.Text = "Update";
            //}
            //BtnSave1.Enabled = false;
            //lblmsg.Text = "<font color=red> Our site is under maintenance  ,Site will up on 05-10-2016 at 10 AM </font>";
            //success.Visible = true;
            //Failure.Visible = false;
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg0.Text = ex.Message;
            Failure.Visible = true;
        }
    }

    protected void getdistricts()
    {
        try
        {
            DataSet dsnew = new DataSet();

            dsnew = Gen.GetDistricts();
            ddlministry.DataSource = dsnew.Tables[0];
            ddlministry.DataTextField = "District_Name";
            ddlministry.DataValueField = "District_Id";
            ddlministry.DataBind();
            ddlministry.Items.Insert(0, "--Select--");
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg0.Text = ex.Message;
            Failure.Visible = true;
        }
    }

    //void UploadImage()
    //{

    //    //PhotoFilename = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
    //    Session["PhotoFileName"] = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);

    //    try
    //    {
    //        string[] fileType = FileUpload1.PostedFile.FileName.Split('.');
    //        int letterI = fileType.Length;
    //        //Photo = new byte[FileUpload1.PostedFile.ContentLength];

    //        //    Session["Photo"] = new byte[FileUpload1.PostedFile.ContentLength];

    //        if (
    //            fileType[letterI - 1].ToUpper().Trim() == "PNG" ||
    //            fileType[letterI - 1].ToUpper().Trim() == "JPG" ||
    //            fileType[letterI - 1].ToUpper().Trim() == "GIF" ||
    //            fileType[letterI - 1].ToUpper().Trim() == "JPEG")
    //        {
    //            //Photo = new byte[FileUpload1.PostedFile.ContentLength];

    //            Session["Photo"] = new byte[FileUpload1.PostedFile.ContentLength];
    //            HttpPostedFile Image = FileUpload1.PostedFile;
    //            //Image.InputStream.Read(Photo, 0, (int)FileUpload1.PostedFile.ContentLength);
    //            //lblFileName.Text = PhotoFilename;
    //            //  ObjectToByteArray(Session["Photo"]);
    //            Image.InputStream.Read((byte[])Session["Photo"], 0, (int)FileUpload1.PostedFile.ContentLength);
    //            lblFileName.Text = Session["PhotoFileName"].ToString();

    //            //   Session["Photo"] = Photo;
    //            //   Session["PhotoFileName"] = PhotoFilename;

    //            Image1.ImageUrl = "ScanImage.aspx";



    //        }
    //        else
    //        {
    //            lblmsg.Text = "Image format should be JPG or JPEG or GIF or PNG";

    //        }

    //    }
    //    catch (Exception ex)
    //    {

    //        lblmsg.Text = "An Error Occured. Please Try Again!" + ex.Message;

    //    }

    //    finally
    //    {

    //    }


    //    FileUpload1.Focus();

    //}
    //void FillDetails()
    //{
    //    hdfFlagID.Value = "1";
    //    DataSet ds = new DataSet();


    //    ds = Gen.getTSTbyID(hdfID.Value.ToString());

    //    if (ds.Tables[0].Rows.Count > 0)
    //    {
    //        ddlministry.SelectedValue = ddlministry.Items.FindByValue(ds.Tables[0].Rows[0]["Ministry"].ToString()).Value;
    //        txtname.Text = ds.Tables[0].Rows[0]["TstName"].ToString();
    //        ddlstate.SelectedValue = ddlstate.Items.FindByValue(ds.Tables[0].Rows[0]["intStateid"].ToString()).Value;
    //        getcounties();
    //        ddlCounties.SelectedValue = ddlCounties.Items.FindByValue(ds.Tables[0].Rows[0]["intCountieid"].ToString()).Value;
    //        getPayams();
    //        ddlpayams.SelectedValue = ddlpayams.Items.FindByValue(ds.Tables[0].Rows[0]["intPayamid"].ToString()).Value;
    //        txtaddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
    //        txtemail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
    //        txtcontact.Text = ds.Tables[0].Rows[0]["ContactNo"].ToString();

    //        ddltype.SelectedValue = ds.Tables[0].Rows[0]["Type"].ToString();
    //        Gen.Getdesignations(ddldesignation, ddltype.SelectedValue);
    //        if (ds.Tables[0].Rows[0]["intDesgid"].ToString()!="")
    //        ddldesignation.SelectedValue = ddldesignation.Items.FindByValue(ds.Tables[0].Rows[0]["intDesgid"].ToString()).Value;
    //        ddlstatus.SelectedValue = ddlstate.Items.FindByValue(ds.Tables[0].Rows[0]["Status"].ToString()).Value;

    //        txtuser.Text = ds.Tables[1].Rows[0]["User_id"].ToString();
    //        txtuser.Enabled = false;
    //        txtpass.Enabled = false;
    //        txtpass.TextMode = TextBoxMode.SingleLine;
    //        txtpass.Text = "*****"; //ds.Tables[2].Rows[0]["Password"].ToString();

    //        if (ds.Tables[2].Rows.Count > 0)
    //        {
    //            if (ds.Tables[2].Rows[0]["PhotoFileName"].ToString() != "" && ds.Tables[2].Rows[0]["PhotoFileName"] != null)
    //            {
    //                lblFileName.Text = ds.Tables[2].Rows[0]["PhotoFileName"].ToString();

    //                Image1.ImageUrl = "viewAttachemnt.aspx?id=" + Convert.ToString(hdfID.Value.ToString()).Trim() + "&Type=TST Photo";


    //                if (ds.Tables[2].Rows[0]["Photo"].ToString().Trim() != "")
    //                {
    //                    Photo = (byte[])ds.Tables[2].Rows[0]["Photo"];
    //                    Session["Photo"] = Photo;
    //                    Session["PhotoFileName"] = ds.Tables[2].Rows[0]["PhotoFileName"].ToString();
    //                }

    //            }
    //            else
    //            {
    //                lblFileName.Text = "";
    //            }
    //        }

    //    }
    //}    
    protected void btnOrgLookup_Click(object sender, EventArgs e)
    {

    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        try
        {
            //Gen.Ministry = ddlministry.SelectedValue;
            //Gen.TstName = txtname.Text;
            //Gen.intStateid = ddlstate.SelectedValue;
            //Gen.intCountieid = ddlCounties.SelectedValue;
            //Gen.intPayamid = ddlpayams.SelectedValue;
            //Gen.Address = txtaddress.Text;
            //Gen.Email = txtemail.Text;
            //Gen.ContactNo = txtcontact.Text;
            //Gen.Type = ddltype.SelectedValue;
            //Gen.intDesgid = ddldesignation.SelectedValue;
            //Gen.Status = ddlstatus.SelectedValue;

            lblmsg.Text = "";
            //success.Visible = false;
            //Failure.Visible = false;
            //DataSet ds = new DataSet();
            //ds = Gen.FetchUserdet(txtAppEmail.Text);
            //if (ds.Tables[0].Rows.Count > 0)
            //{
            //    lblmsg.Text = "Email already registered,Please enter different email";
            //    lblmsg.Focus();
            //    return;
            //}


            DataSet dsUser = new DataSet();
            dsUser = Gen.CheckUserid1(txtname2.Text.Trim());
            //
            if (dsUser.Tables[0].Rows.Count > 0)
            {
                txtname2.Text = "";
                lblmsg.Text = "<font color=red> User ID already Exists, Please specify another User ID </font>";
                success.Visible = true;
                Failure.Visible = false;

                return;
                // txtRetypePassword.Text = "";
            }

            UserRegistrationVo userregistrationvoobj = new UserRegistrationVo();
            userregistrationvoobj.Firstname = txtfirstname.Text;
            userregistrationvoobj.Lastname = txtLastname.Text;
            userregistrationvoobj.Email = txtemail.Text;
            userregistrationvoobj.Address = txtaddress.Text;
            userregistrationvoobj.Location = ddlministry.SelectedValue.ToString();
            userregistrationvoobj.PANcardno = txtcontact0.Text;
            userregistrationvoobj.MobileNo = txtcontact.Text;
            userregistrationvoobj.username = txtname2.Text;
            userregistrationvoobj.AadharNo = txtAadharno.Text;
            userregistrationvoobj.Password = txtpasswordnew.Text;


            int i = Gen.addnewuserregistration(userregistrationvoobj);

            if (i != 999)
            {

                string msgs = "Dear " + txtfirstname.Text + " " + txtLastname.Text + "\r\n" + "you are successfully registered." + "\r\n" + "User Id : " + txtname2.Text + "\r\n" + " Password : " + txtpasswordnew.Text + "\r\n";
                msgs = msgs + "\r\n" + "\r\n" + "Thanks and Regards ," + "\r\n" + "Commissionerate of Industries,TS-iPASS Cell";

                string body = msgs;
                SendMailAnother(txtemail.Text);
                cmf.SendSingleSMS(txtcontact.Text, body);
                clear();


                Response.Redirect("FrmHDResultNew.aspx?Msg=User Registration Successfully Done");
                lblmsg.Text = "Added Successfully..!";
                success.Visible = true;
                Failure.Visible = false;


            }







            //System.Threading.Thread.Sleep(5000);

            //if (BtnSave1.Text == "Save")
            //{

            //    DataSet dsUser = new DataSet();
            //    dsUser = Gen.CheckUserid(txtuser.Text.Trim());
            //    //
            //    if (dsUser.Tables[0].Rows.Count > 0)
            //    {
            //        lblmsg.Text = "<font color=red> User ID already Exists, Please specify another User ID </font>";
            //        txtuser.Text = "";
            //        txtpass.Text = "";
            //        return;
            //        // txtRetypePassword.Text = "";
            //    }

            //    int i = Gen.insrtTST("0", Session["uid"].ToString(),txtuser.Text.ToString(),txtpass.Text.ToString());
            //    if (i != 999)
            //    {
            //        int j = Gen.InsrtUpdAttachment(i.ToString(), (byte[])(Session["Photo"]), Session["PhotoFileName"].ToString().Trim(), "TST Photo", Session["uid"].ToString());


            //        //string msgs = "Dear " + txtname.Text + "<br><br> you are successfully registered TS-iPass Govenrnment of Telengana Public works Online Management System.<br><br> User Id : " + txtuser.Text + "<br><br> Password : " + txtpass.Text + "<br>";
            //        //msgs = msgs + "<br><br><br>Thanks and Regards ,<br> Commissionerate of Industries,TS-iPASS Cell" ;

            //        //string body = msgs;
            //        SendMailAnother(txtemail.Text);


            //        lblmsg.Text = "Added Successfully..!";
            //        success.Visible = true;
            //        Failure.Visible = false;
            //        //clear();
            //    }
            //    else
            //    {
            //        lblmsg0.Text = "Already Exist. ";
            //        success.Visible = false;
            //        Failure.Visible = true;
            //    }
            //}
            //else
            //{
            //    int i = Gen.insrtTST(hdfID.Value, Session["uid"].ToString(), txtuser.Text.ToString(), txtpass.Text.ToString());

            //    if (i != 999)
            //    {
            //        int j = Gen.InsrtUpdAttachment(hdfID.Value, (byte[])(Session["Photo"]), Session["PhotoFileName"].ToString().Trim(), "TST Photo", Session["uid"].ToString());
            //        lblmsg.Text = "Updated Successfully..!";
            //        success.Visible = true;
            //        Failure.Visible = false;
            //        clear();
            //    }
            //    else
            //    {
            //        lblmsg0.Text = "Already Exist. ";
            //        success.Visible = false;
            //        Failure.Visible = true;
            //        //lblmsg.Text = "Added Successfully..!";
            //    }
            //}
        }
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg0.Text = ex.Message;
            Failure.Visible = true;
        }
    }

    void clear()
    {

        txtfirstname.Text = "";
        txtLastname.Text = "";
        txtemail.Text = "";
        ddlministry.SelectedIndex = 0;
        txtaddress.Text = "";

        txtcontact.Text = "";
        txtcontact0.Text = "";
        txtname2.Text = "";
        txtpasswordnew.Text = "";
        txtcomparepwd.Text = "";
        txtAadharno.Text = "";

    }
    //void clear()
    //{
    //    Image1.ImageUrl = "~/Resource/Images/not-available.jpg";
    //    lblFileName.Text = "";
    //    BtnSave1.Text = "Save";
    //    BtnDelete.Visible = false;
    //    txtpass.TextMode = TextBoxMode.Password;
    //    ddlministry.SelectedIndex = 0;
    //    //ddlministry.Items.Insert(0, "--Select--");
    //    txtname.Text = "";
    //    ddlstate.SelectedIndex = 0;


    //    ddlCounties.SelectedIndex = 0;


    //    ddlpayams.SelectedIndex = 0;
    //    txtaddress.Text = "";

    //    txtemail.Text = "";
    //    txtcontact.Text = "";
    //    ddltype.SelectedIndex = 0;

    //    ddldesignation.SelectedIndex = 0;

    //    ddlstatus.SelectedIndex = 0;
    //    txtuser.Text="";
    //    txtpass.Text = "";
    //    txtuser.Enabled = true;
    //    txtpass.Enabled = true;



    //}
    protected void BtnClear_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddnewuserRegistration.aspx");
    }

    protected void BtnClear0_Click(object sender, EventArgs e)
    {

        //int i = Gen.deleteTST(hdfID.Value);

        //if (i == 1)
        //{
        //    lblmsg.Text = "Deleted Successfully.";
        //    success.Visible = true;
        //    Failure.Visible = false;
        //    clear();
        //}
        //else if (i == 3)
        //{
        //    lblmsg0.Text = "Not Possible.";
        //    success.Visible = false;
        //    Failure.Visible = true;
        //    clear();
        //}
        //else
        //{
        //    lblmsg0.Text = "Please contact to Administrator.";
        //    success.Visible = false;
        //    Failure.Visible = true;
        //    clear();
        //}

    }
    //protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    getcounties();
    //}
    //void getcounties()
    //{
    //    ddlCounties.Items.Clear();
    //    ddlpayams.Items.Clear();
    //    if (ddlstate.SelectedIndex != 0)
    //    {
    //        Gen.getCounties(ddlCounties, ddlstate.SelectedValue);
    //    }
    //    else
    //    {
    //        ddlCounties.Items.Insert(0, "--Select--");
    //        ddlpayams.Items.Insert(0, "--Select--");

    //    }
    //}
    //protected void ddlCounties_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    getPayams();
    //}
    //void getPayams()
    //{
    //    ddlpayams.Items.Clear();
    //    if (ddlCounties.SelectedIndex != 0)
    //    {
    //        Gen.getPayams(ddlpayams, ddlCounties.SelectedValue);
    //    }
    //    else
    //    {
    //        ddlpayams.Items.Insert(0, "--Select--");
    //    }
    //}
    //protected void ddlState_SelectedIndexChanged1(object sender, EventArgs e)
    //{

    //}
    //protected void ddltype_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    Getdesignations();
    //}
    //void Getdesignations()
    //{

    //    if (ddltype.SelectedIndex != 0)
    //    {
    //        Gen.Getdesignations(ddldesignation, ddltype.SelectedValue);
    //    }
    //    else
    //    {
    //        ddldesignation.Items.Insert(0, "--Select--");


    //    }
    //}



    public void SendMailAnother(string anothermail)
    {


        string from = "tsipass.telangana@gmail.com"; //Replace this with your own correct Gmail Address

        string to = anothermail; //Replace this with the Email Address to whom you want to send the mail

        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        mail.To.Add(to);
        mail.CC.Add("kcsbabu@gmail.com");
        mail.CC.Add("coi.tsipass@gmail.com");
        //mail.CC.Add("support@fruxsoft.com");

        mail.From = new MailAddress(from, ":: TSiPASS ::", System.Text.Encoding.UTF8);

        mail.Subject = "Enterprenuer -Login Credentials -";// + Session["user_id"].ToString()

        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = "Dear " + txtfirstname.Text + " " + txtLastname.Text + "<br><br>  <H2>TSiPASS MIS  - Login Credentials</H2><br> Welcome to TS-iPASS. <br/> Dear <b> NAME: " + txtfirstname.Text + " " + txtLastname.Text + "</b>,<br/> Please use the following credentials to Login. <br><br> USER ID: " + txtname2.Text + "<br> <br> Password : " + txtpasswordnew.Text + "<br> <br> URL:  <a href='https://ipass.telangana.gov.in' target='_blank' > TSiPASS </a> <br> <br> Please Login by clicking the above link.<br><br>Regards<br>TSiPASS MIS";
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

    }
    protected void BtnSave2_Click(object sender, EventArgs e)
    {

        DataSet dsUser = new DataSet();
        dsUser = Gen.CheckUserid1(txtname2.Text.Trim());
        //
        if (dsUser.Tables[0].Rows.Count > 0)
        {
            txtname2.Text = "";
            lblmsg.Text = "<font color=red> User ID already Exists, Please specify another User ID </font>";

            success.Visible = true;
            Failure.Visible = false;
            //return;
            // txtRetypePassword.Text = "";
        }
        else
        {
            lblmsg.Text = "<font color=green> User ID Available </font>";

            success.Visible = true;
            Failure.Visible = false;

        }

    }
}

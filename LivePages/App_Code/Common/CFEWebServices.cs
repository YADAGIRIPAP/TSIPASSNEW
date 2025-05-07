﻿using System;
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
using System.Net;
using System.Net.Security;
using System.Net.Mail;
//using TSIPassBE;
//using TSIPassBL;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Text;
using System.Xml;
using System.Threading;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Net.Http;
/// <summary>
/// Summary description for CFEWebServices
/// </summary>
public class CFEWebServices
{
    #region "Global Variables"
    //PaymentDetailsBL objBL = new PaymentDetailsBL();
    //PaymentDetailsBE objBE = new PaymentDetailsBE();
    DataSet ds = new DataSet();
    string constring = ConfigurationManager.ConnectionStrings["TSiPASSSkils"].ToString();
    public string sEmail;
    //SMsHttpPostClient objSms = new SMsHttpPostClient();
    //static String username = "cgg-tipass";
    //static String password = "tip@$$@2016";
    //static String senderid = "TiPASS";

    static String username = "TSIPASS";
    static String password = "kcsb@786";
    static String senderid = "TSIPAS";

    HttpWebRequest request;
    static Stream dataStream;
    string responseFromServer = "";

    WebserviceVO webvo = new WebserviceVO();

    General gen = new General();
    WebClient wc = new WebClient();
    TSNPDCLService.TsipassWsService tsnpdcl = new TSNPDCLService.TsipassWsService();
    TSSPDCLService.TSSPDCLIPassService tsspdcl = new TSSPDCLService.TSSPDCLIPassService();
    FactoryService.TSFactoryServiceImplService factory = new FactoryService.TSFactoryServiceImplService();
    FireService.Service1 fire = new FireService.Service1();
    //BoilerService.TSBoilerServiceImplService boiler = new BoilerService.TSBoilerServiceImplService();
    LabourService.TSLabourServiceImplService labourservice = new LabourService.TSLabourServiceImplService();
    //LabourTest.TSLabourServiceImplService labourservice = new LabourTest.TSLabourServiceImplService();
    NALAService.MeeSevaWebService nalaservice = new NALAService.MeeSevaWebService();
    HMWSSBService.TSiPASSNewConnectionUC hmwssb = new HMWSSBService.TSiPASSNewConnectionUC();
    HMDAService.tsipass hmdaservice = new HMDAService.tsipass();
    HMDAService.ApplicationFormResponse hmdapplication = new HMDAService.ApplicationFormResponse();
    TSIICService.tsipass tsiicservice = new TSIICService.tsipass();
    TSIICService.ApplicationFormResponse tsiicapplication = new TSIICService.ApplicationFormResponse();
    //DB.DB con = new DB.DB();
    FactoryServiceQueryResponse.TSFactoryServiceImplService factoryquery = new FactoryServiceQueryResponse.TSFactoryServiceImplService();
    FactoryServiceQueryResponse.planQR queryvo = new FactoryServiceQueryResponse.planQR();
    FireService.Service1 fireservice = new FireService.Service1();
    CEIGCFEService.ApplicationServiceImplService ceigcfe = new CEIGCFEService.ApplicationServiceImplService();
    CEIGCFEService.queryReply ceigqueryvo = new CEIGCFEService.queryReply();
    ProfessionTax.TSIPASS professiontax = new ProfessionTax.TSIPASS();
    TGBPASSLIVE.ApplicationFormResponse objTGBPASS = new TGBPASSLIVE.ApplicationFormResponse();
    TGBPASSLIVE.tgipass objtgipass = new TGBPASSLIVE.tgipass();
    #endregion
    public CFEWebServices()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void webservicecfe(string UIDNO)
    {
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();

        try
        {

            ds = gen.GetDepartmentonuid(UIDNO);
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                dt = ds.Tables[0];
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string deptid = dt.Rows[i]["intApprovalid"].ToString();

                    if (deptid == "72")
                    {
                        DataSet dsdept = new DataSet();

                        dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                        dsdept.DataSetName = "Reg_Data";
                        dsdept.Tables[0].TableName = "regdtls";
                        dsdept.Tables[1].TableName = "bkacdtls";
                        dsdept.Tables[2].TableName = "docchklistdtls";
                        dsdept.Tables[3].TableName = "ownerdtls";
                        dsdept.Tables[4].TableName = "othpofbizdtls";
                        dsdept.Tables[5].TableName = "partnerdtls";
                        string ptxml = dsdept.GetXml();
                        if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                        {
                            string output = professiontax.Registration(ptxml);
                            StringReader str1 = new StringReader(output);
                            DataSet dsout1 = new DataSet();
                            dsout1.ReadXml(str1);
                            if (dsout1 != null && dsout1.Tables.Count > 0 && dsout1.Tables[0].Rows.Count > 0)
                            {
                                if (dsout1.Tables[0].Columns.Contains("status"))
                                {
                                    if (dsout1.Tables[0].Rows[0]["status"].ToString().TrimEnd().TrimStart() == "Success")
                                    {
                                        string npdclsattachment = dsout1.Tables[0].Rows[0]["status"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", npdclsattachment, "Y");
                                        int k = gen.InsertDeptDateTracing("2", dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                    }
                                    else
                                    {
                                        string npdclsattachmenterror = dsout1.Tables[0].Rows[0]["status"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", npdclsattachmenterror, "N");
                                    }
                                }
                            }
                        }
                    }
                    if (deptid == "70")
                    {
                        //http://125.18.179.58:8080/WaterFeasibility/IALAsavewaterdetails.do?aadhaarnumber=222222222207&ulb_code=1116&dist_id=1&fathername=ser&fathersurname=fds&mobilenumber=9999999999&name=Test&surname=Test&industryname=IALATest&quantityofwater=10&quessionaireid=12345&entrepreneurid=2131&uid=test123;

                        DataSet dsdept = new DataSet();

                        dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                        if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                        {
                            string aadhaarnumber = dsdept.Tables[0].Rows[0]["aadhaarnumber"].ToString();
                            string ulb_code = dsdept.Tables[0].Rows[0]["ulb_code"].ToString();
                            string dist_id = dsdept.Tables[0].Rows[0]["dist_id"].ToString();
                            string fathername = dsdept.Tables[0].Rows[0]["fathername"].ToString();
                            string fathersurname = dsdept.Tables[0].Rows[0]["fathersurname"].ToString();
                            string name = dsdept.Tables[0].Rows[0]["name"].ToString();
                            string surname = dsdept.Tables[0].Rows[0]["surname"].ToString();
                            string mobilenumber = dsdept.Tables[0].Rows[0]["mobilenumber"].ToString();
                            string industryname = dsdept.Tables[0].Rows[0]["industryname"].ToString();
                            string quantityofwater = dsdept.Tables[0].Rows[0]["quantityofwater"].ToString();
                            string quessionaireid = dsdept.Tables[0].Rows[0]["quessionaireid"].ToString();
                            string entrepreneurid = dsdept.Tables[0].Rows[0]["entrepreneurid"].ToString();
                            string uid = dsdept.Tables[0].Rows[0]["uid"].ToString();

                            //string WEBSERVICE_URL = "http://125.18.179.58:8080/WaterFeasibility/IALAsavewaterdetails.do?aadhaarnumber=" + aadhaarnumber + "&ulb_code=" + ulb_code + "&dist_id=" + dist_id + "&fathername=" + fathername + "&fathersurname=" + fathersurname + "&mobilenumber=" + mobilenumber + "&name=" + name + "&surname=" + surname + "&industryname=" + industryname + "&quantityofwater=" + quantityofwater + " &quessionaireid=" + quessionaireid + "&entrepreneurid=" + entrepreneurid + "&uid=" + uid + ""; Test url
                            string WEBSERVICE_URL = "http://125.18.179.59:8081/WaterFeasibility/IALAsavewaterdetails.do?aadhaarnumber=" + aadhaarnumber + "&ulb_code=" + ulb_code + "&dist_id=" + dist_id + "&fathername=" + fathername + "&fathersurname=" + fathersurname + "&mobilenumber=" + mobilenumber + "&name=" + name + "&surname=" + surname + "&industryname=" + industryname + "&quantityofwater=" + quantityofwater + " &quessionaireid=" + quessionaireid + "&entrepreneurid=" + entrepreneurid + "&uid=" + uid + "";


                            //string jsonData = "{\"cafUniqueNo\" : \""+cafUniqueNo+"\", \"transactionId\":\""+transactionId+"\" , \"amount\":\""+amount+"\" , \"bankName\":\""+bankName+"\" , \"transactionStatus\":\"S\" , \"paymentType\":\"NB\"}";
                            //string jsonData = "cafUniqueNo" : \"" + cafUniqueNo + "\", \"transactionId\":\"" + transactionId + "\" , \"amount\":\"" + amount + "\" , \"bankName\":\"" + bankName + "\" , \"transactionStatus\":\"S\" , \"paymentType\":\"NB\"}";
                            try
                            {
                                var webRequest = System.Net.WebRequest.Create(WEBSERVICE_URL);
                                if (webRequest != null)
                                {
                                    webRequest.Method = "POST";
                                    webRequest.Timeout = 20000;
                                    webRequest.ContentType = "application/x-www-form-urlencoded";

                                    //using (System.IO.Stream s = webRequest.GetRequestStream())
                                    //{
                                    //    using (System.IO.StreamWriter sw = new System.IO.StreamWriter(s))
                                    //        sw.Write(jsonData);
                                    //}

                                    using (System.IO.Stream s = webRequest.GetResponse().GetResponseStream())
                                    {
                                        using (System.IO.StreamReader sr = new System.IO.StreamReader(s))
                                        {
                                            var jsonResponse = sr.ReadToEnd();
                                            System.Diagnostics.Debug.WriteLine(String.Format("Response: {0}", jsonResponse));
                                            if (jsonResponse.Contains("Your Transaction  successful"))
                                            {
                                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", jsonResponse, "Y");
                                                int k = gen.InsertDeptDateTracing("20", dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", "20");
                                            }
                                            else
                                            {
                                                //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", jsonResponse, "N");
                                            }
                                        }
                                    }
                                }
                            }
                            catch (Exception ex)
                            {
                                System.Diagnostics.Debug.WriteLine(ex.ToString());
                            }

                        }
                    }
                    if (deptid == "65")
                    {
                        ServicePointManager.Expect100Continue = true;
                        ServicePointManager.SecurityProtocol = //SecurityProtocolType.Tls12;
                        SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12 | SecurityProtocolType.Ssl3;
                        CEIGCFEService.designApplication ceifvo = new CEIGCFEService.designApplication();
                        DataSet dsdept = new DataSet();
                        string valueshmwssb = "";
                        string outputhmwssb = "";
                        string outpayhmwssb = "";
                        dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                        valueshmwssb = dsdept.GetXml();
                        if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                        {

                            ceifvo.aadhar_number = dsdept.Tables[0].Rows[0]["AadharNo"].ToString();
                            //ceifvo.applicationID = dsdept.Tables[0].Rows[0]["intCFOPowerid"].ToString();
                            ceifvo.UID = dsdept.Tables[0].Rows[0]["UID_No"].ToString();
                            ceifvo.atc = dsdept.Tables[0].Rows[0]["ATC"].ToString();
                            //ceifvo.checkListUploads = "";
                            ceifvo.cli_already_installed = dsdept.Tables[0].Rows[0]["Cont_Demand_Max_Already"].ToString();
                            ceifvo.cli_proposed = dsdept.Tables[0].Rows[0]["Cont_Demand_Max_Proposed"].ToString();
                            ceifvo.cmd_already_installed = dsdept.Tables[0].Rows[0]["Connect_Load_A"].ToString();
                            ceifvo.cmd_proposed = dsdept.Tables[0].Rows[0]["Connect_Load_B"].ToString();
                            ceifvo.customer_remarks = "";//dsdept.Tables[0].Rows[0][""].ToString();
                            ceifvo.district_id = dsdept.Tables[0].Rows[0]["intDistrictid"].ToString();
                            ceifvo.email_id = dsdept.Tables[0].Rows[0]["Email"].ToString();
                            ceifvo.entrepreneurID = dsdept.Tables[0].Rows[0]["intCFEEnterpid"].ToString();
                            ceifvo.file_number = "";// dsdept.Tables[0].Rows[0][""].ToString();
                            ceifvo.first_name = dsdept.Tables[0].Rows[0]["NameofthePromoter"].ToString();
                            ceifvo.hno = dsdept.Tables[0].Rows[0]["Survey_No"].ToString();
                            ceifvo.industry_district_id = dsdept.Tables[0].Rows[0]["Prop_intDistrictid"].ToString();
                            ceifvo.industry_hno = dsdept.Tables[0].Rows[0]["Door_No"].ToString();
                            ceifvo.industry_mandal_id = dsdept.Tables[0].Rows[0]["Prop_intMandalid"].ToString();
                            ceifvo.industry_pincode = dsdept.Tables[0].Rows[0]["Land_Pincode"].ToString();
                            ceifvo.industry_plot_no = dsdept.Tables[0].Rows[0]["PLOTNO"].ToString();
                            ceifvo.industry_street_name = dsdept.Tables[0].Rows[0]["StreetName"].ToString();
                            ceifvo.industry_sy_no = dsdept.Tables[0].Rows[0]["inds_Survey_No"].ToString();
                            ceifvo.industry_village_id = dsdept.Tables[0].Rows[0]["Prop_intVillageid"].ToString();
                            ceifvo.last_name = dsdept.Tables[0].Rows[0]["NameofthePromoter"].ToString();
                            ceifvo.loction_district_id = dsdept.Tables[0].Rows[0]["Prop_intDistrictid"].ToString();
                            ceifvo.mandal_id = dsdept.Tables[0].Rows[0]["intMandalid"].ToString();
                            ceifvo.mobile_no = dsdept.Tables[0].Rows[0]["MobileNumber"].ToString();
                            ceifvo.name_of_industry = dsdept.Tables[0].Rows[0]["NameofIndustrialUnder"].ToString();
                            ceifvo.name_of_promoter = dsdept.Tables[0].Rows[0]["NameofthePromoter"].ToString();
                            ceifvo.pan_number = dsdept.Tables[0].Rows[0]["PANcardno"].ToString();
                            ceifvo.pincode = dsdept.Tables[0].Rows[0]["Land_Pincode"].ToString();
                            ceifvo.plant_slno = dsdept.Tables[0].Rows[0]["Plant_slno"].ToString();
                            ceifvo.plot_no = dsdept.Tables[0].Rows[0]["DOOR_nO"].ToString();
                            ceifvo.proposal_for = dsdept.Tables[0].Rows[0]["ProposalForQue"].ToString();
                            ceifvo.questionaireID = dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString();
                            ceifvo.regulation_slno = dsdept.Tables[0].Rows[0]["Regulation_type"].ToString();
                            ceifvo.so_do_wo = dsdept.Tables[0].Rows[0]["NameofthePromoter"].ToString();
                            ceifvo.street_name = dsdept.Tables[0].Rows[0]["Street_Name"].ToString();
                            ceifvo.sy_no = dsdept.Tables[0].Rows[0]["Survey_No"].ToString();// dsdept.Tables[0].Rows[0][""].ToString();
                            //ceifvo.system_ip = "1.1.1.1"; ;// dsdept.Tables[0].Rows[0][""].ToString();                                
                            ceifvo.type_of_industry = "35";//dsdept.Tables[0].Rows[0]["TypeofFactory"].ToString();
                            ceifvo.type_of_industry_others = "";// dsdept.Tables[0].Rows[0][""].ToString();                              
                            ceifvo.user_name = dsdept.Tables[0].Rows[0]["User_name"].ToString();
                            ceifvo.password = dsdept.Tables[0].Rows[0]["password"].ToString();
                            ceifvo.village_id = dsdept.Tables[0].Rows[0]["intVillageid"].ToString();
                            ceifvo.voltage_slno = dsdept.Tables[0].Rows[0]["Voltage_Slno"].ToString();
                            ceifvo.transaction_id = dsdept.Tables[0].Rows[0]["OnlineOrderNo"].ToString();
                            ceifvo.transaction_ref = dsdept.Tables[0].Rows[0]["TransactionNO"].ToString();
                            ceifvo.payment_date = dsdept.Tables[0].Rows[0]["TransactionDate"].ToString();
                            ceifvo.bank = dsdept.Tables[0].Rows[0]["BankName"].ToString();
                            ceifvo.amount = Convert.ToDouble(dsdept.Tables[0].Rows[0]["Online_Amount"].ToString());
                            DataSet dsBoiler = new DataSet();
                            CEIGCFEService.checkListUploads[] Uploaddocuments = null;
                            dsBoiler = gen.getattachmentdetailsonuid(UIDNO, "65", "");
                            string attcvalueshmwssb = dsBoiler.GetXml();
                            if (dsBoiler != null && dsBoiler.Tables.Count > 0)
                            {

                                ///Registration Deed////

                                //if (dsBoiler.Tables[0].Rows.Count > 0)
                                //{
                                DataTable dtceigdocuments = new DataTable();
                                dtceigdocuments = dsBoiler.Tables[0];
                                Uploaddocuments = new CEIGCFEService.checkListUploads[dtceigdocuments.Rows.Count];

                                for (int n = 0; n < dtceigdocuments.Rows.Count; n++)
                                {
                                    CEIGCFEService.checkListUploads uploadvo = new CEIGCFEService.checkListUploads();
                                    uploadvo.documentName = dtceigdocuments.Rows[n]["FileName"].ToString();
                                    uploadvo.documentPath = dtceigdocuments.Rows[n]["Filepath"].ToString();
                                    uploadvo.documentId = Convert.ToInt32(dtceigdocuments.Rows[n]["Documentid"].ToString());
                                    Uploaddocuments[n] = uploadvo;
                                }
                                ceifvo.checkListUploads = Uploaddocuments;
                                //}
                            }
                            string ceigout = ceigcfe.insertIntoDesignApplication(ceifvo); //ceig.in(ceifvo);
                            if (ceigout == "SUCCESS")
                            {
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", ceigout, "Y");
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "A", ceigout, "Y");
                                int k = gen.InsertDeptDateTracing("6", dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", "65");
                                //int k = gen.InsertDeptDateTracing(dsdept.Tables[0].Rows[0]["intDeptid"].ToString(), dsdept.Tables[0].Rows[0]["quessionaire_id"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFO", deptid);
                            }
                            else
                            {
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", ceigout, "N");
                            }
                        }
                    }

                    if (deptid == "20")//PCB
                    {
                        DataSet dsdept = new DataSet();

                        dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                        if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                        {
                            string cafUniqueNo = dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString();
                            string transactionId = dsdept.Tables[0].Rows[0]["TransactionNO"].ToString();
                            string amount = dsdept.Tables[0].Rows[0]["Approval_Fee"].ToString();
                            string bankName = dsdept.Tables[0].Rows[0]["BankName"].ToString();
                            string transactionStatus = "S";
                            string paymentType = "NB";
                            string indApplication = dsdept.Tables[0].Rows[0]["NICApplicationno"].ToString();
                            string additionalPayment = "F";

                            string WEBSERVICE_URL = "http://tsocmms.nic.in/TLWS/updateFee?cafUniqueNo=" + cafUniqueNo + "&transactionId=" + transactionId + "&amount=" + amount + "&bankName=" + bankName + "&transactionStatus=" + transactionStatus + "&paymentType=" + paymentType + "&indApplicationNo=" + indApplication + "&additionalPayment=" + additionalPayment + "";


                            //string jsonData = "{\"cafUniqueNo\" : \""+cafUniqueNo+"\", \"transactionId\":\""+transactionId+"\" , \"amount\":\""+amount+"\" , \"bankName\":\""+bankName+"\" , \"transactionStatus\":\"S\" , \"paymentType\":\"NB\"}";
                            //string jsonData = "cafUniqueNo" : \"" + cafUniqueNo + "\", \"transactionId\":\"" + transactionId + "\" , \"amount\":\"" + amount + "\" , \"bankName\":\"" + bankName + "\" , \"transactionStatus\":\"S\" , \"paymentType\":\"NB\"}";
                            try
                            {
                                var webRequest = System.Net.WebRequest.Create(WEBSERVICE_URL);
                                if (webRequest != null)
                                {
                                    webRequest.Method = "GET";
                                    webRequest.Timeout = 20000;
                                    webRequest.ContentType = "application/x-www-form-urlencoded";

                                    //using (System.IO.Stream s = webRequest.GetRequestStream())
                                    //{
                                    //    using (System.IO.StreamWriter sw = new System.IO.StreamWriter(s))
                                    //        sw.Write(jsonData);
                                    //}

                                    using (System.IO.Stream s = webRequest.GetResponse().GetResponseStream())
                                    {
                                        using (System.IO.StreamReader sr = new System.IO.StreamReader(s))
                                        {
                                            var jsonResponse = sr.ReadToEnd();
                                            System.Diagnostics.Debug.WriteLine(String.Format("Response: {0}", jsonResponse));
                                            if (jsonResponse.Contains("Fee submitted successfully"))
                                            {
                                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", jsonResponse, "Y");
                                                int k = gen.InsertDeptDateTracing("20", dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", "20");
                                            }
                                            else
                                            {
                                                //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", jsonResponse, "N");
                                            }
                                        }
                                    }
                                }
                            }
                            catch (Exception ex)
                            {
                                System.Diagnostics.Debug.WriteLine(ex.ToString());
                            }

                        }

                    }

                    if (deptid == "31")//TSIIC
                    {
                        try
                        {
                            DataSet dsdept = new DataSet();
                            string valueshmda = "";
                            string outputhmda = "";
                            string outpayhmda = "";
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            valueshmda = dsdept.GetXml();
                            XmlDocument doc = new XmlDocument();
                            doc.LoadXml(valueshmda);
                            //string jsonText = JsonConvert.SerializeXmlNode(doc); // To convert JSON text contained in string json into an XML node XmlDocument doc = JsonConvert.DeserializeXmlNode(json);
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                            {
                                //hmdapplication.
                                //System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();

                                tsiicapplication = tsiicservice.create(valueshmda, "$$08@213");//000844/I1/U6/HMDA/25072017
                                if (tsiicapplication.FileNo != "" && tsiicapplication.FileNo != null)
                                {
                                    //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", tsiicapplication.FileNo, "Y");
                                }
                                DataSet dsdeptattachmentsTSIIC = new DataSet();
                                dsdeptattachmentsTSIIC = gen.getattachmentdetailsonuid(UIDNO, deptid, tsiicapplication.FileNo);
                                //Kindly contact to administrator regarding add work flow.
                                string tsiicattachments = dsdeptattachmentsTSIIC.GetXml();
                                tsiicapplication = tsiicservice.SaveDocumentDataUsingXML(tsiicattachments, "$$08@213");//000838/I1/U6/HMDA/20072017//
                                if (tsiicapplication.FileNo != "" && tsiicapplication.FileNo != null)
                                {
                                    //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "A", tsiicapplication.FileNo, "Y");
                                    int k = gen.InsertDeptDateTracing("3", dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                }
                                else
                                {
                                    //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", tsiicapplication.ErrorMessage, "N");
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }

                    if (deptid == "9")
                    {

                        DataSet dsdept = new DataSet();
                        dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                        if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                        {
                            GroundWaterService GWS = new GroundWaterService();
                            GWS.uid = Convert.ToString(dsdept.Tables[0].Rows[0]["uid"]);
                            GWS.questionairId = Convert.ToString(dsdept.Tables[0].Rows[0]["quessionaireid"]);
                            GWS.entrepreneurId = Convert.ToString(dsdept.Tables[0].Rows[0]["entrepreneurid"]);
                            GWS.projectName = Convert.ToString(dsdept.Tables[0].Rows[0]["nameofunit"]);
                            GWS.applicantName = Convert.ToString(dsdept.Tables[0].Rows[0]["NameofthePromoter"]);
                            GWS.soDoWo = Convert.ToString(dsdept.Tables[0].Rows[0]["SoWo"]);
                            GWS.landSurveyNumber = Convert.ToString(dsdept.Tables[0].Rows[0]["SurveyNo"]);
                            GWS.landGramPanchayat = Convert.ToString(dsdept.Tables[0].Rows[0]["Name_Gramapachayat"]);
                            GWS.landVillage = Convert.ToString(dsdept.Tables[0].Rows[0]["villagename"]);
                            GWS.landMandal = Convert.ToString(dsdept.Tables[0].Rows[0]["mandalName"]);
                            GWS.landDistrict = Convert.ToString(dsdept.Tables[0].Rows[0]["districtName"]);
                            GWS.landPincode = Convert.ToString(dsdept.Tables[0].Rows[0]["Land_Pincode"]);
                            GWS.landEmail = Convert.ToString(dsdept.Tables[0].Rows[0]["Email"]);
                            GWS.landTelephone = Convert.ToString(dsdept.Tables[0].Rows[0]["MobileNumber"]);
                            GWS.landTotalExtent = Convert.ToString(dsdept.Tables[0].Rows[0]["Tot_Extent"]);
                            GWS.landProposedArea = Convert.ToString(dsdept.Tables[0].Rows[0]["Land_ProposedArea"]);
                            GWS.landTotalBuiltUpArea = Convert.ToString(dsdept.Tables[0].Rows[0]["Built_up_Area"]);
                            GWS.landExistingRoadWidth = Convert.ToString(dsdept.Tables[0].Rows[0]["Land_Existingwidth"]);
                            GWS.landTypeOfApproachRoad = Convert.ToString(dsdept.Tables[0].Rows[0]["TypeofApprochid"]);
                            GWS.landComesUnder = Convert.ToString(dsdept.Tables[0].Rows[0]["Locationcomesunder"]);
                            GWS.entrType = Convert.ToString(dsdept.Tables[0].Rows[0]["Cons_of_Unit"]);
                            GWS.purpose = Convert.ToString(dsdept.Tables[0].Rows[0]["PolCategory"]);
                            GWS.entrCaste = Convert.ToString(dsdept.Tables[0].Rows[0]["caste"]);
                            GWS.entrBuildingApproval = Convert.ToString(dsdept.Tables[0].Rows[0]["BuildingApproval"]);
                            GWS.entrDifferentlyAbled = Convert.ToString(dsdept.Tables[0].Rows[0]["diffabled"]);
                            GWS.entrDoorNo = Convert.ToString(dsdept.Tables[0].Rows[0]["Door_No"]);
                            GWS.entrStreetname = Convert.ToString(dsdept.Tables[0].Rows[0]["StreetName"]);
                            GWS.entrVillage = Convert.ToString(dsdept.Tables[0].Rows[0]["village_name"]);
                            GWS.entrMandal = Convert.ToString(dsdept.Tables[0].Rows[0]["Manda_lName"]);
                            GWS.entrDistrict = Convert.ToString(dsdept.Tables[0].Rows[0]["District_Name"]);
                            GWS.entrState = Convert.ToString(dsdept.Tables[0].Rows[0]["State_Name"]);
                            GWS.entrPincode = Convert.ToString(dsdept.Tables[0].Rows[0]["pincode"]);
                            GWS.entrEmail = Convert.ToString(dsdept.Tables[0].Rows[0]["Email"]);
                            GWS.entrCellno = Convert.ToString(dsdept.Tables[0].Rows[0]["MobileNumber"]);
                            GWS.entrTelephone = Convert.ToString(dsdept.Tables[0].Rows[0]["Land_TelephoneNumber"]);
                            GWS.entrRegistrationType = Convert.ToString(dsdept.Tables[0].Rows[0]["CategoryofReg"]);
                            GWS.entrRegistrationNumber = Convert.ToString(dsdept.Tables[0].Rows[0]["Reg_No"]);
                            GWS.entrRegistrationDate = Convert.ToString(dsdept.Tables[0].Rows[0]["Reg_Date"]);
                            GWS.lineOfActivity = Convert.ToString(dsdept.Tables[0].Rows[0]["LineofActivity_Name"]);

                            GWS.waterSupplyFrom = "New Bore well";
                            GWS.waterRequirement = Convert.ToString(dsdept.Tables[0].Rows[0]["Requirement_Water"]);
                            GWS.waterDrinking = Convert.ToString(dsdept.Tables[0].Rows[0]["Drink_Water"]);
                            GWS.waterProcessing = Convert.ToString(dsdept.Tables[0].Rows[0]["Water_Processing"]);
                            GWS.typeOfWell = Convert.ToString(dsdept.Tables[0].Rows[0]["SourceWater"]);
                            //GWS.water_requirementofwater = Convert.ToString(dsdept.Tables[0].Rows[0]["Water_req_Perday_Borewell"]);
                            GWS.waterConsumptive = Convert.ToString(dsdept.Tables[0].Rows[0]["Quant_Water_Consumptive"]);
                            GWS.waterNonConsumptive = Convert.ToString(dsdept.Tables[0].Rows[0]["Quant_Water_NonConsumptive"]);
                            GWS.applicationDate = Convert.ToString(dsdept.Tables[0].Rows[0]["date_of_application"]);


                            DataSet dsGWAttachment = new DataSet();
                            dsGWAttachment = gen.getattachmentdetailsonuid(UIDNO, deptid, "");
                            string attcvalueshmwssb = dsGWAttachment.GetXml();
                            if (dsGWAttachment != null && dsGWAttachment.Tables.Count > 0 && dsGWAttachment.Tables[0].Rows.Count > 0)
                            {
                                ///Registration Deed////

                                if (dsGWAttachment.Tables[0].Rows.Count > 0)
                                {
                                    GWS.registrationDeed = Convert.ToString(dsGWAttachment.Tables[0].Rows[0]["Filepath"]);
                                }
                                if (dsGWAttachment.Tables[1].Rows.Count > 0)
                                {
                                    GWS.idCard = Convert.ToString(dsGWAttachment.Tables[1].Rows[0]["Filepath"]);
                                }
                                if (dsGWAttachment.Tables[2].Rows.Count > 0)
                                {
                                    GWS.combinedSitePlan = Convert.ToString(dsGWAttachment.Tables[2].Rows[0]["Filepath"]);
                                }
                            }
                            paymentDetails gwpayment = new paymentDetails();
                            gwpayment.amount = Convert.ToString(dsdept.Tables[0].Rows[0]["Amount"]);
                            gwpayment.paymentId = Convert.ToString(dsdept.Tables[0].Rows[0]["PaymentId"]);
                            gwpayment.paymentStatus = Convert.ToString(dsdept.Tables[0].Rows[0]["PaymentStatus"]);
                            GWS.payment = gwpayment;
                            string token = "";
                            var JsonDetails = JsonConvert.SerializeObject(GWS);
                            ServicePointManager.SecurityProtocol = (SecurityProtocolType)48 | (SecurityProtocolType)192 | (SecurityProtocolType)768 | (SecurityProtocolType)3072;
                            string apiUrl = "https://tsgw-prod-backend.white-glitter-3833.concinnitytech.com/api/ipass/token";

                            using (var client = new HttpClient())
                            {

                                var postData = new List<KeyValuePair<string, string>>();
                                postData.Add(new KeyValuePair<string, string>("identifier", "ipassuser@api.com"));
                                postData.Add(new KeyValuePair<string, string>("password", "Ipass@123"));

                                var content = new FormUrlEncodedContent(postData);
                                LogErrorFile.LogData(content.ToString());
                                var response = client.PostAsync(apiUrl, content).Result;
                                LogErrorFile.LogData(response.ToString());
                                var result = response.Content.ReadAsStringAsync().Result;
                                dynamic json = JsonConvert.DeserializeObject(result);
                                LogErrorFile.LogData(result.ToString());
                                token = json.token;
                                LogErrorFile.LogData(token);
                                // Store or use the access token as needed
                            }
                            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(apiUrl);
                            //request.Method = "POST"; // Set HTTP method (GET, POST, etc.)

                            // Set bearer token in the Authorization header
                            //request.Headers["Authorization"] = "Bearer" + token;
                            string WEBSERVICE_URL = "https://tsgw-prod-backend.white-glitter-3833.concinnitytech.com/api/ipass/add";
                            //"https://6uwcemvar67lmndggsu7dublvq0ppcfa.lambda-url.ap-south-1.on.aws/";
                            try
                            {
                                var webRequest = System.Net.WebRequest.Create(WEBSERVICE_URL);
                                if (webRequest != null)
                                {
                                    //     webRequest.Headers.Add("token", "bd16b347e586f05339f830b3a85d8aefa8da92c1");
                                    //webRequest.Headers =  "bd16b347e586f05339f830b3a85d8aefa8da92c1";
                                    webRequest.Method = "POST";
                                    webRequest.Timeout = 20000;
                                    webRequest.ContentType = "application/json";
                                    webRequest.Headers["Authorization"] = "Bearer " + token;

                                    // Convert JSON string to byte array
                                    byte[] byteArray = Encoding.UTF8.GetBytes(JsonDetails);

                                    // Set content length
                                    webRequest.ContentLength = byteArray.Length;

                                    // Write JSON data to request body
                                    using (Stream dataStream = webRequest.GetRequestStream())
                                    {
                                        dataStream.Write(byteArray, 0, byteArray.Length);
                                    }
                                    try
                                    {
                                        // Get response
                                        using (WebResponse response = webRequest.GetResponse())
                                        {
                                            // Read response
                                            using (Stream responseStream = response.GetResponseStream())
                                            {
                                                StreamReader reader = new StreamReader(responseStream, Encoding.UTF8);
                                                string responseJson = reader.ReadToEnd();
                                                Console.WriteLine("Response: " + responseJson);
                                                if (responseJson.Contains("success"))
                                                {
                                                    //{"result":"201903180002","response":"SUCCESS","responseMessage":"Operation executed successfully","status":200}
                                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", responseJson, "Y");
                                                    int k = gen.InsertDeptDateTracing("15", GWS.questionairId, UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", "9");
                                                }
                                            }
                                        }
                                    }
                                    catch (WebException ex)
                                    {
                                        // Handle exception
                                        if (ex.Response != null)
                                        {
                                            using (WebResponse errorResponse = ex.Response)
                                            {
                                                using (Stream errorStream = errorResponse.GetResponseStream())
                                                {
                                                    StreamReader reader = new StreamReader(errorStream, Encoding.GetEncoding("utf-8"));
                                                    string errorText = reader.ReadToEnd();
                                                    Console.WriteLine("Error response: " + errorText);
                                                }
                                            }
                                        }
                                    }


                                    //using (System.IO.Stream s = webRequest.GetRequestStream())
                                    //{
                                    //    using (System.IO.StreamWriter sw = new System.IO.StreamWriter(s))
                                    //        sw.Write(jsonData);
                                    //}

                                    //using (System.IO.Stream s = webRequest.GetResponse().GetResponseStream())
                                    //{
                                    //    using (System.IO.StreamReader sr = new System.IO.StreamReader(s))
                                    //    {
                                    //        var jsonResponse = sr.ReadToEnd();
                                    //        System.Diagnostics.Debug.WriteLine(String.Format("Response: {0}", jsonResponse));
                                    //        if (jsonResponse.Contains("Operation executed successfully"))
                                    //        {
                                    //            //{"result":"201903180002","response":"SUCCESS","responseMessage":"Operation executed successfully","status":200}
                                    //            gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", jsonResponse, "Y");
                                    //            // int k = gen.InsertDeptDateTracing("71", quessionaireid, UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", "71");
                                    //        }
                                    //        else
                                    //        {
                                    //            //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    //            gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", jsonResponse, "N");
                                    //        }
                                    //    }
                                    //}
                                }
                            }
                            catch (Exception ex)
                            {
                                System.Diagnostics.Debug.WriteLine(ex.ToString());
                            }

                        }
                    }

                    if (deptid == "7")//DTCP
                    {
                        try
                        {
                            DataSet dsdept = new DataSet();
                            string valueshmda = "";
                            string outputhmda = "";
                            string outpayhmda = "";
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            valueshmda = dsdept.GetXml();
                            XmlDocument doc = new XmlDocument();
                            doc.LoadXml(valueshmda);
                            //string jsonText = JsonConvert.SerializeXmlNode(doc); // To convert JSON text contained in string json into an XML node XmlDocument doc = JsonConvert.DeserializeXmlNode(json);
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                            {
                                //hmdapplication.
                                //System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
                                ServicePointManager.SecurityProtocol = (SecurityProtocolType)48 | (SecurityProtocolType)192 | (SecurityProtocolType)768 | (SecurityProtocolType)3072;
                                objTGBPASS = objtgipass.create(valueshmda, "$$08@213");//000844/I1/U6/HMDA/25072017
                                if (objTGBPASS.FileNo != "" && objTGBPASS.FileNo != null)
                                {
                                    //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", objTGBPASS.FileNo, "Y");
                                }                                                       //Kindly contact to Administrator regarding post mapping configuration for revenue department.
                                DataSet dsdeptattachmentsHMDA = new DataSet();
                                dsdeptattachmentsHMDA = gen.getattachmentdetailsonuid(UIDNO, deptid, objTGBPASS.FileNo);//000841/I1/U6/HMDA/23072017//000842/I1/U6/HMDA/23072017

                                //Kindly contact to administrator regarding add work flow.
                                string hmdaattachments = dsdeptattachmentsHMDA.GetXml();
                                objTGBPASS = objtgipass.SaveDocumentDataUsingXML(hmdaattachments, "$$08@213");//000838/I1/U6/HMDA/20072017


                                if (objTGBPASS.FileNo != "" && objTGBPASS.FileNo != null)
                                {
                                    //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "A", objTGBPASS.FileNo, "Y");
                                    int k = gen.InsertDeptDateTracing("13", dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                }
                                else
                                {
                                    //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    //gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", hmdapplication.ErrorMessage, "N");
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }

                    if (deptid == "35")
                    {
                        try
                        {
                            DataSet dsdept = new DataSet();
                            string valueshmda = "";
                            string outputhmda = "";
                            string outpayhmda = "";
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            valueshmda = dsdept.GetXml();
                            XmlDocument doc = new XmlDocument();
                            doc.LoadXml(valueshmda);
                            //string jsonText = JsonConvert.SerializeXmlNode(doc); // To convert JSON text contained in string json into an XML node XmlDocument doc = JsonConvert.DeserializeXmlNode(json);
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                            {
                                //hmdapplication.
                                //System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
                                ServicePointManager.SecurityProtocol = (SecurityProtocolType)48 | (SecurityProtocolType)192 | (SecurityProtocolType)768 | (SecurityProtocolType)3072;
                                objTGBPASS = objtgipass.create(valueshmda, "$$08@213");//000844/I1/U6/HMDA/25072017
                                if (objTGBPASS.FileNo != "" && objTGBPASS.FileNo != null)
                                {
                                    //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", objTGBPASS.FileNo, "Y");
                                }                                          //Kindly contact to Administrator regarding post mapping configuration for revenue department.
                                DataSet dsdeptattachmentsHMDA = new DataSet();
                                dsdeptattachmentsHMDA = gen.getattachmentdetailsonuid(UIDNO, deptid, objTGBPASS.FileNo);//000841/I1/U6/HMDA/23072017//000842/I1/U6/HMDA/23072017

                                //Kindly contact to administrator regarding add work flow.
                                string hmdaattachments = dsdeptattachmentsHMDA.GetXml();
                                objTGBPASS = objtgipass.SaveDocumentDataUsingXML(hmdaattachments, "$$08@213");//000838/I1/U6/HMDA/20072017


                                if (objTGBPASS.FileNo != "" && objTGBPASS.FileNo != null)
                                {
                                    //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "A", objTGBPASS.FileNo, "Y");
                                    int k = gen.InsertDeptDateTracing("11", dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                }
                                else
                                {
                                    //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    //gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", hmdapplication.ErrorMessage, "N");
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    //if (deptid == "35")//HMDA
                    //{
                    //    try
                    //    {
                    //        DataSet dsdept = new DataSet();
                    //        string valueshmda = "";
                    //        string outputhmda = "";
                    //        string outpayhmda = "";
                    //        dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                    //        valueshmda = dsdept.GetXml();
                    //        XmlDocument doc = new XmlDocument();
                    //        doc.LoadXml(valueshmda);
                    //        //string jsonText = JsonConvert.SerializeXmlNode(doc); // To convert JSON text contained in string json into an XML node XmlDocument doc = JsonConvert.DeserializeXmlNode(json);
                    //        if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                    //        {
                    //            //hmdapplication.
                    //            //System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();

                    //            hmdapplication = hmdaservice.create(valueshmda, "$$08@213");//000844/I1/U6/HMDA/25072017
                    //            //Kindly contact to Administrator regarding post mapping configuration for revenue department.
                    //            DataSet dsdeptattachmentsHMDA = new DataSet();
                    //            dsdeptattachmentsHMDA = gen.getattachmentdetailsonuid(UIDNO, deptid, hmdapplication.FileNo);// "000825 /I1/U6/HMDA/10072017");//000841/I1/U6/HMDA/23072017//000842/I1/U6/HMDA/23072017

                    //            //Kindly contact to administrator regarding add work flow.
                    //            string hmdaattachments = dsdeptattachmentsHMDA.GetXml();
                    //            hmdapplication = hmdaservice.SaveDocumentDataUsingXML(hmdaattachments, "$$08@213");//000838/I1/U6/HMDA/20072017


                    //            if (hmdapplication.FileNo != "" && hmdapplication.FileNo != null)
                    //            {
                    //                //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                    //                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", hmdapplication.FileNo, "Y");
                    //                int k = gen.InsertDeptDateTracing("11", dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                    //            }
                    //            else
                    //            {
                    //                //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                    //                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", hmdapplication.ErrorMessage, "N");
                    //            }
                    //        }
                    //    }
                    //    catch (Exception ex)
                    //    {

                    //    }
                    //}
                    if (deptid == "10") //HMWSSB
                    {
                        try
                        {
                            DataSet dsdept = new DataSet();
                            string valueshmwssb = "";
                            string outputhmwssb = "";
                            string outpayhmwssb = "";
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            valueshmwssb = dsdept.GetXml();
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                            {
                                webvo.UID_No = dsdept.Tables[0].Rows[0]["UID_NO"].ToString();
                                webvo.intQuessionaireid = Convert.ToInt16(dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString());
                                webvo.intEnterpreneurid = Convert.ToInt16(dsdept.Tables[0].Rows[0]["intCFEEnterpid"].ToString());
                                webvo.NameofthePromoter = dsdept.Tables[0].Rows[0]["NameofthePromoter"].ToString();
                                webvo.Door_No = dsdept.Tables[0].Rows[0]["DOOR_NO"].ToString();
                                webvo.STREET = dsdept.Tables[0].Rows[0]["StreetName"].ToString();
                                webvo.AreaName = dsdept.Tables[0].Rows[0]["AREANAME"].ToString();
                                webvo.Pincode = dsdept.Tables[0].Rows[0]["PINCODE"].ToString();
                                webvo.TelephoneNumber = dsdept.Tables[0].Rows[0]["TELEPHONENUMBER"].ToString();
                                webvo.MobileNumber = dsdept.Tables[0].Rows[0]["MOBILENUMBER"].ToString();
                                webvo.Email = dsdept.Tables[0].Rows[0]["EMAIL"].ToString();
                                webvo.saleDeedPlotAreaInSqMts = Convert.ToDecimal(dsdept.Tables[0].Rows[0]["Built_up_Area"].ToString());
                                webvo.saleDeedPlotAreaInSqYards = Convert.ToDecimal(dsdept.Tables[0].Rows[0]["SQUAREYARD"].ToString());
                                webvo.totalPlinthArea = Convert.ToDecimal(dsdept.Tables[0].Rows[0]["Tot_Extent"].ToString());
                                webvo.Amount = Convert.ToDecimal(dsdept.Tables[0].Rows[0]["Approval_Fee"].ToString());
                                webvo.Paymentflag = dsdept.Tables[0].Rows[0]["PaymentFlag"].ToString();
                                webvo.Bankname = dsdept.Tables[0].Rows[0]["BankName"].ToString();
                                webvo.Transactionno = dsdept.Tables[0].Rows[0]["TransactionNO"].ToString();
                                webvo.TransactionDate = dsdept.Tables[0].Rows[0]["TransactionDate"].ToString();
                                int receiptno = 0;
                                bool recepit;
                                //bool recepit;
                                DataSet dsdeptattachments = new DataSet();
                                dsdeptattachments = gen.getattachmentdetailsonuid(UIDNO, deptid, "");
                                string hmwssbattachments = dsdeptattachments.GetXml();
                                string documentsout = hmwssb.TsIpassUploadDocuments(hmwssbattachments);
                                outputhmwssb = hmwssb.SubmitApplication(webvo.UID_No, webvo.intQuessionaireid, true, webvo.intEnterpreneurid, true, webvo.NameofthePromoter, webvo.Door_No, webvo.STREET,
                                    webvo.AreaName, webvo.Pincode, webvo.TelephoneNumber, webvo.MobileNumber, webvo.Email, webvo.saleDeedPlotAreaInSqMts, true,
                                  webvo.saleDeedPlotAreaInSqYards, true, webvo.totalPlinthArea, true);
                                hmwssb.PostCollectionChargesReceipt(webvo.intQuessionaireid, true, webvo.UID_No, webvo.intEnterpreneurid, true, webvo.Amount, true, webvo.Paymentflag, webvo.Bankname,
                                    webvo.Transactionno, webvo.TransactionDate, out receiptno, out recepit);
                                if (receiptno != 0 && recepit == true)
                                {
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", Convert.ToString(receiptno), "Y");
                                    int k = gen.InsertDeptDateTracing(dsdept.Tables[0].Rows[0]["intDeptid"].ToString(), webvo.intQuessionaireid.ToString(), webvo.UID_No, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                }
                                else
                                {
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", Convert.ToString(receiptno), "N");
                                }
                                //hmwssb.PostCollectionChargesReceipt()
                                //hmwssb.SubmitApplication("uidno", "Fnam", "Houseno", "Street", "Area", "Mobile", "saleDeedPlotAreaInSqMts", "saleDeedPlotAreaInSqMtsSpecified",
                                //   "saleDeedPlotAreaInSqYards", "saleDeedPlotAreaInSqYardsSpecified", "totalPlinthArea", "totalPlinthAreaSpecified");
                                //ScriptManager.RegisterStartupScript(Page, this.GetType(), "Key", "<Script>window.open('HSRPService.aspx?Office=" + ((UserDetail)Session["objUsrDtl"]).OfficeCode + "&Date=" + DateTime.Today.ToString("dd/MM/yyyy") + "','null','height=350,width=500,status=no,toolbar=no,menubar=no,location=no');</Script>", false);
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }

                    if (deptid == "34")
                    {
                        try
                        {
                            DataSet dsdept = new DataSet();
                            DataSet dsdeptattachments = new DataSet();
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            string valuenala = dsdept.GetXml();
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                            {
                                webvo.UserId = dsdept.Tables[0].Rows[0]["UserId"].ToString();
                                webvo.Password = dsdept.Tables[0].Rows[0]["Password"].ToString();
                                webvo.LogindID = dsdept.Tables[0].Rows[0]["LogindID"].ToString();
                                webvo.ServiceID = dsdept.Tables[0].Rows[0]["ServiceID"].ToString();
                                webvo.AddressFlag = dsdept.Tables[0].Rows[0]["AddressFlag"].ToString();
                                webvo.UIDNumber = dsdept.Tables[0].Rows[0]["UIDNumber"].ToString();
                                webvo.ApplicantName = dsdept.Tables[0].Rows[0]["ApplicantName"].ToString();
                                webvo.Relation = dsdept.Tables[0].Rows[0]["Relation"].ToString();
                                webvo.FatherName = dsdept.Tables[0].Rows[0]["FatherName"].ToString();
                                webvo.Gender = dsdept.Tables[0].Rows[0]["Gender"].ToString();
                                webvo.DateOfBirth = dsdept.Tables[0].Rows[0]["DateOfBirth"].ToString();
                                webvo.PermanentDoorNo = dsdept.Tables[0].Rows[0]["PermanentDoorNo"].ToString();
                                webvo.PermanentLocality = dsdept.Tables[0].Rows[0]["PermanentLocality"].ToString();
                                webvo.PermanentDistrict = dsdept.Tables[0].Rows[0]["PermanentDistrict"].ToString();
                                webvo.PermanentMandal = dsdept.Tables[0].Rows[0]["PermanentMandal"].ToString();
                                webvo.PermanentVillage = dsdept.Tables[0].Rows[0]["PermanentVillage"].ToString();
                                webvo.PermanentPincode = dsdept.Tables[0].Rows[0]["PermanentPincode"].ToString();
                                webvo.PostalDoorNo = dsdept.Tables[0].Rows[0]["PostalDoorNo"].ToString();
                                webvo.PostalLocality = dsdept.Tables[0].Rows[0]["PostalLocality"].ToString();
                                webvo.StateId = dsdept.Tables[0].Rows[0]["StateId"].ToString();
                                webvo.PostalDistrict = dsdept.Tables[0].Rows[0]["PostalDistrict"].ToString();
                                webvo.PostalMandal = dsdept.Tables[0].Rows[0]["PostalMandal"].ToString();
                                webvo.PostalVillage = dsdept.Tables[0].Rows[0]["PostalVillage"].ToString();
                                webvo.PostalPincode = dsdept.Tables[0].Rows[0]["PostalPincode"].ToString();
                                webvo.MobileNo = dsdept.Tables[0].Rows[0]["MobileNo"].ToString();
                                webvo.PhoneNo = dsdept.Tables[0].Rows[0]["PhoneNo"].ToString();
                                webvo.EmailID = dsdept.Tables[0].Rows[0]["EmailID"].ToString();
                                webvo.Remarks = dsdept.Tables[0].Rows[0]["Remarks"].ToString();
                                webvo.RationCardNo = dsdept.Tables[0].Rows[0]["RationCardNo"].ToString();
                                webvo.AadhaarNo = dsdept.Tables[0].Rows[0]["AadhaarNo"].ToString();
                                webvo.DeliveryType = dsdept.Tables[0].Rows[0]["DeliveryType"].ToString();
                                webvo.Doc_District = dsdept.Tables[0].Rows[0]["Doc_District"].ToString();
                                webvo.Doc_Mandal = dsdept.Tables[0].Rows[0]["Doc_Mandal"].ToString();
                                webvo.Doc_Village = dsdept.Tables[0].Rows[0]["Doc_Village"].ToString();
                                webvo.Purpose = dsdept.Tables[0].Rows[0]["Purpose"].ToString();
                                webvo.ServiceCharge = dsdept.Tables[0].Rows[0]["ServiceCharge"].ToString();
                                webvo.UserCharge = dsdept.Tables[0].Rows[0]["UserCharge"].ToString();
                                webvo.PostalCharge = dsdept.Tables[0].Rows[0]["PostalCharge"].ToString();
                                webvo.TotalAmount = dsdept.Tables[0].Rows[0]["TotalAmount"].ToString();
                                webvo.GridDetails = dsdept.Tables[0].Rows[0]["GridDetails"].ToString();
                                webvo.QuestionaireId = dsdept.Tables[0].Rows[0]["QuestionaireId"].ToString();
                                webvo.EntrepreneurId = dsdept.Tables[0].Rows[0]["EntrepreneurId"].ToString();
                                DataSet dsdeptattachmentsfire = new DataSet();
                                dsdeptattachmentsfire = gen.getattachmentdetailsonuid(UIDNO, deptid, "");
                                if (dsdeptattachmentsfire != null && dsdeptattachmentsfire.Tables.Count > 0 && dsdeptattachmentsfire.Tables[0].Rows.Count > 0)
                                {
                                    if (dsdeptattachmentsfire.Tables[0].Rows[0]["Description"] == "Self Certification Form")
                                    {
                                        webvo.certificateform = dsdeptattachmentsfire.Tables[0].Rows[0]["Filepath"].ToString();
                                    }
                                    if (dsdeptattachmentsfire.Tables[1].Rows.Count > 0)
                                    {
                                        if (dsdeptattachmentsfire.Tables[1].Rows[0]["Description"] == "Registration Deed")
                                        {
                                            webvo.landrelated = dsdeptattachmentsfire.Tables[1].Rows[0]["Filepath"].ToString();
                                        }
                                    }
                                    if (dsdeptattachmentsfire.Tables[2].Rows.Count > 0)
                                    {
                                        if (dsdeptattachmentsfire.Tables[2].Rows[0]["Description"] == "PAN / AADHAAR")
                                        {
                                            webvo.idproof = dsdeptattachmentsfire.Tables[2].Rows[0]["Filepath"].ToString();
                                        }
                                    }
                                    if (dsdeptattachmentsfire.Tables[3].Rows.Count > 0)
                                    {
                                        if (dsdeptattachmentsfire.Tables[3].Rows[0]["Description"] == "Combined site plan")
                                        {
                                            webvo.docapplicationform = dsdeptattachmentsfire.Tables[3].Rows[0]["Filepath"].ToString();
                                        }
                                    }

                                }
                                string outputnala = nalaservice.GetLandConversionTransactionNo(webvo.UserId, webvo.Password, webvo.LogindID, webvo.ServiceID, webvo.AddressFlag, webvo.UIDNumber, webvo.ApplicantName,
      webvo.Relation, webvo.FatherName, webvo.Gender, webvo.DateOfBirth, webvo.PermanentDoorNo, webvo.PermanentLocality, webvo.PermanentDistrict, webvo.PermanentMandal, webvo.PermanentVillage,
      webvo.PermanentPincode, webvo.PostalDoorNo, webvo.PostalLocality, webvo.StateId, webvo.PostalDistrict, webvo.PostalMandal, webvo.PostalVillage, webvo.PostalPincode, webvo.MobileNo,
      webvo.PhoneNo, webvo.EmailID, webvo.Remarks, webvo.RationCardNo, webvo.AadhaarNo, webvo.DeliveryType, webvo.Doc_District, webvo.Doc_Mandal, webvo.Doc_Village, webvo.Purpose,
      webvo.ServiceCharge, webvo.UserCharge, webvo.PostalCharge, webvo.TotalAmount, webvo.GridDetails, webvo.QuestionaireId, webvo.EntrepreneurId, webvo.docapplicationform, webvo.landrelated, webvo.certificateform, webvo.idproof);
                                StringReader str = new StringReader(outputnala);
                                DataSet dsout = new DataSet();
                                dsout.ReadXml(str);
                                if (dsout != null && dsout.Tables.Count > 0 && dsout.Tables[0].Rows.Count > 0)
                                {
                                    if (dsout.Tables[0].Columns.Contains("ResponseCode"))
                                    {
                                        if (dsout.Tables[0].Rows[0]["ResponseCode"].ToString() == "100")
                                        {
                                            string cclaout = dsout.Tables[0].Rows[0]["ResponseCode"].ToString() + ',' + dsout.Tables[0].Rows[0]["ResponseDesc"].ToString();
                                            gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", cclaout, "Y");
                                            int k = gen.InsertDeptDateTracing(dsdept.Tables[0].Rows[0]["intDeptid"].ToString(), webvo.QuestionaireId.ToString(), webvo.UIDNumber, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                        }
                                        else
                                        {
                                            string cclaouterror = dsout.Tables[0].Rows[0]["ResponseCode"].ToString() + ',' + dsout.Tables[0].Rows[0]["ResponseDesc"].ToString();
                                            gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", cclaouterror, "N");
                                        }
                                    }
                                }

                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    if (deptid == "47")
                    {
                        try
                        {
                            DataSet dsdept = new DataSet();
                            DataSet dsdeptattachments = new DataSet();
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            LabourService.act labouract = new LabourService.act();
                            LabourService.actsResponse labourout = new LabourService.actsResponse();
                            LabourService.contractLabourPrincipalEmployer contractvo = new LabourService.contractLabourPrincipalEmployer();
                            LabourService.buildingotherconstructions labour = new LabourService.buildingotherconstructions();
                            LabourService.ismwPrincipalEmployer migrateemployer = new LabourService.ismwPrincipalEmployer();

                            string actids = "";
                            string actid = "";
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                            {
                                actids = dsdept.Tables[0].Rows[0]["LabourAct_Id"].ToString();

                                string[] split = actids.Split(',');
                                if (actids.Contains("2"))//The Buildings & Other Construction Workers Act
                                {
                                    labouract.buildingRegistrationActSelected = true;
                                    labour.actID = dsdept.Tables[0].Rows[0]["actID"].ToString();
                                    labour.bank_code = dsdept.Tables[0].Rows[0]["bank_code"].ToString();
                                    labour.bank_ref_number = dsdept.Tables[0].Rows[0]["OnlineOrderNo"].ToString();
                                    labour.bankName = dsdept.Tables[0].Rows[0]["BankName"].ToString();
                                    labour.cin = dsdept.Tables[0].Rows[0]["cin"].ToString();
                                    labour.compound_fee = 0;// dsdept.Tables[0].Columns[""].ToString();
                                    labour.date_commencement = dsdept.Tables[0].Rows[0]["Form1_1_DateofCommencement"].ToString();
                                    labour.date_completion = dsdept.Tables[0].Rows[0]["Form1_2_Est_Compltd_Dt"].ToString();
                                    labour.entrepreneur_id = dsdept.Tables[0].Rows[0]["intCFEEnterpid"].ToString();
                                    labour.establishment_full_name = dsdept.Tables[0].Rows[0]["Form1_Estb_Name"].ToString();
                                    labour.establishment_name = dsdept.Tables[0].Rows[0]["NAME"].ToString();
                                    labour.establishment_permanent_district = dsdept.Tables[0].Rows[0]["Form1_2_Per_District"].ToString();
                                    labour.establishment_permanent_door = dsdept.Tables[0].Rows[0]["Form1_2_Per_DoorNo"].ToString();
                                    labour.establishment_permanent_mandal = dsdept.Tables[0].Rows[0]["Form1_2_Per_Mandal"].ToString();
                                    labour.establishment_permanent_pincode = dsdept.Tables[0].Rows[0]["Form1_2_Per_PinCode"].ToString();
                                    labour.establishment_permanent_village = dsdept.Tables[0].Rows[0]["Form1_2_Per_Village"].ToString();
                                    labour.establishment_postal_district = dsdept.Tables[0].Rows[0]["Form1_Estd_District"].ToString();
                                    labour.establishment_postal_door = dsdept.Tables[0].Rows[0]["Form1_Estd_DoorNo"].ToString();
                                    labour.establishment_postal_locality = dsdept.Tables[0].Rows[0]["Form1_Estd_Locality"].ToString();
                                    labour.establishment_postal_mandal = dsdept.Tables[0].Rows[0]["Form1_Estd_Mandal"].ToString();
                                    labour.establishment_postal_pincode = dsdept.Tables[0].Rows[0]["Form1_Estd_PinCode"].ToString();
                                    labour.establishment_postal_village = dsdept.Tables[0].Rows[0]["Form1_Estd_Village"].ToString();
                                    labour.manager_agent_designation = dsdept.Tables[0].Rows[0]["Form1_1_Manager_Designation"].ToString();
                                    labour.manager_agent_district = dsdept.Tables[0].Rows[0]["Form1_1_Manager_District"].ToString();
                                    labour.manager_agent_door = dsdept.Tables[0].Rows[0]["Form1_1_Manager_DoorNo"].ToString();
                                    labour.manager_agent_email = dsdept.Tables[0].Rows[0]["Form1_Manager_EMail"].ToString();
                                    labour.manager_agent_fathername = dsdept.Tables[0].Rows[0]["Form1_1_Manager_FatherName"].ToString();
                                    labour.manager_agent_mandal = dsdept.Tables[0].Rows[0]["Form1_1_Manager_Mandal"].ToString();
                                    labour.manager_agent_mobile = dsdept.Tables[0].Rows[0]["Form1_Manager_MobileNo"].ToString();
                                    labour.manager_agent_name = dsdept.Tables[0].Rows[0]["Form1_1_Manager_Name"].ToString();
                                    labour.manager_agent_street = dsdept.Tables[0].Rows[0]["Form1_1_Manager_Locality"].ToString();
                                    labour.manager_agent_village = dsdept.Tables[0].Rows[0]["Form1_1_Manager_Village"].ToString();
                                    labour.max_employees_aday = dsdept.Tables[0].Rows[0]["Form1_2_MaxWorkers"].ToString();
                                    labour.nature_work = dsdept.Tables[0].Rows[0]["Form1_Nature_of_Business"].ToString();
                                    labour.other_attachments_1 = "";//dsdept.Tables[0].Columns["other_attachments_1"].ToString();
                                    labour.other_attachments_2 = "";// dsdept.Tables[0].Columns["other_attachments_2"].ToString();
                                    labour.payment_mode = dsdept.Tables[0].Rows[0]["payment_mode"].ToString();
                                    labour.paymentFlag = dsdept.Tables[0].Rows[0]["paymentFlag"].ToString();
                                    labour.penality_percentage = Convert.ToInt32(dsdept.Tables[0].Rows[0]["penality_percentage"].ToString());
                                    labour.penality_years = Convert.ToInt32(dsdept.Tables[0].Rows[0]["penality_years"].ToString());
                                    labour.projectSubmitDate = dsdept.Tables[0].Rows[0]["projectSubmitDate"].ToString();
                                    labour.questionnaire_id = dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString();
                                    labour.registration_fee = Convert.ToInt32(dsdept.Tables[0].Rows[0]["registration_fee"].ToString());
                                    labour.registration_years = Convert.ToInt32(dsdept.Tables[0].Rows[0]["registration_years"].ToString());
                                    labour.stageID = dsdept.Tables[0].Rows[0]["stageID"].ToString();
                                    labour.total_amount_payable = Convert.ToInt32(dsdept.Tables[0].Rows[0]["total_amount_payable"].ToString());
                                    labour.total_penality_amount = Convert.ToInt32(dsdept.Tables[0].Rows[0]["total_penality_amount"].ToString());
                                    labour.total_registration_fee = Convert.ToInt32(dsdept.Tables[0].Rows[0]["total_registration_fee"].ToString());
                                    labour.totalAmount = dsdept.Tables[0].Rows[0]["totalAmount"].ToString();
                                    labour.transaction_for = dsdept.Tables[0].Rows[0]["transaction_for"].ToString();
                                    labour.transaction_id = dsdept.Tables[0].Rows[0]["OnlineOrderNo"].ToString();
                                    labour.transaction_status = "Y";
                                    labour.transactionDate = dsdept.Tables[0].Rows[0]["transactionDate"].ToString();
                                    //labour.tsipassApplicationID = dsdept.Tables[0].Rows[0]["tsipassApplicationID"].ToString();
                                    labour.type_of_application = dsdept.Tables[0].Rows[0]["type_of_application"].ToString();
                                    labour.uID = dsdept.Tables[0].Rows[0]["UID_NO"].ToString();
                                    labour.unpaid_balance_welfare = Convert.ToInt32(dsdept.Tables[0].Rows[0]["unpaid_balance_welfare"].ToString());
                                    labour.valid_from_date = dsdept.Tables[0].Rows[0]["Form1_1_DateofCommencement"].ToString();
                                    labour.valid_to_date = dsdept.Tables[0].Rows[0]["Form1_2_Est_Compltd_Dt"].ToString();
                                    labouract.buildingRegistrationActData = labour;

                                    labourout = labourservice.actSelected(labouract);
                                    if (labourout.status == "SUCCESS")
                                    {
                                        string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", labouroutmsg, "Y");
                                        int k = gen.InsertDeptDateTracing(dsdept.Tables[0].Rows[0]["DEPTID"].ToString(), dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), labour.uID, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                    }
                                    else
                                    {
                                        string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", labourouterrormsg, "N");
                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    if (deptid == "48")
                    {
                        try
                        {
                            DataSet dsdept = new DataSet();
                            DataSet dsdeptattachments = new DataSet();
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            LabourService.act labouract = new LabourService.act();
                            LabourService.actsResponse labourout = new LabourService.actsResponse();
                            LabourService.contractLabourPrincipalEmployer contractvo = new LabourService.contractLabourPrincipalEmployer();
                            LabourService.buildingotherconstructions labour = new LabourService.buildingotherconstructions();
                            LabourService.ismwPrincipalEmployer migrateemployer = new LabourService.ismwPrincipalEmployer();



                            string actids = "";
                            string actid = "";
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                            {
                                actids = dsdept.Tables[0].Rows[0]["LabourAct_Id"].ToString();
                                string[] split = actids.Split(',');
                                if (actids.Contains("3"))//The Contract Labour Act (Principal Employer)
                                {

                                    labouract.contractLabourPrincipalEmplyerActSelected = true;
                                    contractvo.actID = "CPF";
                                    contractvo.bank_code = dsdept.Tables[0].Rows[0]["bank_code"].ToString();
                                    contractvo.bank_ref_number = dsdept.Tables[0].Rows[0]["OnlineOrderNo"].ToString();
                                    contractvo.bankName = dsdept.Tables[0].Rows[0]["BankName"].ToString();
                                    contractvo.cin = dsdept.Tables[0].Rows[0]["cin"].ToString();
                                    contractvo.compound_fee = 0;
                                    contractvo.employees_attachement = "";//dsdept.Tables[0].Rows[0][""].ToString();
                                    contractvo.entrepreneur_id = dsdept.Tables[0].Rows[0]["intCFEEnterpid"].ToString();
                                    contractvo.establishment_category = dsdept.Tables[0].Rows[0]["Form1_1_Estb_Category"].ToString();
                                    contractvo.establishment_category_others = dsdept.Tables[0].Rows[0]["Form1_1_Estb_Classification"].ToString();
                                    contractvo.establishment_name = dsdept.Tables[0].Rows[0]["Form1_Estb_Name"].ToString();
                                    contractvo.establishment_postal_district = dsdept.Tables[0].Rows[0]["Form1_Estd_District"].ToString();
                                    contractvo.establishment_postal_door = dsdept.Tables[0].Rows[0]["Form1_Estd_DoorNo"].ToString();
                                    contractvo.establishment_postal_locality = dsdept.Tables[0].Rows[0]["Form1_Estd_Locality"].ToString();
                                    contractvo.establishment_postal_mandal = dsdept.Tables[0].Rows[0]["Form1_Estd_Mandal"].ToString();
                                    contractvo.establishment_postal_village = dsdept.Tables[0].Rows[0]["Form1_Estd_Village"].ToString();
                                    contractvo.manager_agent_district = dsdept.Tables[0].Rows[0]["Form1_1_Manager_District"].ToString();
                                    contractvo.manager_agent_door = dsdept.Tables[0].Rows[0]["Form1_1_Manager_DoorNo"].ToString();
                                    contractvo.manager_agent_mandal = dsdept.Tables[0].Rows[0]["Form1_1_Manager_Mandal"].ToString();
                                    contractvo.manager_agent_name = dsdept.Tables[0].Rows[0]["Form1_1_Manager_Name"].ToString();
                                    contractvo.manager_agent_village = dsdept.Tables[0].Rows[0]["Form1_1_Manager_Village"].ToString();
                                    contractvo.max_employees_aday = dsdept.Tables[0].Rows[0]["Form1_2_MaxWorkers"].ToString();
                                    contractvo.nature_work = dsdept.Tables[0].Rows[0]["Form1_Nature_of_Business"].ToString();
                                    contractvo.other_attachments_1 = "";
                                    contractvo.other_attachments_2 = "";
                                    contractvo.payment_mode = dsdept.Tables[0].Rows[0]["payment_mode"].ToString();
                                    contractvo.paymentFlag = dsdept.Tables[0].Rows[0]["paymentFlag"].ToString();
                                    contractvo.penality_percentage = 0;//Convert.ToInt32(dsdept.Tables[0].Rows[0]["penality_percentage"].ToString());
                                    contractvo.penality_years = 0;//Convert.ToInt32(dsdept.Tables[0].Rows[0]["penality_years"].ToString());
                                    //contractvo.previous_registered_act = dsdept.Tables[0].Rows[0][""].ToString();
                                    //contractvo.previous_registration_certificate = dsdept.Tables[0].Rows[0][""].ToString();
                                    //contractvo.previous_registration_no = dsdept.Tables[0].Rows[0][""].ToString();
                                    contractvo.principal_employer_district = dsdept.Tables[0].Rows[0]["Form1_Employer_District"].ToString();
                                    contractvo.principal_employer_door = dsdept.Tables[0].Rows[0]["Form1_Employer_DoorNo"].ToString();
                                    contractvo.principal_employer_email = dsdept.Tables[0].Rows[0]["Form1_Employer_EmailID"].ToString();
                                    contractvo.principal_employer_fathername = dsdept.Tables[0].Rows[0]["Form1_Empolyer_FatherName"].ToString();
                                    contractvo.principal_employer_mandal = dsdept.Tables[0].Rows[0]["Form1_Employer_Mandal"].ToString();
                                    contractvo.principal_employer_mobile = dsdept.Tables[0].Rows[0]["Form1_Employer_MobileNo"].ToString();
                                    contractvo.principal_employer_name = dsdept.Tables[0].Rows[0]["Form1_Employer_Name"].ToString();
                                    contractvo.principal_employer_village = dsdept.Tables[0].Rows[0]["Form1_Employer_Village"].ToString();
                                    contractvo.projectSubmitDate = dsdept.Tables[0].Rows[0]["projectSubmitDate"].ToString();
                                    contractvo.questionnaire_id = dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString();
                                    contractvo.registration_fee = Convert.ToInt32(dsdept.Tables[0].Rows[0]["registration_fee"].ToString());
                                    contractvo.registration_years = 0;
                                    contractvo.stageID = dsdept.Tables[0].Rows[0]["intStageid"].ToString();
                                    contractvo.total_amount_payable = Convert.ToInt32(dsdept.Tables[0].Rows[0]["total_amount_payable"].ToString());
                                    contractvo.total_penality_amount = 0;
                                    contractvo.total_registration_fee = Convert.ToInt32(dsdept.Tables[0].Rows[0]["registration_fee"].ToString());
                                    contractvo.totalAmount = dsdept.Tables[0].Rows[0]["total_amount_payable"].ToString();
                                    contractvo.transaction_for = dsdept.Tables[0].Rows[0]["transaction_for"].ToString();
                                    contractvo.transaction_id = dsdept.Tables[0].Rows[0]["OnlineOrderNo"].ToString();
                                    contractvo.transaction_status = "Y";//dsdept.Tables[0].Rows[0][""].ToString();
                                    contractvo.transactionDate = dsdept.Tables[0].Rows[0]["transactionDate"].ToString();
                                    contractvo.transactionNumber = dsdept.Tables[0].Rows[0]["OnlineOrderNo"].ToString();
                                    //contractvo.tsipassApplicationID = dsdept.Tables[0].Rows[0][""].ToString();
                                    contractvo.type_of_application = dsdept.Tables[0].Rows[0]["type_of_application"].ToString();
                                    contractvo.uID = dsdept.Tables[0].Rows[0]["UID_NO"].ToString();
                                    contractvo.unpaid_balance_welfare = Convert.ToInt32(dsdept.Tables[0].Rows[0]["unpaid_balance_welfare"].ToString());
                                    contractvo.valid_from_date = dsdept.Tables[0].Rows[0]["Form1_1_DateofCommencement"].ToString();
                                    contractvo.valid_to_date = dsdept.Tables[0].Rows[0]["Form1_2_Est_Compltd_Dt"].ToString();

                                    LabourService.contractLabourPrincipalEmployerMultiData[] contractmulti = null;

                                    //contractvo.contractorParticulars[] lstitem = null;
                                    ContractorDetails co = new ContractorDetails();
                                    //FactoryService.rawMaterial[] lst = null;
                                    if (dsdept.Tables[1].Rows.Count > 0)
                                    {
                                        DataTable dtraw = new DataTable();
                                        dtraw = dsdept.Tables[1];
                                        contractmulti = new LabourService.contractLabourPrincipalEmployerMultiData[dtraw.Rows.Count];

                                        for (int k = 0; k < dtraw.Rows.Count; k++)
                                        {
                                            //FactoryService.rawMaterial BBB = new FactoryService.rawMaterial();
                                            LabourService.contractLabourPrincipalEmployerMultiData coc = new LabourService.contractLabourPrincipalEmployerMultiData();
                                            coc.contractorAddress = dtraw.Rows[k]["Contractor_Address"].ToString();
                                            coc.commencementDate = dtraw.Rows[k]["Contractor_Est_Commence_Dt"].ToString();
                                            coc.terminationDate = dtraw.Rows[k]["Contractor_Est_Compltd_Dt"].ToString();
                                            //coc.m = dtraw.Rows[k]["Contractor_MobileNo"].ToString();
                                            coc.contractorName = dtraw.Rows[k]["Contractor_Name"].ToString();
                                            coc.maxcontractLabour = dtraw.Rows[k]["Contractor_MaxWorkers"].ToString();
                                            coc.natureOfWork = dtraw.Rows[k]["Contractor_Work_Nature"].ToString();
                                            coc.manufacturingDeptDetails = dtraw.Rows[k]["Contractor_ManufacturingDepts"].ToString();
                                            contractmulti[k] = coc;
                                            //factoryvo.rawMaterials[k].materialDescr = dtraw.Rows[k]["Raw_ItemName"].ToString();
                                            //rawvo.materialDescr = dtraw.Rows[i]["Raw_ItemName"].ToString();
                                        }
                                        contractvo.contractorParticulars = contractmulti;
                                        //rawvo.materialDescr
                                    }

                                    labouract.contractLabourPrincipalEmplyerActData = contractvo;
                                    labourout = labourservice.actSelected(labouract);
                                    if (labourout.status == "SUCCESS")
                                    {
                                        string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", labouroutmsg, "Y");
                                        int k = gen.InsertDeptDateTracing(dsdept.Tables[0].Rows[0]["DEPTID"].ToString(), dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), contractvo.uID, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                    }
                                    else
                                    {
                                        string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", labourouterrormsg, "N");
                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    if (deptid == "49")
                    {
                        try
                        {
                            DataSet dsdept = new DataSet();
                            DataSet dsdeptattachments = new DataSet();
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            LabourService.act labouract = new LabourService.act();
                            LabourService.actsResponse labourout = new LabourService.actsResponse();
                            LabourService.contractLabourPrincipalEmployer contractvo = new LabourService.contractLabourPrincipalEmployer();
                            LabourService.buildingotherconstructions labour = new LabourService.buildingotherconstructions();
                            LabourService.ismwPrincipalEmployer migrateemployer = new LabourService.ismwPrincipalEmployer();

                            string actids = "";
                            string actid = "";
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                            {
                                actids = dsdept.Tables[0].Rows[0]["LabourAct_Id"].ToString();
                                string[] split = actids.Split(',');

                                if (actids.Contains("4"))//Principal Employer Registration Under InterState Migrant Workman Act
                                {
                                    labouract.interstateMigrantPrincipalEmplyerActSelected = true;
                                    migrateemployer.actID = "ISMWPEF";
                                    migrateemployer.bank_code = dsdept.Tables[0].Rows[0]["bank_code"].ToString();
                                    migrateemployer.bank_ref_number = dsdept.Tables[0].Rows[0]["OnlineOrderNo"].ToString();
                                    migrateemployer.bankName = dsdept.Tables[0].Rows[0]["BankName"].ToString();
                                    migrateemployer.cin = dsdept.Tables[0].Rows[0]["cin"].ToString();
                                    migrateemployer.compound_fee = 0;
                                    migrateemployer.director_district = dsdept.Tables[0].Rows[0]["Form1_4_Dir_District"].ToString();
                                    migrateemployer.director_door = dsdept.Tables[0].Rows[0]["Form1_4_Dir_DoorNo"].ToString();
                                    migrateemployer.director_mandal = dsdept.Tables[0].Rows[0]["Form1_4_Dir_Mandal"].ToString();
                                    migrateemployer.director_name = dsdept.Tables[0].Rows[0]["Form1_4_Dir_FullName"].ToString();
                                    migrateemployer.director_village = dsdept.Tables[0].Rows[0]["Form1_4_Dir_Village"].ToString();
                                    migrateemployer.employees_attachement = "";
                                    migrateemployer.entrepreneur_id = dsdept.Tables[0].Rows[0]["intCFEEnterpid"].ToString();
                                    migrateemployer.establishment_category = dsdept.Tables[0].Rows[0]["Form1_1_Estb_Category"].ToString();
                                    migrateemployer.establishment_category_others = dsdept.Tables[0].Rows[0]["Form1_1_Estb_Classification"].ToString();
                                    migrateemployer.establishment_name = dsdept.Tables[0].Rows[0]["Form1_Estb_Name"].ToString();
                                    migrateemployer.establishment_postal_district = dsdept.Tables[0].Rows[0]["Form1_Estd_District"].ToString();
                                    migrateemployer.establishment_postal_door = dsdept.Tables[0].Rows[0]["Form1_Estd_DoorNo"].ToString();
                                    migrateemployer.establishment_postal_locality = dsdept.Tables[0].Rows[0]["Form1_Estd_Locality"].ToString();
                                    migrateemployer.establishment_postal_mandal = dsdept.Tables[0].Rows[0]["Form1_Estd_Mandal"].ToString();
                                    migrateemployer.establishment_postal_village = dsdept.Tables[0].Rows[0]["Form1_Estd_Village"].ToString();
                                    migrateemployer.ipass_status_id = dsdept.Tables[0].Rows[0]["intStageid"].ToString();
                                    migrateemployer.manager_agent_district = dsdept.Tables[0].Rows[0]["Form1_1_Manager_District"].ToString();
                                    migrateemployer.manager_agent_door = dsdept.Tables[0].Rows[0]["Form1_1_Manager_DoorNo"].ToString();
                                    migrateemployer.manager_agent_mandal = dsdept.Tables[0].Rows[0]["Form1_1_Manager_Mandal"].ToString();
                                    migrateemployer.manager_agent_name = dsdept.Tables[0].Rows[0]["Form1_1_Manager_Name"].ToString();
                                    migrateemployer.manager_agent_village = dsdept.Tables[0].Rows[0]["Form1_1_Manager_Village"].ToString();
                                    migrateemployer.max_employees_aday = dsdept.Tables[0].Rows[0]["Form1_2_MaxWorkers"].ToString();
                                    migrateemployer.nature_work = dsdept.Tables[0].Rows[0]["Form1_Nature_of_Business"].ToString();
                                    migrateemployer.other_attachments_1 = "";
                                    migrateemployer.other_attachments_2 = "";
                                    migrateemployer.payment_mode = dsdept.Tables[0].Rows[0]["payment_mode"].ToString();
                                    migrateemployer.paymentFlag = dsdept.Tables[0].Rows[0]["paymentFlag"].ToString();
                                    migrateemployer.penality_percentage = 0;
                                    migrateemployer.penality_years = 0;
                                    migrateemployer.previous_registered_act = "";
                                    migrateemployer.previous_registration_certificate = "";
                                    migrateemployer.previous_registration_no = "";
                                    migrateemployer.principal_employer_district = dsdept.Tables[0].Rows[0]["Form1_Employer_District"].ToString();
                                    migrateemployer.principal_employer_door = dsdept.Tables[0].Rows[0]["Form1_Employer_DoorNo"].ToString();
                                    migrateemployer.principal_employer_email = dsdept.Tables[0].Rows[0]["Form1_Employer_EmailID"].ToString();
                                    migrateemployer.principal_employer_fathername = dsdept.Tables[0].Rows[0]["Form1_Empolyer_FatherName"].ToString();
                                    migrateemployer.principal_employer_mandal = dsdept.Tables[0].Rows[0]["Form1_Employer_Mandal"].ToString();
                                    migrateemployer.principal_employer_mobile = dsdept.Tables[0].Rows[0]["Form1_Employer_MobileNo"].ToString();
                                    migrateemployer.principal_employer_name = dsdept.Tables[0].Rows[0]["Form1_Employer_Name"].ToString();
                                    migrateemployer.principal_employer_village = dsdept.Tables[0].Rows[0]["Form1_Employer_Village"].ToString();
                                    migrateemployer.projectSubmitDate = dsdept.Tables[0].Rows[0]["projectSubmitDate"].ToString();
                                    migrateemployer.questionnaire_id = dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString();
                                    migrateemployer.registration_fee = Convert.ToInt32(dsdept.Tables[0].Rows[0]["registration_fee"].ToString());
                                    migrateemployer.registration_years = 0;
                                    migrateemployer.stageID = dsdept.Tables[0].Rows[0]["intStageid"].ToString();
                                    migrateemployer.total_amount_payable = Convert.ToInt32(dsdept.Tables[0].Rows[0]["total_amount_payable"].ToString());
                                    migrateemployer.total_penality_amount = 0;
                                    migrateemployer.total_registration_fee = Convert.ToInt32(dsdept.Tables[0].Rows[0]["registration_fee"].ToString());
                                    migrateemployer.totalAmount = dsdept.Tables[0].Rows[0]["total_amount_payable"].ToString();
                                    migrateemployer.transaction_for = dsdept.Tables[0].Rows[0]["transaction_for"].ToString();
                                    migrateemployer.transaction_id = dsdept.Tables[0].Rows[0]["OnlineOrderNo"].ToString();
                                    migrateemployer.transaction_status = "Y";
                                    migrateemployer.transactionDate = dsdept.Tables[0].Rows[0]["transactionDate"].ToString();
                                    migrateemployer.transactionNumber = dsdept.Tables[0].Rows[0]["OnlineOrderNo"].ToString();
                                    migrateemployer.type_of_application = dsdept.Tables[0].Rows[0]["type_of_application"].ToString();
                                    migrateemployer.uID = dsdept.Tables[0].Rows[0]["UID_NO"].ToString();
                                    migrateemployer.unpaid_balance_welfare = Convert.ToInt32(dsdept.Tables[0].Rows[0]["unpaid_balance_welfare"].ToString());
                                    migrateemployer.valid_from_date = dsdept.Tables[0].Rows[0]["Form1_1_DateofCommencement"].ToString();
                                    migrateemployer.valid_to_date = dsdept.Tables[0].Rows[0]["Form1_2_Est_Compltd_Dt"].ToString();

                                    LabourService.ismwPrincipalEmployerMultiData[] migrantvo = null;
                                    ContractorDetails co = new ContractorDetails();
                                    //FactoryService.rawMaterial[] lst = null;
                                    if (dsdept.Tables[1].Rows.Count > 0)
                                    {
                                        DataTable dtraw = new DataTable();
                                        dtraw = dsdept.Tables[1];
                                        migrantvo = new LabourService.ismwPrincipalEmployerMultiData[dtraw.Rows.Count];

                                        for (int k = 0; k < dtraw.Rows.Count; k++)
                                        {
                                            //FactoryService.rawMaterial BBB = new FactoryService.rawMaterial();
                                            LabourService.ismwPrincipalEmployerMultiData coc = new LabourService.ismwPrincipalEmployerMultiData();
                                            coc.contractorAddress = dtraw.Rows[k]["Contractor_Address"].ToString();
                                            coc.commencementDate = dtraw.Rows[k]["Contractor_Est_Commence_Dt"].ToString();
                                            coc.terminationDate = dtraw.Rows[k]["Contractor_Est_Compltd_Dt"].ToString();
                                            //coc.m = dtraw.Rows[k]["Contractor_MobileNo"].ToString();
                                            coc.contractorName = dtraw.Rows[k]["Contractor_Name"].ToString();
                                            coc.maxcontractLabour = dtraw.Rows[k]["Contractor_MaxWorkers"].ToString();
                                            coc.natureOfWork = dtraw.Rows[k]["Contractor_Work_Nature"].ToString();
                                            coc.manufacturingDeptDetails = dtraw.Rows[k]["Contractor_ManufacturingDepts"].ToString();
                                            coc.mobileNo = dtraw.Rows[k]["Contractor_MobileNo"].ToString();
                                            migrantvo[k] = coc;
                                            //factoryvo.rawMaterials[k].materialDescr = dtraw.Rows[k]["Raw_ItemName"].ToString();
                                            //rawvo.materialDescr = dtraw.Rows[i]["Raw_ItemName"].ToString();
                                        }
                                        migrateemployer.contractorParticulars = migrantvo;
                                        //rawvo.materialDescr
                                    }

                                    labouract.interstateMigrantPrincipalEmplyerActData = migrateemployer;
                                    labourout = labourservice.actSelected(labouract);
                                    if (labourout.status == "SUCCESS")
                                    {
                                        string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", labouroutmsg, "Y");
                                        int k = gen.InsertDeptDateTracing(dsdept.Tables[0].Rows[0]["DEPTID"].ToString(), dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), migrateemployer.uID, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                    }
                                    else
                                    {
                                        string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", labourouterrormsg, "N");
                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    if (deptid == "8")// FIRE
                    {
                        try
                        {
                            ServicePointManager.Expect100Continue = true;
                            ServicePointManager.SecurityProtocol = //SecurityProtocolType.Tls12;
                            SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12 | SecurityProtocolType.Ssl3;
                            string valuefire = "";
                            string outputfire = "";
                            string fireattachments = "";
                            string outapplicant = "";
                            string outapplicant1 = "";
                            string outescapre = "";
                            string outputfirepayment = "";

                            DataSet dsdept = new DataSet();
                            DataSet dsfire = new DataSet();
                            DataSet dsfireescape = new DataSet();
                            DataSet dsdeptattachments = new DataSet();
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            valuefire = dsdept.GetXml();
                            string output = fire.InsertApplicantFireDetails(valuefire);
                            string[] split = output.Split('-');
                            string applid = split[1];
                            dsfire = gen.getfiremeanofescapedetailsonuid(UIDNO, applid);
                            if (dsfire != null && dsfire.Tables.Count > 0 && dsfire.Tables[0].Rows.Count > 0)
                            {
                                DataTable dtfire = new DataTable();
                                DataTable dtfirenew = new DataTable();
                                dtfire = dsfire.Tables[1];
                                dtfirenew = dsfire.Tables[2];
                                dsfire.Tables.Remove(dtfire);
                                dsfire.Tables.Remove(dtfirenew);
                                string fireescape = "";
                                fireescape = dsfire.GetXml();
                                outescapre = fire.StoreMeansOfEscape(fireescape);
                            }
                            DataSet dsfire1 = new DataSet();
                            dsfire1 = gen.getfiremeanofescapedetailsonuid(UIDNO, applid);
                            if (dsfire1 != null && dsfire1.Tables.Count > 0 && dsfire1.Tables[0].Rows.Count > 0)
                            {
                                DataTable dtfire1 = new DataTable();
                                DataTable dtfire1new = new DataTable();
                                dtfire1 = dsfire1.Tables[0];
                                dtfire1new = dsfire1.Tables[2];
                                dsfire1.Tables.Remove(dtfire1);
                                dsfire1.Tables.Remove(dtfire1new);

                                string fireapplicant = "";
                                fireapplicant = dsfire1.GetXml();
                                outapplicant = fire.StoreFloorwiseApplicantDtls(fireapplicant);
                            }
                            DataSet dsfire2 = new DataSet();
                            dsfire2 = gen.getfiremeanofescapedetailsonuid(UIDNO, applid);
                            if (dsfire2 != null && dsfire2.Tables.Count > 0 && dsfire2.Tables[0].Rows.Count > 0)
                            {
                                DataTable dtfire2 = new DataTable();
                                DataTable dtfire2new = new DataTable();
                                dtfire2 = dsfire2.Tables[1];
                                dtfire2new = dsfire2.Tables[0];
                                dsfire2.Tables.Remove(dtfire2);
                                dsfire2.Tables.Remove(dtfire2new);

                                string firefight = "";
                                firefight = dsfire2.GetXml();
                                outapplicant1 = fire.StoreFireFightingInstallations(firefight);
                            }

                            DataSet dsdeptattachmentsfire = new DataSet();
                            dsdeptattachmentsfire = gen.getattachmentdetailsonuid(UIDNO, deptid, applid);
                            fireattachments = dsdeptattachmentsfire.GetXml();
                            outputfire = fire.StoreUploadDocuments(fireattachments);
                            //StringReader str1 = new StringReader(outputfire);
                            //DataSet dsout1 = new DataSet();
                            //dsout1.ReadXml(str1);
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[1].Rows.Count > 0)
                            {
                                string UIDNo = dsdept.Tables[1].Rows[0]["UIDNO"].ToString();
                                string amount = dsdept.Tables[1].Rows[0]["Online_Amount"].ToString();
                                string date = dsdept.Tables[1].Rows[0]["TransactionDate"].ToString();
                                string bankName = dsdept.Tables[1].Rows[0]["BankName"].ToString();
                                string challanNumber = dsdept.Tables[1].Rows[0]["TransactionNO"].ToString();
                                string paymentStatus = dsdept.Tables[1].Rows[0]["PaymentFlag"].ToString();
                                string systemIP = "0.0.0.0";//dsdept.Tables[0].Rows[0]["UIDNO"].ToString();
                                                            //string userID = dsdept.Tables[0].Rows[0]["Created_by"].ToString();

                                outputfirepayment = fire.PaymentDetails(UIDNo, challanNumber, date, bankName, amount);
                            }

                            if (split[0] == "Success" && outescapre == "Success" && outapplicant == "Success" && outapplicant1 == "Success" && outputfire == "Success" && outputfirepayment == "Success")
                            {
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "A", outapplicant, "Y");
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", outapplicant, "Y");
                                int k = gen.InsertDeptDateTracing(dsdept.Tables[0].Rows[0]["DEPTID"].ToString(), dsdept.Tables[0].Rows[0]["QuestionnaireId"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                            }
                            else
                            {
                                string outputerror = split[0].ToString() + ',' + outescapre + ',' + outapplicant + ',' + outapplicant1 + ',' + outputfire;
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", outputerror, "N");
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    if (deptid == "4" || deptid == "41")//NPDCL
                    {
                        try
                        {
                            string valueNPDCL = "";
                            string outputnpdcl = "";
                            string npdclattachments = "";
                            DataSet dsdept = new DataSet();
                            DataSet dsdeptattachments = new DataSet();
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            valueNPDCL = dsdept.GetXml();
                            outputnpdcl = tsnpdcl.insertTsipassUidDetaisls(valueNPDCL);
                            StringReader str = new StringReader(outputnpdcl);
                            DataSet dsout = new DataSet();
                            dsout.ReadXml(str);
                            if (dsout != null && dsout.Tables.Count > 0 && dsout.Tables[0].Rows.Count > 0)
                            {
                                if (dsout.Tables[0].Columns.Contains("status"))
                                {
                                    if (dsout.Tables[0].Rows[0]["status"].ToString() == "S")
                                    {
                                        string npdclout = dsout.Tables[0].Rows[0]["status"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", npdclout, "Y");
                                    }
                                    else
                                    {
                                        string npdclouterror = dsout.Tables[0].Rows[0]["status"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", npdclouterror, "N");
                                    }
                                }
                            }
                            dsdeptattachments = gen.getattachmentdetailsonuid(UIDNO, deptid, "");
                            npdclattachments = dsdeptattachments.GetXml();
                            outputnpdcl = tsnpdcl.insertAllAttachments(npdclattachments);
                            StringReader str1 = new StringReader(outputnpdcl);
                            DataSet dsout1 = new DataSet();
                            dsout1.ReadXml(str1);
                            if (dsout1 != null && dsout1.Tables.Count > 0 && dsout1.Tables[0].Rows.Count > 0)
                            {
                                if (dsout1.Tables[0].Columns.Contains("status"))
                                {
                                    if (dsout1.Tables[0].Rows[0]["status"].ToString() == "S")
                                    {
                                        string npdclsattachment = dsout1.Tables[0].Rows[0]["status"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "A", npdclsattachment, "Y");
                                        int k = gen.InsertDeptDateTracing(dsdept.Tables[0].Rows[0]["deptId"].ToString(), dsdept.Tables[0].Rows[0]["questionniareId"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                    }
                                    else
                                    {
                                        string npdclsattachmenterror = dsout1.Tables[0].Rows[0]["status"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "A", npdclsattachmenterror, "N");
                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    if (deptid == "25") // SPDCL
                    {
                        try
                        {
                            DataSet dsdept = new DataSet();
                            string valuesPDCL = "";
                            string outputspdcl = "";
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            valuesPDCL = dsdept.GetXml();
                            outputspdcl = tsspdcl.setPowerRegistration(valuesPDCL);
                            StringReader str = new StringReader(outputspdcl);
                            DataSet dsout = new DataSet();
                            dsout.ReadXml(str);
                            if (dsout != null && dsout.Tables.Count > 0 && dsout.Tables[0].Rows.Count > 0)
                            {
                                if (dsout.Tables[0].Columns.Contains("RESULT"))
                                {
                                    if (dsout.Tables[0].Rows[0]["RESULT"].ToString() == "Success")
                                    {
                                        string spdcloutmsg = dsout.Tables[0].Rows[0]["RESULT"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", spdcloutmsg, "Y");
                                        int k = gen.InsertDeptDateTracing(dsdept.Tables[0].Rows[0]["DEPTID"].ToString(), dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                    }
                                    else
                                    {
                                        string spdcloutmsgerror = dsout.Tables[0].Rows[0]["RESULT"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", spdcloutmsgerror, "N");
                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }


                    if (deptid == "21" || deptid == "5" || deptid == "44")//FACTORIES
                    {
                        try
                        {
                            FactoryService.plan factoryvo = new FactoryService.plan();
                            FactoryService.rawMaterial rawvo = new FactoryService.rawMaterial();


                            string outputfactory = "";
                            string valuefactory = "";
                            DataSet dsdept = new DataSet();
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                            {
                                valuefactory = dsdept.GetXml();
                                //outputfactory = factory.insertIntoPlanApproval(factoryvo);
                                factoryvo.amountToBePaid = dsdept.Tables[0].Rows[0]["Approval_Fee"].ToString();
                                factoryvo.applicationID = dsdept.Tables[0].Rows[0]["UID_No"].ToString();
                                factoryvo.applicationStageID = dsdept.Tables[0].Rows[0]["intstageid"].ToString();
                                factoryvo.applicationStatus = "Pre-Scuitiny Pending"; //dsdept.Tables[0].Columns[""].ToString();
                                factoryvo.applicationSubmittedDate = dsdept.Tables[0].Rows[0]["UID_NOGenerateDate"].ToString();
                                factoryvo.bankAmount = dsdept.Tables[0].Rows[0]["Online_Amount"].ToString();
                                factoryvo.bankDate = dsdept.Tables[0].Rows[0]["TransactionDate"].ToString();
                                factoryvo.bankName = dsdept.Tables[0].Rows[0]["BankName"].ToString();
                                factoryvo.challanNumber = dsdept.Tables[0].Rows[0]["TransactionNO"].ToString();
                                factoryvo.communicationAddress = dsdept.Tables[0].Rows[0]["communicationAddress"].ToString().Replace("'", "");
                                factoryvo.entrepreneurID = dsdept.Tables[0].Rows[0]["intCFEEnterpid"].ToString();
                                factoryvo.factoryDistrictID = dsdept.Tables[0].Rows[0]["Land_intDistrictid"].ToString();
                                factoryvo.factoryLocality = dsdept.Tables[0].Rows[0]["Name_Gramapachayat"].ToString();
                                factoryvo.factoryDoorNumber = dsdept.Tables[0].Rows[0]["SurveyNo"].ToString().Replace("'", "").Replace("&", "");
                                factoryvo.factoryMandalID = dsdept.Tables[0].Rows[0]["Land_intMandalid"].ToString();
                                factoryvo.factoryName = dsdept.Tables[0].Rows[0]["NameofIndustrialUnder"].ToString().Replace("'", ""); ;
                                factoryvo.factoryPinCode = dsdept.Tables[0].Rows[0]["Land_Pincode"].ToString();
                                factoryvo.factoryVillageID = dsdept.Tables[0].Rows[0]["Land_intVillageid"].ToString();
                                factoryvo.hazardousNature = dsdept.Tables[0].Rows[0]["TypeofFactory"].ToString();
                                factoryvo.installedHP = dsdept.Tables[0].Rows[0]["Connect_Load_B"].ToString();
                                factoryvo.mailID = dsdept.Tables[0].Rows[0]["Email"].ToString();
                                factoryvo.mobileNumber = dsdept.Tables[0].Rows[0]["MobileNumber"].ToString();
                                factoryvo.paymentStatus = dsdept.Tables[0].Rows[0]["PaymentFlag"].ToString();
                                factoryvo.planReferenceNumber = "NA";//dsdept.Tables[0].Columns[""].ToString();
                                factoryvo.planType = dsdept.Tables[0].Rows[0]["ProposalFor"].ToString();
                                factoryvo.questionaireID = dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString();
                                factoryvo.ssiType = "0";// dsdept.Tables[0].Columns[""].ToString();
                                factoryvo.systemIP = "0.0.0.0";// dsdept.Tables[0].Columns[""].ToString();
                                factoryvo.userID = dsdept.Tables[0].Rows[0]["CREATEDBY"].ToString();
                                factoryvo.workersToBeEmployedMen = dsdept.Tables[0].Rows[0]["DirectMale"].ToString();
                                factoryvo.workersToBeEmployedWomen = dsdept.Tables[0].Rows[0]["DirectFemale"].ToString();

                                FactoryService.rawMaterial[] lst = null;
                                if (dsdept.Tables[1].Rows.Count > 0)
                                {
                                    DataTable dtraw = new DataTable();
                                    dtraw = dsdept.Tables[1];
                                    lst = new FactoryService.rawMaterial[dtraw.Rows.Count];

                                    for (int k = 0; k < dtraw.Rows.Count; k++)
                                    {
                                        FactoryService.rawMaterial BBB = new FactoryService.rawMaterial();
                                        BBB.materialDescr = dtraw.Rows[k]["Raw_ItemName"].ToString().Replace("'", "");
                                        lst[k] = BBB;
                                        //factoryvo.rawMaterials[k].materialDescr = dtraw.Rows[k]["Raw_ItemName"].ToString();
                                        //rawvo.materialDescr = dtraw.Rows[i]["Raw_ItemName"].ToString();
                                    }
                                    //rawvo.materialDescr
                                }

                                factoryvo.rawMaterials = lst;

                                FactoryService.productsOutput[] product = null;
                                if (dsdept.Tables[1].Rows.Count > 0)
                                {
                                    DataTable dtproduct = new DataTable();
                                    dtproduct = dsdept.Tables[2];
                                    product = new FactoryService.productsOutput[dtproduct.Rows.Count];

                                    for (int m = 0; m < dtproduct.Rows.Count; m++)
                                    {
                                        FactoryService.productsOutput productvo = new FactoryService.productsOutput();
                                        productvo.product = dtproduct.Rows[m]["Manf_ItemName"].ToString().Replace("'", "");
                                        productvo.output = dtproduct.Rows[m]["OUTPUT"].ToString();
                                        product[m] = productvo;
                                    }
                                }

                                factoryvo.productsOutputs = product;

                                FactoryService.saleLeaseDeed[] registrationdeed = null;
                                FactoryService.sitePlan[] siteplan = null;
                                FactoryService.buildingPlan[] buildingplan = null;
                                FactoryService.partnershipDeed[] partnershipdeed = null;
                                FactoryService.processFlowChart[] flowchat = null;
                                FactoryService.panAadharCard[] panaadhar = null;
                                FactoryService.additionalAttachment[] AdditionalAttachment = null;
                                //factory.insertIntoPlanApprovalCompleted factoryoutput = new FactoryService.insertIntoPlanApprovalCompletedEventHandler();


                                DataSet dsfactroy = new DataSet();
                                dsfactroy = gen.getattachmentdetailsonuid(UIDNO, deptid, "");
                                string valuefactoryattachment = "";
                                valuefactoryattachment = dsfactroy.GetXml();
                                if (dsfactroy != null && dsfactroy.Tables.Count > 0 && dsfactroy.Tables[0].Rows.Count > 0)
                                {
                                    ///Registration Deed////

                                    if (dsfactroy.Tables[0].Rows.Count > 0)
                                    {
                                        DataTable dtregistrationdeed = new DataTable();
                                        dtregistrationdeed = dsfactroy.Tables[0];
                                        registrationdeed = new FactoryService.saleLeaseDeed[dtregistrationdeed.Rows.Count];

                                        for (int n = 0; n < dtregistrationdeed.Rows.Count; n++)
                                        {
                                            FactoryService.saleLeaseDeed registrationdeedvo = new FactoryService.saleLeaseDeed();
                                            registrationdeedvo.documentName = dtregistrationdeed.Rows[n]["FileName"].ToString();
                                            registrationdeedvo.documentPath = dtregistrationdeed.Rows[n]["Filepath"].ToString();
                                            registrationdeed[n] = registrationdeedvo;
                                        }
                                    }
                                    if (dsfactroy.Tables[1].Rows.Count > 0)
                                    {
                                        DataTable dtsiteplan = new DataTable();
                                        dtsiteplan = dsfactroy.Tables[1];
                                        siteplan = new FactoryService.sitePlan[dtsiteplan.Rows.Count];

                                        for (int o = 0; o < dtsiteplan.Rows.Count; o++)
                                        {
                                            FactoryService.sitePlan siteplanvo = new FactoryService.sitePlan();
                                            siteplanvo.documentName = dtsiteplan.Rows[o]["FileName"].ToString();
                                            siteplanvo.documentPath = dtsiteplan.Rows[o]["Filepath"].ToString();
                                            siteplan[o] = siteplanvo;
                                        }
                                    }
                                    if (dsfactroy.Tables[2].Rows.Count > 0)
                                    {
                                        DataTable dtbuildingplan = new DataTable();
                                        dtbuildingplan = dsfactroy.Tables[2];
                                        buildingplan = new FactoryService.buildingPlan[dtbuildingplan.Rows.Count];

                                        for (int p = 0; p < dtbuildingplan.Rows.Count; p++)
                                        {
                                            FactoryService.buildingPlan buildingplanvo = new FactoryService.buildingPlan();
                                            buildingplanvo.documentName = dtbuildingplan.Rows[p]["FileName"].ToString();
                                            buildingplanvo.documentPath = dtbuildingplan.Rows[p]["Filepath"].ToString();
                                            buildingplan[p] = buildingplanvo;
                                        }
                                    }
                                    if (dsfactroy.Tables[3].Rows.Count > 0)
                                    {
                                        DataTable dtpartnershipdeed = new DataTable();
                                        dtpartnershipdeed = dsfactroy.Tables[3];
                                        partnershipdeed = new FactoryService.partnershipDeed[dtpartnershipdeed.Rows.Count];

                                        for (int n = 0; n < dtpartnershipdeed.Rows.Count; n++)
                                        {
                                            FactoryService.partnershipDeed partnershipdeedvo = new FactoryService.partnershipDeed();
                                            partnershipdeedvo.documentName = dtpartnershipdeed.Rows[n]["FileName"].ToString();
                                            partnershipdeedvo.documentPath = dtpartnershipdeed.Rows[n]["Filepath"].ToString();
                                            partnershipdeed[n] = partnershipdeedvo;
                                        }
                                    }
                                    if (dsfactroy.Tables[4].Rows.Count > 0)
                                    {
                                        DataTable dtflowchat = new DataTable();
                                        dtflowchat = dsfactroy.Tables[4];
                                        flowchat = new FactoryService.processFlowChart[dtflowchat.Rows.Count];

                                        for (int n = 0; n < dtflowchat.Rows.Count; n++)
                                        {
                                            FactoryService.processFlowChart flowchatvo = new FactoryService.processFlowChart();
                                            flowchatvo.documentName = dtflowchat.Rows[n]["FileName"].ToString();
                                            flowchatvo.documentPath = dtflowchat.Rows[n]["Filepath"].ToString();
                                            flowchat[n] = flowchatvo;
                                        }
                                    }
                                    if (dsfactroy.Tables[5].Rows.Count > 0)
                                    {
                                        DataTable dtpanaadhar = new DataTable();
                                        dtpanaadhar = dsfactroy.Tables[5];
                                        panaadhar = new FactoryService.panAadharCard[dtpanaadhar.Rows.Count];

                                        for (int n = 0; n < dtpanaadhar.Rows.Count; n++)
                                        {
                                            FactoryService.panAadharCard panaadharvo = new FactoryService.panAadharCard();
                                            panaadharvo.documentName = dtpanaadhar.Rows[n]["FileName"].ToString();
                                            panaadharvo.documentPath = dtpanaadhar.Rows[n]["Filepath"].ToString();
                                            panaadhar[n] = panaadharvo;
                                        }
                                    }
                                    if (dsfactroy.Tables[6].Rows.Count > 0)
                                    {
                                        DataTable dtAdditionalAttachment = new DataTable();
                                        dtAdditionalAttachment = dsfactroy.Tables[6];
                                        AdditionalAttachment = new FactoryService.additionalAttachment[dtAdditionalAttachment.Rows.Count];

                                        for (int n = 0; n < dtAdditionalAttachment.Rows.Count; n++)
                                        {
                                            FactoryService.additionalAttachment AdditionalAttachmentvo = new FactoryService.additionalAttachment();
                                            AdditionalAttachmentvo.documentName = dtAdditionalAttachment.Rows[n]["FileName"].ToString();
                                            AdditionalAttachmentvo.documentPath = dtAdditionalAttachment.Rows[n]["Filepath"].ToString();
                                            AdditionalAttachment[n] = AdditionalAttachmentvo;
                                        }
                                    }
                                }
                                factoryvo.saleLeaseDeeds = registrationdeed;
                                factoryvo.sitePlans = siteplan;
                                factoryvo.buildingPlans = buildingplan;
                                factoryvo.partnershipDeeds = partnershipdeed;
                                factoryvo.processFlowCharts = flowchat;
                                factoryvo.panAadharCards = panaadhar;

                                string OUTPUT = factory.insertIntoPlanApproval(factoryvo);
                                // factory.insertIntoPlanApprovalCompleted 
                                //factory.insertIntoPlanApproval(factoryvo);
                                // factory.insertIntoPlanApprovalCompleted = factory.insertIntoPlanApproval(factoryvo);
                                //factory.insertIntoPlanApprovalCompleted = factory.insertIntoPlanApproval(factoryvo);
                                if (OUTPUT == "SUCCESS")
                                {

                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", OUTPUT, "Y");
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "A", OUTPUT, "Y");
                                    int k = gen.InsertDeptDateTracing(dsdept.Tables[0].Rows[0]["DEPTID"].ToString(), dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                }
                                else
                                {
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", OUTPUT, "N");
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }

                }


            }
            // additional Payment Dtls
            if (ds != null)
            {
                DataTable dtadd = new DataTable();
                dtadd = ds.Tables[1];
                for (int i = 0; i < dtadd.Rows.Count; i++)
                {
                    string deptid = dtadd.Rows[i]["intApprovalid"].ToString();

                    if (deptid == "65")
                    {
                        try
                        {
                            ServicePointManager.Expect100Continue = true;
                            ServicePointManager.SecurityProtocol = //SecurityProtocolType.Tls12;
                            SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12 | SecurityProtocolType.Ssl3;
                            string outputfactory = "";
                            string valuefactory = "";
                            DataSet dsdept = new DataSet();
                            dsdept = gen.getAdditionalPaymentDetails(UIDNO, deptid);
                            valuefactory = dsdept.GetXml();
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                            {
                                CEIGCFEService.payment ceigpaymentvo = new CEIGCFEService.payment();
                                ceigpaymentvo.amount = Convert.ToDouble(dsdept.Tables[0].Rows[0]["Online_Amount"].ToString());
                                //ceigpaymentvo.applicationID = dsdept.Tables[0].Rows[0]["Created_by"].ToString();
                                ceigpaymentvo.bank = dsdept.Tables[0].Rows[0]["BankName"].ToString();
                                //ceigpaymentvo.branch_name = "";
                                //ceigpaymentvo.challan_copy = "";
                                ceigpaymentvo.payment_date = dsdept.Tables[0].Rows[0]["TransactionDate"].ToString();
                                ceigpaymentvo.tx_id = dsdept.Tables[0].Rows[0]["challano"].ToString();
                                ceigpaymentvo.tx_ref = dsdept.Tables[0].Rows[0]["TransactionNO"].ToString();
                                ceigpaymentvo.entrepreneurID = dsdept.Tables[0].Rows[0]["intCFEEnterpid"].ToString();
                                // ceigpaymentvo.payment_type = dsdept.Tables[0].Rows[0]["paymentmode"].ToString();
                                ceigpaymentvo.questionaireID = dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString();
                                ceigpaymentvo.reply_document = "";
                                ceigpaymentvo.reply_remarks = "";
                                //ceigpaymentvo.system_ip = "1.1.1.1"; ;
                                ceigpaymentvo.tx_id = dsdept.Tables[0].Rows[0]["TransactionNO"].ToString();
                                ceigpaymentvo.UID = dsdept.Tables[0].Rows[0]["UIDNO"].ToString();
                                string outceigpayment = ceigcfe.updateDesignAddlPayment(ceigpaymentvo);

                                if (outceigpayment == "SUCCESS")
                                {

                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", outceigpayment, "Y");

                                }
                                else
                                {
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", outceigpayment, "N");
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }


                    if (deptid == "35")
                    {
                        try
                        {
                            DataSet dsdept = new DataSet();
                            dsdept = gen.getMortgagedetailsonuid(UIDNO, deptid);
                            string hmdapayment = dsdept.GetXml();


                            hmdapplication = hmdaservice.Mortgage(hmdapayment, "$$08@213");
                            if (hmdapplication.ResponseStatus != 0 && hmdapplication.ResponseStatus != 0)
                            {
                                //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "M", hmdapplication.FileNo, "Y");
                                //int k = gen.InsertDeptDateTracing(deptid, dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE");
                            }
                            else
                            {
                                //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "M", hmdapplication.ErrorMessage, "N");
                            }

                        }
                        catch (Exception ex)
                        {

                        }
                        try
                        {
                            DataSet dsadditionaldocuments = new DataSet();
                            dsadditionaldocuments = gen.getAdditionalAttachmentsHMDA(UIDNO, deptid);
                            //DataSet dsadditional = new DataSet();
                            //dsadditional = dsadditionaldocuments.Tables[2];
                            string hmdaadditionaldocuments = dsadditionaldocuments.GetXml();

                            hmdapplication = hmdaservice.AdditionalDocument(hmdaadditionaldocuments, "$$08@213");
                            if (hmdapplication.ResponseStatus != 0 && hmdapplication.ResponseStatus != 0)
                            {
                            }
                        }
                        catch (Exception ex)
                        {
                        }
                        try
                        {
                            DataSet dsdept = new DataSet();
                            dsdept = gen.getAdditionalPaymentDetails(UIDNO, deptid);
                            string hmdapayment = dsdept.GetXml();

                            hmdapplication = hmdaservice.DCPayment(hmdapayment, "$$08@213");
                            if (hmdapplication.ResponseStatus != 0 && hmdapplication.ResponseStatus != 0)
                            {
                                //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", hmdapplication.FileNo, "Y");
                                //int k = gen.InsertDeptDateTracing(deptid, dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE");
                            }
                            else
                            {
                                //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                //gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", hmdapplication.ErrorMessage, "N");
                            }

                        }
                        catch (Exception ex)
                        {

                        }


                    }

                    if (deptid == "31")
                    {
                        try
                        {
                            DataSet dsdept = new DataSet();
                            dsdept = gen.getAdditionalPaymentDetails(UIDNO, deptid);
                            string dtcppayment = dsdept.GetXml();
                            tsiicapplication = tsiicservice.DCPayment(dtcppayment, "$$08@213");

                            if (tsiicapplication.ResponseStatus != 0 && tsiicapplication.ResponseStatus != 0)
                            {
                                //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", tsiicapplication.FileNo, "Y");
                                //int k = gen.InsertDeptDateTracing(deptid, dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE");
                            }
                            else
                            {
                                //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", tsiicapplication.ErrorMessage, "N");
                            }

                        }
                        catch (Exception ex)
                        {

                        }
                        try
                        {
                            DataSet dsdept = new DataSet();
                            dsdept = gen.getMortgagedetailsonuid(UIDNO, deptid);
                            string tsiicdata = dsdept.GetXml();


                            tsiicapplication = tsiicservice.Mortgage(tsiicdata, "$$08@213");
                            if (tsiicapplication.ResponseStatus != 0 && tsiicapplication.ResponseStatus != 0)
                            {
                                //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "M", tsiicapplication.FileNo, "Y");
                                //int k = gen.InsertDeptDateTracing(deptid, dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE");
                            }
                            else
                            {
                                //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "M", tsiicapplication.ErrorMessage, "N");
                            }

                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    if (deptid == "20")//PCB
                    {
                        DataSet dsdept = new DataSet();

                        dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                        if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                        {
                            string cafUniqueNo = dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString();
                            string transactionId = dsdept.Tables[0].Rows[0]["TransactionNO"].ToString();
                            string amount = dsdept.Tables[0].Rows[0]["Approval_Fee"].ToString();
                            string bankName = dsdept.Tables[0].Rows[0]["BankName"].ToString();
                            string transactionStatus = "S";
                            string paymentType = "NB";
                            string indApplication = dsdept.Tables[0].Rows[0]["NICApplicationno"].ToString();
                            string additionalPayment = "T";

                            string WEBSERVICE_URL1 = "http://tsocmms.nic.in/TLWS/updateCl?cafUniqueNo=" + cafUniqueNo + "&indApplicationNo=" + indApplication + "&remark=" + "AdditionalAmountSubmitted" + "&urlSingle=" + "";

                            try
                            {
                                var webRequest = System.Net.WebRequest.Create(WEBSERVICE_URL1);
                                if (webRequest != null)
                                {
                                    webRequest.Method = "GET";
                                    webRequest.Timeout = 20000;
                                    webRequest.ContentType = "application/x-www-form-urlencoded";

                                    //using (System.IO.Stream s = webRequest.GetRequestStream())
                                    //{
                                    //    using (System.IO.StreamWriter sw = new System.IO.StreamWriter(s))
                                    //        sw.Write(jsonData);
                                    //}

                                    using (System.IO.Stream s = webRequest.GetResponse().GetResponseStream())
                                    {
                                        using (System.IO.StreamReader sr = new System.IO.StreamReader(s))
                                        {
                                            var jsonResponse = sr.ReadToEnd();
                                            System.Diagnostics.Debug.WriteLine(String.Format("Response: {0}", jsonResponse));
                                            if (jsonResponse.Contains("submitted successfully"))
                                            {
                                                //gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", jsonResponse, "Y");
                                            }
                                            else
                                            {
                                                //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                                //gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", jsonResponse, "N");
                                            }
                                        }
                                    }
                                }
                            }
                            catch (Exception ex)
                            {
                                System.Diagnostics.Debug.WriteLine(ex.ToString());
                            }


                            string WEBSERVICE_URL = "http://tsocmms.nic.in/TLWS/updateFee?cafUniqueNo=" + cafUniqueNo + "&transactionId=" + transactionId + "&amount=" + amount + "&bankName=" + bankName + "&transactionStatus=" + transactionStatus + "&paymentType=" + paymentType + "&indApplicationNo=" + indApplication + "&additionalPayment=" + additionalPayment + "";


                            //string jsonData = "{\"cafUniqueNo\" : \""+cafUniqueNo+"\", \"transactionId\":\""+transactionId+"\" , \"amount\":\""+amount+"\" , \"bankName\":\""+bankName+"\" , \"transactionStatus\":\"S\" , \"paymentType\":\"NB\"}";
                            //string jsonData = "cafUniqueNo" : \"" + cafUniqueNo + "\", \"transactionId\":\"" + transactionId + "\" , \"amount\":\"" + amount + "\" , \"bankName\":\"" + bankName + "\" , \"transactionStatus\":\"S\" , \"paymentType\":\"NB\"}";
                            try
                            {
                                var webRequest = System.Net.WebRequest.Create(WEBSERVICE_URL);
                                if (webRequest != null)
                                {
                                    webRequest.Method = "GET";
                                    webRequest.Timeout = 20000;
                                    webRequest.ContentType = "application/x-www-form-urlencoded";

                                    //using (System.IO.Stream s = webRequest.GetRequestStream())
                                    //{
                                    //    using (System.IO.StreamWriter sw = new System.IO.StreamWriter(s))
                                    //        sw.Write(jsonData);
                                    //}

                                    using (System.IO.Stream s = webRequest.GetResponse().GetResponseStream())
                                    {
                                        using (System.IO.StreamReader sr = new System.IO.StreamReader(s))
                                        {
                                            var jsonResponse = sr.ReadToEnd();
                                            System.Diagnostics.Debug.WriteLine(String.Format("Response: {0}", jsonResponse));
                                            if (jsonResponse.Contains("Fee submitted successfully"))
                                            {
                                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", jsonResponse, "Y");
                                            }
                                            else
                                            {
                                                //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                                //gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", jsonResponse, "N");
                                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", jsonResponse, "N");
                                            }
                                        }
                                    }
                                }
                            }
                            catch (Exception ex)
                            {
                                System.Diagnostics.Debug.WriteLine(ex.ToString());
                            }

                        }

                    }
                    if (deptid == "21" || deptid == "5" || deptid == "44") //FACTORY
                    {
                        try
                        {
                            string outputfactory = "";
                            string valuefactory = "";
                            DataSet dsdept = new DataSet();
                            dsdept = gen.getAdditionalPaymentDetails(UIDNO, deptid);
                            valuefactory = dsdept.GetXml();
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                            {
                                FactoryService.planAdditionalPayment factoryvo = new FactoryService.planAdditionalPayment();
                                factoryvo.applicationID = dsdept.Tables[0].Rows[0]["UIDNO"].ToString();
                                factoryvo.bankAmount = dsdept.Tables[0].Rows[0]["Online_Amount"].ToString();
                                factoryvo.bankDate = dsdept.Tables[0].Rows[0]["TransactionDate"].ToString();
                                factoryvo.bankName = dsdept.Tables[0].Rows[0]["BankName"].ToString();
                                factoryvo.challanNumber = dsdept.Tables[0].Rows[0]["TransactionNO"].ToString();
                                factoryvo.paymentStatus = dsdept.Tables[0].Rows[0]["PaymentFlag"].ToString();
                                factoryvo.systemIP = "0.0.0.0";//dsdept.Tables[0].Rows[0]["UIDNO"].ToString();
                                factoryvo.userID = dsdept.Tables[0].Rows[0]["Created_by"].ToString();
                                string outfactory = factory.insertIntoPlanApprovalAdditionalPayment(factoryvo);

                                if (outfactory == "SUCCESS")
                                {

                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", outfactory, "Y");

                                }
                                else
                                {
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", outfactory, "N");
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    if (deptid == "8")
                    {
                        try
                        {
                            ServicePointManager.Expect100Continue = true;
                            ServicePointManager.SecurityProtocol = //SecurityProtocolType.Tls12;
                            SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12 | SecurityProtocolType.Ssl3;
                            DataSet dsdept = new DataSet();
                            dsdept = gen.getAdditionalPaymentDetails(UIDNO, deptid);
                            string UIDNo = dsdept.Tables[0].Rows[0]["UIDNO"].ToString();
                            string amount = dsdept.Tables[0].Rows[0]["Online_Amount"].ToString();
                            string date = dsdept.Tables[0].Rows[0]["TransactionDate"].ToString();
                            string bankName = dsdept.Tables[0].Rows[0]["BankName"].ToString();
                            string challanNumber = dsdept.Tables[0].Rows[0]["TransactionNO"].ToString();
                            string paymentStatus = dsdept.Tables[0].Rows[0]["PaymentFlag"].ToString();
                            string systemIP = "0.0.0.0";//dsdept.Tables[0].Rows[0]["UIDNO"].ToString();
                            //string userID = dsdept.Tables[0].Rows[0]["Created_by"].ToString();

                            string outputfire = fire.PaymentDetails(UIDNo, challanNumber, date, bankName, amount);

                            if (outputfire == "Success")
                            {
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", outputfire, "Y");
                            }
                            else
                            {
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "AP", outputfire, "N");
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    if (deptid == "4")
                    {
                        try
                        {
                            DataSet dsdept = new DataSet();
                            dsdept = gen.getAdditionalPaymentDetails(UIDNO, deptid);
                            string npdcl = dsdept.GetXml();

                            string npdclout = tsnpdcl.insertTsipassOnlinePayments(npdcl);
                            StringReader str = new StringReader(npdclout);
                            DataSet dsout = new DataSet();
                            dsout.ReadXml(str);
                            if (dsout != null && dsout.Tables.Count > 0 && dsout.Tables[0].Rows.Count > 0)
                            {
                                if (dsout.Tables[0].Columns.Contains("status"))
                                {
                                    if (dsout.Tables[0].Rows[0]["status"].ToString() == "S")
                                    {
                                        string npdcloutflag = dsout.Tables[0].Rows[0]["status"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", npdclout, "Y");
                                    }
                                    else
                                    {
                                        string npdclouterror = dsout.Tables[0].Rows[0]["status"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", npdclouterror, "Y");
                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    if (deptid == "25") // SPDCL
                    {
                        try
                        {
                            DataSet dsdept = new DataSet();
                            string valuesPDCL = "";
                            string outputspdcl = "";
                            dsdept = gen.getAdditionalPaymentDetails(UIDNO, deptid);
                            valuesPDCL = dsdept.GetXml();
                            string UIDNo = dsdept.Tables[0].Rows[0]["UIDNO"].ToString();
                            double amount = Convert.ToDouble(dsdept.Tables[0].Rows[0]["Online_Amount"].ToString());
                            string date = dsdept.Tables[0].Rows[0]["TransactionDate"].ToString();
                            string bankName = dsdept.Tables[0].Rows[0]["BankName"].ToString();
                            string challanNumber = dsdept.Tables[0].Rows[0]["TransactionNO"].ToString();
                            string paymentStatus = dsdept.Tables[0].Rows[0]["PaymentFlag"].ToString();
                            string systemIP = "0.0.0.0";//dsdept.Tables[0].Rows[0]["UIDNO"].ToString();
                            outputspdcl = tsspdcl.setPayment(UIDNo, amount, true, bankName, challanNumber, date);
                            StringReader strSPDCL = new StringReader(outputspdcl);
                            DataSet dsoutSPDCL = new DataSet();
                            dsoutSPDCL.ReadXml(strSPDCL);
                            if (dsoutSPDCL != null && dsoutSPDCL.Tables.Count > 0 && dsoutSPDCL.Tables[0].Rows.Count > 0)
                            {
                                if (dsoutSPDCL.Tables[0].Columns.Contains("RESULT"))
                                {
                                    if (dsoutSPDCL.Tables[0].Rows[0]["RESULT"].ToString() == "Success")
                                    {
                                        string spdcloutmsg = dsoutSPDCL.Tables[0].Rows[0]["RESULT"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", spdcloutmsg, "Y");
                                    }
                                    else
                                    {
                                        string spdcloutmsgerror = dsoutSPDCL.Tables[0].Rows[0]["RESULT"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "C", spdcloutmsgerror, "N");
                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                }

                if (ds != null && ds.Tables.Count > 2 && ds.Tables[2].Rows.Count > 0)
                {
                    dt = ds.Tables[2];

                    for (int l = 0; l < dt.Rows.Count; l++)
                    {
                        string deptid = dt.Rows[l]["intApprovalid"].ToString();
                        if (deptid == "25") // SPDCL
                        {
                            try
                            {
                                DataSet dsdept = new DataSet();
                                string valuesPDCL = "";
                                string outputspdcl = "";
                                dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                                valuesPDCL = dsdept.GetXml();
                                outputspdcl = tsspdcl.setPowerRegistration(valuesPDCL);
                                StringReader str = new StringReader(outputspdcl);
                                DataSet dsout = new DataSet();
                                dsout.ReadXml(str);
                                if (dsout != null && dsout.Tables.Count > 0 && dsout.Tables[0].Rows.Count > 0)
                                {
                                    if (dsout.Tables[0].Columns.Contains("RESULT"))
                                    {
                                        if (dsout.Tables[0].Rows[0]["RESULT"].ToString() == "Success")
                                        {
                                            string spdcloutmsg = dsout.Tables[0].Rows[0]["RESULT"].ToString();
                                            gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", spdcloutmsg, "Y");
                                            int k = gen.InsertDeptDateTracing(dsdept.Tables[0].Rows[0]["DEPTID"].ToString(), dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                        }
                                        else
                                        {
                                            string spdcloutmsgerror = dsout.Tables[0].Rows[0]["RESULT"].ToString();
                                            gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", spdcloutmsgerror, "N");
                                        }
                                    }
                                }
                            }
                            catch (Exception ex)
                            {

                            }
                        }
                        if (deptid == "4")//NPDCL
                        {
                            try
                            {
                                string valueNPDCL = "";
                                string outputnpdcl = "";
                                string npdclattachments = "";
                                DataSet dsdept = new DataSet();
                                DataSet dsdeptattachments = new DataSet();
                                dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                                valueNPDCL = dsdept.GetXml();
                                outputnpdcl = tsnpdcl.insertAppealAgainstRejects(valueNPDCL);// tsnpdcl.insertTsipassUidDetaisls(valueNPDCL);
                                StringReader str = new StringReader(outputnpdcl);
                                DataSet dsout = new DataSet();
                                dsout.ReadXml(str);
                                if (dsout != null && dsout.Tables.Count > 0 && dsout.Tables[0].Rows.Count > 0)
                                {
                                    if (dsout.Tables[0].Columns.Contains("status"))
                                    {
                                        if (dsout.Tables[0].Rows[0]["status"].ToString() == "S")
                                        {
                                            string npdclout = dsout.Tables[0].Rows[0]["status"].ToString();
                                            gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", npdclout, "Y");
                                        }
                                        else
                                        {
                                            string npdclouterror = dsout.Tables[0].Rows[0]["status"].ToString();
                                            gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", npdclouterror, "N");
                                        }
                                    }
                                }
                            }
                            catch (Exception ex)
                            {

                            }
                        }
                        if (deptid == "21" || deptid == "5" || deptid == "44")//FACTORIES
                        {
                            try
                            {
                                //FactoryService.plan factoryvo = new FactoryService.plan();
                                FactoryService.rawMaterial rawvo = new FactoryService.rawMaterial();
                                FactoryService.UpdateAppealAgainstRejection factoryvo = new FactoryService.UpdateAppealAgainstRejection();

                                string outputfactory = "";
                                string valuefactory = "";
                                DataSet dsdept = new DataSet();
                                dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                                if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                                {
                                    valuefactory = dsdept.GetXml();
                                    //outputfactory = factory.insertIntoPlanApproval(factoryvo);
                                    factoryvo.amountToBePaid = dsdept.Tables[0].Rows[0]["Approval_Fee"].ToString();
                                    factoryvo.applicationID = dsdept.Tables[0].Rows[0]["UID_No"].ToString();
                                    factoryvo.applicationStageID = dsdept.Tables[0].Rows[0]["intstageid"].ToString();
                                    factoryvo.applicationStatus = "Pre-Scuitiny Pending"; //dsdept.Tables[0].Columns[""].ToString();

                                    factoryvo.applicationSubmittedDate = dsdept.Tables[0].Rows[0]["UID_NOGenerateDate"].ToString();
                                    factoryvo.bankAmount = dsdept.Tables[0].Rows[0]["Online_Amount"].ToString();
                                    factoryvo.bankDate = dsdept.Tables[0].Rows[0]["TransactionDate"].ToString();
                                    factoryvo.bankName = dsdept.Tables[0].Rows[0]["BankName"].ToString();
                                    factoryvo.challanNumber = dsdept.Tables[0].Rows[0]["TransactionNO"].ToString();
                                    factoryvo.communicationAddress = dsdept.Tables[0].Rows[0]["communicationAddress"].ToString();
                                    factoryvo.entrepreneurID = dsdept.Tables[0].Rows[0]["intCFEEnterpid"].ToString();
                                    factoryvo.factoryDistrictID = dsdept.Tables[0].Rows[0]["Land_intDistrictid"].ToString();
                                    factoryvo.factoryLocality = dsdept.Tables[0].Rows[0]["Name_Gramapachayat"].ToString();
                                    factoryvo.factoryDoorNumber = dsdept.Tables[0].Rows[0]["SurveyNo"].ToString();
                                    factoryvo.factoryMandalID = dsdept.Tables[0].Rows[0]["Land_intMandalid"].ToString();
                                    factoryvo.factoryName = dsdept.Tables[0].Rows[0]["NameofIndustrialUnder"].ToString();
                                    factoryvo.factoryPinCode = dsdept.Tables[0].Rows[0]["Land_Pincode"].ToString();
                                    factoryvo.factoryVillageID = dsdept.Tables[0].Rows[0]["Land_intVillageid"].ToString();
                                    factoryvo.hazardousNature = dsdept.Tables[0].Rows[0]["TypeofFactory"].ToString();
                                    factoryvo.installedHP = dsdept.Tables[0].Rows[0]["Connect_Load_B"].ToString();
                                    factoryvo.mailID = dsdept.Tables[0].Rows[0]["Land_Email"].ToString();
                                    factoryvo.mobileNumber = dsdept.Tables[0].Rows[0]["MobileNumber"].ToString();
                                    factoryvo.paymentStatus = dsdept.Tables[0].Rows[0]["PaymentFlag"].ToString();
                                    factoryvo.planReferenceNumber = "NA";//dsdept.Tables[0].Columns[""].ToString();
                                    factoryvo.planType = dsdept.Tables[0].Rows[0]["ProposalFor"].ToString();
                                    factoryvo.questionaireID = dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString();
                                    factoryvo.ssiType = "0";// dsdept.Tables[0].Columns[""].ToString();
                                    factoryvo.systemIP = "0.0.0.0";// dsdept.Tables[0].Columns[""].ToString();
                                    factoryvo.userID = dsdept.Tables[0].Rows[0]["CREATEDBY"].ToString();
                                    factoryvo.workersToBeEmployedMen = dsdept.Tables[0].Rows[0]["DirectMale"].ToString();
                                    factoryvo.workersToBeEmployedWomen = dsdept.Tables[0].Rows[0]["DirectFemale"].ToString();

                                    FactoryService.rawMaterial[] lst = null;
                                    if (dsdept.Tables[1].Rows.Count > 0)
                                    {
                                        DataTable dtraw = new DataTable();
                                        dtraw = dsdept.Tables[1];
                                        lst = new FactoryService.rawMaterial[dtraw.Rows.Count];

                                        for (int k = 0; k < dtraw.Rows.Count; k++)
                                        {
                                            FactoryService.rawMaterial BBB = new FactoryService.rawMaterial();
                                            BBB.materialDescr = dtraw.Rows[k]["Raw_ItemName"].ToString();
                                            lst[k] = BBB;
                                            //factoryvo.rawMaterials[k].materialDescr = dtraw.Rows[k]["Raw_ItemName"].ToString();
                                            //rawvo.materialDescr = dtraw.Rows[i]["Raw_ItemName"].ToString();
                                        }
                                        //rawvo.materialDescr
                                    }

                                    factoryvo.rawMaterials = lst;

                                    FactoryService.productsOutput[] product = null;
                                    if (dsdept.Tables[1].Rows.Count > 0)
                                    {
                                        DataTable dtproduct = new DataTable();
                                        dtproduct = dsdept.Tables[2];
                                        product = new FactoryService.productsOutput[dtproduct.Rows.Count];

                                        for (int m = 0; m < dtproduct.Rows.Count; m++)
                                        {
                                            FactoryService.productsOutput productvo = new FactoryService.productsOutput();
                                            productvo.product = dtproduct.Rows[m]["Manf_ItemName"].ToString();
                                            productvo.output = dtproduct.Rows[m]["OUTPUT"].ToString();
                                            product[m] = productvo;
                                        }
                                    }

                                    factoryvo.productsOutputs = product;

                                    FactoryService.saleLeaseDeed[] registrationdeed = null;
                                    FactoryService.sitePlan[] siteplan = null;
                                    FactoryService.buildingPlan[] buildingplan = null;
                                    FactoryService.partnershipDeed[] partnershipdeed = null;
                                    FactoryService.processFlowChart[] flowchat = null;
                                    FactoryService.panAadharCard[] panaadhar = null;
                                    FactoryService.additionalAttachment[] AdditionalAttachment = null;
                                    FactoryService.appealAttachment[] AppealAttachment = null;
                                    //factory.insertIntoPlanApprovalCompleted factoryoutput = new FactoryService.insertIntoPlanApprovalCompletedEventHandler();


                                    DataSet dsfactroy = new DataSet();
                                    dsfactroy = gen.getattachmentdetailsonuid(UIDNO, deptid, "");

                                    if (dsfactroy != null && dsfactroy.Tables.Count > 0 && dsfactroy.Tables[0].Rows.Count > 0)
                                    {
                                        ///Registration Deed////

                                        if (dsfactroy.Tables[0].Rows.Count > 0)
                                        {
                                            DataTable dtregistrationdeed = new DataTable();
                                            dtregistrationdeed = dsfactroy.Tables[0];
                                            registrationdeed = new FactoryService.saleLeaseDeed[dtregistrationdeed.Rows.Count];

                                            for (int n = 0; n < dtregistrationdeed.Rows.Count; n++)
                                            {
                                                FactoryService.saleLeaseDeed registrationdeedvo = new FactoryService.saleLeaseDeed();
                                                registrationdeedvo.documentName = dtregistrationdeed.Rows[n]["FileName"].ToString();
                                                registrationdeedvo.documentPath = dtregistrationdeed.Rows[n]["Filepath"].ToString();
                                                registrationdeed[n] = registrationdeedvo;
                                            }
                                        }
                                        if (dsfactroy.Tables[1].Rows.Count > 0)
                                        {
                                            DataTable dtsiteplan = new DataTable();
                                            dtsiteplan = dsfactroy.Tables[1];
                                            siteplan = new FactoryService.sitePlan[dtsiteplan.Rows.Count];

                                            for (int o = 0; o < dtsiteplan.Rows.Count; o++)
                                            {
                                                FactoryService.sitePlan siteplanvo = new FactoryService.sitePlan();
                                                siteplanvo.documentName = dtsiteplan.Rows[o]["FileName"].ToString();
                                                siteplanvo.documentPath = dtsiteplan.Rows[o]["Filepath"].ToString();
                                                siteplan[o] = siteplanvo;
                                            }
                                        }
                                        if (dsfactroy.Tables[2].Rows.Count > 0)
                                        {
                                            DataTable dtbuildingplan = new DataTable();
                                            dtbuildingplan = dsfactroy.Tables[2];
                                            buildingplan = new FactoryService.buildingPlan[dtbuildingplan.Rows.Count];

                                            for (int p = 0; p < dtbuildingplan.Rows.Count; p++)
                                            {
                                                FactoryService.buildingPlan buildingplanvo = new FactoryService.buildingPlan();
                                                buildingplanvo.documentName = dtbuildingplan.Rows[p]["FileName"].ToString();
                                                buildingplanvo.documentPath = dtbuildingplan.Rows[p]["Filepath"].ToString();
                                                buildingplan[p] = buildingplanvo;
                                            }
                                        }
                                        if (dsfactroy.Tables[3].Rows.Count > 0)
                                        {
                                            DataTable dtpartnershipdeed = new DataTable();
                                            dtpartnershipdeed = dsfactroy.Tables[3];
                                            partnershipdeed = new FactoryService.partnershipDeed[dtpartnershipdeed.Rows.Count];

                                            for (int n = 0; n < dtpartnershipdeed.Rows.Count; n++)
                                            {
                                                FactoryService.partnershipDeed partnershipdeedvo = new FactoryService.partnershipDeed();
                                                partnershipdeedvo.documentName = dtpartnershipdeed.Rows[n]["FileName"].ToString();
                                                partnershipdeedvo.documentPath = dtpartnershipdeed.Rows[n]["Filepath"].ToString();
                                                partnershipdeed[n] = partnershipdeedvo;
                                            }
                                        }
                                        if (dsfactroy.Tables[4].Rows.Count > 0)
                                        {
                                            DataTable dtflowchat = new DataTable();
                                            dtflowchat = dsfactroy.Tables[4];
                                            flowchat = new FactoryService.processFlowChart[dtflowchat.Rows.Count];

                                            for (int n = 0; n < dtflowchat.Rows.Count; n++)
                                            {
                                                FactoryService.processFlowChart flowchatvo = new FactoryService.processFlowChart();
                                                flowchatvo.documentName = dtflowchat.Rows[n]["FileName"].ToString();
                                                flowchatvo.documentPath = dtflowchat.Rows[n]["Filepath"].ToString();
                                                flowchat[n] = flowchatvo;
                                            }
                                        }
                                        if (dsfactroy.Tables[5].Rows.Count > 0)
                                        {
                                            DataTable dtpanaadhar = new DataTable();
                                            dtpanaadhar = dsfactroy.Tables[5];
                                            panaadhar = new FactoryService.panAadharCard[dtpanaadhar.Rows.Count];

                                            for (int n = 0; n < dtpanaadhar.Rows.Count; n++)
                                            {
                                                FactoryService.panAadharCard panaadharvo = new FactoryService.panAadharCard();
                                                panaadharvo.documentName = dtpanaadhar.Rows[n]["FileName"].ToString();
                                                panaadharvo.documentPath = dtpanaadhar.Rows[n]["Filepath"].ToString();
                                                panaadhar[n] = panaadharvo;
                                            }
                                        }
                                        if (dsfactroy.Tables[6].Rows.Count > 0)
                                        {
                                            DataTable dtAdditionalAttachment = new DataTable();
                                            dtAdditionalAttachment = dsfactroy.Tables[6];
                                            AdditionalAttachment = new FactoryService.additionalAttachment[dtAdditionalAttachment.Rows.Count];

                                            for (int n = 0; n < dtAdditionalAttachment.Rows.Count; n++)
                                            {
                                                FactoryService.additionalAttachment AdditionalAttachmentvo = new FactoryService.additionalAttachment();
                                                AdditionalAttachmentvo.documentName = dtAdditionalAttachment.Rows[n]["FileName"].ToString();
                                                AdditionalAttachmentvo.documentPath = dtAdditionalAttachment.Rows[n]["Filepath"].ToString();
                                                AdditionalAttachment[n] = AdditionalAttachmentvo;
                                            }
                                        }
                                        if (dsfactroy.Tables[7].Rows.Count > 0)
                                        {
                                            DataTable dtAppealAttachment = new DataTable();
                                            dtAppealAttachment = dsfactroy.Tables[7];
                                            AppealAttachment = new FactoryService.appealAttachment[dtAppealAttachment.Rows.Count];

                                            for (int n = 0; n < dtAppealAttachment.Rows.Count; n++)
                                            {
                                                FactoryService.appealAttachment AppealAttachmentvo = new FactoryService.appealAttachment();
                                                AppealAttachmentvo.documentName = dtAppealAttachment.Rows[n]["FileName"].ToString();
                                                AppealAttachmentvo.documentPath = dtAppealAttachment.Rows[n]["Filepath"].ToString();
                                                AppealAttachment[n] = AppealAttachmentvo;
                                            }
                                        }

                                    }
                                    factoryvo.saleLeaseDeeds = registrationdeed;
                                    factoryvo.sitePlans = siteplan;
                                    factoryvo.buildingPlans = buildingplan;
                                    factoryvo.partnershipDeeds = partnershipdeed;
                                    factoryvo.processFlowCharts = flowchat;
                                    factoryvo.panAadharCards = panaadhar;
                                    factoryvo.additionalAttachments = AdditionalAttachment;
                                    factoryvo.appealAttachments = AppealAttachment;

                                    string OUTPUT = factory.updateAppealAgainstRejection(factoryvo);
                                    // factory.insertIntoPlanApprovalCompleted 
                                    //factory.insertIntoPlanApproval(factoryvo);
                                    // factory.insertIntoPlanApprovalCompleted = factory.insertIntoPlanApproval(factoryvo);
                                    //factory.insertIntoPlanApprovalCompleted = factory.insertIntoPlanApproval(factoryvo);
                                    if (OUTPUT == "SUCCESS")
                                    {
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", OUTPUT, "Y");
                                        //Gen.UpdateDepartwebserviceflag(UIDNO, deptid, "A", OUTPUT, "Y");
                                        int k = gen.InsertDeptDateTracing(dsdept.Tables[0].Rows[0]["DEPTID"].ToString(), dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                    }
                                    else
                                    {
                                        gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", OUTPUT, "N");
                                    }
                                }
                            }
                            catch (Exception ex)
                            {

                            }
                        }
                        if (deptid == "31")//TSIIC
                        {
                            DataSet dsdept = new DataSet();
                            string valueshmda = "";
                            string outputhmda = "";
                            string outpayhmda = "";
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            valueshmda = dsdept.GetXml();
                            XmlDocument doc = new XmlDocument();
                            doc.LoadXml(valueshmda);
                            //string jsonText = JsonConvert.SerializeXmlNode(doc); // To convert JSON text contained in string json into an XML node XmlDocument doc = JsonConvert.DeserializeXmlNode(json);
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                            {
                                //hmdapplication.
                                //System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();

                                tsiicapplication = tsiicservice.create(valueshmda, "$$08@213");//000844/I1/U6/HMDA/25072017
                                if (tsiicapplication.FileNo != "" && tsiicapplication.FileNo != null)
                                {
                                    //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", tsiicapplication.FileNo, "Y");
                                }
                                DataSet dsdeptattachmentsTSIIC = new DataSet();
                                dsdeptattachmentsTSIIC = gen.getattachmentdetailsonuid(UIDNO, deptid, tsiicapplication.FileNo);
                                //Kindly contact to administrator regarding add work flow.
                                string tsiicattachments = dsdeptattachmentsTSIIC.GetXml();
                                tsiicapplication = tsiicservice.SaveDocumentDataUsingXML(tsiicattachments, "$$08@213");//000838/I1/U6/HMDA/20072017//
                                if (tsiicapplication.FileNo != "" && tsiicapplication.FileNo != null)
                                {
                                    //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "A", tsiicapplication.FileNo, "Y");
                                    int k = gen.InsertDeptDateTracing("3", dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                }
                                else
                                {
                                    //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", tsiicapplication.ErrorMessage, "N");
                                }
                            }
                        }
                        if (deptid == "35")//HMDA
                        {
                            DataSet dsdept = new DataSet();
                            string valueshmda = "";
                            string outputhmda = "";
                            string outpayhmda = "";
                            dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            valueshmda = dsdept.GetXml();
                            XmlDocument doc = new XmlDocument();
                            doc.LoadXml(valueshmda);
                            //string jsonText = JsonConvert.SerializeXmlNode(doc); // To convert JSON text contained in string json into an XML node XmlDocument doc = JsonConvert.DeserializeXmlNode(json);
                            if (dsdept != null && dsdept.Tables.Count > 0 && dsdept.Tables[0].Rows.Count > 0)
                            {
                                //hmdapplication.
                                //System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();

                                hmdapplication = hmdaservice.create(valueshmda, "$$08@213");//000844/I1/U6/HMDA/25072017
                                if (hmdapplication.FileNo != "" && hmdapplication.FileNo != null)
                                {
                                    //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", hmdapplication.FileNo, "Y");
                                }
                                //Kindly contact to Administrator regarding post mapping configuration for revenue department.
                                DataSet dsdeptattachmentsHMDA = new DataSet();
                                dsdeptattachmentsHMDA = gen.getattachmentdetailsonuid(UIDNO, deptid, hmdapplication.FileNo);// "000825 /I1/U6/HMDA/10072017");//000841/I1/U6/HMDA/23072017//000842/I1/U6/HMDA/23072017

                                //Kindly contact to administrator regarding add work flow.
                                string hmdaattachments = dsdeptattachmentsHMDA.GetXml();
                                hmdapplication = hmdaservice.SaveDocumentDataUsingXML(hmdaattachments, "$$08@213");//000838/I1/U6/HMDA/20072017


                                if (hmdapplication.FileNo != "" && hmdapplication.FileNo != null)
                                {
                                    //string labouroutmsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", hmdapplication.FileNo, "Y");
                                    int k = gen.InsertDeptDateTracing("11", dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                }
                                else
                                {
                                    //string labourouterrormsg = labourout.status + ',' + labourout.uID + ',' + labourout.officerDetails;
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", hmdapplication.ErrorMessage, "N");
                                }
                            }
                        }
                        if (deptid == "65")
                        {
                            ServicePointManager.Expect100Continue = true;
                            ServicePointManager.SecurityProtocol = //SecurityProtocolType.Tls12;
                            SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12 | SecurityProtocolType.Ssl3;
                            CEIGCFEService.designAppeal ceigappealvo = new CEIGCFEService.designAppeal();
                            DataSet dsceig = new DataSet();
                            DataSet dsdeptattachments = new DataSet();
                            dsceig = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                            string valuefire = dsceig.GetXml();

                            ceigappealvo.appeal_document_path = dsceig.Tables[0].Rows[0]["AppealDocPath"].ToString();
                            ceigappealvo.appeal_remarks = dsceig.Tables[0].Rows[0]["AppealDescription"].ToString();
                            ceigappealvo.entrepreneurID = dsceig.Tables[0].Rows[0]["intCFEEnterpid"].ToString();
                            ceigappealvo.questionaireID = dsceig.Tables[0].Rows[0]["intQuessionaireid"].ToString();
                            ceigappealvo.UID = dsceig.Tables[0].Rows[0]["UID_No"].ToString();

                            string Ceigappeal = ceigcfe.updateDesignAppeal(ceigappealvo);
                            if (Ceigappeal == "SUCCESS")
                            {
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", Ceigappeal, "Y");
                                //Gen.UpdateDepartwebserviceflag(UIDNO, deptid, "A", OUTPUT, "Y");
                                int k = gen.InsertDeptDateTracing("6", dsceig.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", "65");
                            }
                            else
                            {
                                gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", Ceigappeal, "N");
                            }


                        }

                        if (deptid == "8")// FIRE
                        {
                            try
                            {
                                ServicePointManager.Expect100Continue = true;
                                ServicePointManager.SecurityProtocol = //SecurityProtocolType.Tls12;
                                SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12 | SecurityProtocolType.Ssl3;
                                string valuefire = "";
                                string outputfire = "";
                                string fireattachments = "";
                                string outapplicant = "";
                                string outapplicant1 = "";
                                string outescapre = "";
                                DataSet dsdept = new DataSet();
                                DataSet dsfire = new DataSet();
                                DataSet dsfireescape = new DataSet();
                                DataSet dsdeptattachments = new DataSet();
                                dsdept = gen.getdepartmentdetailsonuid(UIDNO, deptid);
                                valuefire = dsdept.GetXml();
                                string UID_No = dsdept.Tables[0].Rows[0]["UID_No"].ToString();
                                string EntrepreneurId = dsdept.Tables[0].Rows[0]["EntrepreneurId"].ToString();
                                string AppealDescription = dsdept.Tables[0].Rows[0]["AppealDescription"].ToString();
                                string AppealDocPath = dsdept.Tables[0].Rows[0]["AppealDocPath"].ToString();

                                string output = fire.Appealed(UID_No, EntrepreneurId, AppealDescription, AppealDocPath);  //fire.InsertApplicantFireDetails(valuefire);
                                //string[] split = output.Split('-');
                                //string applid = split[1];
                                //dsfire = gen.getfiremeanofescapedetailsonuid(UIDNO, applid);
                                //if (dsfire != null && dsfire.Tables.Count > 0 && dsfire.Tables[0].Rows.Count > 0)
                                //{
                                //    DataTable dtfire = new DataTable();
                                //    DataTable dtfirenew = new DataTable();
                                //    dtfire = dsfire.Tables[1];
                                //    dtfirenew = dsfire.Tables[2];
                                //    dsfire.Tables.Remove(dtfire);
                                //    dsfire.Tables.Remove(dtfirenew);
                                //    string fireescape = "";
                                //    fireescape = dsfire.GetXml();
                                //    outescapre = fire.StoreMeansOfEscape(fireescape);
                                //}
                                //DataSet dsfire1 = new DataSet();
                                //dsfire1 = gen.getfiremeanofescapedetailsonuid(UIDNO, applid);
                                //if (dsfire1 != null && dsfire1.Tables.Count > 0 && dsfire1.Tables[0].Rows.Count > 0)
                                //{
                                //    DataTable dtfire1 = new DataTable();
                                //    DataTable dtfire1new = new DataTable();
                                //    dtfire1 = dsfire1.Tables[0];
                                //    dtfire1new = dsfire1.Tables[2];
                                //    dsfire1.Tables.Remove(dtfire1);
                                //    dsfire1.Tables.Remove(dtfire1new);

                                //    string fireapplicant = "";
                                //    fireapplicant = dsfire1.GetXml();
                                //    outapplicant = fire.StoreFloorwiseApplicantDtls(fireapplicant);
                                //}
                                //DataSet dsfire2 = new DataSet();
                                //dsfire2 = gen.getfiremeanofescapedetailsonuid(UIDNO, applid);
                                //if (dsfire2 != null && dsfire2.Tables.Count > 0 && dsfire2.Tables[0].Rows.Count > 0)
                                //{
                                //    DataTable dtfire2 = new DataTable();
                                //    DataTable dtfire2new = new DataTable();
                                //    dtfire2 = dsfire2.Tables[1];
                                //    dtfire2new = dsfire2.Tables[0];
                                //    dsfire2.Tables.Remove(dtfire2);
                                //    dsfire2.Tables.Remove(dtfire2new);

                                //    string firefight = "";
                                //    firefight = dsfire2.GetXml();
                                //    outapplicant1 = fire.StoreFireFightingInstallations(firefight);
                                //}

                                //DataSet dsdeptattachmentsfire = new DataSet();
                                //dsdeptattachmentsfire = gen.getattachmentdetailsonuid(UIDNO, deptid, applid);
                                //fireattachments = dsdeptattachmentsfire.GetXml();
                                //outputfire = fire.StoreUploadDocuments(fireattachments);
                                ////StringReader str1 = new StringReader(outputfire);
                                ////DataSet dsout1 = new DataSet();
                                ////dsout1.ReadXml(str1);
                                if (output == "Success")
                                {
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", output, "Y");
                                    //Gen.UpdateDepartwebserviceflag(UIDNO, deptid, "A", OUTPUT, "Y");
                                    int k = gen.InsertDeptDateTracing(dsdept.Tables[0].Rows[0]["DEPTID"].ToString(), dsdept.Tables[0].Rows[0]["intQuessionaireid"].ToString(), UIDNO, System.DateTime.Now.ToString("MM/dd/yyyy"), null, null, null, null, "CFE", deptid);
                                }
                                else
                                {
                                    gen.UpdateDepartwebserviceflag(UIDNO, deptid, "R", output, "N");
                                }
                            }
                            catch (Exception ex)
                            {

                            }
                        }
                    }
                }
            }
            if (ds != null && ds.Tables.Count > 3 && ds.Tables[3].Rows.Count > 0)
            {
                dt = ds.Tables[3];

                for (int m = 0; m < dt.Rows.Count; m++)
                {
                    string intApprovalid = dt.Rows[m]["intApprovalid"].ToString();
                    string intQuessionaireid = dt.Rows[m]["intQuessionaireid"].ToString();
                    string intDeptid = dt.Rows[m]["intDeptid"].ToString();

                    string npdclqueryresponse = "", nicapplno = "", questionnaireid = "", filepath = "", remarks = "";
                    DataSet dsdept = new DataSet();
                    dsdept = gen.GetQueryStatusByTransactionIDResponse(intQuessionaireid, intApprovalid);
                    //string UIDNO = dsdept.Tables[0].Rows[0]["tsipassUid"].ToString();



                    if (intApprovalid == "20") //PCB QUERY REPLY
                    {
                        if (dsdept != null && dsdept.Tables.Count > 3 && dsdept.Tables[3].Rows.Count > 0)
                        {
                            nicapplno = dsdept.Tables[0].Rows[0]["NICApplicationno"].ToString();
                            questionnaireid = dsdept.Tables[0].Rows[0]["questionniareId"].ToString();
                            filepath = dsdept.Tables[0].Rows[0]["queryRespDocPath"].ToString();
                            remarks = dsdept.Tables[0].Rows[0]["queryRespText"].ToString();
                            try
                            {

                                //string WEBSERVICE_URL = "http://164.100.163.19/TLWSC/updateCl?cafUniqueNo=" + questionnaireid + "&indApplicationNo=" + nicapplno + "&remark=" + remarks + "&urlSingle=" + filepath;
                                string WEBSERVICE_URL = "http://tsocmms.nic.in/TLWS/updateCl?cafUniqueNo=" + questionnaireid + "&indApplicationNo=" + nicapplno + "&remark=" + remarks + "&urlSingle=" + filepath;
                                try
                                {
                                    var webRequest = System.Net.WebRequest.Create(WEBSERVICE_URL);
                                    if (webRequest != null)
                                    {
                                        webRequest.Method = "GET";
                                        webRequest.Timeout = 20000;
                                        webRequest.ContentType = "application/x-www-form-urlencoded";

                                        //using (System.IO.Stream s = webRequest.GetRequestStream())
                                        //{
                                        //    using (System.IO.StreamWriter sw = new System.IO.StreamWriter(s))
                                        //        sw.Write(jsonData);
                                        //}

                                        using (System.IO.Stream s = webRequest.GetResponse().GetResponseStream())
                                        {
                                            using (System.IO.StreamReader sr = new System.IO.StreamReader(s))
                                            {
                                                var jsonResponse = sr.ReadToEnd();
                                                System.Diagnostics.Debug.WriteLine(String.Format("Response: {0}", jsonResponse));
                                                if (jsonResponse.Contains("Clarification submitted successfully"))
                                                {
                                                    gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", jsonResponse, "Y");
                                                }
                                                else
                                                {
                                                    gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", jsonResponse, "N");
                                                }
                                            }
                                        }
                                    }
                                }
                                catch (Exception ex)
                                {
                                    System.Diagnostics.Debug.WriteLine(ex.ToString());
                                }

                            }
                            catch (Exception ex)
                            {

                            }
                        }
                    }
                    if (intApprovalid == "65")
                    {
                        ServicePointManager.Expect100Continue = true;
                        ServicePointManager.SecurityProtocol = //SecurityProtocolType.Tls12;
                        SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12 | SecurityProtocolType.Ssl3;
                        //ceigqueryvo.applicationID = dsdept.Tables[0].Rows[0]["Created_by"].ToString();
                        ceigqueryvo.entrepreneurID = dsdept.Tables[0].Rows[0]["entrepreneurId"].ToString();
                        ceigqueryvo.questionaireID = dsdept.Tables[0].Rows[0]["questionniareId"].ToString();
                        //ceigqueryvo.registration_id = Convert.ToInt32(dsdept.Tables[0].Rows[0]["intQueryTrnsid"].ToString());
                        ceigqueryvo.reply_doc_path = dsdept.Tables[0].Rows[0]["queryRespDocPath"].ToString();
                        ceigqueryvo.reply_description = dsdept.Tables[0].Rows[0]["queryRespText"].ToString();
                        //ceigqueryvo.system_ip = "1.1.1.1";
                        ceigqueryvo.UID = dsdept.Tables[0].Rows[0]["tsipassUid"].ToString();
                        string output = ceigcfe.updateDesignQueryReply(ceigqueryvo);
                        if (output == "SUCCESS")
                        {
                            gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", output, "Y");
                            try
                            {
                                int k = gen.InsertDeptDateTracing(intDeptid, intQuessionaireid, UIDNO, null, null, null, System.DateTime.Now.ToString("MM/dd/yyyy"), null, "CFO", intApprovalid);
                            }
                            catch (Exception ex)
                            {

                            }
                        }
                        else
                        {
                            gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", output, "N");
                        }
                        //SUCCESS
                    }



                    if (intApprovalid == "4" || intApprovalid == "41")//NPDCL
                    {
                        try
                        {
                            npdclqueryresponse = dsdept.GetXml();
                            string npdclqueryresponseout = tsnpdcl.insertQueryResponse(npdclqueryresponse);
                            StringReader str1 = new StringReader(npdclqueryresponseout);
                            DataSet dsout1 = new DataSet();
                            dsout1.ReadXml(str1);
                            if (dsout1 != null && dsout1.Tables.Count > 0 && dsout1.Tables[0].Rows.Count > 0)
                            {
                                if (dsout1.Tables[0].Columns.Contains("status"))
                                {
                                    if (dsout1.Tables[0].Rows[0]["status"].ToString() == "S")
                                    {
                                        string npdclsattachment = dsout1.Tables[0].Rows[0]["status"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", npdclsattachment, "Y");
                                        int k = gen.InsertDeptDateTracing(intDeptid, intQuessionaireid, ds.Tables[0].Rows[0]["UID_No"].ToString().Trim(), null, null, null, System.DateTime.Now.ToString("MM/dd/yyyy"), null, "CFE", intApprovalid);
                                    }
                                    else
                                    {
                                        string npdclsattachmenterror = dsout1.Tables[0].Rows[0]["status"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", npdclsattachmenterror, "N");
                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }

                    }
                    else if (intApprovalid == "8") //FIRE
                    {
                        try
                        {
                            ServicePointManager.Expect100Continue = true;
                            ServicePointManager.SecurityProtocol = //SecurityProtocolType.Tls12;
                            SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12 | SecurityProtocolType.Ssl3;
                            string OUTPUT = fireservice.StoreQueryResponse(UIDNO, filepath, remarks);
                            if (OUTPUT == "Success")
                            {
                                gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", OUTPUT, "Y");
                                int k = gen.InsertDeptDateTracing(intDeptid, intQuessionaireid, ds.Tables[0].Rows[0]["UID_No"].ToString().Trim(), null, null, null, System.DateTime.Now.ToString("MM/dd/yyyy"), null, "CFE", intApprovalid);
                            }
                            else
                            {
                                gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", OUTPUT, "N");
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    else if (intApprovalid == "25") //SPDCL
                    {
                        try
                        {
                            npdclqueryresponse = dsdept.GetXml();
                            string Outtsspdcl = tsspdcl.setQueryResponse(npdclqueryresponse);
                            StringReader str1 = new StringReader(Outtsspdcl);
                            DataSet dsout1 = new DataSet();
                            dsout1.ReadXml(str1);
                            if (dsout1 != null && dsout1.Tables.Count > 0 && dsout1.Tables[0].Rows.Count > 0)
                            {
                                if (dsout1.Tables[0].Columns.Contains("RESULT"))
                                {
                                    if (dsout1.Tables[0].Rows[0]["RESULT"].ToString() == "Success")
                                    {
                                        string npdclsattachment = dsout1.Tables[0].Rows[0]["RESULT"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", npdclsattachment, "Y");
                                        int k = gen.InsertDeptDateTracing(intDeptid, intQuessionaireid, ds.Tables[0].Rows[0]["UID_No"].ToString().Trim(), null, null, null, System.DateTime.Now.ToString("MM/dd/yyyy"), null, "CFE", intApprovalid);
                                    }
                                    else
                                    {
                                        string npdclsattachmenterror = dsout1.Tables[0].Rows[0]["RESULT"].ToString();
                                        gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", npdclsattachmenterror, "N");
                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    else if (intApprovalid == "21" || intApprovalid == "5" || intApprovalid == "44")//FACTORIES
                    {
                        try
                        {
                            queryvo.applicationID = dsdept.Tables[0].Rows[0]["tsipassUid"].ToString();
                            queryvo.entrepreneurRemarks = dsdept.Tables[0].Rows[0]["queryRespText"].ToString();
                            queryvo.systemIP = "0.0.0.0";
                            queryvo.userID = dsdept.Tables[0].Rows[0]["userID"].ToString();

                            FactoryServiceQueryResponse.queryResponseAttachment[] lst = null;
                            FactoryServiceQueryResponse.queryResponseAttachment factoryqueryvo = new FactoryServiceQueryResponse.queryResponseAttachment();
                            if (dsdept.Tables[0].Rows.Count > 0)
                            {
                                DataTable dtraw = new DataTable();
                                dtraw = dsdept.Tables[1];
                                lst = new FactoryServiceQueryResponse.queryResponseAttachment[dtraw.Rows.Count];
                                if (dsdept.Tables[1].Rows.Count > 0)
                                {
                                    for (int k = 0; k < dtraw.Rows.Count; k++)
                                    {

                                        factoryqueryvo.documentName = dtraw.Rows[k]["FileName"].ToString();
                                        factoryqueryvo.documentPath = dtraw.Rows[k]["link"].ToString();
                                        lst[k] = factoryqueryvo;
                                        //factoryvo.rawMaterials[k].materialDescr = dtraw.Rows[k]["Raw_ItemName"].ToString();
                                        //rawvo.materialDescr = dtraw.Rows[i]["Raw_ItemName"].ToString();
                                    }
                                }
                                else
                                {
                                    factoryqueryvo.documentName = "NA";
                                    factoryqueryvo.documentPath = "NA";
                                }
                                queryvo.queryResponseAttachments = lst;
                            }

                            string queryout = factoryquery.insertIntoPlanApprovalQueryResponse(queryvo);
                            if (queryout == "SUCCESS")
                            {
                                gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", queryout, "Y");
                                int k = gen.InsertDeptDateTracing(intDeptid, intQuessionaireid, UIDNO, null, null, null, System.DateTime.Now.ToString("MM/dd/yyyy"), null, "CFE", intApprovalid);
                            }
                            else
                            {
                                gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", queryout, "N");
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    else if (intApprovalid == "35")
                    {
                        //DataSet dsdept = new DataSet();
                        //dsdept = Gen.GetQueryStatusByTransactionIDResponse("1065", "35");
                        //string UIDNO = dsdept.Tables[0].Rows[0]["tsipassUid"].ToString();
                        //string filepath = dsdept.Tables[0].Rows[0]["queryRespDocPath"].ToString();
                        //string remarks = dsdept.Tables[0].Rows[0]["queryRespText"].ToString();
                        try
                        {

                            DataSet dsdepthmda = new DataSet();
                            dsdepthmda = gen.GetQueryStatusByTransactionIDResponse(intQuessionaireid, intApprovalid);
                            string hmda = dsdepthmda.GetXml();
                            objTGBPASS = objtgipass.reSubmission(hmda, "$$08@213");
                            if (objTGBPASS.ResponseStatus.ToString() == "1")
                            {
                                gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", objTGBPASS.ErrorMessage, "Y");
                                int k = gen.InsertDeptDateTracing(intDeptid, intQuessionaireid, UIDNO, null, null, null, System.DateTime.Now.ToString("MM/dd/yyyy"), null, "CFE", intApprovalid);
                            }
                            else
                            {
                                gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", objTGBPASS.ErrorMessage, "N");
                            }
                        }
                        catch (Exception ex)
                        {

                        }

                    }
                    else if (intApprovalid == "7")
                    {
                        //DataSet dsdept = new DataSet();
                        //dsdept = gen.GetQueryStatusByTransactionIDResponse("1065", "35");
                        //string UIDNO = dsdept.Tables[0].Rows[0]["tsipassUid"].ToString();
                        //string filepath = dsdept.Tables[0].Rows[0]["queryRespDocPath"].ToString();
                        //string remarks = dsdept.Tables[0].Rows[0]["queryRespText"].ToString();
                        DataSet dsdepthmda = new DataSet();
                        dsdepthmda = gen.GetQueryStatusByTransactionIDResponse(intQuessionaireid, intApprovalid);
                        string hmda = dsdepthmda.GetXml();
                        objTGBPASS = objtgipass.reSubmission(hmda, "$$08@213");
                        if (objTGBPASS.ResponseStatus.ToString() == "1")
                        {
                            gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", objTGBPASS.ErrorMessage, "Y");
                            int k = gen.InsertDeptDateTracing(intDeptid, intQuessionaireid, ds.Tables[0].Rows[0]["UID_No"].ToString().Trim(), null, null, null, System.DateTime.Now.ToString("MM/dd/yyyy"), null, "CFE", intApprovalid);
                        }
                        else
                        {
                            gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", objTGBPASS.ErrorMessage, "N");
                        }
                    }
                    else if (intApprovalid == "31")
                    {
                        //DataSet dsdept = new DataSet();
                        //dsdept = gen.GetQueryStatusByTransactionIDResponse("1065", "35");
                        //string UIDNO = dsdept.Tables[0].Rows[0]["tsipassUid"].ToString();
                        //string filepath = dsdept.Tables[0].Rows[0]["queryRespDocPath"].ToString();
                        //string remarks = dsdept.Tables[0].Rows[0]["queryRespText"].ToString();
                        DataSet dsdepthmda = new DataSet();
                        dsdepthmda = gen.GetQueryStatusByTransactionIDResponse(intQuessionaireid, intApprovalid);
                        string tsiic = dsdepthmda.GetXml();
                        tsiicapplication = tsiicservice.reSubmission(tsiic, "$$08@213");
                        if (tsiicapplication.ResponseStatus.ToString() == "1")
                        {
                            gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", tsiicapplication.ErrorMessage, "Y");
                            int k = gen.InsertDeptDateTracing(intDeptid, intQuessionaireid, UIDNO, null, null, null, System.DateTime.Now.ToString("MM/dd/yyyy"), null, "CFE", intApprovalid);
                        }
                        else
                        {
                            gen.UpdateDepartwebserviceflag(UIDNO, intApprovalid, "Q", tsiicapplication.ErrorMessage, "N");
                        }
                    }
                }
            }

            //StringBuilder sbScript = new StringBuilder();
            //string sScript;
            //sbScript.Append("<script>");
            //sbScript.Append(" window.close();");
            //sbScript.Append("</script>");

            //sScript = sbScript.ToString();

            //ScriptManager.RegisterStartupScript(Page, this.GetType(), "Key", sScript, false);
        }
        catch (Exception ex)
        {
            //  lblmsg.Text = ex.Message;
            //lblmsg.Visible = true;
        }
    }
}

public class GroundWaterService
{
    public string uid { get; set; }
    public string questionairId { get; set; }
    public string entrepreneurId { get; set; }
    public string projectName { get; set; }
    public string applicantName { get; set; }
    public string soDoWo { get; set; }
    public string landSurveyNumber { get; set; }
    public string landGramPanchayat { get; set; }
    public string landVillage { get; set; }
    public string landMandal { get; set; }
    public string landDistrict { get; set; }
    public string landPincode { get; set; }
    public string landEmail { get; set; }
    public string landTelephone { get; set; }
    public string landTotalExtent { get; set; }
    public string landProposedArea { get; set; }
    public string landTotalBuiltUpArea { get; set; }
    public string landExistingRoadWidth { get; set; }
    public string landTypeOfApproachRoad { get; set; }
    public string landComesUnder { get; set; }
    public string entrType { get; set; }
    public string purpose { get; set; }
    public string entrCaste { get; set; }
    public string entrBuildingApproval { get; set; }
    public string entrDifferentlyAbled { get; set; }
    public string entrDoorNo { get; set; }
    public string entrStreetname { get; set; }
    public string entrVillage { get; set; }
    public string entrMandal { get; set; }
    public string entrDistrict { get; set; }
    public string entrState { get; set; }
    public string entrPincode { get; set; }
    public string entrEmail { get; set; }
    public string entrCellno { get; set; }
    public string entrTelephone { get; set; }
    public string entrRegistrationType { get; set; }
    public string entrRegistrationNumber { get; set; }
    public string entrRegistrationDate { get; set; }
    public string lineOfActivity { get; set; }
    public string waterSupplyFrom { get; set; }
    public string waterRequirement { get; set; }
    public string waterDrinking { get; set; }
    public string waterProcessing { get; set; }
    public string typeOfWell { get; set; }
    public string waterConsumptive { get; set; }
    public string waterNonConsumptive { get; set; }
    public string applicationDate { get; set; }
    public string registrationDeed { get; set; }
    public string idCard { get; set; }
    public string combinedSitePlan { get; set; }
    public paymentDetails payment { get; set; }
}
public class paymentDetails
{
    public string amount { get; set; }
    public string paymentId { get; set; }
    public string paymentStatus { get; set; }
}
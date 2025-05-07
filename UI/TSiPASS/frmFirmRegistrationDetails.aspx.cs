using System;
using System.Net;
using System.IO;
using System.Collections.Generic;
using System.Net.Http;
using Newtonsoft.Json;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using Newtonsoft.Json.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;
using System.Configuration;
using System.Security.Cryptography.Pkcs;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using System.Text;

public partial class UI_TSiPASS_frmFirmRegistrationDetails : System.Web.UI.Page
{
    Inputs objInputs = new Inputs();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count <= 0)
        {
            // Response.Redirect("../../frmUserLogin.aspx");
        }

        if (!IsPostBack)
        { 
            if (Session["User_Code"].ToString() == "3" || Session["User_Code"].ToString() == "7" || Session["User_Code"].ToString() == "1" || Session["User_Code"].ToString() == "267"
                 || Session["User_Code"].ToString() == "268" || Session["User_Code"].ToString() == "403")
            {
            }
            else
            {
                Response.Redirect("../../IpassLogin.aspx");
            }
        }
    }

    protected void rdregistration_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rdregistration.SelectedValue == "Name")
        {
            FirmRegistrationNameChange();
        }
        else if (rdregistration.SelectedValue == "Address")
        {
            FirmAddressChange();
            trfirmAddresschange.Visible = true;
        }
        else if (rdregistration.SelectedValue == "Partner")
        {
            FirmPartnerChange();
            trfirmPartnerchange.Visible = true;
        }
        else if (rdregistration.SelectedValue == "PartnerAddress")
        {
            FirmPartnerAddressChange();
            trfirmPartneraddresschange.Visible = true;
        }
    }
    private void FirmRegistrationNameChange()
    {
        try
        {
            string responseJson = "";
            //string FromdateforDB = "", TodateforDB = "";
            if (txtFromDate.Text != "" && txtFromDate.Text.Contains('-'))
            {
                objInputs.fromDate = Convert.ToString(DateTime.ParseExact(txtFromDate.Text, "dd-MM-yyyy", null).ToString("yyyy-MM-dd"));
                objInputs.toDate = Convert.ToString(DateTime.ParseExact(txtTodate.Text, "dd-MM-yyyy", null).ToString("yyyy-MM-dd"));

                //string apiUrl = "http://182.79.115.45:8280/cin/service/integration/1.0.0?CIN=U01100AP2018PTC107442";
                var JsonDetails = JsonConvert.SerializeObject(objInputs);
                ServicePointManager.SecurityProtocol = (SecurityProtocolType)48 | (SecurityProtocolType)192 | (SecurityProtocolType)768 | (SecurityProtocolType)3072;
                string apiUrl = "https://ts.meeseva.telangana.gov.in/ssdgigrsdept/EODBFirmNameChange.htm";// + "cin /service/integration/1.0.0?CIN=" + cin;
                var webRequest = System.Net.WebRequest.Create(apiUrl);
                if (webRequest != null)
                {
                    //     webRequest.Headers.Add("token", "bd16b347e586f05339f830b3a85d8aefa8da92c1");
                    //webRequest.Headers =  "bd16b347e586f05339f830b3a85d8aefa8da92c1";
                    webRequest.Method = "POST";
                    webRequest.Timeout = 20000;
                    webRequest.ContentType = "application/json";

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
                                responseJson = reader.ReadToEnd();
                                ApiResponse objApiResponseFirmNameChangeData = JsonConvert.DeserializeObject<ApiResponse>(responseJson);

                                if (objApiResponseFirmNameChangeData.ResponseCode == "000" && objApiResponseFirmNameChangeData.ResponseMsg == "SUCCESS")
                                {
                                    var jsonObject = JObject.Parse(responseJson);
                                    var data = jsonObject["data"];
                                    GetFIRMREGISTATIONResponse(data.ToString());
                                    DataTable table = new DataTable();

                                    // Assuming all JSON objects have the same structure, use the first object to define columns
                                    var firstItem = data.FirstOrDefault();
                                    if (firstItem != null)
                                    {
                                        foreach (JProperty property in firstItem.Children<JProperty>())
                                        {
                                            table.Columns.Add(property.Name, typeof(string));
                                        }
                                    }

                                    // Add rows to the DataTable
                                    foreach (var item in data)
                                    {
                                        DataRow row = table.NewRow();
                                        foreach (JProperty property in item.Children<JProperty>())
                                        {
                                            if (property.Value != null)
                                            {
                                                row[property.Name] = property.Value.ToString();
                                            }
                                            else
                                            {
                                                row[property.Name] = string.Empty;
                                            }
                                        }
                                        table.Rows.Add(row);
                                    }

                                    // Bind the DataTable to the DataGridView
                                    trgrid.Visible = true;
                                    grdfirmnamechange.DataSource = table;
                                    grdfirmnamechange.DataBind();
                                    foreach (GridViewRow gvrow in grdfirmnamechange.Rows)
                                    {

                                    }
                                    FirmNameChangeData responseData = JsonConvert.DeserializeObject<FirmNameChangeData>(responseJson);
                                    if (responseData != null)
                                    {
                                        //GetFIRMREGISTATIONResponse(responseData.Message);
                                        //Failure.Visible = false;
                                        //if (responseData.Message == "Data fetched Successfully")
                                        //{
                                        //    nsws.Visible = true;

                                        //}
                                        //CinDataDetails cinedata = responseData.Data[0];                     
                                    }
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        LogErrorFile.LogData(ex.ToString());
                    }
                    if (responseJson.Contains("Error occured"))
                    {
                        lblmsg0.Text = "Please enter Correct CIN Number";
                        Failure.Visible = true;
                        return;
                    }
                    else
                    {
                        // Parse the JSON response

                    }
                    // Handle response as needed
                    LogErrorFile.LogData("2");
                    LogErrorFile.LogData(responseJson);
                }
            }

        }
        catch (Exception ex)
        {
            GetFIRMREGISTATIONResponse(ex.ToString());
            LogErrorFile.LogData(ex.ToString());
        }
    }

    private void FirmAddressChange()
    {
        try
        {
            string responseJson = "";
            //string FromdateforDB = "", TodateforDB = "";
            if (txtFromDate.Text != "" && txtFromDate.Text.Contains('-'))
            {
                objInputs.fromDate = Convert.ToString(DateTime.ParseExact(txtFromDate.Text, "dd-MM-yyyy", null).ToString("yyyy-MM-dd"));
                objInputs.toDate = Convert.ToString(DateTime.ParseExact(txtTodate.Text, "dd-MM-yyyy", null).ToString("yyyy-MM-dd"));

                //string apiUrl = "http://182.79.115.45:8280/cin/service/integration/1.0.0?CIN=U01100AP2018PTC107442";
                var JsonDetails = JsonConvert.SerializeObject(objInputs);
                ServicePointManager.SecurityProtocol = (SecurityProtocolType)48 | (SecurityProtocolType)192 | (SecurityProtocolType)768 | (SecurityProtocolType)3072;
                string apiUrl = "https://ts.meeseva.telangana.gov.in/ssdgigrsdept/EODBFirmAddressChange.htm";// + "cin /service/integration/1.0.0?CIN=" + cin;
                var webRequest = System.Net.WebRequest.Create(apiUrl);
                if (webRequest != null)
                {
                    //     webRequest.Headers.Add("token", "bd16b347e586f05339f830b3a85d8aefa8da92c1");
                    //webRequest.Headers =  "bd16b347e586f05339f830b3a85d8aefa8da92c1";
                    webRequest.Method = "POST";
                    webRequest.Timeout = 20000;
                    webRequest.ContentType = "application/json";

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
                                responseJson = reader.ReadToEnd();
                                ApiResponse objApiResponseFirmNameChangeData = JsonConvert.DeserializeObject<ApiResponse>(responseJson);

                                if (objApiResponseFirmNameChangeData.ResponseCode == "000" && objApiResponseFirmNameChangeData.ResponseMsg == "SUCCESS")
                                {
                                    var jsonObject = JObject.Parse(responseJson);
                                    var data = jsonObject["data"];
                                    GetFIRMREGISTATIONResponse(data.ToString());
                                    DataTable table = new DataTable();

                                    // Assuming all JSON objects have the same structure, use the first object to define columns
                                    var firstItem = data.FirstOrDefault();
                                    if (firstItem != null)
                                    {
                                        foreach (JProperty property in firstItem.Children<JProperty>())
                                        {
                                            table.Columns.Add(property.Name, typeof(string));
                                        }
                                    }

                                    // Add rows to the DataTable
                                    foreach (var item in data)
                                    {
                                        DataRow row = table.NewRow();
                                        foreach (JProperty property in item.Children<JProperty>())
                                        {
                                            if (property.Value != null)
                                            {
                                                row[property.Name] = property.Value.ToString();
                                            }
                                            else
                                            {
                                                row[property.Name] = string.Empty;
                                            }
                                        }
                                        table.Rows.Add(row);
                                    }

                                    // Bind the DataTable to the DataGridView
                                    grdfirmnamechange.DataSource = table;
                                    grdfirmnamechange.DataBind();
                                    foreach (GridViewRow gvrow in grdfirmnamechange.Rows)
                                    {

                                    }
                                    FirmNameChangeData responseData = JsonConvert.DeserializeObject<FirmNameChangeData>(responseJson);
                                    if (responseData != null)
                                    {
                                        //GetFIRMREGISTATIONResponse(responseData.Message);
                                        //Failure.Visible = false;
                                        //if (responseData.Message == "Data fetched Successfully")
                                        //{
                                        //    nsws.Visible = true;

                                        //}
                                        //CinDataDetails cinedata = responseData.Data[0];                     
                                    }
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        LogErrorFile.LogData(ex.ToString());
                    }
                    if (responseJson.Contains("Error occured"))
                    {
                        lblmsg0.Text = "Please enter Correct CIN Number";
                        Failure.Visible = true;
                        return;
                    }
                    else
                    {
                        // Parse the JSON response

                    }
                    // Handle response as needed
                    LogErrorFile.LogData("2");
                    LogErrorFile.LogData(responseJson);
                }
            }

        }
        catch (Exception ex)
        {
            GetFIRMREGISTATIONResponse(ex.ToString());
            LogErrorFile.LogData(ex.ToString());
        }
    }

    private void FirmPartnerChange()
    {
        try
        {
            string responseJson = "";
            //string FromdateforDB = "", TodateforDB = "";
            if (txtFromDate.Text != "" && txtFromDate.Text.Contains('-'))
            {
                objInputs.fromDate = Convert.ToString(DateTime.ParseExact(txtFromDate.Text, "dd-MM-yyyy", null).ToString("yyyy-MM-dd"));
                objInputs.toDate = Convert.ToString(DateTime.ParseExact(txtTodate.Text, "dd-MM-yyyy", null).ToString("yyyy-MM-dd"));

                //string apiUrl = "http://182.79.115.45:8280/cin/service/integration/1.0.0?CIN=U01100AP2018PTC107442";
                var JsonDetails = JsonConvert.SerializeObject(objInputs);
                ServicePointManager.SecurityProtocol = (SecurityProtocolType)48 | (SecurityProtocolType)192 | (SecurityProtocolType)768 | (SecurityProtocolType)3072;
                string apiUrl = "https://ts.meeseva.telangana.gov.in/ssdgigrsdept/EODBFirmPartnerChange.htm";// + "cin /service/integration/1.0.0?CIN=" + cin;
                var webRequest = System.Net.WebRequest.Create(apiUrl);
                if (webRequest != null)
                {
                    //     webRequest.Headers.Add("token", "bd16b347e586f05339f830b3a85d8aefa8da92c1");
                    //webRequest.Headers =  "bd16b347e586f05339f830b3a85d8aefa8da92c1";
                    webRequest.Method = "POST";
                    webRequest.Timeout = 20000;
                    webRequest.ContentType = "application/json";

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
                                responseJson = reader.ReadToEnd();
                                ApiResponse objApiResponseFirmNameChangeData = JsonConvert.DeserializeObject<ApiResponse>(responseJson);

                                if (objApiResponseFirmNameChangeData.ResponseCode == "000" && objApiResponseFirmNameChangeData.ResponseMsg == "SUCCESS")
                                {
                                    var jsonObject = JObject.Parse(responseJson);
                                    var data = jsonObject["data"];
                                    GetFIRMREGISTATIONResponse(data.ToString());
                                    DataTable table = new DataTable();

                                    // Assuming all JSON objects have the same structure, use the first object to define columns
                                    var firstItem = data.FirstOrDefault();
                                    if (firstItem != null)
                                    {
                                        foreach (JProperty property in firstItem.Children<JProperty>())
                                        {
                                            table.Columns.Add(property.Name, typeof(string));
                                        }
                                    }

                                    // Add rows to the DataTable
                                    foreach (var item in data)
                                    {
                                        DataRow row = table.NewRow();
                                        foreach (JProperty property in item.Children<JProperty>())
                                        {
                                            if (property.Value != null)
                                            {
                                                row[property.Name] = property.Value.ToString();
                                            }
                                            else
                                            {
                                                row[property.Name] = string.Empty;
                                            }
                                        }
                                        table.Rows.Add(row);
                                    }

                                    // Bind the DataTable to the DataGridView
                                    grdfirmnamechange.DataSource = table;
                                    grdfirmnamechange.DataBind();
                                    foreach (GridViewRow gvrow in grdfirmnamechange.Rows)
                                    {

                                    }
                                    FirmNameChangeData responseData = JsonConvert.DeserializeObject<FirmNameChangeData>(responseJson);
                                    if (responseData != null)
                                    {
                                        //GetFIRMREGISTATIONResponse(responseData.Message);
                                        //Failure.Visible = false;
                                        //if (responseData.Message == "Data fetched Successfully")
                                        //{
                                        //    nsws.Visible = true;

                                        //}
                                        //CinDataDetails cinedata = responseData.Data[0];                     
                                    }
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        LogErrorFile.LogData(ex.ToString());
                    }
                    if (responseJson.Contains("Error occured"))
                    {
                        lblmsg0.Text = "Please enter Correct CIN Number";
                        Failure.Visible = true;
                        return;
                    }
                    else
                    {
                        // Parse the JSON response

                    }
                    // Handle response as needed
                    LogErrorFile.LogData("2");
                    LogErrorFile.LogData(responseJson);
                }
            }

        }
        catch (Exception ex)
        {
            GetFIRMREGISTATIONResponse(ex.ToString());
            LogErrorFile.LogData(ex.ToString());
        }
    }

    private void FirmPartnerAddressChange()
    {
        try
        {
            string responseJson = "";
            //string FromdateforDB = "", TodateforDB = "";
            if (txtFromDate.Text != "" && txtFromDate.Text.Contains('-'))
            {
                objInputs.fromDate = Convert.ToString(DateTime.ParseExact(txtFromDate.Text, "dd-MM-yyyy", null).ToString("yyyy-MM-dd"));
                objInputs.toDate = Convert.ToString(DateTime.ParseExact(txtTodate.Text, "dd-MM-yyyy", null).ToString("yyyy-MM-dd"));

                //string apiUrl = "http://182.79.115.45:8280/cin/service/integration/1.0.0?CIN=U01100AP2018PTC107442";
                var JsonDetails = JsonConvert.SerializeObject(objInputs);
                ServicePointManager.SecurityProtocol = (SecurityProtocolType)48 | (SecurityProtocolType)192 | (SecurityProtocolType)768 | (SecurityProtocolType)3072;
                string apiUrl = "https://ts.meeseva.telangana.gov.in/ssdgigrsdept/EODBFirmPartnerAddressChange.htm";// + "cin /service/integration/1.0.0?CIN=" + cin;
                var webRequest = System.Net.WebRequest.Create(apiUrl);
                if (webRequest != null)
                {
                    //     webRequest.Headers.Add("token", "bd16b347e586f05339f830b3a85d8aefa8da92c1");
                    //webRequest.Headers =  "bd16b347e586f05339f830b3a85d8aefa8da92c1";
                    webRequest.Method = "POST";
                    webRequest.Timeout = 20000;
                    webRequest.ContentType = "application/json";

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
                                responseJson = reader.ReadToEnd();
                                ApiResponse objApiResponseFirmNameChangeData = JsonConvert.DeserializeObject<ApiResponse>(responseJson);

                                if (objApiResponseFirmNameChangeData.ResponseCode == "000" && objApiResponseFirmNameChangeData.ResponseMsg == "SUCCESS")
                                {
                                    var jsonObject = JObject.Parse(responseJson);
                                    var data = jsonObject["data"];
                                    GetFIRMREGISTATIONResponse(data.ToString());
                                    DataTable table = new DataTable();

                                    // Assuming all JSON objects have the same structure, use the first object to define columns
                                    var firstItem = data.FirstOrDefault();
                                    if (firstItem != null)
                                    {
                                        foreach (JProperty property in firstItem.Children<JProperty>())
                                        {
                                            table.Columns.Add(property.Name, typeof(string));
                                        }
                                    }

                                    // Add rows to the DataTable
                                    foreach (var item in data)
                                    {
                                        DataRow row = table.NewRow();
                                        foreach (JProperty property in item.Children<JProperty>())
                                        {
                                            if (property.Value != null)
                                            {
                                                row[property.Name] = property.Value.ToString();
                                            }
                                            else
                                            {
                                                row[property.Name] = string.Empty;
                                            }
                                        }
                                        table.Rows.Add(row);
                                    }

                                    // Bind the DataTable to the DataGridView
                                    grdfirmnamechange.DataSource = table;
                                    grdfirmnamechange.DataBind();
                                    foreach (GridViewRow gvrow in grdfirmnamechange.Rows)
                                    {

                                    }
                                    FirmNameChangeData responseData = JsonConvert.DeserializeObject<FirmNameChangeData>(responseJson);
                                    if (responseData != null)
                                    {
                                        //GetFIRMREGISTATIONResponse(responseData.Message);
                                        //Failure.Visible = false;
                                        //if (responseData.Message == "Data fetched Successfully")
                                        //{
                                        //    nsws.Visible = true;

                                        //}
                                        //CinDataDetails cinedata = responseData.Data[0];                     
                                    }
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        LogErrorFile.LogData(ex.ToString());
                    }
                    if (responseJson.Contains("Error occured"))
                    {
                        lblmsg0.Text = "Please enter Correct CIN Number";
                        Failure.Visible = true;
                        return;
                    }
                    else
                    {
                        // Parse the JSON response

                    }
                    // Handle response as needed
                    LogErrorFile.LogData("2");
                    LogErrorFile.LogData(responseJson);
                }
            }

        }
        catch (Exception ex)
        {
            GetFIRMREGISTATIONResponse(ex.ToString());
            LogErrorFile.LogData(ex.ToString());
        }
    }

    public void GetFIRMREGISTATIONResponse(string Responce)
    {
        DB.DB con = new DB.DB();
        con.OpenConnection();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        try
        {
            da = new SqlDataAdapter("USP_INS_FIRMREGISTATIONRESPONSE", con.GetConnection);
            da.SelectCommand.Parameters.Add("@responce", SqlDbType.VarChar).Value = Responce.ToString();
            da.SelectCommand.Parameters.Add("@Online", SqlDbType.VarChar).Value = "Online";
            da.SelectCommand.Parameters.Add("@Module", SqlDbType.VarChar).Value = rdregistration.SelectedValue.Trim();
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.Fill(ds);
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
}
public class Inputs
{
    public string fromDate { get; set; }
    public string toDate { get; set; }
}
public class FirmNameChangeData
{
    public string FirmRegistrationNo { get; set; }
    public string FirmRegistrationYear { get; set; }
    public string FirmPreviousName { get; set; }
    public string FirmNewName { get; set; }
    public string ApprovedBy { get; set; }
    public string ApprovedDate { get; set; }
}

public class ApiResponse
{
    public string ResponseCode { get; set; }
    public string ResponseMsg { get; set; }
    public List<FirmNameChangeData> Data { get; set; }
}

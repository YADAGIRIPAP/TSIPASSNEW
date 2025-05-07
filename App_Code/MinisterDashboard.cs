using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Globalization;
using System.IO;

/// <summary>
/// Summary description for MinisterDashboard
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class MinisterDashboard : System.Web.Services.WebService
{
    DB.DB con = new DB.DB();
    DataSet ds;
    DataTable dt;
    SqlDataAdapter myDataAdapter;
    comFunctions cmf = new comFunctions();
    public MinisterDashboard()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }
    [WebMethod]
    public string TGiPASSData(string fromdate, string todate)
    {
        string lblmsg = "";
        string FromdateforDB = "", TodateforDB = "";
        try
        {
            FromdateforDB = Convert.ToString(DateTime.ParseExact(fromdate , "dd-MM-yyyy", null).ToString("MM-dd-yyyy"));
            TodateforDB = Convert.ToString(DateTime.ParseExact(todate , "dd-MM-yyyy", null).ToString("MM-dd-yyyy"));

            con.OpenConnection();
            SqlDataAdapter myDataAdapter;
            myDataAdapter = new SqlDataAdapter("USP_GET_MINISTER_DASHBOARD", con.GetConnection);
            myDataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (FromdateforDB.Trim() == "" || FromdateforDB.Trim() == null || FromdateforDB.Trim() == "--Select--")
            {
                myDataAdapter.SelectCommand.Parameters.Add("@FromDate", SqlDbType.VarChar).Value = "%";
            }
            else
            {
                myDataAdapter.SelectCommand.Parameters.Add("@FromDate", SqlDbType.VarChar).Value = FromdateforDB;
            }
            if (TodateforDB.Trim() == "" || TodateforDB.Trim() == null || TodateforDB.Trim() == "--Select--")
            {
                myDataAdapter.SelectCommand.Parameters.Add("@ToDate", SqlDbType.VarChar).Value = "%";
            }
            else
            {
                myDataAdapter.SelectCommand.Parameters.Add("@ToDate", SqlDbType.VarChar).Value = TodateforDB;
            }

            ds = new System.Data.DataSet();
            myDataAdapter.Fill(ds);
            lblmsg = ds.GetXml();

            //return lblmsg;
        }
        catch (Exception ex)
        {
            con.CloseConnection();
            throw ex;
        }
        finally
        {
            con.CloseConnection();

        }
        return lblmsg;
    }

    [WebMethod]
    public string TGIncentivesData(string Caste, string fromdate, string todate)
    {
        string lblmsg = "";
        string FromdateforDB = "", TodateforDB = "";
        try
        {
            FromdateforDB = Convert.ToString(DateTime.ParseExact(fromdate, "dd-MM-yyyy", null).ToString("MM-dd-yyyy"));
            TodateforDB = Convert.ToString(DateTime.ParseExact(todate, "dd-MM-yyyy", null).ToString("MM-dd-yyyy"));

            con.OpenConnection();
            SqlDataAdapter myDataAdapter;
            myDataAdapter = new SqlDataAdapter("USP_GET_INCENTIVES_SANCTIONED_MINISTER", con.GetConnection);
            myDataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (Caste.Trim() == "" || Caste.Trim() == null || Caste.Trim() == "--Select--")
            {
                myDataAdapter.SelectCommand.Parameters.Add("@CASTE", SqlDbType.VarChar).Value = "%";
            }
            else
            {
                myDataAdapter.SelectCommand.Parameters.Add("@CASTE", SqlDbType.VarChar).Value = Caste;
            }
            if (FromdateforDB.Trim() == "" || FromdateforDB.Trim() == null || FromdateforDB.Trim() == "--Select--")
            {
                myDataAdapter.SelectCommand.Parameters.Add("@FromDate", SqlDbType.VarChar).Value = "%";
            }
            else
            {
                myDataAdapter.SelectCommand.Parameters.Add("@FromDate", SqlDbType.VarChar).Value = FromdateforDB;
            }
            if (TodateforDB.Trim() == "" || TodateforDB.Trim() == null || TodateforDB.Trim() == "--Select--")
            {
                myDataAdapter.SelectCommand.Parameters.Add("@ToDate", SqlDbType.VarChar).Value = "%";
            }
            else
            {
                myDataAdapter.SelectCommand.Parameters.Add("@ToDate", SqlDbType.VarChar).Value = TodateforDB;
            }

            ds = new System.Data.DataSet();
            myDataAdapter.Fill(ds);
            lblmsg = ds.GetXml();

            //return lblmsg;
        }
        catch (Exception ex)
        {
            con.CloseConnection();
            throw ex;
        }
        finally
        {
            con.CloseConnection();

        }
        return lblmsg;
    }

    [WebMethod]
    public string DepartmentWisePendency(string status, string type, string dept, string fromdate, string todate)
    {
        string lblmsg = "";
        string FromdateforDB = "", TodateforDB = "";
        try
        {
            FromdateforDB = Convert.ToString(DateTime.ParseExact(fromdate, "dd-MM-yyyy", null).ToString("MM-dd-yyyy"));
            TodateforDB = Convert.ToString(DateTime.ParseExact(todate, "dd-MM-yyyy", null).ToString("MM-dd-yyyy"));

            con.OpenConnection();
            SqlDataAdapter myDataAdapter;
            myDataAdapter = new SqlDataAdapter("DeptReportDepartmentWise_New1_CFE_FORAGENDA_drilldown_MinisterDashboard", con.GetConnection);
            myDataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (status.Trim() == "" || status.Trim() == null || status.Trim() == "--Select--")
            {
                myDataAdapter.SelectCommand.Parameters.AddWithValue("@status", SqlDbType.VarChar).Value = "%";
            }
            else
            {
                myDataAdapter.SelectCommand.Parameters.Add("@status", SqlDbType.VarChar).Value = status;
            }
            if (type.Trim() == "" || type.Trim() == null || type.Trim() == "--Select--")
            {
                myDataAdapter.SelectCommand.Parameters.AddWithValue("@type", SqlDbType.VarChar).Value = "%";
            }
            else
            {
                myDataAdapter.SelectCommand.Parameters.Add("@type", SqlDbType.VarChar).Value = type;
            }
            if (dept.Trim() == "" || dept.Trim() == null || dept.Trim() == "--Select--")
            {
                myDataAdapter.SelectCommand.Parameters.AddWithValue("@dept", SqlDbType.VarChar).Value = "%";
            }
            else
            {
                myDataAdapter.SelectCommand.Parameters.Add("@dept", SqlDbType.VarChar).Value = dept;
            }

            if (FromdateforDB.Trim() == "" || FromdateforDB.Trim() == null || FromdateforDB.Trim() == "--Select--")
            {
                myDataAdapter.SelectCommand.Parameters.Add("@FromDate", SqlDbType.VarChar).Value = "%";
            }
            else
            {
                myDataAdapter.SelectCommand.Parameters.Add("@FromDate", SqlDbType.VarChar).Value = FromdateforDB;
            }
            if (TodateforDB.Trim() == "" || TodateforDB.Trim() == null || TodateforDB.Trim() == "--Select--")
            {
                myDataAdapter.SelectCommand.Parameters.Add("@ToDate", SqlDbType.VarChar).Value = "%";
            }
            else
            {
                myDataAdapter.SelectCommand.Parameters.Add("@ToDate", SqlDbType.VarChar).Value = TodateforDB;
            }

            ds = new System.Data.DataSet();
            myDataAdapter.Fill(ds);
            lblmsg = ds.GetXml();

            //return lblmsg;
        }
        catch (Exception ex)
        {
            con.CloseConnection();
            throw ex;
        }
        finally
        {
            con.CloseConnection();

        }
        return lblmsg;
    }
}

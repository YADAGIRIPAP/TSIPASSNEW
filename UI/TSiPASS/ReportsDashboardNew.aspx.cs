﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Dashboard : System.Web.UI.Page
{
    //designed by siva as on 29-1-2016 
    //Purpose : Report for Year wise dashboard
    //Tables used : All
    //Stored procedures Used :YearwiseDashboardforAdmin

    General Gen = new General();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session.Count <= 0)
        {
            Response.Redirect("~/Index.aspx");

        }

        if (!IsPostBack)
        {


            if (Session["uid"].ToString() == "1238")
            {

                lst1.Visible = true;
                Li6.Visible = true;
                Li10Pendency.Visible = true;
                LiRkotak.Visible = true;
            }
            else
            {
                lst1.Visible = false;
                Li6.Visible = false;
                Li10Pendency.Visible = false;
                LiRkotak.Visible = false;
            }

            if (Session["uid"].ToString() == "1213")
            {
                VATManufacture.Visible = true;
                VATExporters.Visible = true;
                Association.Visible = true;
                Li12.Visible = true;
                lblmandalwisedata.Visible = false;
                lblmandalwisesanctioneddata.Visible = false;
            }
            else
            {
                VATManufacture.Visible = false;
                VATExporters.Visible = false;
                Association.Visible = false;
            }

            if (Session["userlevel"].ToString() == "10")
            {
                Masters.Visible = false;
            }

            if (Session["DistrictID"].ToString() == "")
            {
                LiR52.Visible = true;
            }
            else
            {
                Masters.Visible = false;
                Li1.Visible = false;
                LiR8.Visible = false;
                LiR9.Visible = false;
                LiR10.Visible = false;
                LiR52.Visible = false;
                Li43.Visible = false;
            }
            if (Session["Role_Code"].ToString() == "GM" )
            {
                if (Session["uid"].ToString() == "1238")
                {
                    Masters.Visible = true;
                    li6_1.Visible = true;
                    li6_2.Visible = true;
                    li6_3.Visible = true;
                    li6_4.Visible = true;
                    li6_5.Visible = true;
                    li6_6.Visible = true;
                    li6_7.Visible = true;
                    li6_8.Visible = true;
                    li6_9.Visible = true;
                    li6_10.Visible = true;
                    li6_11.Visible = true;
                }
                else
                {
                    Masters.Visible = true;
                    li6_1.Visible = true;
                    li6_2.Visible = false;
                    li6_3.Visible = false;
                    li6_4.Visible = false;
                    li6_5.Visible = false;
                    li6_6.Visible = false;
                    li6_7.Visible = false;
                    li6_8.Visible = false;
                    li6_9.Visible = false;
                    li6_10.Visible = false;
                    li6_11.Visible = false;
                }
                
            }
            if (Session["uid"].ToString() == "9942" || Session["uid"].ToString() == "1222")
            {
                Li43.Visible = true;
                LiR32.Visible = true;
                liR5ApplicationData.Visible = true;
            }
            else
            {
                Li43.Visible = false;
                liR5ApplicationData.Visible = false;
                LiR32.Visible = true;
            }
            if (Session["uid"].ToString() == "1222" || Session["uid"].ToString() == "9942")
            {
                Li33.Visible = true;
            }
            else
            {
                Li33.Visible = false;
            }

            if (Session["uid"].ToString() == "1222")
            {
                li10.Visible = true;
                li13.Visible = true;
            }
            else
            {
                li10.Visible = false;
                li13.Visible = false;
            }

            if (Session["uid"].ToString() == "1238")
            {
                Li10Pendency.Visible = true;
            }
            else
            {
                Li10Pendency.Visible = false;
            }

            if (Session["Role_Code"].ToString() == "IPO" || Session["Role_Code"].ToString() == "AD" || Session["Role_Code"].ToString() == "DD")
            {
                lblmandalwisedata.Visible = false;
                lblmandalwisesanctioneddata.Visible = false;
                 
            }
            

            if (Session["Role_Code"].ToString() == "IPO" || Session["Role_Code"].ToString() == "AD" || Session["Role_Code"].ToString() == "DD")
            {
                rankingreport.Visible = false;
                Li5.Visible = false;
                Li7.Visible = false;
                Li9.Visible = false;
                Li11.Visible = false;
                lblR7.Text = "R6. Mandal Wise Abstract Latest";
                lblR8.Text = "R7: Mandal Wise Sanctioned Claims (Incentives)";

            }

            if ( Session["Role_Code"].ToString() == "GM")
            {
                rankingreport.Visible = false;
                Li5.Visible = false;
                Li7.Visible = false;
                Li9.Visible = false;
                Li11.Visible = false;
                lblR7.Text = "R7. Mandal Wise Abstract Latest";
                lblR8.Text = "R8: Mandal Wise Sanctioned Claims (Incentives)";

            }
            if (Session["uid"].ToString() == "1238")
            {
                lblR7.Text = "R20. Mandal Wise Abstract Latest";
                lblR8.Text = "R21: Mandal Wise Sanctioned Claims (Incentives)";
            }
            if (Session["uid"].ToString() == "1213")
            {
                lblR7.Text = "R7. Mandal Wise Abstract Latest";
                lblR8.Text = "R8: Mandal Wise Sanctioned Claims (Incentives)";
            }
            if (Session["uid"].ToString() == "1213")
            {
                Li1.Visible = false;
                LiR8.Visible = false;
                LiR9.Visible = false;
                LiR10.Visible = false;
                LiR101.Visible = false;
                LiR11.Visible = false;
                LiR12.Visible = false;
                Li7.Visible = false;
                Li9.Visible = false;
                Li11.Visible = false;
                Li12.Visible = false;
                rankingreport.Visible = false;
                Li5.Visible = false;
                Lir14a.Visible = false;
                Lir15a.Visible = false;
                Lir16a.Visible = false;
                Lir17a.Visible = false;
            }
        }


    }


}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit.HTMLEditor.ToolbarButton;
using Org.BouncyCastle.Asn1.Ocsp;

public partial class UI_CFEDetailsVerify : System.Web.UI.Page
{
    string ErrorMsg = "";
    DB.DB con = new DB.DB();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rblTsipass_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (rblTsipass.SelectedValue == "Y")
            {
                Login.Visible = true;
            }
            else { Login.Visible = false; }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    protected void rblExpansion_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (rblExpansion.SelectedValue == "N")
            {
                Plant.Visible = true;
                Build.Visible = true;
                Land.Visible = true;
                Annual.Visible = true;
                Male.Visible = true;
                Female.Visible = true;
            }
            else
            {
                Plant.Visible = false;
                Build.Visible = false;
                Land.Visible = false;
                Annual.Visible = false;
                Male.Visible = false;
                Female.Visible = false;
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            ErrorMsg = Validations();
            if (ErrorMsg == "")
            {
                SqlCommand com = new SqlCommand();
                com.CommandType = CommandType.StoredProcedure;

                com.CommandText = "USP_INSERTCFEUserVerifedData";

                com.Parameters.Add("@intCFEEnterpid", SqlDbType.Int).Value = lblCFEEnterpid.Text.Trim();
                com.Parameters.Add("@UIDNo", SqlDbType.VarChar).Value = lblUidNo.Text.Trim();
                com.Parameters.Add("@PANno", SqlDbType.Int).Value = txtPan.Text.Trim();
                com.Parameters.Add("@GSTno", SqlDbType.VarChar).Value = txtgst.Text.Trim();
                com.Parameters.Add("@SectorType", SqlDbType.VarChar).Value = rblSector.SelectedItem.Text.Trim();
                com.Parameters.Add("@NEWorExpansion", SqlDbType.VarChar).Value = rblExpansion.SelectedItem.Text.Trim();

                com.Parameters.Add("@New_PMCost", SqlDbType.VarChar).Value = txtNewPlantMachnryCost.Text.Trim();
                com.Parameters.Add("@New_BuildingCost", SqlDbType.Int).Value = txtNewBuildingCost.Text.Trim();
                com.Parameters.Add("@New_LandCost", SqlDbType.VarChar).Value = txtNewLandCost.Text.Trim();
                com.Parameters.Add("@New_AnnualTurnOver", SqlDbType.Int).Value = txtNewTurnover.Text.Trim();
                com.Parameters.Add("@New_MaleEmp", SqlDbType.VarChar).Value = txtNewMale.Text.Trim();
                com.Parameters.Add("@New_FemaleEmp", SqlDbType.Int).Value = txtNewFemale.Text.Trim();
                com.Parameters.Add("@New_TotalEmp", SqlDbType.Int).Value = txtNewTotal.Text.Trim();

                if (txtExpPlantMachnryCost.Text.Trim() == "" || txtExpPlantMachnryCost.Text.Trim() == null)
                    com.Parameters.Add("@Expnsn_PMCost", SqlDbType.VarChar).Value = DBNull.Value;
                else
                    com.Parameters.Add("@Expnsn_PMCost", SqlDbType.VarChar).Value = txtExpPlantMachnryCost.Text.Trim();

                if (txtExpBuildingCost.Text.Trim() == "" || txtExpBuildingCost.Text.Trim() == null)
                    com.Parameters.Add("@Expnsn_BuildingCost", SqlDbType.VarChar).Value = DBNull.Value;
                else
                    com.Parameters.Add("@Expnsn_BuildingCost", SqlDbType.VarChar).Value = txtExpBuildingCost.Text.Trim();

                if (txtExpLandCost.Text.Trim() == "" || txtExpLandCost.Text.Trim() == null)
                    com.Parameters.Add("@Expnsn_LandCost", SqlDbType.VarChar).Value = DBNull.Value;
                else
                    com.Parameters.Add("@Expnsn_LandCost", SqlDbType.VarChar).Value = txtExpLandCost.Text.Trim();

                if (txtExpTurnover.Text.Trim() == "" || txtExpTurnover.Text.Trim() == null)
                    com.Parameters.Add("@Expnsn_AnnualTurnOver", SqlDbType.VarChar).Value = DBNull.Value;
                else
                    com.Parameters.Add("@Expnsn_AnnualTurnOver", SqlDbType.VarChar).Value = txtExpTurnover.Text.Trim();

                if (txtExpMale.Text.Trim() == "" || txtExpMale.Text.Trim() == null)
                    com.Parameters.Add("@Expnsn_MaleEmp", SqlDbType.VarChar).Value = DBNull.Value;
                else
                    com.Parameters.Add("@Expnsn_MaleEmp", SqlDbType.VarChar).Value = txtExpMale.Text.Trim();

                if (txtExpFemale.Text.Trim() == "" || txtExpFemale.Text.Trim() == null)
                    com.Parameters.Add("@Expnsn_FemaleEmp", SqlDbType.VarChar).Value = DBNull.Value;
                else
                    com.Parameters.Add("@Expnsn_FemaleEmp", SqlDbType.VarChar).Value = txtExpFemale.Text.Trim();

                if (txtExpTotal.Text.Trim() == "" || txtExpTotal.Text.Trim() == null)
                    com.Parameters.Add("@Expnsn_TotalEmp", SqlDbType.VarChar).Value = DBNull.Value;
                else
                    com.Parameters.Add("@Expnsn_TotalEmp", SqlDbType.VarChar).Value = txtExpTotal.Text.Trim();

                com.Parameters.Add("@HadOtherLogins", SqlDbType.VarChar).Value = rblTsipass.SelectedItem.Text.Trim();
                if (txtTSiPasslogins.Text.Trim() == "" || txtTSiPasslogins.Text.Trim() == null)
                    com.Parameters.Add("@LoginUsernames", SqlDbType.VarChar).Value = DBNull.Value;
                else
                    com.Parameters.Add("@LoginUsernames", SqlDbType.VarChar).Value = txtTSiPasslogins.Text.Trim();

                com.Parameters.Add("@Result", SqlDbType.Int, 500);
                com.Parameters["@Result"].Direction = ParameterDirection.Output;
                com.ExecuteNonQuery();
                int valid = (Int32)com.Parameters["@Result"].Value;

                com.Connection = con.GetConnection;

                try
                {
                    com.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    con.CloseConnection();
                    throw ex;
                }
                finally
                {
                    com.Dispose();
                    con.CloseConnection();
                }


            }
            else
            {
                string message = "alert('" + ErrorMsg + "')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                return;
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    public string Validations()
    {
        try
        {
            int slno = 1;
            string errormsg = "";
            if (string.IsNullOrEmpty(txtPan.Text) || txtPan.Text == "" || txtPan.Text == null)
            {
                errormsg = errormsg + slno + ". Please Enter PAN NO..! \\n";
                slno = slno + 1;
            }
            if (string.IsNullOrEmpty(txtgst.Text) || txtgst.Text == "" || txtgst.Text == null)
            {
                errormsg = errormsg + slno + ". Please Enter GST NO...! \\n";
                slno = slno + 1;
            }
            if (rblSector.SelectedIndex == -1)
            {
                errormsg = errormsg + slno + ". Please Enter Type of Sector \\n";
                slno = slno + 1;
            }
            if (rblExpansion.SelectedIndex == -1)
            {
                errormsg = errormsg + slno + ". Please Enter New & Expansion \\n";
                slno = slno + 1;
            }
            else if (rblExpansion.SelectedValue == "Expansion")
            {
                if (string.IsNullOrEmpty(txtNewPlantMachnryCost.Text) || txtNewPlantMachnryCost.Text == "" || txtNewPlantMachnryCost.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Existing Plant & Machinery Cost...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtNewBuildingCost.Text) || txtNewBuildingCost.Text == "" || txtNewBuildingCost.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Existing Building Cost...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtNewLandCost.Text) || txtNewLandCost.Text == "" || txtNewLandCost.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Existing Enter Land Cost...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtNewTurnover.Text) || txtNewTurnover.Text == "" || txtNewTurnover.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Existing Annual TurnOver...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtNewMale.Text) || txtNewMale.Text == "" || txtNewMale.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Existing Enter Male Employee...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtNewFemale.Text) || txtNewFemale.Text == "" || txtNewFemale.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Existing Enter Female Employee...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtNewTotal.Text) || txtNewTotal.Text == "" || txtNewTotal.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Existing Total Employee...! \\n";
                    slno = slno + 1;
                }


                if (string.IsNullOrEmpty(txtExpPlantMachnryCost.Text) || txtExpPlantMachnryCost.Text == "" || txtExpPlantMachnryCost.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Expnasion Plant & Machinery Cost...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtExpBuildingCost.Text) || txtExpBuildingCost.Text == "" || txtExpBuildingCost.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Existing Building Cost...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtExpLandCost.Text) || txtExpLandCost.Text == "" || txtExpLandCost.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Existing Land Cost...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtExpTurnover.Text) || txtExpTurnover.Text == "" || txtExpTurnover.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Existing TurnOver...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtExpMale.Text) || txtExpMale.Text == "" || txtExpMale.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Existing Male Employee...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtExpFemale.Text) || txtExpFemale.Text == "" || txtExpFemale.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Existing Female Employee...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtExpTotal.Text) || txtExpTotal.Text == "" || txtExpTotal.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Existing Total Employee...! \\n";
                    slno = slno + 1;
                }
            }
            else
            {
                if (string.IsNullOrEmpty(txtNewPlantMachnryCost.Text) || txtNewPlantMachnryCost.Text == "" || txtNewPlantMachnryCost.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Plant & Machinery Cost...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtNewBuildingCost.Text) || txtNewBuildingCost.Text == "" || txtNewBuildingCost.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Building Cost...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtNewLandCost.Text) || txtNewLandCost.Text == "" || txtNewLandCost.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Land Cost...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtNewTurnover.Text) || txtNewTurnover.Text == "" || txtNewTurnover.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter TurnOver...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtNewMale.Text) || txtNewMale.Text == "" || txtNewMale.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Male Employee...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtNewFemale.Text) || txtNewFemale.Text == "" || txtNewFemale.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Female Employee...! \\n";
                    slno = slno + 1;
                }
                if (string.IsNullOrEmpty(txtNewTotal.Text) || txtNewTotal.Text == "" || txtNewTotal.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter Total Employee...! \\n";
                    slno = slno + 1;
                }
            }

            if (rblTsipass.SelectedIndex == -1)
            {
                errormsg = errormsg + slno + ". Please Enter Already TSiPASS Login...! \\n";
                slno = slno + 1;
            }
            else if (rblTsipass.SelectedValue == "Y")
            {
                if (string.IsNullOrEmpty(txtTSiPasslogins.Text) || txtTSiPasslogins.Text == "" || txtTSiPasslogins.Text == null)
                {
                    errormsg = errormsg + slno + ". Please Enter TSiPASS Login Usernames...! \\n";
                    slno = slno + 1;
                }
            }
            return errormsg;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

}
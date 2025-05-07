using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Sockets;

public partial class UI_TSiPASS_mailchecking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string msgMobile = "Dear sowjanya ch " + "\r\n" + "" + "You are receiving mail from TSIPASS : ";
        msgMobile = msgMobile + "\r\n" + "\r\n" + "Regards ," + "\r\n" + "Commissionerate of Industries," + "\n" + "TS-iPASS Cell.";

        string bodyMobile = msgMobile;
        //SendSingleSMSnew(txtcontact.Text, bodyMobile);
        //SendSingleSMSnew(txtcontact.Text, bodyMobile, "1007055554890143840");
        // Button1.Text = "Click Here To Register";

        try
        {
            string from = "tsipass.telangana@gmail.com"; //Replace this with your own correct Gmail Address

            string to = "sowjanya128@gmail.com"; //Replace this with the Email Address to whom you want to send the mail

            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(to);
            //mail.CC.Add("kcsbabu@gmail.com");
            //mail.CC.Add("coi.tsipass@gmail.com");
            //mail.CC.Add("support@fruxsoft.com");

            mail.From = new MailAddress(from, ":: TSiPASS ::", System.Text.Encoding.UTF8);

            mail.Subject = "Mail Checking Details -Industries Department";// + Session["user_id"].ToString()

            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = msgMobile;
            mail.BodyEncoding = System.Text.Encoding.UTF8;

            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;

            SmtpClient client = new SmtpClient();
            //Add the Creddentials- use your own email id and password
            //System.Net.Sockets.Socket.DoConnect;
            client.Credentials = new System.Net.NetworkCredential(from, "lrefskmlxnoowqtc");

            client.Port = 587; // Gmail works on this port
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true; //Gmail works on Server Secured Layer
            try
            {
                client.Send(mail);
                //Session.Remove("File");
                //Session.Remove("FileName");
                lblmsg.Text = "mail has been sent";
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
        catch (Exception ex)
        {
            //lblmsg0.Text = "Internal error has occured. Please try after some time";
            lblmsg.Text = ex.Message;

        }

        try
        {
            comFunctions cmf = new comFunctions();
             mf.SendSingleSMSnew("7569039545", "TS-iPASS:Dear Sir, Incentive Inspection is scheduled for your application (" + "123456" + ") on " + "12-12-2024" + ", and your assigned Inspecting Officer is " + "sowjanya" + " and contact number is " + "7337071930" + ".Please bring your vehicle to  DIC - " + "ddldistrictunit" + " Thank You, GM, DIC " + "ddldistrictunit" + " Govt.of Telangana.", "1007878969704519195");
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}
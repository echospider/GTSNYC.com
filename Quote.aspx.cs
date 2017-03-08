using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

public partial class Quote222 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {


            MailMessage msgMail = new MailMessage();
            //MailAddress _mailAdd = new MailAddress("info@GTSNYC.com");
            MailAddress _mailAdd = new MailAddress("noreply@gtsnyc.com");
            msgMail.To.Add("info@gtsnyc.com");
            
            msgMail.From = _mailAdd;
            msgMail.Subject = "Your Quote Information";

            msgMail.IsBodyHtml = true;

            StringBuilder mailbody = new StringBuilder();
            mailbody.Append("You've received a new quote request</br>");

            mailbody.Append("---------</br>" + "Last Name:" + txtLastName.Text + ",Firs Name:" + txtFirsName.Text + "</br>");
            mailbody.Append("Organizations:" + txtOrg.Text + "</br>");
            mailbody.Append("Address:" + txtAddress1.Text + "</br>" + txtAddress1.Text + "</br>");
            mailbody.Append("City :" + txtTownCity.Text + "State" + DrpStateProvince.SelectedItem.Text + "</br>");
            mailbody.Append("Country :" + DrpCountry.SelectedItem.Text + "</br>");
            mailbody.Append("Phone Number:" + txtWorkPhone.Text + "</br>");
            mailbody.Append("Fax Number:" + txtFaxPhone.Text + "</br>");
            mailbody.Append("E-Mail Address:" + txtEmail.Text + "</br>");




            msgMail.Body = mailbody.ToString();
        
            SmtpClient client = new SmtpClient();
            client.Host = "smtpout.secureserver.net";
            client.Credentials = new System.Net.NetworkCredential("noreply@gtsnyc.com", "gTSNYC@222");
            
            client.Port = 25;
            try
            {
                client.Send(msgMail);
                lblSent.Text = "Email Sent";
            }
            catch (Exception ex)
            {
                lblSent.Text = ex.Message;
            }
            
      



    }
}

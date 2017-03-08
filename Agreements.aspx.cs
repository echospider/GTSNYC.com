using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Collections;
using System.Configuration;
public partial class Agreements1 : System.Web.UI.Page
{

    protected override void OnInit(EventArgs e)
    {int id = Convert.ToInt32(Request.QueryString["id"]);
       
        if (id > 0)
        {
            pnlList.Visible = false;
            pnlView.Visible = true;
            
        }
        base.OnInit(e);
    }
    protected System.Collections.Generic.IEnumerable<Product>
        GetProducts(object oid)
    {
        int id = (int)oid;
        DatabaseDataContext db = new DatabaseDataContext();
        System.Collections.Generic.IEnumerable<Product> retval = null;

        retval = db.Products.Where(x => x.CategoryId == id);
        return retval;
        
    }

    protected string getwireup()
         
    {string wireup;
    int id = Convert.ToInt32(Request.QueryString["id"]);
        DatabaseDataContext db = new DatabaseDataContext();
        wireup  = db.Products.Single(x => x.ProductId == id).Writeup.ToString ();
        return wireup;
    }


    protected void btnAgree_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        DatabaseDataContext db = new DatabaseDataContext();
     Product xxx=   db.Products.Single(x => x.ProductId ==id );


  

        MailMessage msgMail = new MailMessage();
        //MailAddress _mailAdd = new MailAddress("info@GTSNYC.com");



        

        //msgMail.From = _mailAdd;
        msgMail.Subject = "Globex Agreement";

    


        msgMail.IsBodyHtml = true;

        StringBuilder mailbody = new StringBuilder();
        mailbody.Append(xxx.ProductName+"</br>");
        mailbody.Append(xxx.Contract+"</br>");
     
        mailbody.Append("---------</br> Last Name:"+txtLastName.Text+"</br>"+"First Name: "+txtFirstName.Text +"</br>");
        mailbody.Append("Initial: " + txtInitials.Text + "</br>");
        mailbody.Append("Street Address: " +txtAddress.Text + "</br>" );
        mailbody.Append("City : " + txtCity.Text + "</br>State" + txtState.Text + "</br>"+"ZipCode: "+txtZip.Text  + "</br>");
        mailbody.Append("Country : " + txtCountry.Text  + "</br>");
        mailbody.Append("Phone Number: " +txtPhone.Text + "</br>");
        mailbody.Append("E-Mail Address: " + txtEmail.Text  + "</br>");
        mailbody.Append("Date:" + txtDate.Text  + "</br>");
        mailbody.Append("</br>"+xxx.Writeup+"</br>");
        mailbody.Append("SignName: "+txtSingName.Text +"</br>");
        mailbody.Append("SignDate: "+txtSingDate.Text +"</br>");


        msgMail.Body = mailbody.ToString();

        SmtpClient sq = new SmtpClient();


        foreach (string email in ConfigurationManager.AppSettings["Email"].Split(';'))
        {
            msgMail.To.Clear();

            msgMail.To.Add(email);

            sq.Send(msgMail);
        }


        Response.Redirect("ThankYou.aspx");
        
    }



}

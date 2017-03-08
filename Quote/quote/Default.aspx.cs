using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ToString();
        DataClassesDataContext context = new DataClassesDataContext(connectionString);


        Customer tblC = new Customer();
        //tblC.Customer_ID = 1;
        
        tblC.First_Name = txtFirstName.Text;
        tblC.Last_Name = txtLastName.Text;
        tblC.Company = txtCompany.Text;
        tblC.Email = txtEmail.Text;
        tblC.Type_Of_Business = txtTypeofBusiness.Text;
        tblC.Telephone = txtTelephone.Text;

        context.Customers.InsertOnSubmit(tblC);
        context.SubmitChanges();
    }
}

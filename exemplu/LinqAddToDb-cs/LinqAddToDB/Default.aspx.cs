using System;
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

    protected void butAdd_Click(object sender, EventArgs e)
    {
        if(txtName.Text != "" && txtPosition.Text != "")
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ToString();
            DataClassesDataContext context = new DataClassesDataContext(connectionString);

            tblEmployee tblE = new tblEmployee();
            tblE.name = txtName.Text;
            tblE.position = txtPosition.Text;
            context.tblEmployees.InsertOnSubmit(tblE);
            context.SubmitChanges();
            DataGrid1.DataBind();
        }
        else
        {
            txtName.Text = "Please enter some text.";
        }
    }
}

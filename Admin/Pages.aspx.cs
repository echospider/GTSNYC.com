using System;
using System.Collections;
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

public partial class Admin_Pages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            string mode = Request.QueryString["mode"];

            int id = Convert.ToInt32(Request.QueryString["id"]);
            DatabaseDataContext db = new DatabaseDataContext();


            if (id == 0 && mode != "new")
            {
                ContentPage cp = new ContentPage();

                dlPages.DataSource = db.ContentPages;
                dlPages.DataBind();
            }
            else if (id > 0)
            {
                DetailsView1.DefaultMode = DetailsViewMode.Edit;
                phEdit.Visible = true; 
            }
            else if (mode == "new")
                phEdit.Visible = true; 
        }
    }

    protected void Refresh(object o, EventArgs e)
    {
        Response.Redirect("Pages.aspx");
    }
}

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

public partial class Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int pageId = 0;

        pageId = Convert.ToInt32(Request.QueryString["id"]);

        
        if (pageId > 0) {
            DatabaseDataContext db = new DatabaseDataContext();
            ContentPage cp = new ContentPage();
            cp = db.ContentPages.Single(x => x.PageId == pageId);

            lContent.Text = cp.Body; 

        }
    }
}

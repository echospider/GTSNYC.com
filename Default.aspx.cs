using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DatabaseDataContext db = new DatabaseDataContext();
        ContentPage cp = new ContentPage();
        cp = db.ContentPages.Single(x => x.PageId == 29);

        lContent.Text = cp.Body; 
    }
}
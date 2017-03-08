using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace WebControls { 
public class PageContent : Literal
{
    public int PageId {
        get {
            if (ViewState["PageId"] == null)
                return 0;
            else
                return (int)ViewState["PageId"];

        }
        set {
            ViewState["PageId"] = value;
        }
    }

    protected override void Render(HtmlTextWriter writer)
    {
        if (PageId > 0) {
            DatabaseDataContext db = new DatabaseDataContext();
            this.Text = db.ContentPages.Single(x => x.PageId == PageId).Body;

        }

        base.Render(writer);
    }
}
}
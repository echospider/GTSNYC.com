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

public partial class Admin_EditProduct : System.Web.UI.Page
{

    protected override void OnInit(EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);

        if (id > 0)
            DetailsView1.DefaultMode = DetailsViewMode.Edit;

        base.OnInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    
    protected void BackToProducts(object source, EventArgs e) {
        //Response.Redirect("Products.aspx");
    }
}

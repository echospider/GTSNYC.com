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

public partial class Store : System.Web.UI.Page
{
    DatabaseDataContext db; 
    protected override void OnInit(EventArgs e)
    {
        int cat = Convert.ToInt32(Request.QueryString["cat"]);

        if (cat > 0) {
            db = new DatabaseDataContext();

            BindCategory(cat);
            BindItems(cat);

        }
        base.OnInit(e);
    }

    private void BindCategory(int categoryId) {
        Category c = db.Categories.Single(x => x.CategoryId == categoryId);

        lCatName.Text = c.CategoryName;
 
    }

    private void BindItems(int categoryId)
    {
        IEnumerable data = from f in db.Products
                           where f.CategoryId == categoryId
                           select f;

        rMain.DataSource = data;
        rMain.DataBind();

    }


    protected void Page_Load(object sender, EventArgs e)
    {

    }
}

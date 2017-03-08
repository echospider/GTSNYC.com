<%@ Page Language="C#" MasterPageFile="~/Masters/Internal.master" %>
<%@ Import Namespace="System.Linq" %>
<script runat="server">
    protected override void OnInit(EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        if (id > 0) {
            BindOtherProducts(id);       
            pnlList.Visible = false;
            pnlView.Visible = true;
        }
        base.OnInit(e);
    }
    private System.Collections.Generic.IEnumerable<Product>
        GetProducts(object oid) {
            int id = (int)oid;
            DatabaseDataContext db = new DatabaseDataContext();
            System.Collections.Generic.IEnumerable<Product> retval = null;
        
            retval = db.Products.Where(x => x.CategoryId == id);
        return retval;
        
    }

    private void BindOtherProducts(object oid) {
        int id = (int)oid;
        DatabaseDataContext db = new DatabaseDataContext();
        int cid = db.Products.Single(x => x.ProductId == id).CategoryId;
        
        Repeater1.DataSource = db.Products.Where(x => x.CategoryId == cid);
        Repeater1.DataBind(); 
    }
    
    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="pnlView" runat="server" Visible="false">
    <asp:Repeater runat="server" DataSourceID="linqProduct">
        <ItemTemplate>
            <h1><%#Eval("ProductName") %></h1>   
            <div><%#Eval("Body") %></div>
            
            <div style="text-align:center"><%# ((string)Eval("ImageUrl")!=null)?"<img src=\"Files/Systems/" + Eval("ImageUrl") + "\" />" : "" %></div>
            <div style="text-align:center; padding:20px; ">
            
                <a href='<%#ResolveUrl(Eval("FileUrl", "~/Files/systems/{0}").ToString())%>' target="_blank">
                    <img src="images/btn_reports.jpg" alt="Reports" style="border:none;margin-right:20px;"  />
                </a>
                
                
                <a href='<%#ResolveUrl(Eval("ProductId", "~/Agreements.aspx?id={0}").ToString())%>' >
                    <img src="images/btn_purchase.jpg" alt="Purchase" style="border:none;" />
                </a>
                
                
                
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:LinqDataSource ID="linqProduct" runat="server" 
        ContextTypeName="DatabaseDataContext" 
        Select="new (ProductId, ProductName, Body, ImageUrl, FileUrl)" TableName="Products" 
        Where="ProductId == @ProductId">
        <WhereParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="ProductId" 
                QueryStringField="id" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
</asp:Panel>
<asp:Panel id="pnlList" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="CategoryId" 
        DataSourceID="LinqDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" 
        ShowFooter="False" ShowHeader="False">
        <ItemStyle Width="250" VerticalAlign="Top" />
        <ItemTemplate>
            <strong style="font-size:14px;"><%# Eval("CategoryName") %></strong>
            
            <asp:Repeater ID="rSystems" runat="server" DataSource='<%#  GetProducts (Eval("CategoryId"))%>'>
                <ItemTemplate>
                    <div>
                        <a href="Systems2.aspx?id=<%# Eval("ProductId") %>">
                            <%# Eval("ProductName") %>
                        </a>
                        
                    </div>
                    
                </ItemTemplate>
            </asp:Repeater>
            
            
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource runat="server" ID="LinqDataSource1" ConnectionString="<%$ ConnectionStrings:GTSNYCConnectionString %>" 
        SelectCommand="SELECT * FROM [Categories] WHERE ([Visible] = @Visible)">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="Visible" Type="Boolean" />
        </SelectParameters>

    </asp:SqlDataSource>
    <%--<asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="DatabaseDataContext" TableName="Categories">
    </asp:LinqDataSource>--%>
<%-- 
<p><a href="Systems/prodElite.htm" target="_blank">Globex Elite</a></p>

<p><a href="Systems/prodBreakout.htm" target="_blank">Globex Breakout ER + Retracement</a></p>

<p><a href="Systems/prodDAX.htm" target="_blank">Globex DAX TF</a></p>
<p><a href="Systems/prodsneak.htm" target="_blank">Platinum Global Sneak </a></p>
<p><a href="Systems/forexsystem.htm" target="_blank">Globex Forex Systems</a></p>
<p><a href="Systems/globalbounce.htm" target="_blank">Globex Bounce Systems</a></p>
<br /><br />
<p class="style3 style10"><a href="Systems/TradeLog.aspx">Trade Log</a></p>

<p class="style3"><a href="Systems/BrokerStatements.aspx">Broker Statements</a></p>
--%>
</asp:Panel>
</asp:Content>


 
<asp:Content ID="Content3" ContentPlaceHolderID="cphFeaturedProducts" runat="server">
 <br />
 <%--.........................................................--%>
 
  <p class="blueUnderlinedTitle">More Systems </p>
 <%--<p style="color:darkblue;font-weight:bold;">Other Systems from this category</p>--%>
 
     <asp:Repeater ID="Repeater1" runat="server" >  
                    <ItemTemplate>
                       
                        <div><strong><a href="Systems2.aspx?id=<%# Eval("ProductId") %>" ><%# Eval("ProductName") %></a>  </strong></div>
                        <%# Eval("Summery") %>
                   </ItemTemplate>    
     </asp:Repeater>
   
  
</asp:Content>
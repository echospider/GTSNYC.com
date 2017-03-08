<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Admin_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="linqCats" 
        DataTextField="CategoryName" DataValueField="CategoryId" AutoPostBack="true"
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="true" >
        <asp:ListItem Value="0">Select</asp:ListItem>
    </asp:DropDownList>
<a href="EditProduct.aspx?cat=<%=Request.QueryString["cat"] %>">Add system</a>
    <br />
    <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ProductId" DataSourceID="linqProds" GridLines="None">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ProductId" ItemStyle-Width="200" 
                DataNavigateUrlFormatString="~/Admin/EditProduct.aspx?id={0}" 
                DataTextField="ProductName" HeaderText="Item" />
           
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" DataFormatString="{0:C2}" />
        </Columns>
    </asp:GridView>
    
    <div style="padding:30px 0 ">
        <a href="EditProduct.aspx?cat=<%=Request.QueryString["cat"] %>">Add system</a>
    </div>
    <%--<asp:LinqDataSource ID="linqCats" runat="server" 
        ContextTypeName="DatabaseDataContext" Select="new (CategoryId, CategoryName" 
        TableName="Categories">
	
    </asp:LinqDataSource>--%>
    <asp:SqlDataSource runat="server" ID="linqCats" ConnectionString="<%$ ConnectionStrings:GTSNYCConnectionString %>" 
        SelectCommand="SELECT * FROM [Categories] WHERE ([Visible] = @Visible)">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="Visible" Type="Boolean" />
        </SelectParameters>

    </asp:SqlDataSource>
<asp:LinqDataSource runat="server" ID="linqProds" 
        ContextTypeName="DatabaseDataContext" TableName="Products" 
        Where="CategoryId == @CategoryId || @CategoryId==0" >
    <WhereParameters>
        <asp:QueryStringParameter DefaultValue="0" Name="CategoryId" 
            QueryStringField="cat" Type="Int32" />
    </WhereParameters>
    </asp:LinqDataSource>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Pages.aspx.cs" Inherits="Admin_Pages" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <a href="Pages.aspx?mode=new">* new</a>
    <asp:DataList ID="dlPages" runat="server">
        <ItemTemplate>
            <a href='<%#Eval("PageId","Pages.aspx?id={0}") %>'><%#Eval("Title") %></a>
        </ItemTemplate>
    </asp:DataList>
    
    <asp:PlaceHolder ID="phEdit" runat="server" Visible="false">
        <a href="Pages.aspx">Back to pages</a>
        <br />
         <asp:DetailsView ID="DetailsView1" DefaultMode="Insert" GridLines="None" CssClass="CommonDV" runat="server" AutoGenerateRows="False" DataKeyNames="PageId" DataSourceID="LinqDataSource1">
            <FieldHeaderStyle CssClass="__Fieldheader" />
             <Fields>
                 <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                 <asp:TemplateField HeaderText="Body" SortExpression="Body" >
                    <EditItemTemplate>
                        <FCKeditorV2:FCKeditor runat="server" ID="fck1" Value='<%#Bind("Body") %>' BasePath="~/fckeditor/" Width="600" Height="350"></FCKeditorV2:FCKeditor>
                        
                    </EditItemTemplate>
                 </asp:TemplateField>
                 <asp:CommandField ShowEditButton="true" ShowInsertButton="true" ShowCancelButton="false" >
                    <ItemStyle HorizontalAlign="Right" />
                 </asp:CommandField>
             </Fields>
    </asp:DetailsView>
   
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="DatabaseDataContext" 
            EnableInsert="True" 
            EnableUpdate="True" 
            TableName="ContentPages"
            OnInserted="Refresh"
            OnUpdated="Refresh"
            Where="PageID==@PageId"
            >
            <InsertParameters>
                <asp:Parameter Name="DisplayOrder" DefaultValue="50" />
            </InsertParameters>
            <WhereParameters>
                <asp:QueryStringParameter Name="PageId" QueryStringField="id" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
        </asp:PlaceHolder>
</asp:Content>


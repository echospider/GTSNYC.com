<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditProduct.aspx.cs" Inherits="Admin_EditProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView GridLines="None" ID="DetailsView1" runat="server" 
        DataKeyNames="ProductId"
        SkinID="CommonDetailsView"
        
        AutoGenerateRows="False" DataSourceID="LinqDataSource1" DefaultMode="Insert">
        <Fields>
            <asp:TemplateField HeaderText="System name" SortExpression="ProductName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                </EditItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField Visible="false" HeaderText="Summery" SortExpression="Summery">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Summery") %>'></asp:TextBox>
                </EditItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText=".mht file" >
                <EditItemTemplate>
                    <emagid:FileUpload ID="img1" runat="server" UploadFolder="~/Files/Systems/"   SaveMainFile="true" GenerateRandomFileName="true" OutputFileName='<%#Bind("FileUrl") %>'>
                       
                    </emagid:FileUpload>
                </EditItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image" >
                <EditItemTemplate>
                    <emagid:FileUpload ID="img2" runat="server" UploadFolder="~/Files/Systems/"   SaveMainFile="false" GenerateRandomFileName="true" OutputFileName='<%#Bind("ImageUrl") %>'>
                       <Thumbnails>
                        <emagid:ThumbnailUploadSettings Folder="~/Files/Systems/" MaxHeight="250" MaxWidth="250" />
                       </Thumbnails>
                    </emagid:FileUpload>
                </EditItemTemplate>
               
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Description&lt;br /&gt; (write up)" SortExpression="Body">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Body") %>' 
                        Height="296px" TextMode="MultiLine" Width="532px"></asp:TextBox>
                </EditItemTemplate>
                
            </asp:TemplateField>
           <asp:TemplateField HeaderText="Contract" SortExpression="Body">
                <EditItemTemplate>
                    <asp:TextBox ID="txtContract" runat="server" Text='<%# Bind("Contract") %>' 
                        Height="296px" TextMode="MultiLine" Width="532px"></asp:TextBox>
                </EditItemTemplate>
                
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Contract part 2" SortExpression="Body">
                <EditItemTemplate>
                    <asp:TextBox ID="txtContract2" runat="server" Text='<%# Bind("WriteUp") %>' 
                        Height="150px" TextMode="MultiLine" Width="532px"></asp:TextBox>
                </EditItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category" SortExpression="CategoryId">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="linqCats" 
                        DataTextField="CategoryName" DataValueField="CategoryId" selectedValue='<%#Bind("CategoryId") %>'
                        AppendDataBoundItems="true" >
                        <asp:ListItem Value="0">Select</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>    
            </asp:TemplateField>
            <asp:CheckBoxField   DataField="IsFeatured" Text="Featured" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" DataFormatString="{0:N2}" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            
        </Fields>
    </asp:DetailsView>
    
    
    <asp:LinqDataSource ID="LinqDataSource1" 
        runat="server" 
        ContextTypeName="DatabaseDataContext" 
        EnableInsert="True" 
        EnableUpdate="True" 
        TableName="Products" 
        Where="ProductId == @ProductId"
       
        OnUpdated="BackToProducts" OnInserted="BackToProducts" 
        >
        
        <WhereParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="ProductId" 
                QueryStringField="id" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    <asp:LinqDataSource ID="linqCats" runat="server" 
        ContextTypeName="DatabaseDataContext" Select="new (CategoryId, CategoryName)" 
        TableName="Categories">
    </asp:LinqDataSource>
    

</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Masters/Internal.master" AutoEventWireup="true" CodeFile="Agreements.aspx.cs" Inherits="Agreements1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="pnlView" runat="server" Visible="false">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="linqProduct">
            <ItemTemplate>
                <div class="blueUnderlinedTitle"><%#Eval("ProductName") %> Purchase Agreement</div>

                <div><%#Eval("Contract") %></div>





            </ItemTemplate>
        </asp:Repeater>



        <div style="padding-right: 20px; text-align: right">
            Initial : 
                        <asp:TextBox ID="txtInitials" runat="server" Width="40" MaxLength="3" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtInitials">*</asp:RequiredFieldValidator>
        </div>
        <div style="border: 1px solid #666; padding: 20px; margin: 5px 0">



            <table>
                <tr>
                    <td>First Name:</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Date (mm/dd/yyyy):</td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server" MaxLength="10" />
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Billing Address, Street:</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>State:</td>
                    <td>
                        <asp:TextBox ID="txtState" runat="server" MaxLength="2" Width="30" />
                    </td>
                </tr>
                <tr>
                    <td>ZIP:</td>
                    <td>
                        <asp:TextBox ID="txtZip" runat="server" MaxLength="5" Width="60" />
                    </td>
                </tr>
                <tr>
                    <td>Country:</td>
                    <td>
                        <asp:TextBox ID="txtCountry" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
        <div style="padding: 10px 0;">
            <%=getwireup ()%>
        </div>
        Name :
        <asp:TextBox ID="txtSingName" runat="server" />
        Date :
        <asp:TextBox ID="txtSingDate" runat="server" />
        <div style="text-align: center">
            <asp:Button ID="btnAgree" OnClick="btnAgree_Click" runat="server" Text="I Agree" /></div>
        <asp:LinqDataSource ID="linqProduct" runat="server"
            ContextTypeName="DatabaseDataContext"
            Select="new (ProductId, ProductName, Contract, Writeup)" TableName="Products"
            Where="ProductId == @ProductId">
            <WhereParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="ProductId"
                    QueryStringField="id" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    </asp:Panel>
    <asp:Panel ID="pnlList" runat="server">
        <div class="blueUnderlinedTitle">Purchase Agreements</div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="CategoryId"
            DataSourceID="LinqDataSource1" RepeatColumns="3" RepeatDirection="Horizontal"
            ShowFooter="False" ShowHeader="False">
            <ItemStyle Width="250" VerticalAlign="Top" />
            <ItemTemplate>
                <strong style="font-size: 14px;"><%# Eval("CategoryName") %></strong>

                <asp:Repeater ID="rSystems" runat="server" DataSource='<%#  GetProducts (Eval("CategoryId"))%>'>
                    <ItemTemplate>
                        <div><a href="Systems2.aspx?id=<%# Eval("ProductId") %>"><%# Eval("ProductName") %></a></div>


                    </ItemTemplate>
                </asp:Repeater>


            </ItemTemplate>
        </asp:DataList>
        
        <%--<asp:LinqDataSource ID="LinqDataSource1" runat="server"
            ContextTypeName="DatabaseDataContext" TableName="Categories">
        </asp:LinqDataSource>--%>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server"
            ContextTypeName="DatabaseDataContext"
            Select="new (CategoryId, CategoryName)" TableName="Categories"
            Where="CategoryId <> 4 && CategoryId <> 2">
            <%--<WhereParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="CategoryId"
                    QueryStringField="id" Type="Int32" />
            </WhereParameters>--%>
        </asp:LinqDataSource>
    </asp:Panel>



</asp:Content>

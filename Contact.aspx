<%@ Page Language="C#" MasterPageFile="~/Masters/Site.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<emagid:EmailForm runat="server" id="email1" >
    
        <table>
            <tr>
                <td>test : </td>
                <td><asp:TextBox ID="FirstName" runat='server' /></td>
            </tr>
        </table>
    
</emagid:EmailForm>
</asp:Content>


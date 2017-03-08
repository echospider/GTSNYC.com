<%@ Page Language="C#" MasterPageFile="~/Masters/Internal.master" AutoEventWireup="true" CodeFile="Store.aspx.cs" Inherits="Store" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" border="0" cellspacing="10" cellpadding="0">
                  <tr>
                    <td class="title_text_black">
                        <asp:Literal ID="lCatName" runat="server" />
                        <div class="dottedSeparator">&nbsp;</div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                        <asp:Repeater ID="rMain" runat="server">
                            <ItemTemplate>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="162">
                                        <img src='<%#Eval("ImageUrl" , "Files/Prods/Thumbs/{0}") %>' alt='<%#Eval("ProductName") %>'>
                                    </td>
                                    <td><table width="100%%" border="0" cellspacing="10" cellpadding="0">
                                        <tr>
                                          <td><table width="100%%" border="0" cellspacing="5" cellpadding="0">
                                              <tr>
                                                <td class="dollar_style1"><%#Eval("ProductName") %></td>
                                              </tr>
                                              <tr>
                                                <td><%#Eval("Body") %></td>
                                              </tr>
                                              <tr>
                                                <td>
                                                    <table width="100%" border="0" cellpadding="0" cellspacing="3">
                                                  <tr>
                                                    <td align="left" valign="top" class="dollar_style1">$</td>
                                                    <td class="price_style1"><%#Eval("Price", "{0:N2}").ToString().Split('.')[0] %></td>
                                                    <td class="price_dec1"><%#Eval("Price", "{0:N2}").ToString().Split('.')[1] %></td>
                                                    <td width="100%" align="right" valign="middle" ><img src="images/designbyvalle_34.jpg" width="115" height="26" alt=""></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
                                          </table></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                                </table>
                                
                                    <div class="dottedSeparator">&nbsp;</div>

                            </ItemTemplate>
                        </asp:Repeater>
                    </td>
                  </tr>
                  <%-- <tr>
                    <td><span class="title_text_black">Featured Items</span></td>
                  </tr>
                  <tr>
                    <td><table width="100%%" border="0" cellspacing="1" cellpadding="0">
                        <tr>
                          <td width="27"><img src="images/design_byvalle_31.jpg" width="27" height="77" alt=""></td>
                          <td align="center" valign="middle"><img src="images/design_byvalle_33.jpg" width="101" height="77" alt=""></td>
                          <td align="center" valign="middle"><img src="images/design_byvalle_35.jpg" width="101" height="77" alt=""></td>
                          <td align="center" valign="middle"><img src="images/design_byvalle_33.jpg" width="101" height="77" alt=""></td>
                          <td align="center" valign="middle"><img src="images/design_byvalle_35.jpg" width="101" height="77" alt=""></td>
                          <td width="27"><img src="images/design_byvalle_37.jpg" width="27" height="77" alt=""></td>
                        </tr>
                    </table></td>
                  </tr>--%>
                </table>
</asp:Content>


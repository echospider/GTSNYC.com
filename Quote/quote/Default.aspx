<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    
    <div>
    
        <div >
            Ask for a Quote</div>
        <div >
            Magid computers offers hardware and networking solutions, as well as web 
            development and design solutions,
            <br />
            Please choose the service that you would like to receive a quote for, we will 
            process your request within 4 hours.<br />
            <br />
        </div>
        <div>
            &nbsp;Required fields are marked with an asterisk (*).
            <table>
                <tr>
                    <td style="text-align: right;">
                        First Name:*</td>
                    <td>
                        &nbsp;<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;">
                        Last Name:*</td>
                    <td>
                        &nbsp;<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;">
                        Company/Organization:*</td>
                    <td>
                        &nbsp;<asp:TextBox ID="txtCompany" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;">
                        Telephone:*</td>
                    <td>
                        &nbsp;<asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;">
                        Email:*</td>
                    <td>
                        &nbsp;<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;">
                        Type of Business:*</td>
                    <td>
                        &nbsp;<asp:TextBox ID="txtTypeofBusiness" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr valign="top">
                    <td style="text-align: right;">
                        Services you are looking for:*</td>
                    <td>
                        <table id="cbServices1" border="0">
                            <tr>
                                <td>
                                    &nbsp;<asp:CheckBox ID="cbFromScratch" runat="server" Text="Create a Website From Scratch" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="cbredesign" runat="server" 
                                        Text="Redesign a current website " />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="cbFlash" runat="server" Text="Flash Animation" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="cbShoppingCart" runat="server" 
                                        Text="eCommerce shopping cart " />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="cbContent" runat="server" Text="Content management " />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="cbSEM" runat="server" Text="Search Engine Marketing " />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="cbMCDevelopment" runat="server" 
                                        Text="Marketing/Content development" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;">
                        Estimate number of pages:
                    </td>
                    <td>
                        &nbsp;<asp:TextBox ID="txtNumbofPages" runat="server" Width="83px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;">
                        Project Budget:</td>
                    <td>
                        $
                        <asp:TextBox ID="txtProjectBudget" runat="server" Width="74px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: justify; vertical-align: top;">
                        Please provide any additional details that will help us in preparing a quote for 
                        your project.</td>
                    <td>
                        <asp:TextBox ID="txtMessage" runat="server" Width="365px" TextMode="MultiLine" 
                                Rows="4" Columns="45"
                                Height="88px" />
                    </td>
                </tr>
                <tr> <td></td>
                <td style="text-align: center;">
                <asp:Button ID="Button1" runat="server" Text="Send" onclick="Button1_Click1" />
                </td>
                </tr>
            </table>
        </div>
    
    </div>
    
   
    </form>
    
   
</body>
</html>

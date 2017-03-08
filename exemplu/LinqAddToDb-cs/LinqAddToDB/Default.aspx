<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Using LINQ to Add New Records to Database in ASP.NET 3.5</title>
   
   <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	color: #0000FF;
}
a:visited {
	color: #0000FF;
}
a:hover {
	color: #0000FF;
	text-decoration: none;
}
a:active {
	color: #0000FF;
	}
.basix {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
}
.header1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
	font-weight: bold;
	color: #006699;
}
.lgHeader1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 18px;
	font-weight: bold;
	color: #0066CC;
	background-color: #CEE9FF;
}
-->
</style> 
</head>
<body>
  

        <br />
        &nbsp;<table align="center" border="0" cellpadding="0" cellspacing="0" style="position: static"
            width="752">
            <tr bgcolor="#5482fc">
                <td colspan="4">
                    <img height="1" src="/media/spacer.gif" width="1" /></td>
            </tr>
            <tr>
                <td bgcolor="#5482fc" width="1">
                    <img alt="Server Intellect" height="1" src="media/spacer.gif" width="1" /></td>
                <td width="250">
                    <a href="http://www.serverintellect.com">
                        <img alt="Server Intellect" border="0" height="75" src="media/logo.gif" width="250" /></a></td>
                <td bgcolor="#3399ff" width="500">
                    <a href="http://www.serverintellect.com">
                        <img alt="Server Intellect" border="0" height="75" src="media/headerR1.gif" width="500" /></a></td>
                <td bgcolor="#5482fc" width="1">
                    <img alt="Server Intellect" height="1" src="media/spacer.gif" width="1" /></td>
            </tr>
            <tr bgcolor="#5482fc">
                <td colspan="4">
                    <img height="1" src="media/spacer.gif" width="1" /></td>
            </tr>
        </table>
        <br />
        <table align="center" bgcolor="#5482fc" border="0" cellpadding="5" cellspacing="1"
            style="position: static; width: 692px;">
            <tr>
                <td align="center" class="lgHeader1" height="50">
                    Using LINQ to Add New Records to Database in ASP.NET 3.5</td>
            </tr>
        </table>
        <br />
        <br />
        
    <fieldset style="width: 804px" align="center">
   
    <legend>Using LINQ to Add New Records to Database in ASP.NET 3.5</legend>
    <div align="left" style="text-align: center">






    
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="butAdd" EventName="Click" />
            </Triggers>
            <ContentTemplate>
                <table>
                    <tr><th colspan="2">Add New Employee</th></tr>
                    <tr><td>Name:</td><td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Position:</td><td><asp:TextBox ID="txtPosition" runat="server"></asp:TextBox></td></tr>
                    <tr><td colspan="2"><asp:Button ID="butAdd" runat="server" Text="Add to DB" 
                            onclick="butAdd_Click" /></td></tr>
                </table>
                <asp:DataGrid ID="DataGrid1" runat="server" DataSourceID="LinqDataSource1" 
                    Width="326px"></asp:DataGrid>
                <br />
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                    ContextTypeName="DataClassesDataContext" EnableInsert="True" 
                    TableName="tblEmployees">
                </asp:LinqDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
    
    
    






   </div>
    </fieldset>    
      
        <table align="center" cellpadding="0" cellspacing="0" style="position: static" width="500">
            <tr>
                <td align="center" class="basix" height="50">
                    <strong>Power. Stability. Flexibility.</strong><br />
                    Hosting from <a href="http://www.serverintellect.com">Server Intellect</a><br />
                    <br />
                    For more DB Tutorials visit <a href="http://www.dbtutorials.com">www.dbtutorials.com</a></td>
            </tr>
        </table>
</body>
</html>

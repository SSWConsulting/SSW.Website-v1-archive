<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="Customer"  %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

 <asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<!-----------------------------------------------
' Copyright 2002 SSW 
' www.ssw.com.au All Rights Reserved.
'VERSION AUTHOR  DATE       COMMENT  
'1.0     PA      13/05/02   This page contains function that 
'                           1. displays customer details for SSW LookOut
'1.1	 JL 	 03/03/03   2. change to LookOut
'---------------------------------------------->
				
<table>
	<tr>
		<td></td>
		<td>
		<img src="/ssw/LookOut/Images/LookOutLogo.gif" alt="SSW Lookout" width="141" height="84" >
		<br>
		
		<B>Sample page to show the 'Client' 
button feature in <a href="/ssw/LookOut"  >SSW LookOut! for 
Outlook</a></B>.
		</td>
		<td></td>
		
		
	</tr>
	<tr>
		<td width="10%">
		</td>
		<td width="80%">

   <ASP:Repeater id="MyRepeater" runat="server">

      <HeaderTemplate>

        <table width="100%" style="font: 8pt verdana" ID="Table1">
          <tr style="background-color:DFA894">
            <th>
              Customer ID
            </th>
            <th>
              Company Name 
            </th>
            <th>
              Contact Name
            </th>
            <th>
              Phone
            </th>
            <th>
              Email
            </th>
          </tr>

      </HeaderTemplate>

      <ItemTemplate>

        <tr style="background-color:FFECD8">
          <td>
            <%# DataBinder.Eval(Container.DataItem, "CustomerID") %>
          </td>
          <td>
            <%# DataBinder.Eval(Container.DataItem, "CompanyName") %>
          </td>
          <td>
            <%# DataBinder.Eval(Container.DataItem, "ContactName") %>
          </td>
          <td>
            <%# DataBinder.Eval(Container.DataItem, "Phone") %>
          </td>
          <td>
            <%# DataBinder.Eval(Container.DataItem, "Email") %>
          </td>
        </tr>

      </ItemTemplate>

      <FooterTemplate>

        </table>

      </FooterTemplate>

  </ASP:Repeater>
  
		</td>
		<td width="10%">
		</td>
	</tr>
</table>
		</asp:content>
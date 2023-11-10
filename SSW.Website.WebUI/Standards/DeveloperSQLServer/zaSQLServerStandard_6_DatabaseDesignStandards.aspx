<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW SQL Server Design Standards"  %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
		<p>
		
		<p>
 	            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="RulesToBetterSQLServerDatabases">
                      	<tr>
                        	<td><b>*** This page has been replaced by <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx">
				      			SSW Rules To Better SQL Server Databases</a>***</b>
				</td>
                      	</tr>
		    </table>
		</p>
		</asp:content>
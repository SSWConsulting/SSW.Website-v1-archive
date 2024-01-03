<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SolidQ Webinar - Structure Continuum of Reports" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
	<h1>SolidQ Webinar - Structure Continuum of Reports</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
	<h2>Structure Continuum of Reports:</h2>
	<ul>
		<%--<li><a href="#objectives">Webinar Objectives</a></li>
		<li><a href="#attend">Who Should attend?</a></li>--%>
		<li><a href="#when">Webinar Details</a></li>
		<li><a href="#Register">Register</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">

	<div class="section"> 
		<p>With SQL Server 2012, you have all possible ways to prepare reports for your end users. You can start with structured relational reports using SQL Server 
        Reporting Services (SSRS). They allow some interactivity (drill down, slicing), but end users can’t change structure of the report. With SQL Server Analysis 
        Services (SSAS) BI Semantic Model (BISM), which is an additional layer of metadata and data,  and with Power View as an end user tool that uses report model 
        as source, end users get limited possibility to create the report structure on the fly. With SSAS cubes, end users can change report structure with client 
        tools like MS Office Excel 2012 on-line. Still, they are limited to predefined attributes and grouping buckets. Data is aggregated in order to achieve maximum 
        possible reporting performance. In SSAS Data Mining (DM), only attributes used in the model are predefined. It is up to the DM engine to discover the structure 
        and use it for predictions. In the presentation, we are going to show these different possibilities though demos.</p>
	</div>
	<%--<div class="section">    
		<h2><a name="objectives"></a>Webinar Objectives</h2>
		<p>This webinar will provide the attendee with:</p>
		<ul class="benefits">
			<li>An overview of what MVC is</li>
			<li>The good and the bad of MVC</li>
			<li>Ways of assessing whether ASP.NET Web Forms or MVC is right for your business</li>
			<li>Ample time to ask questions from the presenter</li>
		</ul>
	</div>--%>

	<%--<div class="section">
		<h2><a name="attend"></a>Who should attend?</h2>
		<p>Managers, decision makers and developers who want to know more about ASP.NET MVC and why they should use it on their next project.</p>
	</div>--%>

	<div class="section">
		<h2><a name="when"></a>Webinar Details</h2>
		<table class="beautyTable">
		  <tr class="odd">
			<td>Date:</td>
			<td>Call us for more information</td>     
		  </tr>
		  <tr>
			<td>Time:</td>
			<td>1:00pm - 2:00pm</td>
		  </tr>
		  <tr class="odd">
			<td>Cost:</td>
			<td>No Charge</td>
		  </tr>
		  <tr>
			<td>Presenter:</td>
			<td>Dejan Sarka, Mentor</td>
		  </tr>
		</table>  
	 </div>
        		
    <a name="Register"></a>
    <div class="download">
        <a class="green next" href="https://login.citrixonline.com/login?service=https%3A%2F%2Fglobal.gotomeeting.com%2Fmeeting%2Fj_spring_cas_security_check">Register</a><br />
        <p>or call Marlon on <b>(02) 9953 3000</b>.</p>
    </div>

</div>               	
</asp:Content>
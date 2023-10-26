<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Agile Template" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

				
		
		<a href="/ssw/AgileTemplate/">SSW Agile Template</a> > Reports <br><br>
		<h1><img src="../Images/AgileTemplate.gif" alt="SSW Agile Template"></h1>
		
		
		<b>With SSW Agile Template generating reports has never been easier. Listed below are the seven default Reports for Agile Template:</b>
		<ul>
      	<li>
      		<a target="_blank" href="/ssw/AgileTemplate/Reports/ReleasePlanReport.pdf">Release Plan Report</a>
      	</li>
      	<li>
      		<a target="_blank" href="/ssw/AgileTemplate/Reports/UpdateReport.pdf">Update Report</a>
      	</li>      	
            <li>
      		<a target="_blank" href="/ssw/AgileTemplate/Reports/MorningGoalReport.pdf">Morning Goal Report</a>
            </li>
      	<li>
      		<a target="_blank" href="/ssw/AgileTemplate/Reports/ReleaseListReport.pdf">Release List Report</a>
      	</li>
		<li>
      		<a target="_blank" href="/ssw/AgileTemplate/Reports/WorkItemListReport.pdf">WorkItem List Report</a>
      	</li>
      </ul>
	
</asp:content>
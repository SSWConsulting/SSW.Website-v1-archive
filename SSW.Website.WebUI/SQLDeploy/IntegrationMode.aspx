<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW SQL Deploy - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<div style="display:block"><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
    </asp:SiteMapPath></div>
    <div class="TableOfContents">
        <p>
            <strong>SSW SQL Deploy - Integrated with Application</strong>
        </p>
	    <ol>
	        <li><a href="#Integrate">Integrate SSW SQL Deploy with other application</a></li>
	        <li><a href="DeveloperGuide.aspx">SQL Deploy - Developer's Guide</a></li>
	    </ol>
	</div>

    <ol>
        <li><h2><a name="Integrate">Integrate SSW SQL Deploy with other application</a></h2>
            <p>
                SQL Deploy also supports being integrated within other application, 
                then the other application can take advantage of SQL Deploy to:
                <ul>
                    <li>Check the Database version</li>
                    <li>Upgrade the Database</li>
                </ul>
            </p>
            <dl class="image">
                <dt><img border="0" src="Images/TimeProCreateDatabase.jpg" alt="Create or Select the Database application requires"></dt>
                <dd>Figure: Create or Select the Database application requires</dd>
	        </dl>
	        <dl class="image">
                <dt><img border="0" src="Images/TimeProRunScripts.jpg" alt="Run the SQL scripts automatically"></dt>
                <dd>Figure: Run the SQL scripts automatically</dd>
	        </dl>
	        <dl class="image">
                <dt><img border="0" src="Images/TimeProStatus.jpg" alt="Show the database version"></dt>
                <dd>Figure: Show the database version</dd>
	        </dl>
	    </li>
    </ol>
</asp:content>
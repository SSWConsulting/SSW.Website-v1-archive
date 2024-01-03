<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Agile Template" %>

<%@ Register TagPrefix="SSW" TagName="ProductTestimonial" Src="~/Components/ProductTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
                    <h1>Agile Template</h1>
                    <h2>Keep your team agile</h2>
</asp:Content>

<asp:Content ContentPlaceHolderID="asideright" runat="server">
    <img src="images/productbox_agileTemplate.jpg" />
    <img src="images/AgileTemplate.gif" />
<!--<div class="download">
    <p><a href="/ssw/Download/ProdBasket.aspx?ID=AT" class="button red next">Download Now</a></p><br />
</div>-->
    <h6>Agile Template</h6>
    <div class="section">
        <ul>
            <li><a href="/ssw/AgileTemplate/UserGuide.aspx">Screenshots</a></li>
            <li><a href="/ssw/AgileTemplate/ManageProjects.aspx">Manage your projects</a></li>
		    <li><a href="/ssw/AgileTemplate/Reports/Default.aspx">Reports</a></li>
        </ul>
    </div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

    <div id="productInfo">
        <div id="productDescription">
            <div id="productHighlights">
                    <ul class="good">
                        <li>Improve your understanding of your projects</li>
						<li>Give your client better view of the progress</li>
						<li>Control your budget easily </li>
						<li>Deliver your product on time</li>
                    </ul>
            </div>
            <br />
			
            <p>
               Do you want to have a better understanding of your project progress? SSW Agile Template 
			   is built on top of MSF Agile Template, and it has customized work item types to help you 
			   track your project as well as identify issues. 
				Check our <a href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx">Rules 
				to Better Project Management with TFS</a> for more details.
			</p>
           
            <h2>
                Key Features & Benefits</h2>
            <p>
                SSW Agile Template allows you:</p>
            <ul>
                <li>Manage requirements and import work items from outlook email</li>
				<li>Manage baseline and track actual vs. estimate </li>
				<li>Classify task as 'Additional Item'</li>
            </ul>
            <br />
            <table border="0" cellspacing="0" class="normal">
                <tr>
                    <td width="100">
                        <a href="Images/BaseLine.jpg" class="lightbox image" rel="AgileTemplate" title="BaseLine"><img src="Images/BaseLine.jpg" alt="BaseLine" width="200" /></a>
                    </td>
                    <td valign="top">
                        <b>Baseline tracking</b> With our SSW Agile Template task work item, you can 
						enter baseline work for each task; together with Remaining work and Completed 
						work, it allows you to track your progress and budget usage.
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <a href="Images/AdditionalTask.jpg" class="lightbox image" rel="AgileTemplate" title="Additional Task"><img src="Images/AdditionalTask.jpg" alt="Additional Task" width="200"/></a>
                    </td>
                    <td valign="top">
                        <b>Additional Task</b> Additional requirement is common in software project, 
						however this kind of task will affect your delivery schedule and blow out your 
						budget; using SSW Agile Template, you can put additional task into different 
						category, which allow the project manager track these sensitive items easily.
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <a href="Images/URL.jpg" class="lightbox image" rel="AgileTemplate" title="URL"><img src="Images/URL.jpg" alt="URL" width="200"/></a>
                    </td>
                    <td valign="top">
                        <b>URL</b> Link your work item with the actual URL of the website page; this 
						is especially useful when you have a big amount of pages to maintain.
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <a href="Images/HTMLDescription.jpg" class="lightbox image" rel="AgileTemplate" title="Description, Support HTML"><img src="Images/HTMLDescription.jpg" alt="Description, Support HTML" width="200"/></a>
                    </td>
                    <td valign="top">
                        <b>Description, support HTML </b> HTML is extremely useful to describe the 
						requirement; the old MSF Agile template doesn’t allow you to use HTML in 
						your description, we finally have this fixed in our template.
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <a href="Images/ReleasePlanReport.jpg" class="lightbox image" rel="AgileTemplate" title="Release Plan Report"><img src="Images/ReleasePlanReport.jpg" alt="Release Plan Report" width="200"/></a>
                    </td>
                    <td valign="top">
                        <b>Release Plan Report</b> Release plan report will give you an overview of 
						the project, and help the project manager have a better idea of the work load. 
						View our <a href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx#ReleasePlan">sample report on our real project SSW Code Auditor</a>. 
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <a href="Images/ProgressReport.jpg" class="lightbox image" rel="AgileTemplate" title="Progress Report"><img src="Images/ProgressReport.jpg" alt="Progress Report" width="200"/></a>
                    </td>
                    <td valign="top">
                        <b>Release Update Report</b> Client involvement is one of the key factors in 
						Agile Development Process, SSW Release Update Report can easily help your client 
						to understand the progress as well as help the project managers to identify issues and take action. 
						View our <a href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx#UpdateDebrief">sample report on our real project SSW Agile Template</a>.
                    </td>
                </tr>
            </table>
           
            <h2>
                Getting Support</h2>
            <p>
                If you can't find it in the product documentation then check our <a href="/ssw/KB/KBResult.aspx">
                    knowledge base</a> for further information and tips about this product.</p>
                <p>
                    If you think that one of our rules is incorrect then please <a href="../KB/KB.aspx?KBID=Q1683629">
                        tell us</a> about it.
                </p>
                <p>
                    Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a>
                    and <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));"
                        title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">
                        feedback</a> so that we can evolve our software into a product that matches
                    your requirements. We guarantee a response.
                </p>

                <!--<h2>
                    I'm Sold... What's next?</h2>
                <div class="download">
					                   
					  <a href="/ssw/Download/ProdBasket.aspx?ID=AT" class="button red next">Download now</a><br />
					   or<br />
					   <a href="Sample/Reports.zip">Get Sample Report</a>
					</div>
                </div>-->
        </div>
    
</asp:Content>

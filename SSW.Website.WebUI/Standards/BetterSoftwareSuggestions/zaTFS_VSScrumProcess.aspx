<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="Microsoft TFS - Visual Studio Progress Template Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
        <div class="TableOfContents">
            <h3>Microsoft TFS - Visual Studio Progress Template Suggestions</h3>
            <ol>
                <li><a href="#StoryOverviewReport">Add report Story Overview Report</a></li>
                <li><a href="#summary-email">Have an easy way to create Sprint Review summary email</a></li>
                <li><a href="#email-field">Add an email field for work items creation/update</a></li>
            </ol>
        </div>
        
        <ol>   
            <li>
                <h2><a name="StoryOverviewReport"></a>Add report Story Overview Report </h2>
                <p>
                  The SCRUM template does *not* have the "Story Overview Report" - see <a href="http://msdn.microsoft.com/en-us/library/dd380648.aspx ">http://msdn.microsoft.com/en-us/library/dd380648.aspx </a><br />  
                 I think this is a cool report<br />
                 Showstopper in my opinion
                </p>
                <dl class="image">
                    <dt><img src="Images/BugColumn.jpg" alt="Bug column missing" /></dt>
                    <dd>Figure: This important report is Missing - I like the 'bugs' column</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/ReportsWeGet.jpg" alt="Report we get " /></dt>
                    <dd>Figure: FYI These are the reports we do get</dd>
                </dl>
            </li>

            <li><h2><a name="summary-email"></a>Have an easy way to create Sprint Review summary email</h2>
                <p>The scribe should be able to quickly find the most recent work items that have been added and create a summary email (include a [images attached] to the body) to send to the Podruct Owner</p>
            </li>

            <li><h2><a name="email-field"></a>Add an email field for work items creation/update</h2>
                <p>On Work Items - Add an email address field (where you can add multiple emails separated by commas). These would be notified when the work item is created or updated.</p>

            </li>

           
        </ol>

        <h2>Acknowledgements</h2>
        <p><a href="/people/adam-cogan">Adam Cogan</a><br>
           </p>
</asp:Content>

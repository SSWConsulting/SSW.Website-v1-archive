<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="Microsoft Project Suggestions (the rich client like Excel)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath>
    </p>
    <div class="TableOfContents">
            <h3>Microsoft Project Suggestions (the rich client like Excel)</h3>
                <ol>
                    <li><a href="#Highlighting">Project 2010 - Support change highlighting</a></li>
                    <li><a href="#DontCloseAndOpenForUpdates">(Hinders TFS Integration ?but MS Project) - I don't want to close and reopen to get updates</a></li>
                    <li><a href="#SubItem">Help me easily add sub items in Microsoft Project </a></li>
                    <li><a href="#ColumnMappingForTFSFields">Column Mapping &#8211; Show just the TFS fields *IMPORTANT*</a></li>
                    <li><a href="#HelpCostProjects">Help me cost my projects  - it is not ok to lose my resource rates upon closing the file</a></li>
                    <li><a href="#DeveloperRates">Enable more rates for a developer</a></li>
                    <li><a href="#ReadOnlyMessage">Help me find out when I can open my project after a read only message</a></li>
                    <li><a href="#SaveResourceCostInfo">(Hinders TFS Integration ?but MS Project) - Let me save resource cost information </a></li>
                </ol>
    </div>
    <ol>
        
        <li>
            <h2><a name="Highlighting"></a>Project 2010 - Support change highlighting</h2>
            <p>The change highlighting in MS Project does work when working with TFS.</p>
            <p>For more information of the 'Change Highlighting' feature missing, see <a href="http://zo-d.com/blog/archives/project-2007/ms-project-2007-change-highlighting-and-the-interim-plan.html"> MS Project 2007 Change Highlighting and the Interim Plan</a></p>
        </li>

        <li>
            <h2><a name="DontCloseAndOpenForUpdates"></a>(Hinders TFS Integration ?but MS Project) - I don't want to close and reopen to get updates</h2>
            <p>When changes are made in TFS and synchronized to Project Server, the Project Manager needs to close MS Project and reopen it to get the new changes. MS Project should automatically prompt when there are new changes. This helps the project manager not work with stale data.</p>
        </li>
    
        <li>
            <h2><a name="SubItem">Help me easily add sub items in Microsoft Project </a></h2>
            <p>Say I want to enter some tasks to User Stories, it is easy in Excel. However I watched a user get stuck today.<br />
            To fix this Microsoft Project needs to be consistent with Excel</p>
            <dl class="badImage">
                <dt><img src="images/NothingOnToolbar.jpg" alt="Nothing On Toolbar " /></dt>
                <dd>Figure: Bad example - Nothing on the toolbar, you need to get to the right field, and then right click</dd>
            </dl>
            <dl class="goodImage">
                <dt><img src="images/EasyFindToolbar.jpg" alt="Easy Find Toolbar" /></dt>
                 <dd>Figure: Good example - Easy to find on the toolbar</dd>
            </dl>
        </li>   
        
        <li>
     <h2><a name="ColumnMappingForTFSFields"></a>Column Mapping &#8211; Show just the TFS fields *IMPORTANT* </h2>
       <dl class="image">
		    <dt><img src="Images/InsertColumn.jpg" alt="Insert column error "/></dt>
		    <dd>Figure: When you "Insert Column" it is horrible... The lists go on and on and on... </dd>
		 </dl>
        <dl class="image">
		    <dt><img src="Images/AddTFSColumn.jpg" alt="Need an option - Insert TFS Column "/></dt>
		    <dd>Figure: When adding a column, we need a new one "Insert TFS Column"</dd>
		 </dl>
		 <dl class="image">
		    <dt><img src="Images/EditColumn.jpg" alt="Need an option - Edit TFS Column "/></dt>
		    <dd>Figure: When editing a column we need a new one "TFS Columns" </dd>
		 </dl>
    </li> 

    <li>
        <h2><a name="HelpCostProjects"></a>Help me cost my projects  - it is not ok to lose my resource rates upon closing the file.</h2>
        <p>Losing data is unforgivable. If you don&#8217;t give a warning, it is treachery.</p>
        <p>To Repro:</p>
        <ol>
            <li>In MS Project (integrated with TFS), go to the Resource Usage view and enter a Standard Rate for my resource</li>
            <li>Click on File for the backstage view and click Publish</li>
            <li>Reopen MS Project with the same project &#8211; my rates are lost!</li>
        </ol>
        <dl class="image">
		    <dt><img src="Images/RateLost.jpg" alt="The Standard Rate field is lost when I close MS Project "/></dt>
		    <dd>Figure: The Standard Rate field is lost when I close MS Project &#8211; even if I publish to TFS</dd>
		</dl>
        <p>The Solution:</p>
        <ol>
            <li>Save the data</li>
            <li>Clearly indicate the difference between a local resource and a global resource</li>
            <li>Put a hyperlink "Change rates for global resources" to http://tfspsdemo/pwa/_layouts/PWA/Admin/AddModifyUser.aspx </li>
        </ol>
        <dl class="image">
		    <dt><img src="Images/SaveAUser.jpg" alt="Save the data"/></dt>
		    <dd>Figure: Save a user from losing data and give them an easy way to get to the global resources and change the standard rates</dd>
		</dl>
    </li>

    <li>
        <h2><a name="DeveloperRates"></a>Enable more rates for a developer</h2>
        <p>You should be able to set more than 5 rates per developer. This is too limiting when you have resources working on many client projects, and varying rates.</p>
        <dl class="image">
            <dt><img src="images/DeveloperRate.JPG" border="0" /></dt>
            <dd>Figure: Can only set 5 different rates for resources.</dd>
        </dl>
    </li>

    <li>
        <h2><a name="ReadOnlyMessage"></a>Help me find out when I can open my project after a read only message</h2>
        <p>When I publish changes to Project Server using Excel or Visual Studio integrated with TFS, I can't immediately open the Project file in MS Project without getting a warning dialog.</p>
        <ol>
            <li>This warning should have a link to the Jobs Queue in PWA so I know when I am safe to open the Project file.</li>
        </ol>
        <dl class="image">
		    <dt><img src="Images/ReadOnlyMessage.jpg" alt="Read Only Error"/></dt>
		    <dd>Figure: Read only error shown when there are Pending Jobs in the Queue</dd>
		</dl>
        <dl class="image">
		    <dt><img src="Images/ReadOnlyMessage2.jpg" alt="Read Only Message"/></dt>
		    <dd>We need a link that takes us directly to the "Manage Queue Jobs" page in "Server Settings" of PWA. This will show me the jobs that are stopping the file from being opened</dd>
		</dl>
    </li>

    <li>
        <h2><a name="SaveResourceCostInfo"></a>(Hinders TFS Integration ?but MS Project) - Let me save resource cost information</h2>
        <p>When I set or update the rate of resources in MS Project Professional, these rates are not persisted. The next time I open Project the rates are zero again.</p>
        <p><strong>Note:</strong> We can set the default rates of each resource in Project Web Access, but Project Managers will use MS Project Professional 99% of the time.</p>
        <dl class="image">
            <dt><img src="images/SaveResourceCostInfo.jpg" alt="Let me save resource cost information" /></dt>
            <dd>Figure: Let me save resource cost information</dd>
        </dl>
    </li>

    </ol>
    <h2>Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
    </p>
</asp:Content>

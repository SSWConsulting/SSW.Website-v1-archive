<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="Microsoft Project Server Integration Feature Pack (for TFS) Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath>
    </p>
    <p><img height="14" width="18" alt="Red star" src="/ssw/Images/Validation/redstar.gif" />Indicates important rule</p>
    <div class="TableOfContents">
            <h3>Microsoft Project Server Integration Feature Pack (for TFS) Suggestions</h3>
                <ol>
                    <li><a href="#TooQuick">(Hinders TFS Integration &#8211; but I know MS Project) Help me when I am too quick</a> <img height="14" width="18" alt="Red star" src="/ssw/Images/Validation/redstar.gif" /></li>
                    <li><a href="#RoundingError">(Hinders TFS Integration &#8211; but I know Project Server) Bug &#8211; Fix rounding error</a></li>
                    <li><a href="#ComplicatedCloseDialog">(Hinders TFS Integration &#8211; but I know MS Project) Help me be able to have an innocent "look around" without a complicated Close dialog</a></li>
                    <li><a href="#WhyOpenMSProfessionalAndPublish">(Hinders TFS Integration &#8211; but I know Project Server) &#8211; Why do I have to open Microsoft Project and then Publish</a></li>
                    <li><a href="#ShowProcessingHistory">Show me the processing history</a></li>
                    <li><a href="#RemoveSurprise">(Hinders TFS Integration &#8211; but I know MS Project) Remove the 100% surprise</a></li>
                    <li><a href="#DontGiveMe3Portals">Don't give me three portals (Team Project Portal, TFSWA and PWA)</a></li>
                </ol>
    </div>
    <ol>
        
        <li>
            <h2><a name="TooQuick"></a>(Hinders TFS Integration &#8211; but I know MS Project) IMPORTANT - Help me when I am too quick</h2>
            <p>It appears the only way forward is to open Read-Only.</p>
            <p>This message box comes up when you add a TFS User Story and then open Project straight away... (it is still processing a record from TFS).</p>
            <p>Suggestion:</p>
            <ul>
                <li>It would be better that the default button is 'Retry', with a 'Open Read-Only' as another button.</li>
                <li>Another option is to say "Close Project, wait 30 seconds and open again"</li>
            </ul>
            <dl class="image">
                <dt><img src="images/ContinueReadOnly.jpg" alt="Continue Read Only" /></dt>
                <dd>Figure: Continue read-only!!!  Let me know the better option is to close and re-open</dd>
            </dl>
        </li>
        
        <li>
            <h2><a name="RoundingError"></a>(Hinders TFS Integration &#8211; but I know Project Server) Bug &#8211; Fix rounding error</h2>
            <p>I would love to know how this one got through testing... mmm</p>
            <p>Fix the rounding errors eg. Remaining work &#8211; it should be 36 in this case</p>
            <dl class="image">
                <dt><img src="images/RoundingError.jpg" alt="Rounding Error Proof" /></dt>
                <dd>Figure: Rounding bug</dd>
            </dl>
            <dl class="image">
                <dt><img src="images/RoundingBugProof.jpg" alt="Rounding Error Proof" /></dt>
                <dd>Figure: Here is the proof</dd>
            </dl>
        </li>

        <li>
            <h2><a name="ComplicatedCloseDialog"></a>(Hinders TFS Integration &#8211; but I know MS Project) Help me be able to have an innocent "look around" without a complicated Close dialog</h2>
            <p>I open a project file, look around but make no changes.</p>
            <p>I close it and I have to study this dialog (and think "what, did I check out! Sorry I didn&#8217;t mean to, so what do I do now?")</p>
            <p>PS: For the 2nd question, add another choice "Undo Checkout"</p>
            <dl class="image">
                <dt><img src="images/ComplicatedCloseDialog.jpg" alt="Complicated Close Dialog" /></dt>
                <dd>Figure: I did not make changes!</dd>
            </dl>
        </li>

        <li>
            <h2><a name="WhyOpenMSProfessionalAndPublish"></a>(Hinders TFS Integration &#8211; but I know Project Server) &#8211; Why do I have to open Microsoft Project and then Publish</h2>
            <p>...to see this field update?</p>
            <dl class="image">
                <dt><img src="images/AutomaticUpdate.jpg" alt="Automatic Update" /></dt>
                <dd>Figure: Can this figure update automatically? (I seem to have to open MS Project and press 'Publish')</dd>
            </dl>
        </li>

        <li>
            <h2><a name="ShowProcessingHistory"></a>Show me the processing history</h2>
            <dl class="image">
                <dt><img src="images/ProcessingHistory.jpg" alt="This is the originating UI" /></dt>
                <dd>Figure: I would like to see all the past records for this work item + a hyperlink to the Project Server web UI</dd>
            </dl>
            <dl class="image">
                <dt><img src="images/ProcessingHistory2.jpg" alt="This is the originating UI" /></dt>
                <dd>Figure: I would prefer these records from the Project Server Integration, be moved to the 'Project Server' tab... so change to a grid on the other tab</dd>
            </dl>        
        </li>

        <li>
            <h2><a name="RemoveSurprise"></a>(Hinders TFS Integration &#8211; but I know MS Project) Remove the 100% surprise</h2>
            <p>When I double click on this, I get a surprise when I see 3 x 100% figures.</p>
            <p>My suggestion is to work out the percentage per person (or remove the data in this column &#8211; it looks wrong)</p>
            <dl class="image">
                <dt><img src="images/RemoveSurprise.jpg" alt="Remove Surprise" /></dt>
                <dd>Figure: The 100% figures, give a surprise</dd>
            </dl>   
            <dl class="image">
                <dt><img src="images/RemoveSurprise2.jpg" alt="Remove Surprise" /></dt>
                <dd>Figure: Use the figures to work out the percentage</dd>
            </dl>
        </li>

        <li>
            <h2><a name="DontGiveMe3Portals"></a>Don't give me three portals (Team Project Portal, TFSWA and PWA)</h2>
            <p>I would love to see some integration between all the portals. One portal to rule them all that allows:</p>
            <ul>
                <li>Entering Timesheets</li>
                <li>Viewing and editing work items</li>
                <li>Viewing Source control</li>
                <li>Viewing Reports</li>
                <li>Viewing the Project Timeline</li>
            </ul>
        </li>
    
    </ol>
    <h2>Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
    </p>
</asp:Content>

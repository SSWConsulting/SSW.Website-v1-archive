<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft TFS 2010 Visual Studio Team Test (VSTT) Suggestions"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<asp:label id="lblWelcome" runat="server"></asp:label>
				
	<div class="TableOfContents">
        <ol>
            <li><a href="#LinkFromVSToMTM">The link from VS to MTM should be less unexpected</a></li>
            <li><a href="#Branding">VSTT branding</a></li>
            <li><a href="#UseAllScreen">Help me use all my screen - when I want to</a></li>
            <li><a href="#CreateABug">Test and Lab Manager - Prompt to create a bug on failure</a></li>
            <li><a href="#UICrazyHyperlink">TFS 2010 Test - MTM UICrazy Hyperlink (little one)</a></li>
            <li><a href="#UIOfCodeTests">Help me have a better experience with Coded UI Tests</a></li>
            <li><a href="#SupportChrome">Microsoft Test should support Chrome</a></li>
            <li><a href="#OrderedTest">TFS 2010 Suggestion - 'Ordered Tests' should be renamed</a></li>
            <li><a href="#DetectDynamicParameter">Help me know what the dialog 'Detecting Dynamic Parameters' is doing</a></li>
            <li><a href="#TestsNumbers">Help me know how many Tests will be run (little one)</a></li>
            <li><a href="#WebTestUI">Web Tests vs Coded UI tests</a></li>
            <li><a href="#SimilarWithBS">Make 'Run Tests' like 'Build Solution'</a></li>
            <li><a href="#ManualStep"> CodedUI tests should allow me to insert a manual step (like Telerik Tests do)</a></li>
            <li><a href="#ToolUpdateExprience">Please make the Power Tool update experience nicer </a></li>
            <li><a href="#HiddenSettings">Help me find my hidden settings </a></li>
            <li><a href="#UseDiffTool">Testers need to debug #1 - but they are *not* going to install and use some diff tool </a></li>
            <li><a href="#CompareTests">Testers need to debug #2 - sometimes they will want to compare 2 tests </a></li>
        </ol> 
     </div>   
    <div id="mainContent">
	<ol>
		<li>
			<h2>
			<a name="LinkFromVSToMTM"></a>The link from VS to MTM should be less unexpected</h2>
			<dl class="image">
				<dt>
				<img src="Images/OpenForEdit.JPG" alt="Open for edit"/></dt>
				<dd>
				Figure: This will open a data entry form. Right? Wrong. I get a real shock when I click this button and it opens up a big new black application </dd></dl><br />
			<dl class="image">
				<dt>
				<img src="Images/IconAndText.JPG" alt="Icon and text"/></dt>
				<dd>
				Figure: This is the icon and text I would like to see on that button</dd></dl>
		</li>
		<li>
		 <h2><a name="Branding">VSTT branding</a></h2>
		 <p>
		  (if these issues may not be serious enough to list here?but anyway)<br />
            Why is the branding (the black look) so different from VS ?  <br />
            Where is the green icon?
		 </p>
		 <dl class="image">
				<dt>
				<img src="Images/NeedGreenIcon.JPG" alt="There should be a green icon on this scree. "/></dt>
				<dd>
				Figure: I think it would be better to put the green icon that is associated with VSTT here</dd></dl>
		 <dl class="image">
				<dt>
				<img src="Images/Icon.JPG" alt="Icon "/></dt>
				<dd>
				Figure: This is the icon that I would like to see above</dd></dl>
		 <p>Black is the new theme right?</p>
		 <dl class="image">
				<dt>
				<img src="Images/BlackSwitchToBlue.JPG" alt="Black switch to blue "/></dt>
				<dd>
				Figure: Is the branding for VSTT black?  But then it switches to blue!</dd></dl>
		 <dl class="image">
				<dt>
				<img src="Images/Icon.JPG" alt="Icon "/></dt>
				<dd>
				Figure: This is the icon that I would like to see above</dd></dl>
		 <dl class="image">
				<dt>
				<img src="Images/AppOpen.JPG" alt="App Open"/></dt>
				<dd>
				Figure: Which app do I have open?</dd></dl>	
		 <dl class="image">
				<dt>
				<img src="Images/Icon.JPG" alt="Icon "/></dt>
				<dd>
				Figure: This is the icon that I would like to see above</dd></dl>
		 <dl class="image">
				<dt>
				<img src="Images/SplashScreenMissIcon.JPG" alt="The icon missing, too "/></dt>
				<dd>
				Figure: The splash screen is missing the green icon</dd></dl>
		 <dl class="image">
				<dt>
				<img src="Images/Icon.JPG" alt="Icon "/></dt>
				<dd>
				Figure: This is the icon that I would like to see above</dd></dl>
		</li>
		<li>
		 <h2><a name="UseAllScreen">Help me use all my screen - when I want to</a></h2>
		 <p>Surely the whole of VS, should be using the *same* framework for a dialog</p>
		 <dl class="badImage">
				<dt>
				<img src="Images/NotResizable.JPG" alt="Not resizable "/></dt>
				<dd>
				Figure: Not resizable - really annoying. I expect to double click and it resizes to the top and bottom of the screen</dd></dl>
		 <dl class="goodImage">
				<dt>
				<img src="Images/Resizable.JPG" alt="Resizable "/></dt>
				<dd>
				Figure: Resizable - This is good</dd></dl>
		</li>

        <li>
                <h2><a name="CreateABug"></a>Test and Lab Manager - Prompt to create a bug on failure</h2>
                <p>The test recoding features of the Test and Lab manager are fantastic; however, the ability to create a bug is rather hidden.</p>
                <dl class="image">
                    <dt><img src="Images/CreateABug01.JPG" alt="How to crate a bug from Test and Lab Manager?" /></dt>
                    <dd>Figure 1 - How do I create a bug?</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/CreateABug02.JPG" alt="Find the button which can create a bug in Test and Manager." /></dt>
                    <dd>Figure 2 - The performance graph icon is the button you use to create a bug</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/CeateABugFromTWA.JPG" alt="Creating a bug in Team Web Access" /></dt>
                    <dd>Figure 3 - Creating a bug from Team Web Access</dd>
                </dl>
                <p>The icon should be consistent with Team Web Access.</p>
                <p>Also, when a test step fails, and the user presses "Save and Close" they should
                    be prompted:<br />
                    "One of your test steps have failed and you have not filed a bug. Do you want to
                    create one now?"<br />
                    [Yes] [No]
                </p>
            </li>

            <li>
                <h2><a name="UICrazyHyperlink"></a>TFS 2010 Test - MTM UICrazy Hyperlink (little one)</h2>
                <p>A quiz for you? What do you think clicking this hyperlink will do?</p>
                <dl class="image">
                    <dt><img src="Images/ClickOnHyperlink.JPG" alt="Hyperlink" /></dt>
                    <dd>Figure: Have a guess on what clicking this hyperlink will do?</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/CopyToClipboard.JPG" alt="Copy to the clickboard" /></dt>
                    <dd>Figure: Copy to the clipboard. Of Course!</dd>
                </dl>
                <p>Seriously it should be a grey text box that is enabled for copying the text</p>
            </li>

            <li>
             <h2><a name="UIOfCodeTests">Help me have a better experience with Coded UI Tests</a></h2>
              <p>
               We need more CodedUI tests in every VS solution we review. Today they are still not mainstream.
              </p>
              <p>I am not sure exactly what I don't like, but when brand new users think it has started when it has not.... and when new users don't know what to do when they are 'done' recording... and then after users click 'Generate' they are unsure what has happened, then I know there is a problem.</p>
              <p>Here are some things I <b>*might*</b> do.</p>
              <dl class="image">
                      <dt>
                        <img src="images/FinishIcon.jpg" alt="Add finish flag icon " />
                       </dt>
                 <dd>Figure: Add "Finish" flag icon on right button 'Generate Code' </dd></dl>
               <dl class="image">
                      <dt>
                        <img src="images/CancellButton.jpg" alt=" Add a cancell button" />
                       </dt>
                 <dd>Figure: Add a "Cancel" button next to 'Add and Generate' </dd></dl>
              <dl class="image">
                      <dt>
                        <img src="images/RecordingProcess.jpg" alt="Recording Process " />
                       </dt>
                 <dd>Figure: A red icon, tells users it is recording (note that it is currently stopped). We need animation added so it is clearer.</dd></dl>
              <dl class="image">
                      <dt>
                        <img src="images/PerformanceWizard.jpg" alt="Performance Wizard" />
                       </dt>
                 <dd>Figure: I think the Performance Wizard has a better 'feel' with ideas to copy, plus we should be giving users a consistent experience </dd></dl>
              <dl class="image">
                      <dt>
                        <img src="images/SpinningIcon.jpg" alt=" Add a spinning icon" />
                       </dt>
                 <dd>Figure: Adding the spinning icon to the 'Coded UI Test Builder' is important (as it gives the feeling of the recording)</dd></dl>   
              <dl class="goodImage">
                      <dt>
                        <img src="images/CodeUIWizard.jpg" alt="Add a code UI wizard" />
                       </dt>
                 <dd>Figure: Good example - Adding a CodedUI wizard for the first time - like the Performance Wizard, would be a great improvement </dd></dl>
              <dl class="badImage">
                      <dt>
                        <img src="images/MoreInfo.jpg" alt="More info for the first time user" />
                       </dt>
                 <dd>Figure: Bad example - more info for the first time user + it is inconsistent with the Performance Wizard </dd></dl>
               <p>
                The wizard should use the example of the calculator e.g the user could follow it to record Calc (2+2=4) successfully.<br />
                Last Resort: If you don't agree with any of the above, can we at least have a hyperlink to a tutorial (in the above dialog)
               </p>                  
           </li>

           <li>
                <h2><a name="SupportChrome"></a>Microsoft Test should support Chrome</h2>
                <p>Suggestion - not very important &#8211; but thought I would mention it.</p>
                <dl class="goodImage">
                      <dt><img src="images/VSSupportFirefox.jpg" alt="VS support firefox" /></dt>
                    <dd>Figure: Good example &#8211; Visual Studio Test supports Firefox 4 (as does Telerik Test)</dd>
                </dl> 
                <dl class="badImage">
                    <dt><img src="images/VSNotSupportChrome.jpg" alt="Visual Studio Test does not support Chrome" /></dt>
                    <dd>Figure: Bad example &#8211; Visual Studio Test does not support Chrome (but Telerik Test does)</dd>
                </dl> 
                <p><strong>Note:</strong> Informal conversations with Microsoft tell me that they wont be doing this anytime soon.<br />
                They are looking out for partners that can plug this gap by writing a Chrome plugin.</p> 
           </li>

           <li>
                <h2><a name="OrderedTest"></a>TFS 2010 Suggestion - "Ordered Tests" should be renamed</h2>
                <p>When I ask a class what they think "Ordered Tests", they never guess it</p>
                <dl class="image">
                    <dt><img src="Images/OrderedTest.JPG" alt=" The 'Ordered Tests' should be renamed " /></dt>
                    <dd>Figure: Rename to something else E.g. "Set of Tests" or "Group of Tests" or "Test Set" or "Test Group"</dd>
                </dl>
            </li>

            <li>
                <h2><a name="DetectDynamicParameter">Help me know what the dialog 'Detecting Dynamic Parameters' is doing</a></h2>
                <p>When you are demoing web tests and waiting at the end?I like to fill the 'white space' with something intelligent every now and then.<br />
                    Here is the explanation that should be sitting under a <strong>'More >'</strong> button.p>
                <p>When you go from one page to another ?the parameters need to be passed. Here VS is looking for them by comparing the requests.</p>
                <h3>More Information</h3>
                <p>Many dynamic parameters would cause your Web performance test playback to fail, since it would be different every time that the test is run.<br />
                   E.g. a session ID (which changes by default every 20 minutes).</p>
                <p>VS looks for dynamic parameter values set:</p>
                <ul>
                    <li>in cookie values.</li>
                    <li>in hidden fields on HTML pages, such as ASP.NET view state (Pretty clever eh?),and</li>
                    <li>as query string or form post parameters.</li>                 
               </ul>
               <dl class="image">
                    <dt><img src="images/MoreInfoForTheDialog.jpg" alt="More info for this dialog. " /></dt>
                    <dd>Figure: Give me more information to read - since I am always looking at this dialog box</dd>
               </dl>
            </li>

            <li>
                <h2><a name="TestsNumbers"></a>Help me know how many Tests will be run (little one)</h2>
                <dl class="image">
                    <dt><img src="images/Add3.jpg" alt="Add 3 " /></dt>
                    <dd>Figure:Add "3" </dd>
                </dl> 
                <dl class="image">
                    <dt><img src="images/Add55.jpg" alt="Add 55 " /></dt>
                <dd>Figure:Add "55" </dd></dl> 
            </li> 

            <li>
                <h2><a name="WebTestUI"></a>Web Tests vs Coded UI tests</h2>
                <p>The UI for Web Tests vs Coded UI tests is very different. The user experience makes you feel it comes from 2 different companies.</p>
                <dl class="image">
                    <dt><img src="images/CreateValidation.jpg" alt="select this text and create a validation " /></dt>
                    <dd>Figure: I want to select this text and create a validation in the browser</dd>
                </dl> 
                <p>When recording a web test, I would love a visual aid when in the browser (like the bulls eye in coded UI tests) to do things like:</p>
                <ul>
                   <li>select the text</li>
                   <li>to check an image is on the page</li>
                   <li>to check it loads within a certain time</li>              
                </ul>
                <dl class="image">
                    <dt><img src="images/BullEyes.jpg" alt="bring the 'bulls eye' to Web Tests " /></dt>
                    <dd>Figure: Do we want to bring the 'bulls eye' to Web Tests so users get a more consistent experience?</dd>
                </dl> 
            </li>

            <li>
                <h2><a name="SimilarWithBS">Make 'Run Tests' like 'Build Solution'</a></h2>
                <dl class="image">
                    <dt><img src="images/BuildSolution.jpg" alt="Build | Build Solution " /></dt>
                    <dd>Figure: Today we click, Build | Build Solution </dd>
                </dl>  
                <dl class="image">
                    <dt><img src="images/TestSolution.jpg" alt="Make it consistent with the Build menu " /></dt>
                    <dd>Figure: Move these 3 to the top - and make consistent with the Build menu e.g. Test | Test Solution </dd>
                </dl>  
            </li>

            <li>
                <h2><a name="ManualStep">CodedUI tests should allow me to insert a manual step (like Telerik Tests do)</a></h2>
                <dl class="image">
                    <dt><img src="images/ManualStep.jpg" alt="Insert a Manual Step " /></dt>
                    <dd>Figure: Telerik Test allow you to insert a 'Manual Step' </dd>
                </dl>  
                <p>Let me tell you why this is so cool by telling you what I told them. I said to add some tooltip text, that talks about what a great feature this is eg.</p>
                <div class="greyBox">
                    <p>Manual Steps are very useful to enable Developers and Testers to work together during a sprint.<br />
                    The goal of a successful sprint (if you are doing Scrum) is to have the sprint fully tested by the end of the sprint.</p>
                    <p>Normally this is hard, but not with 'Manual Steps'.</p>
                    <p>Insert a 'Manual Step' to enable you to have a tests for incomplete User Stories.<br />
                    Say you have the major items complete, such as the first and last part of the User story is working (but something is missing in the middle - eg. the status field needs to be manually set) then insert a 'Manual Test' with text such as:<br />
                    'Now manually update the status field. Joe will be making this automatic later.'</p>              
                </div>  
                <p>Anyone else agree?</p>
            </li>

            <li>
                <h2><a name="ToolUpdateExprience">Please make the Power Tool update experience nicer</a></h2>
                <p>Why can't it be a nice normal extension? Or at least have version numbers.</p>
                <dl class="image">
                    <dt><img src="images/GreenTickMissing.jpg" alt="The green tick is missing. " /></dt>
                    <dd>Figure: Weird - I am missing a green tick? Mmmm...I thought I had this installed  </dd>
                </dl>  
                <dl class="image">
                    <dt><img src="images/InformationNotice.jpg" alt="The notice says I have installed it ... " /></dt>
                    <dd>Figure: So I hit the download button?oh?I do have it installed? What did I do wrong?  </dd>
                </dl>  
                <dl class="image">
                    <dt><img src="images/UninstallProcess.jpg" alt="I have to uninstall it. " /></dt>
                    <dd>Figure: I thought I had finished the old way! ...anyway lets uninstall it </dd>
                </dl>  
                <dl class="image">
                    <dt><img src="images/NoVersionNumber.jpg" alt="There is no version number. " /></dt>
                    <dd>Figure: Which is the latest file?  It is <strong>*not*</strong> the largest (as I can see by date)? and there is no version number in the file? Grrrr! So I will install the latest date</dd>
                </dl>  
                <dl class="image">
                    <dt><img src="images/NoGreenTick.jpg" alt="No green tick appears even version update. " /></dt>
                    <dd>Figure: now I have it installed? But after all that - no green tick</dd>
                </dl>  
                <p>And no version number to see if it is newer.</p>
            </li>

            <li>
                <h2><a name="HiddenSettings">Help me find my hidden settings</a></h2>
                <p>I believe any of my changes should be more visible.</p>
                <p>To that end:</p>
                <ul>
                    <li>Bold my settings</li>
                    <li>When I close and reopen - keep my node open (expanded)</li>
                </ul>
                <dl class="image">
                    <dt><img src="images/HiddenSettings.jpg" alt="Hidden settings" /></dt>
                    <dd>Figure: If I close and reopen this .webtest VS will not open where I was</dd>
                </dl>       
            </li>

            <li>
                <h2><a name="UseDiffTool">Testers need to debug #1 - but they are *not* going to install and use some diff tool</a></h2>
                <p>(Happy to be corrected - there might be a much better way to debug)</p>
                <dl class="image">
                    <dt><img src="images/OpenTestResultsInExcel.jpg" alt="Check the tests results in Excel" /></dt>
                    <dd>Figure: I am trying to understand the differences between 'WebTest1' and 'WebTest2'... so add menu item 'Open Results in Excel'</dd>
                </dl>  
                <dl class="image">
                    <dt><img src="images/TestResultInExcel.jpg" alt="The result you will see in the excel " /></dt>
                    <dd>Figure: After clicking a menu item like 'Open Results in Excel' I would like to see this</dd>
                </dl>  
            </li>

            <li>
                <h2><a name="CompareTests">Testers need to debug #2 - sometimes they will want to compare 2 tests </a></h2>
                <p>(Happy to be corrected - there might be a much better way to debug)</p>
                <dl class="image">
                    <dt><img src="images/CompareResults.jpg" alt="I'd like to compare the results in Excel " /></dt>
                    <dd>Figure: I am trying to understand the differences between 'WebTest1' and 'WebTest2'... so add menu item 'Compare Results in Excel' </dd>
                </dl> 
                <p>Then pop a dialog to ask 'Select Test to compare' and open Excel.</p>
                <dl class="image">
                    <dt><img src="images/ShowResultInDiffColors.jpg" alt="I'd like to see the different results clearly " /></dt>
                    <dd>Figure: After clicking a menu item like 'Compare Results in Excel' I would like to see this (with Red on the errors) and the normal background colours to show the differences (added, deleted and different rows)</dd>
                </dl> 
            </li>
		
    </ol>
   </div>
<br />
<h2>Acknowledgements</h2><p>
	<a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Martin.aspx">Martin Hinshelwood</a> <br/>
	<a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Adam.aspx">Adam Cogan</a>
	</p> 
		</asp:content>
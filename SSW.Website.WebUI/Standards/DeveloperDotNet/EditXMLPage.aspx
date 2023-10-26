<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Using TFS to Edit Website" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <div class="TableOfContents">
        <h3>
            Using TFS to Edit Website</h3>
        <ol>
            <li><a href="UsingTFSToEditWebsite.aspx#SetupTFS" target="_blank">Setup Team Explorer to connect to TFS</a></li>
            <li><a href="UsingTFSToEditWebsite.aspx#SourceControl" target="_blank">Get Latest (aka: Download files to your local workspaces)</a></li>
            <li><a href="UsingTFSToEditWebsite.aspx#EditWeb" target="_blank">Confirm your understanding how the toolbar was automatically opened</a></li>  
            <li><a href="UsingTFSToEditWebsite.aspx#EditWebCode" target="_blank">Editing Web Pages with code file</a></li>           
            <li><a href="#NewFolder">Adding a new folder to the TFS</a></li>
            <li><a href="#XMLPage">Use Team Explorer to Edit XML Page</a></li>
            <li><a href="#BYCompare">Use "Beyond Compare" to Copy from local(e.g. ant) to the Web</a></li></ol>
    </div>
 <li>
            <h2>
                <a id="XMLPage"></a>Editing XML Web Pages</h2>
                <ol>
                 <li>Open Team Explorer Window</li>
                            <dl class="image">
                                    <dt><img src="images/TeamExplorer.gif" alt="Open Team Explorer Window" width="764" height="425" /></dt>
                                    <dd>Figure: Open Team Explorer Window </dd></dl>
                            <li>Checkout and Edit file</li>
                            <li>If failed, Stop working and asking for help</li>
                            <li>Get Latest Version of File From ANT Server</li>            
                            <dl class="image">
                                    <dt><img src="images/latestVersion.gif" alt="Get Latest Version" width="546" height="360" /></dt>
                                    <dd>Figure: Getting Update file from ANT Server </dd></dl>                             
                            <li>Check Out for Editing</li>
                            <li>Open "HomeCalender.xml" from Source Control Explorer Window for Editing</li>  
                            <li>Update "HomeCalender.xml" for an upcoming events</li>
                           <dl class="image">
                                    <dt><img src="images/XMLPage.gif" alt="XML Page" width="757" height="226" /></dt>
                                    <dd>Figure: Updating XML Page for an Upcoming Events</dd></dl>  
                                      <li>For New Event follow the same syntax from Calender Entry </li>
                                      <li>Insert New Title </li>
                                      <li>Give URL of the page for link. </li>
                                      <li>Give correct path of the image</li>
                                      <li>Description of the Event </li>
                                      <li>Start and Ending Date of the Event </li>         

                </ol></li>
                
            <h2>
                <a id="NewFolder"></a>Adding a new folder to the TFS</h2>
                        <ol>
                            <li>Go into Explorer (tip: hold click the windows button and the e key ). Navigate to
                                your ProjectsTFS\trunk\SSW.Website.WebUI\StandardsInternal\_EmployeeTestArea\. You
                                will see the folder name you created in the previous step.</li><li>Copy this folder
                                    and rename it to your name.</li><li>Go back into Visual Studio. Select the _EmployeeTestArea
                                        folder name and then click the Add Files Icon</li>
                                        <dl class="image">
                                            <dt><img src="images/AddFiles.gif" alt="Add Files Icon" width="393" height="348" /></dt>
                                            <dd>Figure: Add Files Icon</dd></dl>
                            <li>The "Add to Source Control" window appears. Click "Add Folder.." button. The "Browse
                                Folder" window appears.</li><li>Navigate in this window to the _EmployeeTestArea and
                                    then to the folder that you just created in Explorer. Select it and click the "OK"
                                    button. The "Browse Folder" window disappears.</li><li>Click the "OK" button in the
                                        "Add to Source Window". It disappears.</li><li>Your new folder appears with a "plus"
                                            icon on left hand side.</li><li>Open "aboutme.aspx" which is inside your newly created
                                                folder</li><li>Update "aboutme.aspx" with your own details. Don't forget to change the
                                                    Title of the window as well. In order to reduce spam the "@ssw.com.au" of&nbsp;
                                                    the email address is depicted as an image so write only your username between the
                                                    tags.&nbsp;</li><li>Right Click your folder name and select &nbsp;"Check in Pending
                                                        Changes". Your folder now exists on the TFS as well as your local machine.</li><br />
                        </ol>
        </li>
         <li>
            <h2>
                <a name="FTPSync"></a><s>Use FTPSync to Copy from Ant to the Web</s></h2>
                        <b>
		<span style="color: #FF0000">**NOW MOVED TO USING BEYOND COMPARE**</span></b> (see <a href="#BYCompare">below</a>)
                        <ol>
                            <li><s>Start FTPSync.</li><li>Click the AU server and press the "connect" button.</s></li>
                            <li><s>Browse to the correct file location on both your local computer and the remote server.</s></li>
                                <dl class="image">
                                    <dt><img src="Images/FtpSyncFiles.GIF" alt="FtpSync Files Icon" width="313" height="179" /></dt>
                                    <dd>Figure: Compare Files Icon</dd></dl>
                            <li><s>Press the compare files icon.</s></li>
                            <dl class="image">
                                <dt><img src="Images/FtpSyncFiles2.GIF" alt="Synchronise Icon" width="306" height="180" /></dt>
                                <dd>Figure: Synchronise Icon</dd></dl>
                            <li><s>Press the green circle button on the right.</s></li>
                            <li><s>The program asks you to confirm the transfer. Check the timestamp checkbox.</s></li>
                                <dl class="image">
                                    <dt><img src="/ssw/StandardsInternal/DeveloperGeneral/images/setTimestamps.GIF" alt="Set Local timestamps to Remote after transfer" width="325" height="248" /></dt>
                                    <dd>Figure: Always tick Checkbox for "Set Local timestamps to Remote after transfer"</dd></dl>
                            <li><s>Click the "OK" button.</s></li>
                            <div class="Quote">
                               <strong>Note</strong>: Sync files to US server first and then to AU server.<br />
                               <strong>Reason</strong>: Make sure always have synchronized timestamps on AU server and local server.<br />We only care about Timestamps on AU server because the local server recalls last timestamp. This way the colour of the file names becomes black not red or blue.</div>

                         </ol>
                         <p>Note: Did you follow the <a href="/ssw/Standards/Rules/RulesToBetterWebsitesDevelopment.aspx#FTPSyncStraightAway">synchronization standards</a>?</p>
        </li>
        <li>
            <h2>
                <a name="BYCompare"></a>Use "Beyond Compare" to Copy from local (e.g. ant) to the Web</h2>
                        <ol>
                            <li>Start Beyond Compare.</li><li>Choose local computer to one side and Web server to the other side then press the "OK" button.</li>
                            <dl class="image">
                                    <dt><img src="Images/ConnectToWebServer.jpg" alt="Connect to Web Server" width="388" height="377" /></dt>
                                    <dd>Figure: Choose the server</dd></dl>
                            <li>Browse to the correct file location on both your local computer and the remote server.</li>
                                <dl class="image">
                                    <dt><img src="Images/CompareItems.jpg" alt="Compare Items" width="833" height="469" /></dt>
                                    <dd>Figure: Compare Files Icon</dd></dl>
                            <li>Press the compare files icon.</li>
                            <li>Select the file on your local computer side then press the copy button</li>
                            <li>The program asks you to confirm the transfer. Press OK</li>
                                <dl class="image">
                                    <dt><img src="Images/copyFile.jpg" alt="Transfer file" width="837" height="436" /></dt>
                                    <dd>Figure: Always tick Checkbox for "Set Local timestamps to Remote after transfer"</dd></dl>
                            <li>Click the "OK" button.</li>
                            <div class="Quote">
                               <strong>Note</strong>: Sync files to US server first and then to AU server.<br />
                               <strong>Reason</strong>: Make sure always have synchronized timestamps on AU server and local server.<br />We only care about Timestamps on AU server because the local server recalls last timestamp. This way the colour of the file names becomes black not red or blue.</div>

                         </ol>
                         <p>Note: Did you follow the <a href="/ssw/Standards/Rules/RulesToBetterWebsitesDevelopment.aspx#FTPSyncStraightAway">synchronization standards</a>?</p>
                         
        </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ALS">Alvin Shen</a><br />
    </p>
</asp:Content>

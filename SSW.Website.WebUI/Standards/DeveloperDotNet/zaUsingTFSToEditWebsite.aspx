<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Using TFS to Edit Website" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <p><font color="#ff0000">TODO: Add video</font></p>
     <h1>The goal is to connect to TFS, get latest, copy a web page and add your name.</h1>
     <h1>Then see it automatically deploy.</h1>
     <h1>Note: This is an exercise followed by SSW employees on Induction Day.</h1>
    <div class="TableOfContents">
        <h3>
            Using TFS to Edit Website</h3>
        <ol>
            <li><a href="#SetupTFS">Setup Team Explorer to connect to TFS</a></li>
            <li><a href="#SourceControl">Get Latest (aka: Download files to your local workspaces)</a></li>
            <li><a href="#EditWeb">Confirm your understanding how the toolbar was automatically opened</a></li>  
            <li><a href="#EditWebCode">Editing Web Pages with code file</a></li>           
            <li><a href="#NewFolder">Adding a new folder to the TFS</a></li>
            <li><s><a href="#FTPSync">Use "FTPSync" to Copy from Ant to the Web</a></s></li>
            <li><a href="#BYCompare">Use "Beyond Compare" to Copy from local(e.g. ant) to the Web</a></li></ol>
    </div>
    <ol>
        <li>
            <h2>
                <a id="SetupTFS"></a>Setup Team Explorer to connect to TFS</h2>
            <div class="topoflist">
                <table border="0"  id="table1">
                    <tr>
                        <td width="905" style="height: 192px">
                            <ol>
                                <li>Open Visual Studio.</li>
                                <li>click View &gt; Team Explorer.  In Team explorer,click
                                    "Add Existing Team Project"</li>
                                    
                                    <dl class="image">
                                    <dt><img src="images/s1ins_ConnectToTFS.jpg" alt="Connect to TFS" width="477" height="390" /></dt>
                                    <dd>Figure: Select the project you want to add</dd></dl>
                                    
                                    <li>Click "OK" in this window.</li>
                                    <li>Go to "Source Control" then double click the solution file (.sln) to open the "Browse for folder"</li>
                                <dl class="image">
                                    <dt><img src="images/s1ins_createFolder.jpg" alt="Select Path" width="344" height="334" /></dt>
                                    <dd>Figure: Select right path then create new folder for the project</dd></dl>
                                    
                                <li>Select right path for the project which follow by <a href="/ssw/standards/Rules/RulesToBetterWindows7Deployment.aspx#FileStructure">
                                                Organization of your Hard Disk</a>. e.g. c:\DataAlvinShen\ProjectsTFS\SSW.TimePROReports\</li>
                                </ol><br />
                        </td>

                    </tr>
                </table>
            </div>
        </li>
        <li>
            <h2>
                <a id="SourceControl">Get Latest (aka: Download files to your local workspaces)</a></h2>

                 <ol>
                            <li>click View > Other Windows &gt; Source Control Explorer</li>
                            <li>Navigate to the folder unicorn/SSW.website/trunk/SSW.Website.WebUI/StandardsInternal/_EmployeeTestArea.</li>
                            <li>Notice that all the folder and file names are grayed out. This is because they do
                                not exist on your local computer. Randomly right click one of the existing employee
                                name folders.</li>
                            <dl class="image">
                                <dt><img src="images/GreyOut.gif" alt="Grayed Out Names" width="837" height="383" /></dt>
                                <dd>Figure: Shows the Grayed Out Names in Source Control Explorer</dd></dl>
                            <li>Select get latest version from the right click menu. This will cause that folder
                                to become resident on your local machine.</li>
                  </ol>

        </li>
        <li>
            <h2>
                <a id="EditWeb"></a>Confirm your understanding how the toolbar was automatically opened</h2>
                <ol>
                            <li>Open team Explorer or Source Control Explorer</li>
                            <dl class="image">
                                    <dt><img src="images/SourceControlExplorer.gif" alt="Source Control Explorer" width="468" height="620" /></dt>
                                    <dd>Figure: Open Source Control Explorer </dd></dl>
                            <li>Checkout file</li>
                            <dl class="image">
                                    <dt><img src="images/CheckOutFile1.gif" alt="Get the latest" width="621" height="254" /></dt>
                                    <dd>Figure: Get the Latest Version</dd></dl>
                            <dl class="image">
                                    <dt><img src="images/CheckOutFile2.gif" alt="Check Out File" width="752" height="240" /></dt>
                                    <dd>Figure: Check Out File</dd></dl>
                            <li>View or Edit the file</li>
                            <li><a name="copyFiletoServer"></a>Save and then copy to your local server, e.g. ant (TODO:Automatically synchronization by Team Builder)</li>
                              <dl class="image">
                                    <dt><img src="images/SyncFileToAnt.GIF" alt="Copy local file to the server" width="631" height="413" /></dt>
                                    <dd>Figure: Copy local file to the server</dd></dl>                          
                            <li>Check in</li>
                            <dl class="image">
                                    <dt><img src="images/CheckInFile.gif" alt="Check In File" width="709" height="257" /></dt>
                                    <dd>Figure: Check In File</dd></dl>
                        </ol>
        </li>
 <li>
            <h2>
                <a id="EditWebCode"></a>Editing Web Pages with code behind</h2>
                <ol>
                 <li>Open SSW.WebSite.sln</li>
                            <dl class="image">
                                    <dt><img src="images/sswSln.gif" alt="Open SSW.WebSite.sln" width="281" height="551" /></dt>
                                    <dd>Figure: Open solution file - SSW.WebSite.sln </dd></dl>
                            <li>Checkout and Edit file</li>
                            <li>Build project, If failed, Stop working and asking for help</li>
                            <dl class="image">
                                    <dt><img src="images/buildProject.gif" alt="Compile project" width="232" height="130" /></dt>
                                    <dd>Figure: Compile project</dd></dl>                            
                            <li><a name="copyDlltoServer"></a>Copy the modified file and compiled dlls in bin folder into Live Server e.g. Ant.</li>
                            <dl class="image">
                                    <dt><img src="images/copyDllToAnt.gif" alt="Copy the modified file and dlls into Ant" width="656" height="587" /></dt>
                                    <dd>Figure: Copy the modified file and dlls into Ant</dd></dl>                             
                            <li>Check in</li>
                </ol>
        </li>        
        <li>
            <h2>
                <a id="NewFolder"></a>Adding a new folder to the TFS</h2>
                        <ol>
                            <li>Go into Explorer (tip: hold click the windows button and the e key ). Navigate to
                                your ProjectsTFS\trunk\SSW.Website.WebUI\StandardsInternal\_EmployeeTestArea\. You
                                should see the folder name you created in the previous step.</li><li>Copy this folder
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
                            <li>Start Beyond Compare.</li>
                            <li>Confirm "Passive Mode" on Firewall/Proxy setting is enabled to avoid firewalls and other Internet connectivity issues</li>
                            <dl class="image">
                                    <dt><img src="Images/Passivemode.jpg" alt="Check Passivemode" width="388" height="377" /></dt>
                                    <dd>Figure: “Passive Mode?setting in Beyond Compare, Tools | Options | FTP |Firewall/Proxy</dd></dl>
                            <li>Choose local computer to one side and Web server to the other side then press the "OK" button.</li>
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

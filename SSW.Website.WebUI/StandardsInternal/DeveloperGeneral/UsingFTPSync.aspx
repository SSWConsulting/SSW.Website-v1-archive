<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Using FTPSync"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
<p>
	FTPSync is the software we use to upload the changes we make on the local web server, 
	Ant, to Seal, our external web server. FTPSync is a powerful tool, which can simplify the synchronising of your work and the external web server, but if not used properly FTPSync can cause problems severe enough to stop SSWs web site working at all! 
</p>
<p>
	The most important thing to remember above all else when using FTPSync is:
</p>
<p >
	<b>No matter what it suggests, <span style="color:#FF0000">NEVER</span> synchronise 
	from Seal to Ant.</b>
</p>

<p>By default FTPSync will synchronise completely so that both web
sites are identical, this is not what we want; as it would wipe any
work-in-progress on Ant. Well see that there are some settings to be aware
of to stop FTPSync doing its default behaviour.</p>
		<ol>
			<li>To begin using FTPSync you will need to make a connection to the 
			Seal server. </li>
		</ol>
&nbsp;<img src="Images/image002.jpg" alt="" width="424" height="328" align="middle"><p>If no SSW connection exists on the start up window, click the Edit
button and enter the details shown below:</p>

<p >You will need to obtain the password from the SSW entry in Time
PRO!</p>
		<p ><img border="0" src="./Images/passmode.gif" width="412" height="360"></p>
		<p >&nbsp;</p>

<p>
<b>Note</b>: Make sure "Passive Mode" is on as some servers and firewalls require it and it will still work with those that don't require it.</p>
		<p style="line-height: 25px">Passive mode is required by some 
		firewalls/proxy servers and is when the remote server waits (passively) 
		for a data connection from the client, FTPSync, rather than actively making a connection to the client. If you're unsure whether you require passive mode, then set it on.</p>
		<p>
		<img src="/ssw/StandardsInternal/DeveloperGeneral/images/passmode.gif" width="419" height="362" /></p>
		<p >&nbsp;</p>
		<ol start="2">
			<li>
			<p style="line-height: 25px" >Once the SSW connection is configured, 
			select the compare checkbox <img border="0" src="Images/UsingF2.gif" width="128" height="26"> to 
			compare things like date updated and file size and report which file 
			is newer and what files will be overridden by uploading or 
			downloading.</p></li>
			<li>
			<p style="line-height: 25px" >Click on the connect button to establish a connection.</p>
			</li>
		</ol>
		<ol start="4">
			<li>
			<p style="line-height: 25px">Begin by browsing to the folder on Ant that you wish to synchronise. Tip: If you
     have multiple folders, do them one folder at a time  it saves making
     errors.</li>
		</ol>
		<p style="line-height: 25px">
<img src="images/image006.jpg" alt="" width="643" height="467"/></p>
<p style="line-height: 25px">Before going any further, select the Options page 
from the Tools menu and select the Folder Exclusions tab. Then add
<b>_vti_cnf</b> and <b>zz</b> to the exclusions list and check &quot;Activate 
exclusions&quot;. This is a FrontPage folder and is not needed for synchronisation, 
so excluding it makes comparisons faster.</p>
		<p style="line-height: 25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img border="0" src="Images/UsingF1.gif" width="419" height="381" /></p>
		<ol start="5">
			<li>
			<p style="line-height: 25px">Browse to the matching location on Seal. Make sure that the path name begins /Inetpub, not /D:/Inetpub<img border="0" src="Images/UsingF3.gif" width="354" height="59"></li>
		</ol>
		<ol start="6">
			<li>
			<p style="line-height: 25px">If
     synchronising involves the creation of new folders on Seal then browse to
     the folder level above the new folders and make sure you have the Include
     sub-folders check box checked.</li>
			<li>
			<p style="line-height: 25px">Click on
     the top item in the left hand pane and the file list will appear.
			<img border="0" src="Images/UsingF4.gif" width="560" height="64"></li>
			<li>
			<p style="line-height: 25px">The files
     that FTPSync thinks it should synchronise are colour coded. The blue ones 
	are newer on Ant and should go to Seal, the red ones are newer on Seal
      but remember the rule above  you wont sync those red coloured files.
     Files in black are already in sync. </li>
		</ol>
		<p style="line-height: 25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img border="0" src="Images/UsingF6.gif" width="238" height="161"></p>
		<p style="line-height: 25px">Note: If
     everything is blue (or red) and you are not creating an entirely new
     section of the web site  then check that the locations at the top of the
     right and left panes correspond  they probably dont!</p>
		<ol start="9">
			<li>
			<p style="line-height: 25px">The boxes
     next to the files will be checked, if you want to be extra cautious you
     should uncheck the ones next to any red files.</li>
			<li>
			<p style="line-height: 25px">Click on
     the green Synchronise button.
     		<img 
     src="images/image008.jpg" alt="" width="154" height="35" ></li>
			<li>
			<p style="line-height: 25px">When the
     next screen appears, take care:</li>

		</ol>
		<p style="line-height: 25px"><img src="images/setTimestamps.GIF" alt="" width="315" height="238" ></p>
		<p style="line-height: 25px">Make sure that the Transfer 0 files from
Remote to Local check box is unchecked. Then click the OK button. The
     transfer will proceed and the window advising of the progress will appear
     at the start and disappear when finished.<o:p></o:p></span></p>
		<ol start="12">
			<li>
			<p style="line-height: 25px">Check that
     the transfer was successful and that you didnt get any errors.</li>
		</ol>
		<p>&nbsp;</p>
		<p>&nbsp;Copyright 1998, 1999 - FileWare Limited</p>
 
<a name="AcknowledgementsLikeThis"></a>
<h2>Acknowledgements</h2>
	
	<p>
		<A href="/SSW/Employees/employeesprofile.aspx?EmpID=DR">David Reidy</A><br>
		<A href="/SSW/Employees/employeesprofile.aspx?EmpID=PA">Peter Ahn</A><br>
		<A href="/SSW/Employees/employeesprofile.aspx?EmpID=JV">Jatin Valabjee</A>
	</p>
		</asp:content>
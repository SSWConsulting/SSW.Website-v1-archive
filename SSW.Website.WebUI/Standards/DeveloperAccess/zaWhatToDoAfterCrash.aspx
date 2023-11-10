<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW What to do after a crash"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
<h2>What to do after a crash</h2>
<p>
If you have experienced a crash in Windows 95, perform the following steps to restore stability to your system.
</p>
	<ol>
		<li>Restart Windows and delete the files in your temporary directory. To do this go 'Start' then 'Run' and type 
		"C:\windows\temp".</li>
		<p><IMG border=0 height=163 src="Images/imageW13.gif" alt="Restart Windows and delete the files in your temporary directory" width=347></p>
		<li>Delete the files and directories you find there.</li>
		<p><IMG height=365 src="Images/imageW14.gif" alt="Delete the files and directories you find there" width=442></p>
		<li>Scan your hard disk. Do this by going 'Start', then 'Run' and type "scandskw". 
		<p><IMG height=163 src="Images/imageW15.gif" alt="Scan your hard disk" width=347></p>
		<li>Select your local "C" drive and ensure that the settings are 'standard' and 'automatically fix errors'. 
		<p><IMG height=374 src="Images/imageW16.gif" alt="Select your local "C" drive and ensure that the settings are 'standard' and 'automatically fix errors'" width=465></p>
		<li>If you were running an Access database when you crashed, repair and compact the data database and 
		the application database. Repair the databases before you compact them. 
		<p><IMG border=0 height=388 src="Images/imageW17.gif" alt="Compact and repair database " width=512></p></li>
	</ol>
		</asp:content>
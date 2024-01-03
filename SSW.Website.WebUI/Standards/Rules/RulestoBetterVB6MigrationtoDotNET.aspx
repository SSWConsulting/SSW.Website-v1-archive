<%@ Page Language="vb" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better VB6 Migration to .NET" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>



<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />

		
 
		
		
		
		<div class="TableOfContents">
			<h3>Rules to Better VB6 Migration to .NET</h3>
			<ol>
			<li><a href="#SwitchVBNET">Do you know why you should move VB6 applications to .NET?</a></li>
			<li><a href="#VBUpgradeAssessmentTool">Do you use Visual Basic 6.0 Upgrade Assessment Tool?</a></li>
			<li><a href="#VBUpgradeWizard">Do you use .Net built-in Visual Basic Upgrade Wizard?</a></li>
			<li><a href="#Links">Links</a></li>
			</ol>
		</div>
		<p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532305642362532304D6967726174696F6E253230746F2532302E4E4554')">Let us know</a> 
		what you think.</p>
<div id="mainContent">
		<ol>
 <li>
    <h2><a name="SwitchVBNET">
    </a>Do you know why you should move VB6 applications to .NET?</h2>
    <p>
  .NET is a much better solution than VB6 in the following areas.</p>    
     <ol>
         <li>&nbsp;Performance is much better as code ultimately gets compiled to the native platform and .NET was designed for performance. Microsoft has many real-world examples that show the performance and scalability of .NET. </li>
         <li>As far as size goes, you could be concerned with resource utilization (memory) or the amount of code. As far as resources, VB.NET is similar to VB (and maybe a little heavier for small apps). Part of this footprint is due to the automatic memory management built into .NET, but that is one of the reasons .NET applications exhibit good performance. As far as code goes, you'll write much less code in VB.NET than VB6 since the .NET platform has much more built into it. </li>
         <li>VB.NET is designed with asynchronous operations in mind and it's very easy to develop spooling type operations. </li>
         <li>ADO.NET (which you'll likely use to provide access to the database) is designed for ease of development with optimal access to data. </li>
         <li>Technical Point of view
		<ol>
			<li><b>Standards integration: XML, SOAP, and more</b>

In the past, the Microsoft architecture has been built on COM/DCOM, a binary standard for allowing cross-process communication. There was nothing inherently wrong with it, but this binary standard didn't have any relevance outside the Microsoft world. In other words, it didn't allow easy interoperability with other software platforms. 

In addition to the lack of interoperability with COM, data was another issue. While ADO allowed easy access to data, passing this data from one place to another could be problematic. The ADO Recordset object was a binary structure that stored the data, and once again, this binary format had no meaning to non-Microsoft platforms. 

.Net seeks to remedy these shortcomings by becoming completely standards-based when required. For example, data is passed across process boundaries as XML, and typically this data has a link to an XSD, so any client can properly validate the data. 

SOAP is an XML-based protocol that communicates with Web services. The integration of SOAP allows for easy programmatic access by any client, whether or not that client is running a Microsoft operating system. 
</li>
<li><b>Ease of deployment</b>
One of the major headaches in the COM world has always been deployment. COM makes extensive use of the Windows Registry to locate components on the machine. The concept was good: There would only ever be a single instance of a component registered, and all applications would use the same version. COM promised to have new versions maintain backwards compatibility with old versions, but developers were free to break this compatibility, and sometimes did. 

.Net takes a different approach: It doesn't use the registry at all. Instead, Microsoft recommends that you make the components (called assemblies in .Net) local to each application. That way, changes to Assembly X for Application Foo won't affect Assembly X's Application Bar. If this sounds like the old days of having multiple copies of the same DLL spread around the computer, it is. But you don't have the same issues of applications looking in the Windows\System32 directory. 

Because .Net doesn't use the registry, most deployments can simply be done with a copy command. There's often no need to develop installation files. Also, Web applications don't lock assemblies, so you don't have to shut down an application to update a DLL. 
</li>
<li><b>Web service support</b>
Microsoft is on the Web service bandwagon in a major way, and it's never been easier to develop Web services than it is with .Net. You can create simple Web services with Notepad and not even have to run them through a compiler; simply call them and .Net compiles them and even generates a test page so you can verify they are working. .Net has all the plumbing needed and generates all the files you need, such as the WSDL file. 

.Net is also a smart consumer of Web services: Once you set a reference to a Web service, you treat it just like a local assembly. You get full Intellisense and function completion help. 

Web services are great for sending data. Thanks to ADO.Net, Web services can take simple or complex data and send it to any client in a well-formed XML format, complete with a link back to an XSD describing the data schema.

</li>
<li><b>Standard toolset for any .Net language</b>
You finally have an integrated set of tools for all your languages. You have a unified IDE, debugger, and other such tools. This allows other companies to plug their languages into the IDE and get all the support of the .Net tools. For example, Fujitsu has created netCOBOL .Net, which integrates directly into the IDE, so you can write Web services and Windows applications in COBOL and receive the debugging and profiling tools provided by Microsoft. 

.Net is open enough that other vendors can provide their own tools as well. Borland, for one, has said that its next version of Delphi will be able to create .Net applications, but it is almost assured that Delphi will have its own IDE and not plug in to Visual Studio .Net. 
</li>
<li><b>Support for mobile devices</b>
Soon after the release of Visual Studio .Net, Microsoft released the Microsoft Mobile Internet Toolkit (MMIT) for building mobile applications using .Net. This allows you to visually drag and drop controls on forms aimed at mobile devices. The toolkit handles writing the proper markup language (e.g., WML, WAP, and so forth). 

Coming soon will be the .Net Compact Framework, a scaled-down version of the Framework designed to run on Pocket PC devices. This will enable developers to create rich applications to run on Pocket PC computers. You can write an application and have it run on small devices, such as a Pocket PC device or a Web-enabled phone. In fact, the MMIT includes a number of emulators that use the actual ROM code for the devices, so you can test how your application will work on those devices before you deploy it. 

</li>
<li><b>Managed code</b>
.Net manages your code, which is important for a variety of reasons, such as reducing bugs and building more scalable applications. .Net handles such tasks as allocating and recovering memory, creating and destroying threads and processes, and handling the access permissions of the running code. 

VB developers are used to having such items as memory management and thread and process creation handled for them. For C++ developers moving to C#, having these aspects of their application handled for them greatly reduces the chance for memory leaks and other common bugs. And by having managed code, you get access to all the cross-language capabilities of .Net. 

</li>
<li><b>Platform independent</b>
While .Net was created for Microsoft operating systems, Microsoft did release a portion of the framework and C# to the ECMA standards committee. The Mono project, an implementation of .Net for Linux, includes the Framework and a C# compiler. This means that many applications, especially Web-based applications, can be written once and then run on multiple platforms. 

</li>
<li><b>Modernized languages</b>
VB.Net and C# are both modernized languages. They are completely object-oriented and were designed to remove many of the inconsistencies found in VB and C++. The languages were built with an n-tier, component-based approach in mind. 

C#, for example, removes pointers and other constructs that led to a significant number of issues for C++ developers, especially new developers. VB.Net and C# both benefit from having the Framework manage code. The Framework also includes the base objects needed to allow applications to be multithreaded, XML-aware, and so forth. 

</li>
<li><b>Standard base types across languages</b>
One of the banes of VB developers has been that a string in VB was not the same as a string in C++, so when calling Windows API functions, there could be some problems. .Net specifies a standard definition for all types, so a string in VB.Net is the same as a string in C#, which is the same as a string in netCOBOL .Net. This means that you no longer have to worry about whether or not an integer is 32-bit in language A but only 16-bit in language B. You can be assured that any data type is the same across languages, enabling better cross-language integration. 
</li>
			

		
		</ol>
	
	</li>

    </ol>
     <p>

To summarize all these points, Microsoft took all the good parts of their various development languages and platforms and rolled them into .NET. Rapid development from VB, power and control from C++ were combined with a rich set of highly optimized features in the SDK.
     </p>
 </li>		
            


		
<li>
				<h2><a name="VBUpgradeAssessmentTool">
						</a>Do you use Visual Basic 6.0 Upgrade Assessment Tool?</h2>
			<p>
	Visual Basic 6.0 Upgrade Assessment Tool, is provided to give your organization assistance in identifying common upgrade issues and estimating the cost and effort required to upgrade your Visual Basic 6.0 code.		
	The purpose of this tool is to analyze your Visual Basic 6.0 projects to determine what issues you will need to address to be able to upgrade. It also provides information about where to get help understanding each issue and the types of skills needed to address them.		
			
			</p>
			
		      <p>
  The Visual Basic 6.0 Upgrade Assessment Tool generates two Microsoft Excel 2003 files. This first of these is named MainReport.xls and contains a high level look at the results of the assessment.  
    </p>    
    <ul>
		<li>"Defining Project Scope and Priorities." This section explains aspects of your planning efforts that will benefit from the use of this assessment tool. </li>
        <li>"Application Analysis." This section examines the Visual Basic 6.0 Upgrade Assessment Tool and how to use it to get statistical, structural, and functional information from your applications. You will also learn how to use this information to help you make decisions about the best way to upgrade your applications. </li>
        <li>"Estimating Cost and Effort." This section explains how to estimate the time and cost of your upgrade project. 		</li>
    </ul>

<p>
<img src="Images/VBUpgradeAssessmentTool.GIF" width="683" height="421" />
<br /><b>Figure: VB 6 Upgrade Assessment Tool</b>
</p>	
<p>
<img src="Images/VBUpgradeAssessmentToolEstimate.GIF" width="777" height="553" />
<br /><b>Figure: VB 6 Upgrade Assessment Tool</b>
</p>
<p>
<img src="Images/VBUpgradeAssessmentToolGuidance.GIF" width="1012" height="596" />
<br /><b>Figure: VB 6 Upgrade Assessment Tool</b>
</p>		
 </li>
 <li>
    <h2><a name="VBUpgradeWizard">
    </a>Do you use .Net built-in Visual Basic Upgrade Wizard?</h2>
    <p>
 The Visual Basic Upgrade Wizard is a great place to start converting to VS.NET 2005 process.
 The upgrade happens automatically when you open a Visual Basic 6.0 project in Visual Basic 2005: the Upgrade Wizard steps you through the upgrade process and creates a new Visual Basic 2005 project.
 <br />
 
 <img src="Images/VBUpgradeWizard.GIF" width="583" height="459" /><br />
 <b>Figure: Visual Basic Upgrade Wizard</b> <br />
 Nonetheless, there are still some major changes from Visual Basic 6 to Visual Basic 2005, which will require you to rewrite. Data access is probably the largest one, and graphics and printing make a large dent in the total as well. Even with these major changes, though, the Wizard is clearly the place to start.

 <img src="Images/VB6UpgradeReport.GIF" width="704" height="746" /><br />
 <b>Figure: Visual Basic Upgrade Report</b> <br />
        
<table class="clsSSWTable" cellpadding="2" cellspacing="2" width="50%">
			<tr>
				<td>
    <b>Sample error message:</b>
    

   
        <table border="1" bordercolor="white" cellpadding="2" cellspacing="0" 
            width="98%">
            <tr>
                <td colspan="3">
                    <table width="100%">
                        <tr class="row">
                            <td>
                                
                                &nbsp;Some Events are no longer supported
                            </td>
                            <td>
                                    Event is not supported
                            </td>
                            <td>
                                1</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <table border="1" bordercolor="white" cellpadding="2" cellspacing="0" width="100%">
                                    <tr class="row">
                                        <td colspan="3" width="97%">
                                            &nbsp;MDSWebBrowser.frm
                                        </td>
                                        <td class="SummaryFileCount">
                                            1</td>
                                    </tr>
                                    <tr bgcolor="#ffffff" >
                                        <td colspan="4">
                                            <table border="1" bordercolor="#dcdcdc" cellpadding="2" cellspacing="0" class="content"
                                                width="97%">
                                                <tr bgcolor="#ffffff">
                                                    <td width="10">
                                                        #</td>
                                                    <td nowrap="nowrap">
                                                        Location</td>
                                                    <td nowrap="nowrap">
                                                        Object Type</td>
                                                    <td nowrap="nowrap">
                                                        Object Name</td>
                                                    <td nowrap="nowrap">
                                                        Property</td>
                                                    <td nowrap="nowrap">
                                                        Description</td>
                                                </tr>
                                                <tr bgcolor="#ffffff">
                                                    <td >
                                                        1</td>
                                                    <td >
                                                        brwWebBrowser_DownloadComplete</td>
                                                    <td >
                                                        SHDocVw.WebBrowser</td>
                                                    <td >
                                                        brwWebBrowser</td>
                                                    <td >
                                                        DownloadComplete</td>
                                                    <td >
                                                        
                                                            SHDocVw.WebBrowser event brwWebBrowser.DownloadComplete was not upgraded.</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        
    <p>    
    'UPGRADE_ISSUE: SHDocVw.WebBrowser event brwWebBrowser.DownloadComplete was not upgraded. <br />
	Private Sub brwWebBrowser_DownloadComplete()<br />
	&nbsp;&nbsp;&nbsp;&nbsp;On Error GoTo ErrorTrap<br />
	&nbsp;&nbsp;&nbsp;&nbsp;Me.Text = brwWebBrowser.DocumentTitle<br />
	&nbsp;&nbsp;&nbsp;&nbsp;Exit Sub<br />
    	&nbsp;&nbsp;ErrorTrap: <br />
	&nbsp;&nbsp;&nbsp;&nbsp;Err.Raise(Err.Number, Err.Source, Err.Description)<br />
	End Sub
   </p>
 
 </td>
 </tr>
 </table>
 

  
 </li>
 
 
 
		
    </ol>
<h2>Links</h2><a name="Links"></a>

<ul>
     <li><a href="/ssw/Redirect/Microsoft/vbUpgradeHowTo.htm" target="_blank">How to use the Visual Basic Upgrade Wizard</a> <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW Site" width="17" height="11"><br></li>
     <li><a href="/ssw/Redirect/Microsoft/vbUpgradePrepare.htm" target="_blank">Preparing Your Visual Basic 6.0 for the Upgrade to .NET</a> <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW Site" width="17" height="11"><br></li>
     <li><a href="/ssw/Redirect/Microsoft/vbUpgradeDeconstructing.htm" target="_blank">Deconstructing the Visual Basic Upgrade Wizard</a> <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW Site" width="17" height="11"><br></li>
     <li><a href="/ssw/Redirect/vbUpgradeTricks.htm" target="_blank">New Upgrade Wizard Tricks</a> <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW Site" width="17" height="11"><br></li>
     <li><a href="/ssw/Redirect/vbUpgradeSearchVb.htm" target="_blank">Special Report: VB 6-to-VB.NET Migration</a> <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW Site" width="17" height="11"><br></li>


</ul>


</div>
   

</asp:Content>

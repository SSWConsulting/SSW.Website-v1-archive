<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW .NET Toolkit - LadyLog"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

		<p><a href="/ssw/NETToolkit/">SSW .NET Toolkit</a> > <a href="/ssw/NETToolkit/userguide.aspx">User Guide</a></p>
		
		<p><img src="Images/NETToolkitLogo.gif" alt="DOT NET Tool kit - Develop Applications More Efficiently with the SSW .NET Toolkit" width="188" height="83"/></p>
		
		<h1>Handling and storing exceptions in a central location</h1>
		

<h2>Key Features of LadyLog</h2>
	
<ol>
			<li><p>Provides a slick way for your users to report bugs in your 
			applications and solves the rule <a href="../Standards/rules/RulesToBetterWindowsForms.aspx#ExceptionManagement">Do you include Exception Logging 
			and Handling?</a> so you get no more nasty windows like</p>
			<img border="0" src="Images/crashed.gif" alt="Crashed" width="440" height="315"/><br/>
			<b>Figure: This is bad a user should never see this</b>

	<p>Instead of the above windows when the application crashes, the SSW 
	Exception Reporter kicks-in and provides a way to submit this exception 
	back to home base where it can be investigates and resolved in future 
	versions of your product. This is somehow similar to the way windows 
	reports a bug when it crashes, as it sometimes does.</p>
	
	<p><img border="0" src="Images/ExceptionReporter1.jpg" alt="Exception Reporter" width="681" height="660"/><br/>
	<b>Figure: This is good  because it will automatically submit the stack trace  and email the developer  so you will get a response when fixed</b>
	</p>

	</li>
	
	<li>SSW Exception Reporting Services provides a web-based system 
		to view bug reports submitted by your users
	
	<p><img src="Images/ExceptionReport.jpg" width="1052" height="522"/></p>
	<p>Clicking on view on that page will show a comprehensive details about the bug report, including:</p>
	<ol>
		<li type="a">Product Name which caused the exception</li>
		<li type="a">Product version</li>
		<li type="a">Internal Notes (.NET Framework version, 
		etc.)</li>
		<li type="a">User email</li>
		<li type="a">User Notes</li>
		<li type="a">User's Operating System</li>
		<li type="a">Error Message</li>
		<li type="a">Full Stacktrace</li>
	</ol>
	</li>
</ol>
				
<h2>How do I use the LadyLog in my application?</h2>

<p>You can implement the LadyLog in your applications by 
following the steps listed below. Any exceptions you report will be sent to the 
SSW Exception Database.
</p>

<p>Please note that you will only be able to view exceptions reported with your 
own Client ID. <br>You can get your Client ID and see all your exceptions using the 
Exception Summary page</p>

<p><img src="Images/ClientID.gif" border=1 width="580" height="293"/><br/><b>Figure: Getting your Client ID</b></p>

<p>In order to implement the SSW Configuration Block, follow these simple steps:</p>
<ol>
				<li>Reference the SSW.Framework.ExceptionManagement DLL in your project.</li>
				<li>Modify the App.Config file for your application (or Web.Config), you will need to have some additional lines
				<dl class="code">
				    <dt>
				        <pre>&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot; ?&gt;
&lt;configuration&gt;
  &lt;configSections&gt;
    &lt;section
     name=&quot;applicationConfigurationManagement&quot;
     type=&quot;Microsoft.ApplicationBlocks.ConfigurationManagement.
     ConfigurationManagerSectionHandler,
       SSW.Framework.Configuration&quot; /&gt;

  &lt;section
   name=&quot;FileSettings&quot;
   type=&quot;<br />SSW.Framework.Configuration.DictionarySectionHandlerWriter,
   SSW.Framework.Configuration&quot; /&gt;

<span style="background-color: #FFFF00">  &lt;section
   name=&quot;exceptionManagement&quot;
   type=&quot;<br />Microsoft.ApplicationBlocks.ExceptionManagement.ExceptionManagerSectionHandler,
   SSW.Framework.ExceptionManagement&quot; /&gt;</span>

  &lt;/configSections&gt;

<span class="TakeNote">  &lt;exceptionManagement&gt;
</span>   &lt;!--

   mode=&quot;on&quot;
       turn it &#39;off&#39; if you don&#39;t want it.

   assembly type
       don&#39;t change these.

   exclude = &quot;*&quot;
       this will use this current publisher to exclude any type of exception

   include = &quot;*&quot;
       this will force the publisher to include any type of exception,
       IMPORTANT: include OVERWRITES exclude value, so if you had:
       exclude=&quot;System.Exception&quot;
       include=&quot;System.Exception&quot;
       System.Exception will still be included.

       A plus (+) can be used to indicate that you want to include this type 
       and all the inherited types:

   Exclude=&quot;+System.ApplicationException&quot;
       will exclude any of the Exceptions inheriting or is an ApplicationException 
       for the current publisher

   IMPORTANT:
       For these types in both Include and Exclude tags, you MUST use the 
       correct entire long name. i.e. &quot;System.Exception&quot; is correct. 
       &quot;Exception&quot; is NOT correct.

   ...................................................................................

   submit = &quot;true&quot;
       default value for whether the user will submit the exception or not

   interactive = &quot;true&quot;
       default value for whether the process will show a dialog,
       a windows service or asp.net, for example, would not show a dialog and hence 
       should be &quot;false&quot;. Note that Environment.UserInteractive must be true or 
       the dialog won&#39;t be shown anyway.

   clientid = &quot;ssw&quot;
       specify the client that the error is logged for, for example, if we also 
       sold service for CPF to monitor their bugs then we&#39;d use CPF instead of ssw.

   server1 = &quot;mail.ssw.com.au&quot;
   server2 = &quot;joey&quot;

       because of the way our ISA (chook) is configured, externally, the web service 
       publisher must locate &quot;mail.ssw.com.au&quot; whereas internally, it must 
       locate &quot;joey&quot;. The settings contains information for the publisher to locate 
       the webservice webservers.

   jliu 08/2003
   --&gt;
   <span class="TakeNote">  &lt;publisher
       mode=&quot;on&quot;
       assembly=&quot;SSW.Framework.ExceptionManagement&quot;
       type=&quot;SSW.Framework.ExceptionManagement.Publishers.WebServicePublisher&quot;

       exclude=&quot;&quot;
       include=&quot;&quot;

       submit=&quot;true&quot;
       interactive=&quot;true&quot;
       clientid=&quot;TEST&quot;
       useremail=&quot;&quot;
       server1=&quot;webservices.internal.ssw.com.au&quot;
       server2=&quot;tuna&quot; /&gt;
</span>
   &lt;!--
       mode = &quot;off&quot;
       turn off the default publisher, which will try to log to the user&#39;s 
       event log/viewer

       you should look into the event viewer when developing to see if there&#39;s any
       internal Exception Management exceptions - this usually indicates that you have
       some errors in your configuration file.
   --&gt;
   &lt;publisher
       mode=&quot;off&quot;
       assembly=&quot;SSW.Framework.ExceptionManagement&quot;
       type=&quot;Microsoft.ApplicationBlocks.ExceptionManagement.DefaultPublisher&quot;
       include=&quot;*&quot; /&gt;
   &lt;!--
       This is the EMail publisher, you need to configure:

       SmtpServer = &quot;wolf&quot; or &quot;mail.ssw.com.au&quot;
       To, CC, From = email addresses

       Remember to turn mode=&quot;on&quot; if you want to use it.
   --&gt;
   &lt;publisher
       mode=&quot;off&quot;
       assembly=&quot;SSW.Framework.ExceptionManagement&quot;
       type=&quot;SSW.Framework.ExceptionManagement.Publishers.EmailExceptionPublisher&quot;

       SmtpServer=&quot;mail.ssw.com.au&quot;
       To=&quot;PeterHuang@s*w.com.au&quot;
       Cc=&quot;&quot;
       From=&quot;Info@s*w.com.au&quot; /&gt;
   &lt;!--
       This is the file publisher, you need to configure:

       fileName = &quot;filename.log&quot; (in the current application directory)
       You can also use absolute paths.
       Remember to turn mode=&quot;on&quot; if you want to use it.
   --&gt;
   &lt;publisher
       mode=&quot;off&quot;
       assembly=&quot;SSW.Framework.ExceptionManagement&quot;
       type=&quot;SSW.Framework.ExceptionManagement.Publishers.FilePublisher&quot;
       fileName=&quot;Exceptions.log&quot; /&gt;

<span style="background-color: #FFFF00">  &lt;/exceptionManagement&gt;
</span>&lt;/configuration&gt;</pre>
				    </dt>
				    <dd>Figure: Modifying the App.Config file for your application</dd>
				</dl>
			</li>
			
			<li>
				Configure your application to handle exceptions
				<ul>
					<li>
					
						<p><b>For windows applications</b>, we will need to add one line of code to catch <i>thread exceptions</i>.</p> 
						<p>A while ago, I had explained that when you are in a Windows Application, 
					        you should use Application.ThreadException to handle uncaught exceptions. 
					        While this still remains true, theres some additional notes you 
					        need to be aware of. </p>
						<p>Application.ThreadException only handles uncaught exceptions within the 
					        Application thread. That is, it will only handle exceptions coming 
					        from the forms, etc - inside the <span style="BACKGROUND: lime">light 
					        green</span> section. Exceptions thrown outside of the application thread, 
					        for example in the <span style="BACKGROUND: yellow">yellow section</span>, 
					        will not raise an Application.ThreadException event.</p>
						<p>You must still catch these exceptions using the AppDomains UnhandledException 
					        event. Shown in <span style="BACKGROUND: aqua">light blue</span>. </p>
					      

								
<dl class="code">
    <dt> <pre>// C#
Using Microsoft.ApplicationBlocks.ExceptionManagement;

[STAThread]
static void Main(string[] args )
{
 Application.ThreadException +=
   new System.Threading.
   ThreadExceptionEventHandler(ExceptionManager.ThreadExceptionHandler);
<span style="background-color: aqua">
   AppDomain.CurrentDomain.UnhandledException 
   += new UnhandledExceptionEventHandler(ExceptionManager.UnhandledExceptionHandler);
	</span>
   
<span style="FONT-SIZE:9pt; BACKGROUND: yellow; COLOR: black; FONT-FAMILY: 'Courier New'">
   if( args != null &amp;&amp; args.Length == 1 &amp;&amp;<br />        args[0].ToLower() ==&quot;/silent&quot; ) { 
     CPFIntegratorLib.Integrator integrator = 
     CPFIntegratorLib.Integrator.GetInstance(); 
     integrator.Process();
     return;
   }</span>
   
   <span style="FONT-SIZE: 8pt; BACKGROUND: lime; FONT-FAMILY: 'Courier New'">Application.Run(<span style="COLOR: blue">new</span> frmMain());</span>
}

&#39; VB.NET
Imports Microsoft.ApplicationBlocks.ExceptionManagement

Public Shared Sub Main()

 AddHandler Application.ThreadException,
 AddressOf ExceptionManager.ThreadExceptionHandler
 ...
End Sub</pre></dt>
<dd>Figure: Exception Management</dd>
</dl>

</li>
			
			
			<li><b>For web applications</b>, we will need to add one line of code to your <b>Global.asax</b> file:
				<dl class="code">
				    <dt>
				        <pre>protected void Application_Error(Object sender, EventArgs e)
    {
       Microsoft.ApplicationBlocks.ExceptionManagement.
       ExceptionManager.Publish(Server.GetLastError());
    }</pre>
				    </dt>
				    <dd>
				        Figure: Global.asax
				    </dd>
				</dl>
			</li>
		
			<li><b>For Outlook/VS.NET Plug-ins</b>, because these are hosted by another application, you need to be aware that Exception Reporting Service will attempt to discover 
				the name of the application in the following order:
				
				<ol>
					<li>ExceptionManager.ApplicationName</li>
					<li>System.Windows.Forms.Application.ProductName</li>
						<li>AppDomain.CurrentDomain.BaseDirectory<br />
						If theres a file named with the same name as the BaseDirectory in the directory, then that will be used.</li>
					<li>The assembly file name of the Assembly.GetEntryAssembly()</li>
					<li>The assembly file name of the Assembly.GetCallingAssembly()</li>
					<li>The command the application was stated with:<br />
					e.g. MyApp.exe arg1 arg2<br />
					MyApp?would be used as the application name</li>
					<li>The assembly file name of the Assembly.GetExecutingAssembly()</li>
					<li>assembly.FullName</li>
				</ol>
				
				<p>The following code will allow you to specify the application name used by Exception Reporting Service</p>
				<dl class="code">
				    <dt>
				        <pre>ExceptionManager.ApplicationName = strProductName	
ExceptionManager.ApplicationVersion = strProductVersion</pre>
				    </dt>
				    <dd>
				    
				    </dd>
				</dl>
		
			</li>
			
			</ul>
			
			
			<li>Try not to use code like this - they will hide the exceptions from you. 
      Only do this if you know what you are doing. Catch specific exceptions that 
      you ARE expecting, rather than catch any exception: 
      <dl class="code">
        <dt>
            <pre>try
    {
       ...
    }
    catch (Exception ex) // catching all Exceptions
    {
       ...
    }</pre>
        </dt>
        <dd>
            Figure: Try to catch specific exceptions
        </dd>
      </dl></li>
      
		 <li>(Optional) If you want to be notified when an error is submitted about 
      your product in the web service, you need to modify the Email.Config file 
      for the web service. In our case this belongs in:&nbsp; \\tuna\c$\Inetpub\wwwroot\ExceptionReportingService\Email.config 
      and add the following key:<br/><br/>&lt;add key=&quot;EMAIL:&lt;your product name&gt;&quot; value=&quot;&lt;your 
      email address&gt;&quot; /&gt; 
      	<dl class="code">
      	    <dt>
      	        <pre><code>&lt;FileSettings&gt;
       &lt;appSettings&gt;
          ... other entries
          &lt;add key=&quot;EMAIL:nunit-gui&quot; value=&quot;johnliu@s*w.com.au&quot; /&gt;
       &lt;/appSettings&gt;
    &lt;/FileSettings&gt;</code></pre>
      	    </dt>
      	    <dd>
      	    Figure: Do you want to be notified if an error in your product is submitted 
      in the web service?
      	    </dd>
      	</dl>		
		</li>
      <li>See the Exception Summary page:
		
	  </li>
			</ol>
		
	<h2>Upcoming Features</h2>	
	 <ul>
	   <li>Elmah support</li>
	   <li>Minimal size download</li>
	   <li>Add support in TFS Smashing Barrier</li>
	   <li>Demo video</li>
	   <li>Enterprise Library support</li>
	   <li>Silverlight support ?Capture unhandled Silverlight exceptions</li>
	   <li>Convert to WPF and offer a few Skins</li>
	 </ul>
	 
<p>Note that our exception management block is part of our <a href="/ssw/Standards/Rules/RulesToBetterdotNETProjects.aspx#EMAB">Rules to Better .NET 
Projects</a></p>



		</asp:content>
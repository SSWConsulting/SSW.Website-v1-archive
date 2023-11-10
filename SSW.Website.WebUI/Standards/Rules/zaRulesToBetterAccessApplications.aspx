<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Access Applications"  %>
<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
		<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
		
		 <p>
        Do you agree with them all? Are we missing some? <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Rules%20to%20Better%20Access%20Applications';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">Let us know</a> 
		what you think.</p>
		
	    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" width="100%">
		<tr>
			<td>
				<b>Rules to Better Access Applications</b>
				<ol>
				<li><a href="#Split">Is your Access application split into two databases?</a></li>
				<li><a href="#LinkedTables">Do you always check the validity of linked tables?</a></li>
				<li><a href="#Bindings">Do you always check bindings are OK?</a></li>
				<li><a href="#SelectRecords">Do you only select the records you need?</a></li>
				<li><a href="#Combos">Do you fill combo boxes and listboxes only when you need them?</a></li>
				<li><a href="#FMS">Do you use tools to ensure database integrity?</a></li>
				<li><a href="#Decompile">Do you decompile your code?</a></li>
				<li><a href="#DecompileFeature">Do you know the feature of decompile switch?</a></li>
				<li><a href="#LinkedTable">Do you use Linked tables instead of ADP when using SQL Server as a backend?</a></li>
				</ol>
			</td>
		</tr>
		</table>
          <ol>
			  <li>
				<h2><a name="Split"></a>Is your Access application split 
                into two databases?</h2>
				<p>Most Access developers split their Access application into two 
                files  the application database and the data database. The 
                application database (the forms, reports, saved queries and 
                programming) is installed on the local hard disk, and the data 
                file is stored on the network drive for access by multiple users 
                over the network.</p>
				<p>This is useful for when you want to share your Access data 
                across the network. Read our guide on
                <a href="/ssw/Standards/DeveloperAccess/AttachmentManagerOverview.aspx">how to link your Access database to an Access or SQL Server 
                backend</a>.<br/>&nbsp;</p>
                </li>
				<li>
				<h2><a name="LinkedTables"></a>Do you always check the validity of linked tables?</h2>
				<p>Linking a table from an external database allows you to read data, update and add data (in most cases), 
				and create queries that use the table in the same way you would with a table native to the database. 
				With the Microsoft Jet database engine, you can create links to tables in Access databases, 
				as well as other data formats supported by Microsoft Jet's installable ISAM drivers (Excel, dBase, Paradox, Exchange/Outlook, Lotus WKS, Text, and HTML) 
				and ODBC drivers.<br/><br/>
				
				It is essential that all linked tables in the front end application 
				are in sync with a corresponding back end database.<br/>
				Reasons for validating linked tables are:	</p>		
				<ul>
					<li>In the front end application linked tables seem to get 
					corrupted occasionally after compression of back end tables 
					</li>
					<li>A shared drive containing the back end database was renamed <br/>&nbsp;</li>
				</ul>
				<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table13">
					<tr>
						<td>We have a program called <a href="/ssw/Performancepro/">SSW Performance PRO!</a> 
						to check for this rule. 
						</td>
					</tr>
				</table><br/>
				</li>
				<li>
				<h2><a name="Bindings"></a>Do you always check bindings are OK?</h2>
				<p>It is essential that if any of your forms and controls have their RecordSource 
				or ControlSource set to a table (as is likely the case), you 
				must ensure that linkages to the table are not broken. The last 
				thing you want is for a user to open a form, only to find a 
				whole lot of errors because the underlying fields or tables have 
				had their name changed or been removed.</p>
				<p>In databases (particularly ones with a lot of tables) it is 
				difficult to keep bindings in sync. The manual way to do this is 
				to compare a list of the names of the tables in your backend 
				database with the form record sources in your front-end and reconcile. This 
				can be very time-consuming, which is why we use a program called
				<a href="/ssw/Performancepro/">SSW Performance PRO!</a> to 
				automatically scan your front-end for any broken table bindings.</p>
				<img border="0" src="Images/Performancepro_bindingerrors.gif" width="594" height="363"/><p>
				<b>Figure: If a field or table is renamed or deleted, the user 
				will only get an error when they open the form</b></p>
				<img border="1" src="Images/Performancepro_report.gif" width="600" height="675"/><p>
				<b>Figure: SSW Performance PRO! automatically scans your 
				front-end for broken bindings and produces an easy-to-follow 
				report</b></p>
				&nbsp;<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table14">
					<tr>
						<td>We have a program called <a href="/ssw/Performancepro/">SSW Performance PRO!</a> 
						to check for this rule. 
						</td>
					</tr>
				</table>
				</li>
				<li>
				<h2><a name="SelectRecords"></a>Do you only select the records you 
				need?</h2>
				<p>Access developers commonly make the mistake of retrieving all 
				the records from a table when opening a form, that 
               is, setting the forms <b>Record Source</b> to a whole table or 
               query. When the number of records increases to the thousands, 
				selecting all records for a form can cause major performance 
				issues such as sluggish forms and network lag.</p>
				<p>In most cases, your users do not need every single record 
				from a table or query (for example, they only need to view 1 
				contact record at a time). To get the best performance out of 
				your application, implement a record search form to select only 
				the record/s that the user wants to view. For more information 
				on how to implement this, see the Microsoft whitepaper,
				<a href="/ssw/Standards/DeveloperSQLServer/">How to Migrate from 
				Access to SQL Server</a> under <b>Step 6:</b> <b>(Optional) Fix the 
				Performance of Very Slow Forms</b> in Part C.</p>&nbsp;<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table15">
					<tr>
						<td>We have a program called <a href="/ssw/Performancepro/">SSW Performance PRO!</a> 
						to check for this rule. 
						</td>
					</tr>
				</table>
				</li>
				<li><a name="Combos"></a>
				<h2>Do you fill combo boxes and listboxes only when you need them?</h2>
				<p>Access developers make the common mistake of retrieving all records for dropdown lists on a form, that is, 
               setting a controls <b>Control Source</b> to an entire table or 
               query column. Because every single value is retrieved on form 
				load, the form's loading time can become very slow, especially 
				if there is more than one combo box on the form or if the data 
				is being retrieved over the network from a SQL Server database.</p>
				<p>The solution is to populate the drop-down lists 
				when the user activates them.<br/><br/>
				<b>Tip:</b> Use an event procedure or a button to set the row source 
				for the drop-down list. For example, <b>Me!myDrop List.Row Source = 
				Q</b> where Q is, once again, either the name of a query or an SQL 
				string. <br/><br/>
				<b>Tip:</b> Drop-down lists themselves will be more responsive if they 
				return fewer records. Try cascading criteria so that successive 
				lists are limited by the selection in a previous list. The row 
				source query for a list could depend on the item selected in a 
				previous list as in this example: <b>Q = &quot; SELECT Field1, Field2 
				FROM Table1 WHERE Field3 = &quot; &amp; Me!DropList1.Value</b></p>
				<p>For more information on this topic, see the Microsoft 
				whitepaper, 
				<a href="/ssw/Standards/DeveloperSQLServer/">How to Migrate from 
				Access to SQL Server</a> under <b>Step 6: (Optional) Fix the 
				Performance of Very Slow Forms</b> in Part C.<br/>&nbsp;</p>
				</li>
				<li><a name="FMS"></a>
				<h2>Do you use automated tools to ensure database integrity?</h2>
				<p>It is nearly impossible to manually check complete 
				consistency across your Access database - are all relationships 
				valid? Are there any corrupt tables? We use
				<a href="/ssw/Redirect/TotalAccess.htm" target="_blank">FMS Total Access 
				Analyzer</a>
				<img src="/ssw/Standards/DeveloperGeneral/Images/LeaveSite.gif" width="17" height="11"/> to conduct a deep scan of our databases to ensure 
				that all data is clean and everything is in working order.</p>
				<p>Read this guide on <a href="http://rules.ssw.com.au/Documents/UsingFMSTotalAccessAnalyzer_V1.doc">using FMS Total Access Analyzer</a> 
				to detect and correct errors, and document your database objects.<br/>&nbsp;</p>
				</li>
				
				<li><a name="Decompile"></a>
				    <h2>Do you decompile your code?</h2>
				    <p>
				    Decompiling your code can significantly reduce the size of your Access file and correct some corruption.
				    <br/> 
				    <br/> Access stores code as both source and compiled code streams.  Sometimes some of the compiled code streams become corrupt and need to be flushed.  
				    Running Access in decompile mode causes all the compiled code streams to be marked as invalid and therefore removed. 
				    <br/><br/> Since the compiled code streams are removed, the database size is also significantly reduced when the database is compacted. 
				    <br/><br/> <b>Note:</b> the decompile option is an undocumented feature of MsAccess.
				    <br/> To run access in decompile mode, use the command line "MSACCESS.EXE /decompile"
    				
				    </p>
				</li>
				<li><a name="DecompileFeature"></a>
				    <h2>Do you know the feature of decompile switch?</h2>
				    <p><b>Michael wrote:</b></p>
                    <p>I saw you 
                      at the Microsoft Seminar earlier this month in Perth, which was very useful 
                      thanks. If you have time I do have a question.</p>
                    <p align="justify">You 
                      probably won't remember but I asked you in the break about copying and 
                      pasting reports and forms in Access 97 causing Access to perform an illegal 
                      operation and 'hang' next time you opened it. Your reply was to use the 
                      "/decompile" switch in the command line. Not only has this worked extremely 
                      well but it reduced the file size from 8Mb (a lot of code in this database) 
                      to 4Mb.</p>
                    <p align="justify">However, 
                      I can find no information at all anywhere about decompile either in the 
                      Access Help, Knowledge Bases or anywhere on the Microsoft web site.&nbsp;&nbsp; 
                      Maybe its there, but I can't find it.&nbsp;</p>
                    <p align="justify">My 
                      concern is that the message you get after decompiling is something like 
                      "Access has upgraded your code to the version of Visual Basic on your 
                      system", and I'm worried that if I distribute 
                      my database to end users (either 'as is' or as a setup with runtime 
                      Access) that if they don't have MS Office SR1 and SR2 or the Jet SR pack 
                      or whatever&nbsp; else I might knowingly or inadvertently have on my computer, 
                      will that cause&nbsp; a problem? In other words, what does "the version 
                      of Visual Basic on your system" really mean and is there any danger to 
                      using this apparently undocumented decompile feature, particularly regarding 
                      distribution of the end result?&nbsp;&nbsp;</p>
                    <p align="justify">&nbsp;If 
                      you have a minute to answer or point to a resource (Access&nbsp; 97 Developers 
                      Handbook, Litwin/Getz/Gilbert doesn't appear to mention it either) I would 
                      be very grateful.&nbsp;</p>
                    <p align="justify">Thank 
                      you.</p>
                    <p>Michael.</p>
                    
                    <p><b>Adam Answered:</b></p>
                    <p align="justify">This 
                      is an undocumented feature. Here is real deal on the /Decompile switch 
                      (Originally posted 5/22/99 by Michael Kaplan) This post is to give a little 
                      historical background and info on this undocumented command line switch 
                      in msaccess.exe.&nbsp;</p>
                    <p align="justify">To 
                      use it, you simply run:&nbsp;&nbsp;</p>
                    <p align="justify"><i>&nbsp;msaccess 
                      /decompile &lt;your database name&gt;&nbsp;&nbsp;&nbsp;</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                    <p align="justify">and 
                      that's all there is to it. But what exactly does it do?????</p>
                    <p align="justify">VBA 
                      AND THE 11 STATES OF COMPILATION</p>
                    <p align="justify">That's 
                      right, internally there are 11 different compilation levels between decompiled 
                      and fully compiled like you would find in an MDE. As you make objects 
                      dirty, you will decompile the project, but dirtying Module1 does not remove 
                      all the "compiled" info about Module2 or Form1, for example. The exact 
                      levels are impossible to even detect unless you have source and debugging 
                      symbols for VBA, and insanely difficult even then.... so lets just leave 
                      it as read that the yes/no question of "is it compiled?" has many subcategories 
                      under the NO answer that essentially mean its not compiled but some parts 
                      of it are kind of.</p>
                    <p align="justify">P-CODE 
                      VERSUS CANONICAL TEXT</p>
                    <p align="justify">Your 
                      code is stored in two forms, each one of which is a Stream object in the 
                      project's storage(s). One form is the canonical text that you look at 
                      and edit and such, the other is the compiled version of the code that 
                      runs.</p>
                    <p align="justify">VBA 
                      must always compile before it runs, so in an app that runs you will always 
                      find p-code. And unless you are running in an MDE (where the canonical 
                      code is stripped out) you will always have the canonical text too.&nbsp; 
                      Any time VBA thinks that the compiled code is invalid (such as when you 
                      make a change or the binary format changes, which is so far only during 
                      beta cycles), it will "decompile" the module and then compile it again 
                      from the canonical text.</p>
                    <p align="justify">ACCESS 
                      BETAS: BINARY FORMATS, ETC.</p>
                    <p align="justify">People 
                      who were on the betas for Access 95, 97, and/or 2000 will remember the 
                      binary format issues. From build to build, changes would be made in VBA 
                      or in the Access OM which would make old compiled code invalid. Usually 
                      a crash is the best you could expect. To help fix this, some work was 
                      done to have a global way to decompile *ALL* code that is present in a 
                      project so that you do not risk having any invalid code that might crash.</p>
                    <p align="justify">**********</p>
                    <p align="justify">This 
                      is the reason the flag is there and the only reason. The command line 
                      switch is undocumented because there is never a binary format change except 
                      during betas and in internal builds.... so there is no reason to document 
                      something never intended to be used.</p>
                    <p align="justify">**********</p>
                    <p align="justify">NOW 
                      there are some positive benefits that are side effects that people have 
                      made use of:</p>
                    <p align="justify">1) 
                      SIDE EFFECT: CORRUPTED PROJECTS</p>
                    <p align="justify">Now, 
                      as a side effect, you have a way to deal with corrupt projects! You see, 
                      the canonical text is never what is corrupted, it is always some compiled 
                      portion of a project, like a module or most commonly the typeinfo of a 
                      form or report. By globally telling Access that the compiled portion should 
                      be thrown away, you get rid of whatever the bogus piece of code is.</p>
                    <p align="justify">Now 
                      this kind of fix is what would have taken care of the old Access93 vba232 
                      page faults and other problems where Access was walking off the end of 
                      a vtable and crashing, as well as a zillion other such little problems. 
                      This is what made PSS first expose this flag for.... if a project is corrupted, 
                      this is the best way to uncorrupt it.</p>
                    <p align="justify">2) 
                      SIDE EFFECT: PROJECT SIZE</p>
                    <p align="justify">It 
                      was found that there are times where an object would be decompiled and 
                      while the Stream object from the storage would be properly invalidated, 
                      it would be orphaned and left in the Storage, and then would not be cleaned 
                      up later.&nbsp;</p>
                    <p align="justify">There 
                      are many applications that use structured storage that have such a problem 
                      in their garbage collection... VBA/Access is just one of them, that's 
                      all. Over time, these orphaned streams will contribute some bloat to the 
                      project. People noticed that a fully compiled app would take up more space 
                      than the same app fully compiled with all objects imported to a new database..... 
                      and that is the very issue being discussed here. As you may have guessed, 
                      the /decompile switch, which invalidates *all* streams that contain compiled 
                      code, does an effective job of garbage collection and removes these orphaned 
                      streams. Thus, a /decompile /compact will make for the smallest possible 
                      size of as database.</p>
                    <p align="justify">RISKS 
                      TO DECOMPILE: WHY YOU SHOULD NOT USE IT CONSTANTLY</p>
                    <p align="justify">If 
                      you think about the mechanism, you are relying on the canonical text always 
                      being completely valid, and you are relying on the ability to globally 
                      invalidate a compiled state. If there is ever a problem in either area, 
                      /decompile will take a project that was working fine and turn it into 
                      cottage cheese. And while such bugs should not happen.... it is impossible 
                      to make a /decompile bug happen without using /decompile. They simply 
                      did not extensively test a command line switch that was never meant to 
                      be used.... nor should they have to, really.</p>
                    <p align="justify">SO, 
                      PLEASE REMEMBER that this is a very powerful technique that was added 
                      for reasons having nothing to do with any of the reasons that you may 
                      want to use it now. It may help you save an otherwise hopelessly corrupted 
                      project. But use it sparingly as you may end up in a worse situation than 
                      you started by just globally using the switch on projects that do not 
                      need it.</p>
                    <p align="justify">IF 
                      IT AIN'T BROKE, DON'T FIX IT.</p>
                    <p align="justify"><b>Adam 
                      Cogan<br>
                      </b>Sydney, Australia<br>
                      SSW<br>
                      <a href="mailto:AdamCogan@s*w.com.au">adamcogan@s*w.com.au</a>
                    </p>
				</li>
				<li><a name="LinkedTable"></a>
				    <h2>Do you use Linked tables instead of ADP when using SQL Server as a backend?</h2>
				    <p>
				    Linked tables are a more flexible solution than ADP. They have the ability to have local queries and local tables, and the ability to connect to multiple data sources. 
				    Any performance considerations of reports are negated by using SQL Server Reporting Services for reports.
                    Most developers also prefer modifying SQL tables directly within SQL Server's management studio.
				    </p>
				    <p>
				    The preferred way to connect to SQL Server is MDB file format or ACCDB file format. This enables you to use the full flexibility of local tables and local queries, while leveraging the full power of SQL Server. 
				    In addition, MDB and ACCDB files link to multiple SQL Servers and a wide variety of other data sources. 
				    Office Access 2007 contains many new features available in both MDB and ACCDB file formats, but only a subset of those features are available in ADPs.
				    </p>
				    <p>
				    Because of the layers required to get from Access to SQL Server in the ADP architecture, it is often easier to optimize MDB/ACCDB file solutions. 
				    However, there are some scenarios where a report might be generated significantly faster in an ADP file. 
				    </p>
				</li>
			</ol>
				<h2>Acknowledgements</h2>
				<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JV">Jatin Valabjee</a>
						</asp:content>
<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft Office Suggestions"  %>

 
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath>
<div id="intro">
<p><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14"/> Indicates important rule</p>
</div>
<div class="TableOfContents">
		<h3>Microsoft Expression Web</h3>
		<ol>
			<li><a href="#OfficeHighlight">Highlight Button</a></li>
			<li><a href="#OfficeTags">Smart(er) Tags</a></li> 
			<li><a href="#OfficeTags2">Getting More Smart Tags</a></li> 
			<li><a href="#ReadableSettings">Readable Settings Files</a></li>
			<li><a href="#FileVersions">Automatic File Version Increment</a></li>
			<li><a href="#MRULists">Load MRU (Most Recently Used) lists as a background process during Save or Delete</a></li>
			<li><a href="#SideBySide">Run Office 2003 and Office 2007 side by side on the same PC</a></li>
		</ol>	
				
		<h3>Microsoft Expression Blend</h3>
		<ol>		
			<li><a href="#MoveToFolder">Move to Folder Function</a></li>
			<li><a href="#SaveAsIE">Make a Save-As like IE</a></li>
			<li><a href="#PrintComputerName">Option to print the computer name when printing documents</a></li>
			<li><a href="#ChooseFooter">Option to choose a footer style When print document with multiple pages</a></li>
		</ol>			
			
		<h3>Microsoft Excel</h3>
		<ol>
			<li><A href="#ExcelInterface">Confusing Save Dialog</a></li>
		</ol>
</div>		

<div id="mainContent">

<a name="Office"></a><h2>Microsoft Office</h2>

<ol>
	<li>
		<h2>
			<a name="OfficeHighlight"></a>Highlight button</h2>
		<p>
		    Users of the Google Toolbar may be familiar with the Highlight option, which highlights all
		    occurrences of the current search keywords in the current document. This is a very handy
		    feature and it would be good to see it in all Microsoft Office applications as well.
		<p>
		<dl class="image">
		    <dt><img src="Images/office1.gif" alt="Office" width="406" height="300" /></dt>
		    <dd>Figure: Google highlight option in use.</dd>
		</dl>
</li>
<li>
		<h2>
			<a name="OfficeTags"></a>Smart(er) Tags</h2>
		<p> 
		    Microsoft Office applications allow you to control when Smart Tags are triggered by using
		    'recognizers'. The list of recognizers can be altered, in most cases through the AutoCorrect
		    options dialog. (See screenshot of Word's AutoCorrect dialog below.)
		</p>
		<p>
		    It would be good if the list box could allow the user to drill down each recognizer item and
		    view sample data (e.g. for 'Dates' the sample data would be a date, such as '1/1/2003').
		</p>
		<p>
		    There are two ways in which this could be implemented, namely:
		<p>
		<ol>
		    <li>Show it just underneath each item when the item is expanded.</li>
		    <li>Display a 'More...' button underneath each item, which will open a dialog that displays the sample data.</li>
		</ol>
		<dl class="image">
		    <dt><img src="Images/other2.gif" alt="Other" width="420" height="478"></dt>
		    <dd>Figure: Smart tag settings in Microsoft Word.</dd>
		</dl>
</li>	
<li>
		<h2>
			<a name="OfficeTags2"></a>Getting More Smart Tags</h2>
		<p> 
		    Office could be improved in how it handles extending of its smart tag functionality.</p>
		<p>
		    Currently adding a custom smart tag requires editing registry; this should not be
		    necessary. It would be better to implement an 'Add Smart Tag' button to the Smart Tags tab
		    of the AutoCorrect dialog. (See screenshot.)</p>
		<p>
		    Also, the More Smart Tags button in this dialog should be implemented as a hyperlink, as
		    it links directly to a page on the Microsoft website.</p>
		<dl class="image">
		    <dt><img src="Images/other2.gif" alt="Other" width="420" height="478"/></dt>
		    <dd>Figure: Smart tag settings in Microsoft Word.</dd>
		</dl>
</li>
<li>
		<h2><a name="ReadableSettings"></a>Readable Settings Files</h2>
		<p>
		It would be nice if Office stored all of its settings files in a readable format. For example, if the 
		settings files were stored as XML, then the user could clearly see the 
		settings that were applied, and also be able to import/export parts of 
		the settings files themselves (this is different to the current system 
		where you have an all-or-nothing approach to the import/export of 
		settings).</p>
		<dl class="image">
		    <dt><img src="Images/office_binarysettings.gif" alt="Setting Files" width="600" height="394" /></dt>
		    <dd>Figure: Settings files are stored in binary format, they should be XML</dd>
		</dl>

		<p>
		But what about invalid xml?
		</p>
		<p>Just give the user a message something like: "Someone has changed with the xml and now it is invalid. Reverting to default settings."
		</p>
		 
		<p>
		 Note: Have renamed the file to zzWord11.xml so that they can attempt to fix it if they want to.
		</p>
</li>

<li>
		<h2>
			<a name="FileVersions"></a>Automatic File Version Increment</h2>
		<p> 
	    It would be really useful if Office documents (e.g. Word, Excel) would have an option to increment the file version every time a document is saved and closed.
	    </p>
        <p>
        For example, if you opened <b>Session1_ExtremeProgramming_Access97to2003_AdamCogan_<span style = "COLOR:red">v3</span>.ppt</b>, made a changed, saved and closed the document, the filename would update to 
        <b>Session1_ExtremeProgramming_Access97to2003_AdamCogan_<span style = "COLOR:red">v4</span>.ppt</b>. This would help ensure that the latest version is being used and that you can determine at a glance which version of a document is the newest.
        </p>
</li>

<li>
    <h2><a name="MRULists"></a>Load MRU (Most Recently Used) lists as a background process during Save or Delete</h2>
    <p>During the process of saving a file to a machine, Microsoft Office applications will try to load recently used files.
    <br />
    This can cause an unnecessary delay when the machine is not connected to the network that a previous project was saved on; after a certain period it times out and goes on to save the file.
    <br />
    The temporary fix to this is regularly clearing the MRU lists.</p>
    <p>As stated by <a href="/SSW/Redirect/MicrosoftSupport/MicrosoftSupportKB-313454.htm" class="external">Microsoft Support</a>, following these steps to clear MRU lists of Microsoft Access, Excel, PhotoDraw, PowerPoint, and Word:
    </p>
    <ol>
    <li><i>On the <b>Tools menu</b>, click <b>Options</b>, and then click the <b>General</b> tab.</i></li>
    <li><i>Clear the <b>Recently used files</b> check box, and then click <b>OK</b>.</i></li>
    <dl class="image"><dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/MRUWordClearExample.jpg" width="430" height="504" /></dt>
    <dd>Figure: Example of clearing MRU lists in Microsoft Word</dd></dl>
    <li><i>On the <b>Tools</b> menu, click <b>Options</b>, and then click the <b>General</b> tab.</i></li>
    <li><i>Select the <b>Recently used files</b> check box, and then click <b>OK</b>.</i></li>
    <dl class="image"><dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/MRUWordExample.jpg" width="430" height="504" /></dt>
    <dd>Figure: Example of checking MRU lists in Microsoft Word</dd></dl>
    </ol>
    <p>This is a common issue in a lot of applications; freezes are usually caused by trying to access a network resource that is not available. MRU processes should be executed as background threads so that they dont lock up the main UI and leave the developer waiting.</p>
    </li>
    <li><h2><a name="SideBySide"></a>Run Office 2003 and Office 2007 side by side on the same PC</h2>
<p>Why does the Office team not design you to run Office 2003 and Office 2007 side by side on the same PC?<br/>
Seems a strange thing to not keep on shipping...</p>
</li>
	</ol>

<a name="Word"></a>
<h2>Microsoft Word</h2>

	<ol>
	<li>
		<h2>
			<a name="MoveToFolder"></a>Move to Folder Function</h2>
	</li>

<dl class="image">
    <dt><img src="Images/SuggestionWord2003_MoveTo.gif" alt="Suggestion" width="337" height="411" /></dt>
    <dd>Figure: Please add a Move To Folder&quot; function?like in Outlook</dd>
</dl>

<dl class="image">
    <dt><img src="Images/SuggestionWord2003_MoveTo2.gif" alt="Suggestion" width="250" height="366" /></dt>
    
</dl>

<li>
		<h2><a name="SaveAsIE"></a>
		Make a Save As option for pictures</h2>


		<p>
			Please add another menu item to this right click menu &quot;Save As&quot; just like Internet Explorer 
		</p>
		<dl class="image">
		    <dt><img src="Images/MSWord_SavePictureAs.jpg" alt="Save As" width="600" height="666" /></dt>
		</dl>
</li>

<li>
<h2><a name="PrintComputerName">Option to print the computer name when printing documents</a></h2>
	<p>
	We should have a '<b>ComputerName</b>' to show the computer name.
	<dl class="image">
	    <dt><img src="Images/WordFooterFields.gif" alt="Page Setup" width="665" height="529" /></dt>
	    <dd>Figure: Word's Header and Footer fields</dd>
	</dl>
	</p>
    <p>Read the same request for Internet Explorer on our <a href="InternetExplorer.aspx#PrintComputerName">Microsoft Internet Explorer Suggestions</a>.</p>
</li>

<li>
<h2><a name="ChooseFooter">Option to choose a footer style When print document with multiple pages</a></h2>
	<p>When print document with multiple pages - Please pop a message box with a question:<br />
	"Would you like to choose a footer style so you have page numbers when you print?"
	</p>    
</li>

</ol>

<a name="Excel"></a>
<h2>Microsoft Excel</h2>
<p>
	<ol>
	<li>
		<h2>
			<a name="ExcelInterface"></a>Confusing Save Dialog</h2>
		<p> 
		Before closing, Excel prompts the user to save any unsaved documents. Sometimes the
		wrong sheet is shown behind the save dialog; this can be very confusing.
		</p>
		<dl class="image">
		    <dt><img src="Images/excel_interface.gif" alt="Excel Interface" width="482" height="219" /></dt>
		    <dd>Figure: Confusing Save prompt in Excel.</dd>
		</dl>
    </li>
</ol>



<a name="FrontPage"></a>
<h2>Microsoft FrontPage</h2>

<ol>

	<li>
		<h2>
			<a name="FrontpageCustomTags"></a>Why can't I add custom tag's to the FrontPage validator?</h2>
	<p>
	In Tools - Page Options, users should be able to add custom tags. (eg missing span). Currently I need 
	    to switch to Dreamweaver to use this functionality.
	<dl class="image">
	    <dt><img border="0" src="Images/Frontp6.jpg" alt="Frontpage" width="457" height="466" /></dt>
	    <dd>Figure: Not in Front Page 2002...</dd>
	</dl>
	<dl class="image">
	    <dt><img border="0" src="Images/Frontp7.jpg" width="502" alt="Frontpage" height="545" /></dt>
	    <dd>Figure: ...nor in Front Page 2003 Beta 2</dd>
	</dl>	
</p>

</li>
<li>
		<h2>
			<a name="FrontpageASPX"></a><strike>FrontPage should support ASPX and ASCX files.</strike>
	    (Thank you. Fixed in FrontPage 2003 Beta 2)</strike></h2>
        <p> 
		<strike>In the Normal view there should be a GUI component to show a reference to an 
	    aspx include file - currently it is too easy to delete code like this 
	    (because you dont see it in the designer).<br>
	    </strike>
	    </p>
	    <dl class="image">
	        <dt><img border="1" src="Images/Frontpage2.gif" alt="Frontpage" width="489" height="56" /></dt>
	    </dl>
	
</li>

<li>
		<h2>
			<a name="FrontpageStrikethrough"></a>Where is the strikethrough option? (it is in Word)</h2>
		<p>
	     Right click the menu - Customize. No Strikethough option to drag onto 
	     the toolbar.
	     </p>
	     <dl class="image">
	        <dt><img border="1" src="Images/Frontp1.jpg" alt="Frontpage" width="411" height="420" /></dt>
	        <dd>Figure: Strikethrough command does not appear in the list</dd>
	     </dl>
</li>
		
	<li>
		<h2>
			<a name="FrontpageMovePicture"></a>Move a picture from here please</h2>
        <p>
	        Need a button under &quot;Browse...&quot;, named &quot;Move&quot; picture and when I 
	         click it, it defaults to CurrentFolderOfPage/Images/..
	    </p>
	    <dl class="image">
	        <dt><img border="0" src="Images/Frontp2.jpg" width="432" alt="Frontpage" height="417" /></dt>
	        <dd>Figure: No 'Move...' button here.</dd>
	    </dl>
</li>
<li>
	<h2>
			<a name="FrontpageCaption"></a>Captions For Images</h2>
        <p> 
		Microsoft Word currently supports attaching captions to embedded images, as seen in the following
		screenshot. This cannot be done with embedded images in Microsoft FrontPage, however. It would be
		useful if users could add captions to FrontPage images as well.
		</p>
		<dl class="image">
		    <dt><img src="Images/other1.gif" width="291" alt="other" height="241" /></dt>
		    <dd>Figure: Microsoft Word's image pop-up menu includes Caption command.</dd>
		</dl>
</li>
<li>
	<h2>
		<a name="FrontpageCSSComments"></a>CSS comments </h2>
    <p>
        This is clearly a comment and Show Color Coding is checked on, yet the comments are not in green like all other Microsoft development environments.
    </p>
    <dl class="image">
        <dt><img border="1" src="Images/Frontpage3.gif" alt="Frontpage" width="421" height="442" /></dt>
        <dd>Figure: Comment text not green, even while 'Show Color Coding' is checked.</dd>
    </dl>
</li>
<li>
		<h2><a name="FrontpageMailToLinks"></a>MailTo: Links</h2>
     <p>
        The mailto: link supports a body parameter. This should be editable in the hyperlink dialog.
     </p>
     <dl class="image">
        <dt><img src="Images/Frontpage4.gif" width="604" alt="Frontpage" height="330" /></dt>
        <dd>Figure: Body parameter not allowed.</dd>
     </dl>
</li>	         
<li>
		<h2><a name="FrontPageLastSavedBy"></a>Last Saved By</h2>
	    
	    <p>
	    	I love editing web pages using FrontPage directly from Internet Explorer. 
			However doing it this way can cause concurrent editing problems, as 
			it doesn't recognise which user is making the changes. You can see 
			that the the &quot;saved to the server by ...&quot; field is blank. You don't 
			get this problem if you open the file in FrontPage from Windows 
			Explorer directly. Unfortunately there is no work-around to this 
			bug.</p>
		<dl class="image">
		    <dt><img src="Images/FrontPage_LastSavedBy.gif" width="336" alt="Last saved by" height="200" /></dt>
		    <dd>Figure: Editing in FrontPage from Internet Explorer potential 
			causes concurrent editing problems</dd>
		</dl>
</li>
</ol>

<a name="PowerPoint"></a>
      <H2>Microsoft PowerPoint</H2>

<ol>
<li>
	<h2>
		<a name="PowerpointImages"></a>Captions for images</h2>
	<p> 
		Microsoft Word currently supports attaching captions to embedded images, as seen in the following
		screenshot. This cannot be done with embedded images in Microsoft PowerPoint, however. It would be
		useful if users could add captions to PowerPoint images as well.
	</p>
	<dl class="image">
	    <dt><img src="Images/other1.gif" width="291" alt="other" height="241" /></dt>
	    <dd>Figure: Microsoft Word's image pop-up menu includes Caption command.</dd>
	</dl>
</li>		
	</ol>
	
	
	
	<a name="PowerPoint"></a>
      <H2>Microsoft Outlook</H2>
	
	<ol>
    <li>
	<h2>
		<a name="OutlookTimeZone"></a>OutLook Time Zone</h2>
	<p> 
		Outlook currenly uses 12 AM to 12 PM for All Day Events. This creates problem when it is for different time zone.
	</p>
	<p>
	 
		It would be useful to use additional time zone feature in outlook to display local time zone without changing time of operating system.
		Either you can change all day event to local time zone setting.
	</p>
	
	<p>One best option to handle with this problem is storing all time zone using UTC(Universal Cordinated Time) so that there is no need for any other time settings and appointment can be rendered using local time zone. 
   </p>
	
</li>		
    <li>
        <a name="AllDayAppointment"></a><h2>Change "All Day Appointment" to be an all day appointment</h2>
        <p>
            Currently Outlook uses 12AM to 12PM to signify a full-day event - this causes problems when you change time zones.
        </p>
        <p>
            A full-day event is a full-day event, no matter what time zone your are in.
        </p>
        <p>
            Ken Getz says more on this: <br />
            <a href="/SSW/Redirect/mcwtech.htm" target="_blank">Time Zone Disaster--All Outlook Appointments Bite the Dust</a> 
        </p>
    </li>
    <li>
        <a name="ImageSize"></a><h2>Image size</h2>
        <p>
            When I put pictures into an Outlook HTML email, they are much less quality and significantly larger, even though Outlook reports that they are 100%.
        </p>
        <p>
            More information at: <a href="/SSW/Redirect/chris.pirillo.htm" target="_blank">More Outlook HTML Email Problems</a>
        </p>
    </li>
    
    
</ol>
	
	
	
</div>

<h2>Acknowledgements</h2>
	<p>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JV">Jatin Valabjee</a><br />
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=RT">Ryan Tee</a>
	</p> 
</asp:content>
<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="The Best Tools for Web Forms Development (ASP.NET Controls)"  %>
<%@ Register Assembly="RJS.Web.WebControl.PopCalendar" Namespace="RJS.Web.WebControl" TagPrefix="rjs" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    
  <!-- calendar stylesheet -->
  <!--SSW Code Auditor - Ignore next line--> 
  <link rel="stylesheet" type="text/css" media="all" href="include/calendar-win2k-cold-1.css" title="win2k-cold-1" />

  <style type="text/css">
	  .block{ 
		position: absolute; 
		background-color: #888; 
		width: 60px; 
		height: 60px;
		margin: 5px; 
		left:150px;
	  }
	</style>

  <!-- main calendar program -->
  <script type="text/javascript" src="include/calendar.js"></script>

  <!-- language for the calendar -->
  <script type="text/javascript" src="include/calendar-en.js"></script>
  <script type="text/javascript" src="include/jquery-1.2.6.js" ></script>

  <!-- the following script defines the Calendar.setup helper function, which makes
       adding a calendar a matter of 1 or 2 lines of code. -->
  <script type="text/javascript" src="include/calendar-setup.js"></script>
  <script type="text/javascript">
	  $(document).ready(function(){
		$("#rightBtn").click(function(){
		  $(".block").animate({left: '+=50px'}, "slow");
		});

		$("#leftBtn").click(function(){
		if (parseInt($(".block").css("left")) > 150)
		{
		$(".block").animate({left: '-=50px'}, "slow");
		}		  
		});		
	  });
	  </script>
     
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
	<div class="TableOfContents">
This page is to look at individual components. Be aware that many companies offer their tools in a bundle - here are the best options if you are going to just choose one company:
<br />
#1 <a href="/ssw/Redirect/ComponentArtWebUi.htm" target="_blank">http://www.componentart.com/webui.aspx</a>
<br />
#2 <a href="/ssw/Redirect/TelerikAspNet.htm" target="_blank">http://www.telerik.com/asp-net-controls/ui-components/overview.aspx</a>
<br />
#3 <a href="/ssw/Redirect/RicherComponents.htm" target="_blank">http://www.richercomponents.com/products.aspx</a>
<br />
#4 <a href="/ssw/Redirect/InfragisticsNetAdvantage.htm" target="_blank">http://www.infragistics.com/products/NetAdvantage/WebForms/default.aspx</a>
</div>			
		<div class="TableOfContents">
	
		<h3>The Best Tools for Web Forms Development (ASP.NET Controls)</h3>
		<ol>
			<li><a href="#ComponentArtDataGrid">ComponentArt DataGrid</a></li>
			<li><a href="#ComponentArtMenu">ComponentArt Menu</a></li>
			<li><a href="#TreeView">Tree View</a></li>			
			<li><a href="#RichTextBox">Rich Text Box</a></li>			
			<li><a href="#CollapsablePanel">Collapsable Panel - EWorldUI</a></li>
			<li><a href="#PopupCalendar">Popup Calendars</a></li>
			<li><a href="#DBCombo">DB Combo</a></li>
            <li><a href="#ajaxTextbox">Ajax Textbox</a></li>			
			<li><a href="#TrueCombo">True Combo Behaviour</a></li>
			<li><a href="#ToggleBorders">Toggle Borders</a></li>
			<li><a href="#PeterPolling">Peter's Polling Package</a></li>
			<li><a href="#speller">Spell checker</a></li>
			<li><a href="#Firebug">Firebug</a></li>
			<li><a href="#IEDevtoolbar">Internet Explorer Developers toolbar</a></li> 
			<li><a href="#JQuery">JQuery </a></li>
		</ol>
		</div>
<div id="mainContent">			
<p>
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D54686525323042657374253230546F6F6C73253230466F722532304153502E4E4554253230436F6E74726F6C73')">
    Let us know</a> what you think.</p> 
</p>

<p>
 would you like your software to be considered for this list?  
	<a href="TheBest3rdPartyTools.aspx#HowToGetMyToolsConsidered">Give us your details</a>.
</p>
<div class="infoBox" align="left" style="width:600px">
	<h4>What do you think of the ASP.NET controls sold by Telerik? I like the range of controls these guys offer in their full package (eg. drop-down list, editor, spell, etc), plus the fact that they seem very strong on Ajax implementation. Do you think the ComponentArt controls are superior?</h4>
	<p>The short answer is yes - mainly because I like the grid the most.
However the Telerik controls are good also - they come first for the rich text editor and the speller.
So it depends.
</p>
</div>
       

		<ol>
		
		<li>
			<a name="ComponentArtDataGrid"></a>
			<h2>ComponentArt DataGrid</h2>

			<p>
				Multi-mode operation, support for AJAX callbacks, and client side template feature provide the richest, 
				highest-performing user experience delivered to date by an ASP.NET Grid control.</p>
			<div class="imageHolder">
				<img src="Images/componentart_grid01.gif" alt="">
			<p>
				<span class="Caption">Figure: ComponentArt DataGrid Screenshot</span>
			<br /><br />
				<a href="/ssw/Redirect/ComponentArtDataGrid.htm" target="_blank">ComponentArt DataGrid Overview</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
			</div>
			<p>Suggestion to other vendors.</p>
			<p>You should all make similar grid examples so others can compare.</p>
			<p>I really like this grid example
				<a href="/ssw/Redirect/ComponentArtAjaxGridEG.htm" target="_blank">http://www.componentart.com/demos/grid/features/ajax_grid/WebForm1.aspx</a>
				And this one
				<a href="/ssw/Redirect/InfragisticsWebTabEG.htm" target="_blank">http://samples.infragistics.com/2006.2/WebTabs/CustomerViewer/WebForm1.aspx</a>
			</p>
			<p>Telerik only have this
				<a href="/ssw/Redirect/TelerikAjaxEg.htm" target="_blank">http://www.telerik.com/demos/aspnet/controls/examples/integration/ajax/grid/defaultcs.aspx</a>
			</p>
		</li>
		<li>
			<a name="ComponentArtMenu"></a>
			<h2>ComponentArt Menu</h2>

			<p>
				ComponentArt's award-winning Menu has been written from the ground up 
				for ASP.NET, combining the best practices from our original ASP.NET 
				Menu with our advanced new rendering technology.			</p>
			<div class="imageHolder">
				<img src="Images/componentart_menu01.gif" alt="">
			<p>
				<span class="Caption">Figure: ComponentArt Menu Screenshot</span>
			<br /><br />
				<a href="/ssw/Redirect/ComponentArtMenu.htm" target="_blank">ComponentArt Menu Overview</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
			</div>
		</li>
		<li>
			<a name="TreeView"></a><h2>Tree View</h2>
			<h3>ComponentArt TreeView</h3>

			<p>
				Enhanced performance and added features are now available! 
				Lightweight and lightning-fast, TreeView is rich on both the client and 
				server side, easily data-bound and ready for ASP.NET 2.0.			</p>
			<div class="imageHolder">
				<img src="Images/componentart_treeview01.gif" alt="">
			<p>
				<span class="Caption">Figure: ComponentArt TreeView Screenshot</span>
			<br />
				<a href="/ssw/Redirect/ComponentArtTreeView.htm" target="_blank">ComponentArt TreeView Overview</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
			</div>
			<br/>
			<h3>VisualASP TreeView Component</h3>

			<p>
				Use this classic component to add tree structure menus to your asp applications. 		
				With eight tree styles the functionality in this component gives you all the power 
				you need, to create an impressive looking tree to suit your web site. The TreeView 
				Component includes examples for database, xml and client side event handling, plus 
				many others.			</p>
			<div class="imageHolder">
				<img src="Images/treeview.gif" alt="">
			<p>
				<span class="Caption">Figure: VisualASP&trade; TreeView Component Screenshot</span>
			<br>
				<a href="/ssw/Redirect/Visualasp.htm" target="_blank">Visual ASP Web Site</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
			</div>
		</li>
		<li>
			<a name="RichTextBox"></a>
			<h2>Rich Text Box</h2>
			<h3>#1 r.a.d.editor (will be called RichTextBox)</h3>
			<p>This rich text box from r.a.d is great.</p>
			<p>Unfortunately it is poorly named (they will rename it to RichTextBox) and does not come up on the first few pages of google !
			<a href="/ssw/Redirect/GoogleRichTextBox.htm" target="_blank">http://www.google.com.au/search?sourceid=navclient&ie=UTF-8&rls=GGLJ,GGLJ:2006-17,GGLJ:en&q=rich+text+box+asp%2enet</a></p>
			<p>Why do I say the RichTextBox from Telerik is the best one - because when you paste from Word it cleans up the god awful HTML</p>
			<p>See <a href="/ssw/Redirect/TelerikRichTextBox.htm" target="_blank">http://www.telerik.com/r.a.d.controls/Editor/Examples/Default/DefaultCS.aspx</a></p>

			<div class="imageHolder">
				<img src="Images/radeditor.jpg" alt="">
			<p>
				<span class="Caption">Figure: r.a.d.editor Screenshot</span>
			<br>
				<a href="/ssw/Redirect/telerik.htm" target="_blank">Telerik Web Site</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
			</div>
		
			<h3>#2 RichTextBox </h3>

			<div class="Quote">

				<h3>A common question is why do I recommend RichTextBox over the free ones?</h3>
				<div class="topoflist">
		        	I have heaps of good reasons:
				<ul>			
			        <li>
						It is a product - RichTextBox provides a professional, supported, commercial product, not just a piece of code			        </li>
			        <li>
			        	They will be growing with me and my app - They will be here in X yrs time, selling solid, high quality 
			            components			        </li>
			       	<li>
			             I get help - They provide really great email support, support in the forums, a 
			             large knowledge base, and have a technical support team devoted to 
			             supporting users of the product			        </li>
			        <li>
			        	They will fix bugs for me - They invest heavily in research and development, and provide free 
			             products upgrades and bug fixes			        </li>
			        <li>
			        	The big companies will be subsidising me to get the above
			             - They have a top-notch customer base including Microsoft, Intel 
			             and Wells Fargo, which says a lot about the trust their product has 
			             gained					</li>
				</ul>
			    <p>
					There is certainly a place for small bits of code like FreeTextBox, 
					but I don't think free, unsupported code is suitable for most 
					corporate applications. And anyway, for a high quality web app, 
					$150-250 isn't a large investment by any means. Certainly when 
					compared to the effort required to build one of these editors, it's 
					insignificant.				</p>
	            <p>
					Adam Cogan				</p>
			</div>
			</div>
	
			<p>
				Now this is a great control and comes with even better support. RichTextBox is a server 
				control that you add to an ASP.NET page. You can set a 	few properties if you like and there 
				is nothing more to it - it works like any other control. Under the covers, when the page is 
				requested by the browser, it generates several hundred lines of HTML and JavaScript in a 
				configuration that depends on and properties you set for the control. To provide the editing functionality 
				it relies on editable IFRAME functionality in Internet Explorer and provides a large amount of 
				code to support that, and it does a great job in bringing such richness to the browser.			</p>
			<div class="imageHolder">
				<img src="Images/richtextbox.gif" alt="">
			<p>
				<span class="Caption">Figure: RichTextBox Screenshots</span>
			<br>
				<a href="/ssw/Redirect/RichTextBoxEditor.htm" target="_blank">RichTextBox.Com</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
			</div>
		
			<h3>#3 FCKeditor </h3>
		
			<p>
				FCKeditor is a powerful tool providing a text editor for web pages. The
				interface is similar to the ones we know from Microsoft products and has an
				easily customizable toolbar. The text editor provides all the formatting
				possibilities which are possible in HTML through an online interface. As
				FCKeditor is an OpenSource project, it is absolutely free.			</p>
			<p>
			    One disadvantage is that FCK has problems over a SSL connection.
			</p>
			<div class="imageHolder">
				<img src="Images/fckeditor.gif" alt="FCKeditor">
			<p>
				<span class="Caption">Figure: FCKeditor Screenshot</span>
			<br>
				<a href="/ssw/Redirect/FCKeditor.htm" target="_blank">www.fredck.com/FCKeditor</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
			</div>
		
			<h3>#4 FreeTextBox (preferred)</h3>

			<p>
				A free ASP.NET control written in C# implementing MSHTML in Internet Explorer. 
				It can be validated using standard ASP.NET validators and has many options for customization..			</p>
			<p>
			    FreeTextBox has a 'free' version and a paid version which offers things like XHTML compliance. Also DNN uses FreeTextBox as their default editor.
			</p>
			<p>
			    If you have multiple rich text editors on one page then IE uses a large amount of memory - this causes problems on older machines with 256mb of memory and integrated video cards.
			</p>
			<div class="imageHolder">
				<img src="Images/FreeTextBox.gif" alt="FreeTextBox">
			<p>
				<span class="Caption">Figure: FreeTextBox Screenshot</span>
			<br /> <a href="/ssw/Company/ContactUs.aspx">Real demo in SSW Web Site - Contact Me</a>	
			<br>
				<a href="/ssw/Redirect/FreeTextBox.htm" target="_blank">freetextbox.com</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
			</div>
		</li>

		<li>
			<a name="CollapsablePanel"></a>
			<h2>Collapsable Panel - from EWorldUI</h2>
			<p>
				The collapsable panel control from EWorldUI (<a href="/ssw/Redirect/eworldui.htm">www.eworldui.net</a><img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">)
				is a great, lightweight, free to use ASP.NET server control that enables you to expand and collapse blocks of content client side.
				You get control over the numerous sections of the title row as well as the javascript source file - embedded or linked.			</p>
			<div>
				<div>
					<img src="Images/eworld_panelcollapsed.gif" alt="Collapsed Panel">				</div>
				<p>
					<span style="font-weight:bold;">Figure: The content panel collapses to only show the title row which is clickable.</span>				</p>
			</div>
			<div style="margin-bottom:1em;">
				<div>
					<img src="Images/eworld_panelexpanded.gif" alt="Expanded Panel">				</div>
				<p>				
					<span style="font-weight:bold;">Figure: Once clicked, the panel expands to show the content without a postback.</span>				</p>
			</div>
		</li>		

		<li>
			<a name="PopupCalendar"></a>
			<h2>Popup Calendars </h2>

			<p>
				ASP.NET comes with a built in Calendar Control that you can put on your web 
				pages. I don't like the Calendar Control from a usability perspective 
				- I think it is better to be able to type in the date in a text box. For the 
				users that want a GUI calendar, they can click a button next to the date field. eg. 
				<a href="/ssw/Redirect/qantas.htm" target="_blank">www.qantas.com</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">  
				Love to know if you Agree/Disagree?			</p>
			<p>
				So in my search for a good calendar that can be used as a popup, I found these ones...<br>
			</p>

			<h3> Dynarch DHTML/Javascript Calendar (Free) (Warning: This doesnt work on IE7 so this is no longer recommended)</h3>
			<br />
			<strike>
			<p>
				In my opinion this is the coolest cross-browser compatible DHTML date picker. It is setup in minutes, with all the features you may require in 90% of your projects. Try dragging it around the page...			</p>


			<p><img src="Images/dynarch_calendar2.gif" alt="Dynarch pop up calendar"/> 	
						<br />
						<small><b>Figure: Dynarch Popup Calendar</b></small></p>
			<p>			
              
			    <a href="/ssw/Redirect/DynarchCalendar.htm" target="_blank">Dynarch Calendar Overview</a>
			    <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">
			    <br />
		      <br />
			  
			    <b>What is it?</b>		    </p>
			<ul>
				<li>Cross-browser popup or flat DHTML calendar</li>
				<li>Suitable for selecting date/time</li>
			</ul>
			<b>Features</b>
			<ul>
				<li>The look is customizable through external CSS</li>
				<li>High quality color themes</li>
				<li>Keyboard navigation</li>
				<li>Can show days from adjacent months</li>
				<li>Can show week numbers</li>
				<li>Translated into many languages</li>
				<li>Any day can be "the first day of week"</li>
				<li>The default "first day of week" can be configured in the language file</li>
				<li>One can easily jump back or forward with 24 years</li>
				<li>Provides help hints (also configurable)</li>
				<li>Includes an optional time selector with 1 minute resolution</li>
				<li>Special days (configurable list of days that are displayed differently)</li>
				<li>Allows multiple days selection</li>
				<li>Fast and very easy to setup</li>
			</ul>
			</strike>
			<br />
 			<h3> ComponentArt Popup Calendar (ASP.NET)</h3>
			<br />

			<p>
				ComponentArt Calendar supports a variety of date and date-range 
				selection types - without requiring postbacks for month paging or 
				date selections.			</p>
			<div class="imageHolder">
				<img src="Images/componentart_popupcalendar.gif" alt="">
			<p>
				<span class="Caption">Figure: ComponentArt Popup Calendar</span>
			<br /><br />
				<a href="/ssw/Redirect/ComponentArtCalendarDemo.htm" target="_blank">ComponentArt Calendar Demo</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
			</div>

  			
  			<h3> Peter Blum's DateTextbox (ASP.NET) <img src="/ssw/images/tick.gif"> (Recommended when you have a range eg. Date Start and Date End)
</h3>
			<br />
  			<p>The DateTextBox Control is a complete solution to date entry in a web form. It is a greatly extended TextBox which assists the user in entering the day, month, and year of a date. It always follows the international short date pattern that you supply. Users can <strong>popup a calendar</strong> to select a date from that interface or use an assortment of commands available as single keystroke, from a context menu, or from a Help button. Two can be connected together for smart date range entry.			</p>
  			
			<div class="imageHolder">
				<img src="Images/peterblum_datetextbox.gif" alt="">
			<p>
				<span class="Caption">Figure: Peter Blum's DateTextbox with popup calendar</span>
			<br /><br />
				<a href="/ssw/Redirect/PeterBlumsDateTextboxDemo.htm" target="_blank">Peter Blum's DateTextbox Demo</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
			</div>

	
			<h3>RJS  Popup Calendar (Free) <img src="/ssw/images/Tick.gif"/> (Recommended)</h3>
			<p>The RJS popup calendar is free ASP.NET popup calendar baseed on the Fuushikaden JavaScript calendar. It can be fully customizable with CSS, has full globalization and cross-browser support and is very easy to implement. It is available on GotDotNet and is regularly updated by the developer Ricaute Jimenez Sanchez. Documentation is available in English and Spanish. </p>
			<p><img src="Images/popupCalendar.gif" alt="Calendar"> 	
						<br>
						<small><b>Figure: RJS Popup Calendar</b></small></p>
			<p>Real demo: <asp:TextBox ID="rjsPopupCalendarTextBox" runat="server" /> <rjs:PopCalendar ID="rjsPopupCalendar" runat="server"
			Control="rjsPopupCalendarTextBox" EnableClientScriptValidators="False" Separator="/" /></p>
                        
                        <a href="/ssw/Redirect/RJSCalendar.htm" target="_blank">RJS PopCalendar</a> <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">
		</li>
		<li>  
			<a name="DBCombo"></a>
			<h2>DB Combo </h2>

			<p>
				DbCombo is an ASP.NET server component for picking from long lists of data. 
				It uses client scripting to 'auto-complete' a text box while you type - just like a combo box. 
				On lower browsers, it gracefully degrades to use HTML 3.2 for optimum compatibility. 
				Functionality is not lost as this happens though, DbCombo uses the postback architecture 
				to achieve the same result.			</p>
			<div class="imageHolder">
				<img src="Images/DBCombo.gif" alt="DB Combo">
			<p>
				<span class="Caption">Figure: DB Combo</span>
			<br /><br />
				<a href="/ssw/Redirect/Web/dbcombo.htm" target="_blank">Cambro DB Combo</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
			</div>
			<p>Second best is Teleriks combo box</p>
			<p><a href="/ssw/Redirect/TelerikComboAjaxEg.htm" target="_blank">http://www.telerik.com/r.a.d.controls/Combobox/Examples/Functionality/WhatsNew/DefaultCS.aspx</a></p>
			<p>Richer Components is the 3rd best - functional, but a little ugly</p>
			<p><a href="/ssw/Redirect/RicherComponentsComboEg.htm" target="_blank">http://www.richercomponents.com/asp-net-components/rich-live-combo/Demos/Dictionary.html</a></p>
		</li>

		<li>  
		    <a name="objectgraph"></a>
			<a name="ajaxTextbox"></a>
			<h2>Ajax Textbox</h2>
			<p>
				As you type a word in the textbox, a JavaScript event fires an HTTP GET request to the ASPX page. The response from the ASPX page is simply displayed in a div tag under the textbox. The page is not refreshed/reloaded for every keystroke as everything is done by the JavaScript in the page. The main JavaScript object that allows us to do this is XMLHttpRequest. You could read about it from Apple's developer site here. This is supported by IE 5.0 +, Mozilla 1.0 + and Apple's own Safari 1.2 +..  
				It uses the XMLHttpRequest object to make requests and get back data.</p>
			<div class="imageHolder">
				<img src="Images/objectgraph.gif" alt="objectgraph">
			<p>
				<span class="Caption">Figure: objectgraph dictionary textbox</span>
			</p>
			</div>		
			<p>Real Demo - Search Suburb:
			<script language="javascript" type="text/javascript" src="SuburbCombo.js"></script>
			<input name="keyword" onKeyUp="SendQuery(this.value)" style="WIDTH:150px" autocomplete="off">
            <div align="left" class="box" id="autocomplete" ></div>
				
			<br /><br />
				<a href="/ssw/Redirect/objectgraph.htm" target="_blank">objectgraph</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
		</li>
		<li>
			<a name="TrueCombo"></a>
			<h2>True Combo Behaviour</h2>
			<p>
				It is quite common to write HTML code that will create a combo box on your web page. Users can
				then make a selection from multiple items within the combo. However, you may want to produce a
				combo that also allows the user to enter in custom text, as an alternative.			</p>
			<p>
				Although this functionality is normally implemented in Windows by default, you will need
				additional code to make it work on a web page.A good explanation of how to do this can be found at the URL below:			</p>
			<div class="imageHolder">
			<p>			
				<a href="/ssw/Redirect/truecombo.htm" target="_blank">Solutions .NET: True Combo Behaviour</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
			</div>
		</li>
			

		<li>
			<a name="ToggleBorders"></a>
			<h2>Toggle Borders </h2>

			<p>
				The accepted way to debug complex table-based HTML pages is to add a border="1" 
				attribute to the &lt;TABLE&gt; element. Toggle Borders is a utility which 
				automates this and more. It is accessed from the context menu in Internet 		
				Explorer and will colour-code tables, span tags and div tags for you to see how your 		
				website, or a third party website has been laid out. Select Toggle Borders 	
				again and the colour-coding is removed.	</p>
			<p>
				More information is available on the official website:			</p>
			<div class="imageHolder">
			<p>	
				<a href="/ssw/Redirect/thundermain.htm" target="_blank">ThunderMain</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site">			</p>
			</div>
		</li>
	<li>
		<a name="PeterPolling"></a>
		<h2>Peter's Polling Package</h2>
		<p>
			Polling is one of the most common ways to get the user to interact with your site. Often sites will offer polling simply to have something to draw users back to the site. A Poll is a fairly complex combination of HTML and server side code. It has two entirely different looks: its entry view and results view. It uses a database which demands web forms to allow the user to edit the polling data and extract data collected from the users. This Polling package includes all of the pieces.
		</p>
		<p>
			I use <a href="/ssw/Redirect/PeterBlum.htm" target="blank" class="external">peterblum.com</a> for this.</p>
	</li>
	<li>
		<a name="speller"></a>
		<h2>Spell checker</h2>
			<div class="imageHolder">
			<p>	
				<img src="Images/radspeller.gif" alt="Expanded Panel">
			</p>
			<p><span class="Caption">Figure: Telerik has a good spell checker for ASP.NET</span></p>
			</div>
			<div class="imageHolder">
			<p>	
				<img src="Images/infragisticsSpeller.gif" alt="Expanded Panel">
			</p>
			<p><span class="Caption">Figure: Infragistic has a spell checker for ASP.NET - but it is not so good</span></p>
			</div>
	</li>
<li>
        <div>
	    <a name="Firebug"></a>
	        <h2>Firebug</h2>
	        <p>
	        Firebug integrates with Firefox to put a wealth of web development tools at your fingertips while you browse. You can edit, debug, and monitor CSS, HTML, and JavaScript live in any web page.

             </p> 
             <p> It is easy to retrieve the html source, CSS and script for anywhere you want:<div class="imageHolder">
             <img src="Images/Firebugshot.gif" alt=""Expanded Panel"/>
             </p>
          <p><span class="caption">Figure: When you hover over the red box, it indicates where it is in the browser (see green box).</span></p>
          </div>

</li>
	
	<li>
		<a name="IEDevtoolbar"></a>
		<h2>Internet Explorer Developers toolbar</h2>
			<div class="imageHolder">
			<p><span class="Caption">For lovers of Firebugs there is a Microsoft Internet Explorer Equivalent. 

The Internet Explorer Developers toolbar has a neat DOM explorer which is nearly as good as Firebug. (I'm sure some of you are aware of this product but I thought I would put up a tip anyway as I wsan't using this until today.)

</span></p>
<p>
Latest version can be downloaded from 

<a href="http://www.microsoft.com/downloads/en/details.aspx?FamilyID=95e06cbe-4940-4218-b75d-b8856fced535">MSIE Dev toolbar</a>

</p>
			<p>	
				<img src="Images/IEDevtoolbar.gif" alt="Expanded Panel">
			</p>
			
			</div>
			
	</li>
	<li>
		<a name="JQuery"></a>
		<h2>JQuery</h2>
		<p>Javascript has always been a nightmare to work with but JQuery makes working with javascript really easy.</p>
		<p>JQuery has these features:</p>
		<ul>
			<li>CSS Selectors for finding DOM elements</li>
				<ul>
					<li>Traditionally you had to iterate through a list of controls or use getElementById to get at an element you want</li>
					<li>With JQuery you can address it the same way you do with CSS e.g. $("div.myClass") will find a div with the class "myClass"</li>
				</ul>
			<li>Rich support for animations like the AJAX Toolkit does</li>
					<dl class="good">                    
						<dt>
							<p>	Demo: <input type="button" id="leftBtn" value="<<" /><input type="button" id="rightBtn" value=">>" /></p>
							<div class="block"></div>
							<br />
							<br />
							<br />
							<br />
						</dt>
					</dl>
			<li>Easily manipulate DOM objects' attributes and css styles</li>
			<li>Good event handling</li>
				<ul>
					<dl class="bad">
						<dt>
							<p>var mylink = document.getElementById("mylink");<br />
							function myfunction(){<br />
							&nbsp;&nbsp;&nbsp;&nbsp;alert('clicked me!');<br />
							};<br />
							<br />
							mylink.onclick = myfunction;</p>
						</dt>
						<dd>Figure: Bad Example - Normal Javascript event handler</dd>
					</dl>			
					<p>On the surface, it seems that your Javascript works fine  - what one naively fails to realize is that you've killed all other Javascript hooks on that object - they are  no longer run.</p>
					<dl class="good">                    
						<dt>
							<p>function myfunction(){<br />
							&nbsp;&nbsp;&nbsp;&nbsp;alert('clicked me!');<br />
							};<br />
							<br />
							$('#mylink').click(myfunction);</p>
						</dt>
						<dd>Figure: Good Example with JQuery event handler</dd>
					</dl>					
				</ul>
			<li>Support for WCF REST web services</li>
		</ul>
		
	</li>

<h2>Acknowledgements</h2>	
	
	<p>
		<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
	</p>



</asp:content>
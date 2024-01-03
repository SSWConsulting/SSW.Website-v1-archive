<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW .NET Toolkit - WinSearch"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

		<p><a href="/ssw/NETToolkit/">SSW .NET Toolkit</a> > <a href="/ssw/NETToolkit/userguide.aspx">User Guide</a></p>
		
		<p><img src="Images/NETToolkitLogo.gif" alt="DOT NET Tool kit - Develop Applications More Efficiently with the SSW .NET Toolkit" width="188" height="83"></p>
		
		<h1>The standard way we do database searches</h1>
		

<h2>What is SSW WinSearch?</h2>

	<p>SSWSearch provides a standard search functionality to your application that solves rule <a href="../Standards/rules/RulesToBetterWindowsForms.aspx#Search">Do you know how to design a user friendly search system?</a>.

</p>
	<p>
	<img border="0" src="Images/SearchFormSimple.gif" alt="Search Form - Simple" width="550" height="544"><br>
	<b><span style = "FONT-SIZE:10pt;">Figure: SSW WinSearch - Simple Keyword Search</span></b><br><br>

	<img border="0" src="Images/SearchFormStandard.gif" alt="Search Form - Standard" width="550" height="544"><br>
	<b><span style = "FONT-SIZE:10pt;">Figure: SSW WinSearch - Standard</span></b><br><br>
	<img border="0" src="Images/SearchFormAdvanced.gif" alt="Search Form - Advanced" width="549" height="543"><br>
	<b><span style = "FONT-SIZE:10pt;">Figure: SSW WinSearch - Advanced</span></b></p>

<h2>How to use the SSW WinSearch</h2>
	
	    <p>User interface elements</p>
		<ul>
			<li><p>class SearchPanel </p></li><p>The main user control which you can drop onto the form. You 
			can interact with this control through a series of events:</p> 
			<li>OKButtonClicked
			<p>When a search result is selected, you may want to use this event to open up 
				another form to, for example, edit the selected record.</p>
			</li>
			<li>NewSearchButtonClicked
			<p>Allows you to perform actions when the new search button is clicked.</p>
			</li>
			<li>ExecuteSearch 
			<p>this event provides a set of event arguments, which contains an 
			array of SearchCriteria the user has specified. This is where this set of SearchCriteria 
			should be read, and converted to a format (e.g. SQL) which could be used to query the 
			data source.</p>
			</li>
			<li>CloseButtonClick
			<p>When the close button is clicked</p>
			</li>

				<li>class SearchCriteriaPanel<p>A search user control on the Standard tab of the SearchPanel
				</p></li>

			<li><p>class StandardCriteriaPanel<br>Inherits SearchCriteriaPanel<br>A standard user control on the Standard tab consisting of the search criteria 
name, the search condition (e.g. Contains, Begins with, etc), and a text box where the user can enter the criteria</p></li>
			
			<p>Non-user interface elements</p>
			
			<li>class Criteria</li>
							
			<p>The concept of a searchable criteria. This is added to the SearchPanel. SearchableCriteria collection (with the SearchPanelCriteria wrapper class). The SearchPanel will 
populate the advanced tab with all these criteria in the drop down menu. The user can then 
chose which criteria to search with. A criteria is a &quot;thing&quot; that the user can search. In simple applications, this 
is just a column name in a database table. You can associate a validator with a criteria, so that you can check the user's 
input to the criteria. The CreateSearchCriteria() method takes the criteria, slots in the user's 
selection of SearchCondition, and criteria the user has specified, and creates a 
SearchCriteria object. For example:<br><br>Criteria firstName = new Criteria(...);<br>SearchCriteria sc = firstName.CreateSearchCriteria(Contains, &quot;john&quot;);<br>
			<br>Design considerations:<br>The reason for the separation between Criteria and the specification of a 
Criteria (SearchCriteria) is that this allows the user to specify a search criteria 
multiple times to narrow the search down. So Criteria becomes a template, and a SearchCriteria 
becomes the data created with the template. It's much better than having a class which 
combines both the definition and specification of a search criteria, with which you have 
to&nbsp; ndividually specify the list of SearchConditions, Validators and Name.</p> 

			<li>
			<p>
			class SearchCriteria<br>Represents the user input values to a 
            particular Criteria. It has an association with:<br>
			<ul type="circle">
				<li>A Criteria object&nbsp;
				
				<li>A user selected search condition
				<li>A user entered search value
			</ul>
			</p>
			</li>
	
			<li>class SearchCondition<p>A search condition, for example, Contains, Between, Begins with, Is.</p>
			</li>
			
			<li>
			class SearchConditionCollection<p>A collection of SearchConditions.</p>
			</li>
			
			<li><p>class NumericCriteriaConditions<br>Inherits SearchConditions<br>Represents a set of search conditions suited for numeric search criteria.</p></li>
			
			<li><p>class StringCriteriaConditions<br>Inherits SearchConditions<br>Represents a set of search conditions suited for string search criteria.</p>
			</li>
		</ul>

		</asp:content>
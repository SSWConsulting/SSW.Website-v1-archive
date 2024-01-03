<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft Project Suggestions"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

<asp:label id="lblWelcome" runat="server"></asp:label>

<div class="TableOfContents">
        <ol>
            <li><a href="#ColumnMappingForOrder">Column Mapping - These should be in the same order </a></li>
            <li><a href="#ColumnMappingForMissingItem">Column Mapping – Show the missing ones too</a></li>
            <li><a href="#ColumnMappingForTFSFields">Column Mapping – Show just the TFS fields *IMPORTANT*</a></li>
            <li><a href="#DaysInHours">Project Professional - Help me see days in hours </a></li>
		</ol>
</div>
<div id="mainContent">
<ol>
	<li>
		<h2><a name="ColumnMappingForOrder"></a>Column Mapping - These should be in the same order</h2>	
		<ul>
		    <li>These should be in the same order.</li>
		    <li>Add that dialog should be resizable.</li>
		</ul>
		<dl class="image">
		    <dt><img src="Images/OrderOfWorkItems.jpg" alt="The work items should be in the same order. "/></dt>
		    <dd>Figure: These should be in the same order</dd>
		</dl>
    </li>
    <li>
       <h2><a name="ColumnMappingForMissingItem"></a>Column Mapping – Show the missing ones too </h2>
        <dl class="image">
		    <dt><img src="Images/ShowUnmappedItems.jpg" alt="Unmapped items"/></dt>
		    <dd>Figure: It would help if you show the ones that are unmapped too </dd>
		 </dl>
    </li>
    <li>
     <h2><a name="ColumnMappingForTFSFields"></a>Column Mapping – Show just the TFS fields *IMPORTANT* </h2>
       <dl class="image">
		    <dt><img src="Images/InsertColumn.jpg" alt="Insert column error "/></dt>
		    <dd>Figure: When you "Insert Column" it is horrible... The lists go on and on and on... </dd>
		 </dl>
        <dl class="image">
		    <dt><img src="Images/AddTFSColumn.jpg" alt="Need an option - Insert TFS Column "/></dt>
		    <dd>Figure: When adding a column, we need a new one "Insert TFS Column"</dd>
		 </dl>
		 <dl class="image">
		    <dt><img src="Images/EditColumn.jpg" alt="Need an option - Edit TFS Column "/></dt>
		    <dd>Figure: When editing a column we need a new one "TFS Columns" </dd>
		 </dl>
    </li>

    <li>
        <h2><a name="DaysInHours"></a>Project Professional - Help me see days in hours</h2>
        <p>I would like:</p>
        <ul>
            <li>to be able to hover and see it in hours</li>
            <li>to right click and change the format from days to </li>
            <li>to fix the below bug with 'Project Options' | 'Duration is entered in' | 'Hours'</li>       
        </ul>

        <dl class="image">
		    <dt><img src="Images/Project_Seeing-days.jpg" alt="Seeing Days"/></dt>
		    <dd>Figure: I changed the setting, so why am I seeing days?</dd>
		 </dl>

         <dl class="image">
		    <dt><img src="Images/Project_want-hours.jpg" alt="I want to see hours (like I am used to in TFS)"/></dt>
		    <dd>Figure: I want to see hours (like I am used to in TFS)</dd>
		 </dl>

    </li>
    
</ol>
<br />
</div>
<h2>Acknowledgements</h2>
<p>
    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a> 
</p>
</asp:content>
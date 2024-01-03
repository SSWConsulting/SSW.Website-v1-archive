<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Creating a Time Dimension in 10 Easy Steps"  %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
		
			<h2>Creating a Time Dimension in 10 Easy Steps</h2>
	 		<ol>
	 			<li><b>Creating a new dimension</b>:
	 				 (We recommend that you have your Data Source created and ready 
						to go.)
						
						<p>To create a new dimension, right click the dimensions folder of your Analysis Services project and select "Add new dimension" as shown in the diagram below.</p>
	 			 
	 				 <p><img src="/ssw/Standards/Rules/Images/CreateDimTimee01.gif" width="212" height="233"><br>
	 				 <b>Figure: </b>New Dimension.</p>
	 			<li>
	 		<p><b>Selecting the Time By Day template</b>:</p>
	 		<p>We are aware of at least 3 different ways to create the Time 
			Dimension Table, but this is by far the quickest and the easiest. 
			You can also opt to not use a template. This gives you access to 
			creating a Server-Time table which is not actually added to your 
			Database.</p>
			<p><img src="/ssw/Standards/Rules/Images/CreateDimTimee02.gif" width="510" height="459"><br>
	 		<b>Figure: </b>Select the Time By Day template.</p>
	 		
	 		<li>
	 		<p><b>Definining Time Periods</b>:</p>
	 		<p>Select the time periods that you want your Time Dimension table 
			to be populated between and don't be afraid to change the first day of the week to Monday. Also, check
			any Time Periods that you want to be able to use later on in your cube (think 
			Reporting).</p>
			<p><img src="/ssw/Standards/Rules/Images/CreateDimTimee03.gif" width="510" height="459"><br>
	 		<b>Figure: </b>Define Time Periods.</p>
			
	 		<li><p><b>Selecting Calendars:</b>:</p>
	 		<p>Select any calendars you may wish to use in your cube, IE. if you want to analyze data by Year, then tick Fiscal calendar. 
			If you do select Fiscal calendar, make sure you change the Start 
			Month to July.</p>
	 		<p><img src="/ssw/Standards/Rules/Images/CreateDimTimee04.gif" width="510" height="459"><br>
	 		<b>Figure: </b>Choosing your calendars.</p>
	 		<li>
	 		<p> <b>Finishing Up the Dimension</b> </p>
	 		<p>This is where we name our dimension. As you can see, the wizard automatically calls your dimension "Time", but be careful, because this will be the name of your table when we add it to your database. The preferred name 
			for a Time Dimension table should be &quot;DimTime&quot;. Also, before you 
			click finish, ensure that &quot;Generate schema now&quot; is ticked so that we 
			can get right into adding and populating the Time Dimension table to 
			the database.</p>
	 		<p><img src="/ssw/Standards/Rules/Images/CreateDimTimee05.gif" width="510" height="459"><br>
	 		<b>Figure: </b>Finishing Up the Dimension.</p>
	 		<li>
	 		<p><b>Specifying Target:</b></p>
	 		<p>This is where we choose which Data Source to add our Time Dimension table to. Select your pre-existing data source and create a new Data Source View (DSV) or select your pre-existing DSV and the wizard will add the Time Dim table to it at the end.</p>
	 		<p><img src="/ssw/Standards/Rules/Images/CreateDimTimee06.gif" width="510" height="459"><br>
	 		<b>Figure: </b>Specify Target.</p>
	 		<li>
	 		<p><b>Selecting Schema Options:</b></p>
	 		<p>Name your owning schema and select any options you wish for your Time Dimension table. Keep in mind that the Owning Schema will prefix your Table name in your database. In our example, 
			the table we are adding to the database will be called 
			[DimTimeDemo].[Time].</p>
			<p>Also, be aware that you can choose to populate the table, leave it empty, or populate empty rows only. The last option could be useful in updating your table if you exceed the dates set forth when we created our Time dimension earlier.</p>
	 		<p><img src="/ssw/Standards/Rules/Images/CreateDimTimee07.gif" width="510" height="459"><br>
	 		<b>Figure: </b>Schema Options.</p>
	 		<li>
	 		<p><b>Specifying Naming Conventions:</b></p>
	 		<p>On this screen we can select the naming conventions for our columns. I think it is pretty straight forward. 
			After we click next, the wizard will have all the information needed 
			to generate and populate the Time Dimension table.</p>
	 		<p><img src="/ssw/Standards/Rules/Images/CreateDimTimee08.gif" width="510" height="459"><br>
	 		<b>Figure: </b>Specify Naming Conventions.</p>
	 		<li>
	 		<p><b>Generating the Data:</b></p>
	 		<p>Here we see the wizard generate the schema and populate the table 
			with the date data. If something is going to go wrong, this is the 
			place where it will happen; however, as you can see in the picture 
			below, the &quot;Generation Completed Successfully.&quot;</p>
	 		<p><img src="/ssw/Standards/Rules/Images/CreateDimTimee09.gif" width="538" height="524"><br>
	 		<b>Figure: </b>Generating the Data</p>
	 		<li>
	 		<p><b>And we are good to go...</b></p>
	 		<p>Well, this isn't really a step, but 10 sounds like a nice round number, and I get to show off the data that we generated in the picture below. 
			Happy Time Dimension Generation!</p>
	 		<p><img src="/ssw/Standards/Rules/Images/CreateDimTimee10.gif" width="915" height="307"><br>
	 		<b>Figure: </b>The finished product.</p>

	 		</ol>	
			<h2>Acknowledgements</H2>
			<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><BR>Grant Paisley
			<br><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=MM">Michael Mileos</a>
                    &nbsp;</P></li>
					</asp:content>
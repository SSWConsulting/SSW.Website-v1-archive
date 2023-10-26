<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Property and Event PRO! - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="Images/PropertyEventPROLogo.gif" alt="Property and Event PRO" width="336" height="82">
    <h2>Developed for the Access Developer wanting to do a global replace</h2>
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
        <p>This product is no longer supported. </p>
    </div>

    <p>
		SSW Property and Event PRO! allows you to set values for properties 
		and events across your whole database with an easy-to-use interface. You can also apply 
		conditions based on any property to alter the affect of your changes. Anything that you 
		can do in Access application development, SSW Property and Event PRO! can do across your 
		whole database.
	</p>
	
	<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
		<tr>
			<td>
				<b>SSW Property and Event PRO User Guide</b><br>
					<a href="#Pre">1.</a> Prerequisites<br />
				<a href="#AboutUG">2.</a> About this User Guide <br>
				<a href="#Note">3.</a> Important Notice<br>
				<a href="#Examp1">4.</a> Example 1: Setting the Back Color of all Text Boxes<br>
	<a href="#examp2">5.</a> Example 2: Changing the SpecialEffect properties using conditions<br>	
	<a href="#examp3">6.</a> Example 3: Dealing with Events<br>
			</td>
		</tr>
	</table>
		<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>

<h2>About this User Guide<a name ="AboutUG"></a></h2>
      
	<p>
		This user guide is designed to show you how to quickly and easily make changes across 
		your access database using SSW Property and Event PRO!
	</p>
	  
	<p>
		In this tutorial you will see several examples of SSW Property And Event PRO! in action. 
		These examples will be performed on a copy of Northwind97.mdb, a sample database included with 
		Access, so you can't do any harm if you follow the instructions.
	</p>
	  
	<p>
		A large amount of your development time in Access is performing repetitive tasks. Most of 
		what you do in developing an Access application is saved as a value for a property or an event.
	</p>
	  
	<p>
		With SSW Property and Event PRO!, it is possible to set most properties for an object type 
		across the whole database in one go. You can make every combo box sunken, change the color of a 
		group of forms, standardise the position of a common command button to list just a few examples.
	</p>
	  
	<p>
		Basically, nearly anything you can implement manually in one place, this utility can implement 
		automatically wherever you specify.
	</p>
   
<h2>Important Notice<a name ="Note"></a></h2>

	<p>
		SSW Property And Event PRO! can change the appearance of an object type wherever 
		it occurs in your database. This means that if you specify a change you don't 
		want by mistake, the mistake will be everywhere. Back up your database before 
		using this utility.
	</p>
	
<h2>Example 1: Setting the Back Color of all Text Boxes<a name ="Examp1"></a></h2>
             
	<p>
		In this example we are going to change the back color of every textbox in our copy 
		of Northwind to yellow.
	</p>
      
    <p>
		Run the SSW Property and Event PRO! program and select the sample database that was installed. 
		By default this file is located at C:\Program Files\SSW Property and Event PRO\Samples\Northwind97.mdb
	</p>
      
    <p>
		<img src="Images/SpecifytheObjectTypeTextBoxBackColour.gif" border="1" alt="Select Object " width="500" height="352">
        <br />
        <strong>Figure:
		Select the Object to be a 'Text Box' and set the Property to be 'BackColor'</strong></p>
      
    <p>
        <br />
		<img src="/ssw/PropertyAndEventPRO/Images/SpecifyColourValue.gif" width="600" height="398" alt="Specify Color">
        <br />
        <strong>Figure: Specify the new 'BackColor' property value to be yellow </strong>
	</p>
      
    <p>
		Because we do not need any conditions we will skip that screen for now and can review the changes 
		we are going to make. 
	</p>
      
    <p>
		<img src="/ssw/PropertyAndEventPRO/Images/ReviewChangesAll.gif" width="600" height="399" alt="Review Changes">&nbsp;<br />
        <strong>Figure: Once we are happy with the changes we can proceed by clicking 'Finish'</strong></p>
      

<h2>Example 2: Changing the SpecialEffect properties using conditions<a name ="examp2"></a></h2>
  
	<p>
		In this example we are going to change the SpecialEffect property of a group of combo boxes to raised.
	</p>
      
    <p>
		In the Object and Property selection screen, set the object to 'Combo Box' and the property to 
		'SpecialEffect'.
	</p>
    
    <p>
		<img src="/ssw/PropertyAndEventPRO/Images/SpecifytheObjectTypeComboBoxSpecialEffect.gif" width="0" alt="Special Effects">
    </p>
      
    <p>
		In the New Value combo box, you will see a list of all the allowable values for the SpeciallEffect 
		property of a combobox. Access stores a number for this value, but each value has a name such as "sunken" 
		and "shadowed". To make it easy for you, SSW Property And Event PRO! shows you the names of allowable 
		values wherever possible. You can still enter the number directly if you so choose. 
	</p>
      
    <p>
		<img src="/ssw/PropertyAndEventPRO/Images/SpecifyRaisedValue.gif" width="600" height="399" alt="Specify Raised Value">
        <br />
        <strong>Figure: Set the new value to be 'Raised'</strong></p>
      
    <p>
		In this example we will set a condition. We will change all combo boxes whose name starts with 'C'. 
        <br />
        <br />
		<img src="/ssw/PropertyAndEventPRO/Images/NameCondition.gif" width="420" height="408" alt="Name Condition">
        <br />
        <strong>Figure: Set up the condition similar to this</strong></p>
      
    <p>
        &nbsp;</p>
      
    <p>
		<img src="Images/ReviewChangesNameStartsWithC.gif" width="600" height="399" alt="dealing with events">
    </p>
    <p>
        <strong>Figure:
		As you can see, only the combo boxes whose name starts with C appear in the TO BE Change Items list</strong></p>
      

<h2>Example 3: Dealing with Events<a name ="examp3"></a></h2>
          
	<p>
		In this example we are going to use Property And Event Manager's ability to read and write the visual
		basic code that Access uses for event handling.
	</p>
      
    <p>
		If you are not familiar with VBA in Access we recommend you do not use this functionality in SSW 
		Property And Event PRO! as it has the greatest potential to make errors throughout your database if you 
		specify incorrect code. Once again, always remember to back up your database before implementing changes 
		with this utility.
	</p>
      
    <p>
        &nbsp;</p>
    
    <p>
		<img src="/ssw/PropertyAndEventPRO/Images/SpecifytheObjectTypeCommandButtonOnClick.gif" width="600" height="397" alt="Specify the Object">
        <br />
        <strong>Figure:
		In the Object and Property selection screen, set the object to 'CommandButton' and the property to 'OnClick'</strong></p>
      
	<p>
		In the New Value box choose "[Event Procedure]". Access can cause an event to run a Macro, call a saved 
		Function or run an Event Procedure that is stored in the module attached to the form. Macro names and 
		saved Functions are simply saved as a string value for the OnClick property. For an Event Procedure the 
		string "[Event Procedure]" is saved for the property and a procedure is added to the module.
	</p>
	  
	<p>
		Choosing "[Event Procedure]" causes SSW Property And Event PRO! to enable the two lower boxes. You can 
		enter Access Visual Basic code in either or both of these, depending on where you want the code inserted. 
		If the procedure does not already exist, it makes no difference where you put it. In the top box type:
	</P>
	  
    <P>
		<i>
			msgbox "SSW Property And Event PRO! inserted this message"
		</i>
	</p>
	  
	<p>
		In the bottom box type:
	</p>

	<p>
		<i>
			msgbox "You have just run the [PROC] " &amp; " procedure for the [CNTL] command button."
		</i>
	</p>
	  
	<p>
		<img src="Images/SpecifytheEventProcedure.gif" width="600" height="397" alt="Specify Event procedure ">
        <br />
        <strong>Figure: Specify the new value for the property of event you selected in the
            previous screen</strong></p>
	  
	<p>
		Any code you type will be inserted exactly as you type it, except for the 6 characters [PROC] or [CNTL]. 
		These will cause SSW Property And Event PRO! to automatically substitute the procedure name and the 
		control name at each instance. This is particularly useful if you want to write generic code that refers 
		to the local control - eg for a text box control you could determine whether or not a value has been 
		entered by the user with "isnull(me.[CNTL])". To return the value you can simply refer to the control 
		eg "msgbox [CNTL]".
	</p>
	  
	<p>
		Now we will set up a condition so that only controls without an OnClick event for their CommandButtons 
		will be affected.
	</p>
	  
	<p>
		<img src="/ssw/PropertyAndEventPRO/Images/OnClickCondition.gif" width="421" height="409" alt="On Click condition">&nbsp;<br />
        <strong>Figure: Set up a condition so that only controls without an OnClick event for
            their CommandButtons will be affected</strong></p>
	  
	<p>
        &nbsp;</p>
      
    <p>
		<img src="Images/ReviewChangesOnClickIsNull.gif" alt="Review Changes" width="600" height="398">
        <br />
        <strong>Figure:
		As you can see, only the combo boxes whose OnClick event is missing is in the TO BE Changed Items List</strong></p>
      
    <br><br>

		</asp:content>
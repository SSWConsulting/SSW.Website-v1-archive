<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Team Calendar for Outlook"  %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

	    <div class="discontinued-greybox">
            <p>This product is no longer supported. This is the new way of booking a meeting: <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/SendOutlookCalendarAppointmentsWhenAppropriate.aspx">Do you send Outlook Calendar appointments when appropriate?</a></p>
        </div>
		
		<h2>The right way to book someone in for a meeting.</h2>
		
		<p>
			Booking meetings for others in any office can be a tricky task. Contacting people can be 
			difficult, getting confirmation and rescheduling can all create longer 
			delays and increase inefficiency. SSW has developed the SSW Team Calendar 
			to help streamline that process. 
		</p>
		
		<p>
			Here's a scenario: The Office Administrator Jonathan gets a call from client Richard. 
			Richard needs to book David K in for a meeting. Jonathan wants to insert the 
			meeting on Richard's Calendar, but not his own.
		</p>
		<p>
			<img src="Images/imgInitMes.gif" alt="" width="489" height="340"><br>
			If Jonathan is using Outlook 97-2002 then he could email Richard a meeting 
			request, but it will be added to his calendar as well. Not the ideal method.
		</p>
	
		<p>
			So what is the recommended way?
		</p>

		<p>
			Step 1: Find out  <!-- Dont check redirect -->when Richard is available, using the Team Calendar URL, for example http://Intranet/TeamCalendar
		</p>
		
		<p>
			<img src="Images/imgCalendarWeek.gif" alt="" width="554" height="354"><br>
		    David's next available time is Wed 9th. So Jonathan the Office Administrator 
		    clicks on Richard's hyperlink.
		</p>
		
	    <p>
	    	<img src="Images/imgCalendarPersonalWeek.gif" alt="" width="554" height="354"><br>
		        &#133;then clicks on New to make a new appointment
		</p>
		
		<p> 
			<img src="Images/imgCalendarItem.gif" alt="" width="550" height="434">
		</p>
		     
		<p>
			<img src="Images/imgCalenarItemFilled.gif" alt="" width="550" height="434">
		</p>
		      
		<p>
			<img src="Images/imgoutlookitem.gif" alt="" width="450" height="354"><br>
		        The 
		        appointment is added to his Calendar.
		</p>

		</asp:content>
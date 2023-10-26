<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW User Group Special: Handsome man Hanselman is coming to Sydney" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <img src="/ssw/images/Metro-Banner-HanselmanUnplugged.png" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="http://ssw.com.au/ssw/NETUG/Images/thumbs/hanselman-thumbnail.png" alt="SSW User Group Special: Handsome man Hanselman is coming to Sydney" />
	<h1 style="font-size: 34px;">Handsome man Hanselman is coming to Sydney</h1>
	<h2>SSW User Group Special</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
	<h2>Scott Hanselman at the SSW Sydney .NET User Group</h2>
	<ul>
        <li><a href="#Details">User Group Details</a></li>
		<li><a href="#Register">Register</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">

	<div class="section"> 
		<p>Scott Hanselman is in Australia as a special guest presenter at <a href="http://ndcsydney.com">NDC Sydney</a> Sydney and will be stopping in Sydney to talk at an extra-special Sydney user group, where he will be presenting two 1-hour sessions:</p>

        <p><strong>What you need to know</strong><br />
        Come and find out from Scott Hanselman what you need to know to be a great developer in 2016.  </p>

        <p><strong>Hanselman Unplugged – open Q&A<br /></strong>
        As the title suggests, this is your chance to ask Scott any questions on life at Microsoft, the future direction of .NET and any other technical or pop culture geek questions you may have.</p>

        <p>For those of you who can't make it in person, this event will also be streamed live at <a href="http://www.ssw.com.au/ssw/NETUG/Live.aspx">http://www.ssw.com.au/ssw/NETUG/Live.aspx</a></p>
	</div>

	<div class="section">
		<h2><a name="Details"></a>Event Details</h2>
		<table class="beautyTable">
		  <tr class="odd">
			<td>Date:</td>
			<td>5th of August</td>     
		  </tr>
		  <tr>
			<td>Time:</td>
			<td>6:00pm - 8:00pm AEDT</td>
		  </tr>
		  <tr class="odd">
			<td>Cost:</td>
			<td>No Charge, but tickets necessary</td>
		  </tr>
		  <tr>
			<td>Presenter:</td>
			<td>Scott Hanselman</td>
		  </tr>
		</table>  
	 </div>
        		
    <h2><a name="Register"></a>Register</h2>

    <div style="width:100%; text-align:left;" ><iframe  src="//eventbrite.com/tickets-external?eid=26676296521&ref=etckt" frameborder="0" height="214" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe><div style="font-family:Helvetica, Arial; font-size:10px; padding:5px 0 5px; margin:2px; width:100%; text-align:left;" ><a class="powered-by-eb" style="color: #dddddd; text-decoration: none;" target="_blank" href="http://www.eventbrite.com/l/registration-online/">Powered by Eventbrite</a></div></div>

              	
</div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section">
        <h3>
            About the presenter</h3>
        <p>
            <img src="Images/Thumbs/hanselman_photo.jpeg" class="thumbnail" />
            <strong>Scott Hanselman</strong><br />
            Scott Hanselman is a web developer who has been blogging at <a href="http://hanselman.com">http://hanselman.com</a> for over a decade. He works in Open Source on ASP.NET and the Azure Cloud for Microsoft out of his home office in Portland. Scott has three podcasts, <a href="http://hanselminutes.com">http://hanselminutes.com</a> for tech talk, <a href="http://thisdeveloperslife.com">http://thisdeveloperslife.com</a> on developers' lives and loves, and <a href="http://ratchetandthegeek.com">http://ratchetandthegeek.com</a> for pop culture and tech media. He's written a number of books and spoken in person to almost a half million developers worldwide.</p>
    </div>
</asp:Content>
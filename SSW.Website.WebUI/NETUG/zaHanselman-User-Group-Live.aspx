<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW User Group Special: Handsome man Hanselman is coming to Sydney" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <img src="/ssw/NETUG/Images/Metro-Banner-HanselmanUnpluggedLive.jpg" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/NETUG/Images/thumbs/hanselman-thumbnail.png" alt="SSW User Group Special: Handsome man Hanselman is coming to Sydney" />
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
			<td>9:00am – 11:00am BST<br />
4:00am – 6:00am EDT<br />
6:00pm – 8:00pm AEDT
</td>
		  </tr>
		  <tr class="odd">
			<td>Cost:</td>
			<td>No Charge</td>
		  </tr>
		  <tr>
			<td>Presenter:</td>
			<td>Scott Hanselman</td>
		  </tr>
		</table>  
	 </div>
        	<div class="text-center">	
<a href="https://sswtools.leadpages.co/leadbox/140443473f72a2%3A1479b5958346dc/5728757302165504/" target="_blank" class="btn ignore btn-lg btn-primary">Click Here to Subscribe</a><script data-leadbox="140443473f72a2:1479b5958346dc" data-url="https://sswtools.leadpages.co/leadbox/140443473f72a2%3A1479b5958346dc/5728757302165504/" data-config="%7B%7D" type="text/javascript" src="https://sswtools.leadpages.co/leadbox-1470138474.js"></script>
       </div>       	
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
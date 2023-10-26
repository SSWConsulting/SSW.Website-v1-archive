<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW - Shopping Process User Guide - Flash Runthrough" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>User Guide</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
<div id="contentPane">
        <script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script>
        <script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>
		<h2 class="thinner">Make sure you follow correct steps to purchase SSW Products as 
			flash demo below.</h2>

        <object type="application/x-shockwave-flash" width="600" height="577" id="Captivate1" viewastext>
			<param name="movie" value="/ssw/Images/SSWLogo/SSWShoppingDemoMedium.swf">
			<param name="quality" value="high">
			<param name="menu" value="false">
			<param name="loop" value="0">
			<embed src="/ssw/Images/SSWLogo/SSWShoppingDemoMedium.swf" width="600" height="577" loop="0"
				quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"
				menu="false"></embed>
		</object>
		<p>
			Note: if you want replay above flash demo again click rewind button.
		</p>
		<p>
			There are a few different way to purchase SSW Products in our web site.<br>
			Remember that you should sign in to SSW web site to be able to purchase SSW 
			product.
		</p>
</div>
</asp:Content>

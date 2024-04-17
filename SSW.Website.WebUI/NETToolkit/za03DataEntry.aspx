<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW .NET Toolkit - Standard Data Entry Forms"  %>
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
		
		<h1>Clean standard data entry forms</h1>
		
<h2>The SSW Data Entry Standard Form</h2>

	<p> This is what the new SSW Standard Form 
	for Data Entry looks like.</p>

	<p>
	<img border="0" src="Images/StandardForm.gif" alt="Standard Form" width="568" height="478"><br>
	<b><span style = "FONT-SIZE:10pt;">Figure: SSW Standard Form</span></b></p>
	<p>This form provides a form from which you should inherit for your data 
entry projects. It provides the OK, Cancel and Apply button on the bottom right 
hand corner and the New, Delete and Search Toolbar on the top with File and Help 
menu Item on the menu bar. The inherited form is used to keep a 
	consistent look and feel throughout our applications.</p>
	<p>To add this look and feel to your application, carry out the following simple steps: </p>
	<ol>
		<li>Add the <b>SSW.Framework.WindowsUI</b> project to your solution</li>
		<li>Add a reference to that project in your current project.</li>
		<li>Change the inheritance of your form from:&nbsp;<b>System.Windows.Forms.Form</b>&nbsp;to:&nbsp;<b>SSW.Framework.WindowsUI.StandardForm</b></li>
	</ol>

		</asp:content>
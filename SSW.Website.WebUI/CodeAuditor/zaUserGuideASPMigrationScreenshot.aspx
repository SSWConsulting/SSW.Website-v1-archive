<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW - ASP.NET 2 Migration" %>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server" />

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">
    <h2>ASP.NET 2 Migration using SSW Code Auditor</h2>
    <p>
        Migrating to ASP.NET 2.0 from ASP.NET 1.1 is as simple as opening the ASP.NET web solution in 
				Visual Studio 2005, but if the migration is done manually there are a couple of things to know before you start.
				"Master Pages", a new feature of Microsoft ASP.NET 2.0, enable you to apply the same page layout
				to multiple content pages in a Web application. Master Pages provide you with an easy method of
				creating a consistent look and feel for a Web site. 
    </p>
    <p>Migrating to ASP.NET 2.0 involves following steps:</p>
    <ol>
        <li>Make changes on attributes in <strong>Page </strong>
            directive.&nbsp;
		<ol type="a">
            <li>Add '<strong>MasterPageFile</strong>' attribute in Page directive.
			<li>Make change attribute name 'CodeBehind' to 'CodeFile' in Page directive
			<li>Add 'Title' attribute and then&nbsp;move&nbsp;HTML title into title attributes 
				in the Page directive.
            </li>
        </ol>
            <li>Make changes on user controls
			<ol type="a">
                <li>Make change 'src' value for RandomTestimonial register tag to 
		~/Components/RandomTestimonial.ascx
		<li>Remove old 'Register' directives for incTop and incBottom
        </li>
            </ol>
                <li>Remove asp comment lines
		<li>Remove next lines up to inctop user control line.
		<li>Add&nbsp; <strong>'Content'</strong>
            tag
		<li>Remove footer section
		<li>Add closing Content tag
        </li>
    </ol>
    <p>
        <img src="/ssw/Images/Setup/aspnet1_1.gif" width="885" height="387">
        <br>
        <b>Figure : ASP.NET version 1.1 - Top section</b> (Before Code 
			Auditor Migration)
    </p>
    <p>
        <br>
        <img src="/ssw/Images/Setup/aspnet1_2.gif" width="881" height="99">
        <br>
        <b>Figure : ASP.NET version 1.1 - Bottom section</b> (Before Code 
			Auditor Migration)
    </p>
    <p>
        <br>
        <img src="/ssw/Images/Setup/aspnet2_1.gif" width="1077" height="131">
        <br>
        <b>Figure : ASP.NET version 2 - Top section</b> (After Code Auditor 
			Migration)
    </p>
    <p>
        <br>
        <img src="/ssw/Images/Setup/aspnet2_2.gif" width="855" height="68">
        <br>
        <b>Figure : ASP.NET version 2 - Bottom section</b> (After Code 
			Auditor Migration)
    </p>
    <p>
        <br>
        <img src="/ssw/Images/Setup/CodeAuditor.gif" width="874" height="257">
        <br>
        <b>Figure : Code Auditor rules that we run </b>
    </p>
    <div class="Section1">
        <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table19">
            <tr>
                <td>We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to do the whole migration process.</td>
            </tr>
        </table>
    </div>
    <br>
</asp:Content>

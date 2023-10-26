<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW .NET Toolkit - WizardForm"  %>
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
		
		<h1>Clean, simple, fading wizard forms</h1>
				
<h2>Do you use fading wizard form?</h2>
		<p>SSW WizardForm provide a control to create your own wizard forms 
		easily. The fading feature also gives a nice appearance of fading in and out.
		</p>
		<table class="clsSSWTableCode">
		<tr>
			<td>
			<blockquote>
				<pre><code>Protected Overloads Overrides Sub OnLoad(ByVal e As System.EventArgs)
 rule37_contentPage01 = New rule37_contentPage01
 rule37_contentPage01.Title = "Rule38 Nice Fading Wizard Content Page 01"
 rule37_contentPage02 = New rule37_contentPage02
 rule37_contentPage02.Title = "Rule38 Nice Fading Wizard Content Page 02"
 rule37_contentPage03 = New rule37_contentPage03
 rule37_contentPage03.Title = "Rule38 Nice Fading Wizard Content Page 03"
 rule37_contentPage04 = New rule37_contentPage04
 rule37_contentPage04.Title = "Rule38 Nice Fading Wizard Content Page 04"
 rule37_contentPageFinish = New rule37_contentPageFinish
 rule37_contentPageFinish.Title = "Rule38 Nice Fading Wizard Content Page 05"
			
 rule37_contentPage01.NextForm = rule37_contentPage02
 rule37_contentPage02.PreviousForm = rule37_contentPage01
 rule37_contentPage02.NextForm = rule37_contentPage03
 rule37_contentPage03.PreviousForm = rule37_contentPage02
 rule37_contentPage03.NextForm = rule37_contentPage04
 rule37_contentPage04.PreviousForm = rule37_contentPage03
 rule37_contentPage04.NextForm = rule37_contentPageFinish
 rule37_contentPageFinish.PreviousForm = rule37_contentPage04
			
 Me.WizardHost.ActivePage = rule37_contentPage01
 m_smokeForm = New WizardSmokeForm
 Me.WizardHost.SmokeForm = m_smokeForm 'Use fading feature
 MyBase.OnLoad(e)
End Sub</code></pre>
			</blockquote>
			</td>
		</tr>
	</table>

		</asp:content>
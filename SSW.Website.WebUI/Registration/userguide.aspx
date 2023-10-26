<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="Registration Wizard User Guide - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

				<p>
			<a href="/ssw/Registration/">SSW Registration</a> > User Guide
		</p>
	
		<strong>Registration Wizard</strong>
		



		<p>
			When you run the install exe there is a simple wizard interface to guide you 
			through the setup process.
		</p>
		
		<table class="clsSSWTableCode">
			<tbody>
				<tr>
					<td>
						<b>Note:</b> Why have a rich client and the same order process on the web?<br>
						<b>A:</b> We want to allow them to register and pay any way they want
					</td>
				</tr>
			</tbody>
		</table>
		<br>
		<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
			<tr>
				<td>
					<b>Registration Wizard User Guide</b><br>
					<a href="#Pre">1.</a> Prerequisites<br>
					<a href="#Run">2.</a> Running SSW Registration Wizard<br>
					<a href="#RegNow">3.</a> Register Now<br>
					<a href="#NextStep">4.</a> Next step
				</td>
			</tr>
		</table>
	<ol>
	<li>
			<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>

	</li>
	<li>
		<h2><a name="Run"></a>Running SSW Registration Wizard</h2>	
		
		<blockquote> <blockquote>
				<p><img src="Images/Rego9.png"><br>
					<b>Figure: The about screen</b></p>
			</blockquote></blockquote>
	</li>
	<li>
		<h2><a name="RegNow"></a>Register Now
		</h2>
		<blockquote> <blockquote>
				<p><img src="Images/Rego1.png"><br>
					<b>Figure: Select "Register Now" to register your SSW product or select "Continue 
						Evaluation" to review the functionality of your SSW product - see next section.</b></p>
				<p><img src="Images/Rego2.png"><br>
					<b>Figure: Select an option and follow the wizard to register your SSW product.</b></p>
				<p><img src="Images/Rego4.png">
                    <br />
                    <strong>Figure: If you are a current client, enter the email and password you used to
                        register on www.ssw.com.au </strong>
				</p>
				<p><img src="Images/Rego12.png"><br />
                    <strong>Figure: If you are a new client, fill in your contact details</strong></p>
				<p><img src="Images/Rego5.png">&nbsp;</p>
            <p>
                <strong>Figure: If you are a new client, fill in your contact and other details</strong></p>
				<p><img src="Images/Rego11.png"><br>
					<b>Figure: Pick the product type that you want to purchase</b></p>
				<p><img src="Images/Rego6.png"><br />
                    <strong>Figure: Enter your payment details</strong></p>
				<p><img src="Images/Rego10.png">&nbsp;</p>
            <p>
                <strong>Figure: The wizard will communicate with SSW Servers to finalise your registration</strong></p>
				<p><img src="Images/Rego7.png"><br />
                    <strong>Figure: Once registration is complete and payment processed, you will receive
                        an email with registration instructions</strong></p>
			</blockquote></blockquote>
	</li>
	<li>
		<p>
			<h2><a name="NextStep"></a>Next step</h2>
			
		Do you want to know more about other SSW Products?
		
		<p>
			To download other SSW Products go to <a href="/ssw/Download">Download</a>
		</p>

	</li>	
	</ol>			
		</asp:content>
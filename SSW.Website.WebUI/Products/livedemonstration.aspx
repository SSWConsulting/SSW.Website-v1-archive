

<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW - Live Demonstration" Inherits="SSW.Website.WebUI.Products.LiveDemonstration" Codebehind="LiveDemonstration.aspx.cs" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

				
		<!-- <ssw:randomtestimonial id="testimonial" runat="server" /> -->
		<h1 style="TEXT-ALIGN: center">
			<img src="Images/SSWLiveDemonstration.gif" width="288" height="83" alt="SSW Live Demonstration"
				style="MARGIN-TOP: 15px; MARGIN-LEFT: 15px">
		</h1>
		
			<fieldset>
				<legend>Location</legend>
				<dl>
					<dt>
						<asp:radiobutton id="LocationSydney" runat="server" groupname="Location"></asp:radiobutton>
						<label for="LocationSydney">Sydney, Australia</label>
					</dt>
					<dd>
						If you are in Sydney, complete this form or <a href="/ssw/Company/ContactUs.aspx">
						call</a> today for a free no-obligation demonstration at your office!
					</dd>
					<dt>
						<asp:radiobutton id="LocationInternational" runat="server" groupname="Location" checked="True"></asp:radiobutton>
						<label for="LocationInternational">International</label>
					</dt>
					<dd>
						If you are not in Sydney, please take advantage of our phone walkthrough 
						service by completing this form. The phone walkthrough is a service where we 
						will call you, anywhere in the world and guide you through the important 
						features of the software. This saves you time, instead of having to play around 
						trying to work out all the useful features.
					</dd>
				</dl>
			</fieldset>
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr valign="top">
					<td width="50%">
						<fieldset>
							<legend>Contact Details</legend>
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
								<tr>
									<td class="fieldName"><label for="ContactFirstName">First Name
<asp:RequiredFieldValidator id=RequiredFieldValidator1 runat="server" ErrorMessage="*" ControlToValidate="ContactFirstName" Display="Dynamic"></asp:RequiredFieldValidator></label></td>
									<td><asp:textbox id="ContactFirstName" runat="server"></asp:textbox></td>
								</tr>
								<tr>	
									<td class="fieldName"><label for="ContactSurname">Surname
<asp:RequiredFieldValidator id=RequiredFieldValidator2 runat="server" ErrorMessage="*" ControlToValidate="ContactSurname" Display="Dynamic"></asp:RequiredFieldValidator></label></td>
									<td><asp:textbox id="ContactSurname" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td class="fieldName"><label for="ContactCompany">Company
<asp:RequiredFieldValidator id=RequiredFieldValidator3 runat="server" ErrorMessage="*" ControlToValidate="ContactCompany" Display="Dynamic"></asp:RequiredFieldValidator></label></td>
									<td><asp:textbox id="ContactCompany" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td class="fieldName"><label for="ContactCountry">Country
<asp:RequiredFieldValidator id=RequiredFieldValidator4 runat="server" ErrorMessage="*" ControlToValidate="ContactCountry" Display="Dynamic"></asp:RequiredFieldValidator></label></td>
									<td><asp:textbox id="ContactCountry" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td class="fieldName"><label for="ContactPhoneNo">Phone No
<asp:RequiredFieldValidator id=RequiredFieldValidator5 runat="server" ErrorMessage="*" ControlToValidate="ContactPhoneNo" Display="Dynamic"></asp:RequiredFieldValidator></label></td>
									<td><asp:textbox id="ContactPhoneNo" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td class="fieldName"><label for="ContactEmail">Email
<asp:RequiredFieldValidator id=RequiredFieldValidator6 runat="server" ErrorMessage="*" ControlToValidate="ContactEmail" Display="Dynamic"></asp:RequiredFieldValidator></label></td>
									<td><asp:textbox id="ContactEmail" runat="server"></asp:textbox></td>
								</tr>
							</table>
						</fieldset>
					</td>
					<td width="50%">
						<fieldset>
							<legend>Enquiry</legend>
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
								<tr>
									<td class="fieldName"><label for="EnquiryProduct">Product
<asp:RequiredFieldValidator id=RequiredFieldValidator7 runat="server" ErrorMessage="*" ControlToValidate="EnquiryProduct" Display="Dynamic"></asp:RequiredFieldValidator></label></td>
									<td><asp:textbox id="EnquiryProduct" runat="server"></asp:textbox></td>
								</tr>
								<tr>	
									<td class="fieldName"><label for="EnquiryComments">Comments</label></td>
									<td><asp:textbox id="EnquiryComments" runat="server" textmode="MultiLine"></asp:textbox></td>
								</tr>
							</table>
						</fieldset>
						<p style="PADDING-RIGHT: 30px; TEXT-ALIGN: right">
							<asp:Button id=Submit runat="server" Text="Submit"></asp:Button>
						</p>
					</td>
				</tr>
			</table>
				
</asp:content>
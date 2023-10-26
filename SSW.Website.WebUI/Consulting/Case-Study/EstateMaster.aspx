<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="EstateMaster Case Study | SSW Consulting" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
<h1>EstateMaster Case Study</h1>
    <h2>A fluid website based on CRM and SalesForce.</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">

   <div class="section">
        <p>EstateMaster develop a suite of powerful, flexible and easy-to-use property development, valuation and investment software packages, designed from the ground up by property professionals for property professionals.</p>
		<h2>Challenge</h2>
        <p>EstateMaster wanted a good looking website, based upon a CMS so their marketing people could manage content. A dynamic client area was also needed, allowing clients to login and manage software licenses. A shopping cart was also required, allowing clients to purchase software products, pay for and generate license keys.</p>    
        <dl class="image">
            <dt><img src="Images/estatemaster-homepage.jpg" alt="EstateMaster Homepage" /></dt>
            <dd>Figure: EstateMaster Website Homepage</dd>
        </dl>
   </div>

	<div class="section">
        <h2>Integration</h2>
        <p>The website is heavily integrated with Salesforce, which contains EstateMaster’s products and pricing data, along with custom invoicing processes which needed to be maintained.</p>
        <p>A process was created that refreshed products and pricing on a nightly basis, ensuring the website remained responsive while people were browsing.<br />
           Additionally, a custom Salesforce authentication provider was created with controls allowing clients to view and edit license details directly into the license server.</p>
        <dl class="image">
            <dt><img src="Images/estatemaster-integration.jpg" alt="EstateMaster Integration" /></dt>
            <dd>Figure: EstateMaster Website Integration with CRM and SalesForce</dd>
        </dl> 
	</div>

    <div class="section">
        <h2>Results</h2>
        <p>The <a href="http://estatemaster.com/" target="_blank">estatemaster.com</a> website has been released and is live to the public. Both the client and the development team were very satisfied with such a fluid website that is based upon the CRM and SalesForce.</p>
    </div>

	<div class="section">
        <h2>Related links</h2>
        <p><a href="/ssw/Consulting/Sitefinity.aspx">Sitefinity Consulting</a></p>
    </div>

</asp:Content>

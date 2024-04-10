<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Aurecon Case Study | SSW Consulting" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content5" ContentPlaceHolderID="title" runat="server">
    <h1>Aurecon Case Study</h1>
    <h2>SharePoint Portal</h2>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2>
            Challenge</h2>
        <p>
            Aurecon - formerly known as Connell Wagner - identified SharePoint as the product
            of choice to replace various Lotus Notes applications in use within their business
            including their intranet portal. SSW were brought in to architect a SharePoint farm
            for their user base of over 6000 employees worldwide, implement the first part of
            their portal using best practices for development and deployment, and to train their
            developers and support staff.
        </p></div>
        <div class="section">
            <h2>
                SharePoint Functionality</h2>
            <p>
                The first part of the portal to be developed was for Knowledge Groups; groups of
                employees throughout the organization that work within a similar operational area.
                Each Knowledge Group was to have a unique site based on a template that provided
                the following components:</p>
            <ul>
                <li>Publishing functionality</li>
                <li>A discussion forum</li>
                <li>Document management</li>
                <li>A standard navigation and interface</li>
                <li>User information</li>
            </ul>
            <dl class="image">
                <dt>
                    <img src="Images/Aurecon_Home.jpg" alt="The Aurecon Knowledge Group Portal Home Page" /></dt>
                <dd>
                    Figure: The Aurecon Knowledge Group Portal Home Page</dd>
            </dl>
            <p>
                SSW built a custom site definition that allowed the required functionality to be
                provisioned when a new Knowledge Group is created. In addition, the template can
                be reapplied to an existing site resetting configurations such as permissions and
                navigation in the event of user corruption.</p>
        </div>
        <div class="section">
            <h2>
                Document Management and Search</h2>
            <p>
                OpenText Enterprise Content Management (formerly known as LiveLink) was in use at
                Aurecon, so document management within SharePoint was not required. In addition,
                SharePoint was only required to crawl and index content within the SharePoint portal.
                OpenText provides web parts to integrate with SharePoint to allow federated search
                results of both OpenText and SharePoint search results. SSW integrated the OpenText
                components within SharePoint to ensure a seamless user experience was created, and
                there be no requirement to context switch between applications when working with
                documents, searching, or using collaboration features of SharePoint.</p>
        </div>
        <div class="section">
            <h2>
                User Experience</h2>
            <p>
                Aurecon had specific branding guidelines that the SharePoint portal had to meet.
                Thanks to SSW's experience in working with the SharePoint front end, this did not
                prove difficult.</p>
           <dl class="image">
                <dt>
                    <a href="/ssw/company/images/Aurecon_Sub_Original.jpg" target="_blank"><img src="/ssw/company/images/Aurecon_Sub.jpg" alt="A clean interface consistent with Aurecon branding guidelines" /></a></dt>
                <dd>
                    Figure: A clean interface consistent with Aurecon branding guidelines</dd>
            </dl>
        </div>
        <div class="section">
            <h2>
                Process</h2>
            <p>
                A best practice development environment was put in place with processes to match.
                A SharePoint image was built which allowed for rapid rollout SharePoint Virtual
                Machine (VM) servers:</p>
            <ul>
                <li>Each developer worked on an isolated SharePoint VM environment to prevent deployment
                    interference with other developers </li>
                <li>A Build, Verification and Testing (BVT) server was built, and build scripts configured
                    using NAnt to allow continuous integration</li>
                <li>The UAT SharePoint farm was built to mirror the production environment</li>
            </ul>
            <p>
                Each day the SharePoint package was automatically compiled and deployed onto the
                BVT server. Unit tests were then run to validate the deployment. Upon failure of
                any tests, the development team was notified and forced to fix the errors immediately.
                This process ensured that each component being built was proven to be deployed and
                operating successfully. This in turn allowed UAT deployments at the end of each
                iteration to run smoothly and to avoid holding up the business from testing the
                portal.</p>
        </div>
        <div>
            <h2>
                Results</h2>
            <p>
                SSW saw the deployment of the Knowledge Group portal into production and continues
                to work with Aurecon and their SharePoint requirements.</p>
            <div class="quoteRightWrap" style="margin: 4px;">
                <blockquote>
                    The team from SSW had the right mix of technical expertise and functional understanding
                    of our business model to help us to realise a successful outcome for our business.
                    We also appreciated their high level of commitment and professionalism during the
                    project.</blockquote>
                <p>
                    - Susan Callaghan, Aurecon Project Manager</p>
            </div>
        </div>
</asp:Content>
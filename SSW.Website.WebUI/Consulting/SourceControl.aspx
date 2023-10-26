<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/SubPage.master" Title="TFS Source Control & Bug Tracking | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>TFS Source Control and Bug Tracking</h1>
    <h2>Access your code. Manage your bugs</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
    <img src="images/header_SourceControl.jpg" height="200" width="799" alt="Source Control and Bug Tracking - Access your code, manage your bugs." />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>
        TFS Source Control:</h2>
    <ul>
        <li><a href="#overview">Overview</a></li>
        <li><a href="#benefits">Benefits</a></li>
        <li><a href="#technologies">Technologies</a></li>
        <li><a href="#getstarted">How to get started</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"></asp:SiteMapPath>
</p> 
    <div class="section">
        <h1>
            <a name="overview"></a>Overview</h1>
        <p>
            SSW has been developing software since 1990, and has perfected the art of managing our code, as well as 
            managing the code of all our many clients.
            </p>
            <p>
            With source control (we use TFS), we can share project code and cooperate with other team members. Using 
            it allows us to track changes, compare code and even roll-back if required. Moreover, it keeps our code 
            safe; that is the most important part.
            </p>
    </div>
    <div class="section">
        <h1>
            <a name="benefits"></a>Benefits</h1>
        <ul class="benefits">
            <li>Check in/out policies</li>
            <li>Code Metrics</li>
            <li>HTTP access via web services</li>
            <li>Integrated Build Server</li>
        </ul>
    </div>
    <div class="section">
        <h1>
            <a name="technologies"></a>Technologies</h1>
       
                            <h2 Class="accordionHeader">
                                Microsoft Team Foundation Server (TFS)</h2>
                       
                        <p>
                            Microsoft Visual Studio Team System 2010 Team Foundation Server (TFS) is a team collaboration platform 
                            that combines team portal, version control, work-item tracking, build management, process guidance, and 
                            business intelligence into an unified server.
                            </p>
<br />
                            <h2 Class="accordionHeader">
                                TFS Basic</h2>
                       
                        <p>
                            If you are a SourceSafe user you know VSS is an easy-to-install and easy-to-use source control system. 
                            TFS gives you a much more powerful system including not only source control but also work item tracking 
                            and build support. There is now an installation option of TFS called TFS Basic which simplifies everything 
                            for you. Some features include:</p>
                        <ul>
                            <li>You can use SQL Server Express (free) as the database.</li>
                            <li>The install runs in about 20 minutes and configures everything for you automatically.</li>
                            <li>It can run on your client machine.</li>
                        </ul>
                   <br />
                            <h2 Class="accordionHeader">
                                Common services offered by SSW:</h2>
                       <ul>
                            <li>Implement TFS 2010 or TFS Basic </li>
                            <li>Utilise the full feature set of TFS 2010 (Get a SSW TFS Master on your back)</li>
                            <li><s>Migrate/upgrade from TFS 2005 to TFS 2008</s> (discontinued)</li>
                            <li>Migrate/upgrade from TFS 2005 to TFS 2010</li>
                            <li>Migrate/upgrade from TFS 2008 to TFS 2010 <font color="red">*Popular*</font></li>
                            <li>Migrate process templates to TFS 2010 (Get onto the Scrum template)</li>
                            <li>Learn how to implement Scrum and TFS properly (Get a SSW Scrum Master onto your current project)</li>
                            <li>Make SharePoint 2010 your TFS 2010 portal (Customize SharePoint to sing sweet TFS)</li>
                        </ul>
                            <h2 class="accordionHeader">Addition services offered by SSW:</h2>
                         <ul>
                            <li>Migrate Source Safe to TFS 2010</li>
                            <li>Migrate Subversion to TFS 2010 </li>
                            <li>Implementing <a href="https://sharepoint.ssw.com.au/Products/TFSSmashingBarrier/Default.aspx">Smashing Barrier</a></li>
                         </ul>
    </div>
    <text:Location runat="server" />
<%--    <div class="section">
        <h1>
            <a name="getstarted"></a>How to get started</h1>
        <p>
            To find out if a TFS based solution is right for your business, give us a call on <strong>+61 2 9953 3000</strong>
            to get started!
        </p>
    </div>--%>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="rounded">
        <h3>Our experience</h3>        
    </div>
    <div class="section">
       <p>For 16 years we have been servicing: Sydney NSW, Melbourne VIC, Brisbane QLD, Canberra ACT and Adelaide SA.</p> 
    </div>
        <div class="section" style="padding-top: 20px; padding-bottom: 25px;">
        <p>
            <a href="http://intranet.ssw.com.au/designers/Shared%20Documents/PRINT-SSW%20Documents/SSW-DoYouWantToMoveToTFS2010.pdf#search=DoYouWantToMoveToTFS2010">
                <img src="/ssw/company/Images/SSW-company.jpg" alt="SSW TFS migration flyer Image"
                    align="left" class="thumbnail" /></a> <a href="http://intranet.ssw.com.au/designers/Shared%20Documents/PRINT-SSW%20Documents/SSW-DoYouWantToMoveToTFS2010.pdf">
                        Download the SSW TFS Migration flyer</a>
        </p>
    </div>
    <div class="section">
        <h3>
            How to get started</h3>
        <p>
            To find out if a TFS based solution is right for your business</p>
        <p>
            <img src="images/phone.png" alt="" height="89" width="74" align="right" /><strong> call
                us on
                <br />
                +61 2 9953 3000 to get started!</strong></p>
    </div>
</asp:Content>

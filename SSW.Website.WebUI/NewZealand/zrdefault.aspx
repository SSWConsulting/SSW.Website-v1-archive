<%-- Modified by ZV and AGT, Date: 03/11/07 --%>

<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master"
    Title="SSW New Zealand - Microsoft Solutions" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>NZ - Enterprise Software Development</h1>
    <h2>Work with SSW for your next project</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>
        Content Management:</h2>
    <ul>
        <li><a href="#Overview">Overview</a></li>
        <li><a href="#WhoWeWorkWith">Who we work with</a></li>
        <li><a href="#Benefits">Benefits</a></li>
        <li><a href="#Technologies">Technologies</a></li>
        <li><a href="#GetStarted">How to get started</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">
        <h2>
            <a name="Overview"></a>Overview</h2>
        <p>
            <img alt="SSW NZ" width="65" height="65" align="right" src="/SSW/EventsCalendar/Images/icon_newzealand_round.gif" />
            SSW has been enjoying the Kiwi connections since 2000 when Adam Cogan spoke at his
            first New Zealand conference, he was back a year later, 2001, launching VS.NET.
            Since then Adam has returned every year delivering dozens of presentations at Tech
            Eds, Dev Days, Code Camps and Developer Conferences all over New Zealand.
        </p>
        <p>
            SSW performs software consulting in New Zealand, with a particular
            focus on SQL Server Reporting Services and Power BI. SSW's services
            drive particular benefits for company's operating, or considerating operating, in
            the Trans-Tasman space.
        </p>
    </div>
    <div class="section">
        <h2>
            <a name="WhoWeWorkWith"></a>Who we work with
        </h2>
            SSW NZ specialises in assisting businesses in New Zealand who:
            <ul class="benefits">
                <li>Have offices or branches in both New Zealand and Australia, or</li>
                <li>Are planning on expanding from New Zealand into Australia in the next 2 - 5 years, or</li>
                <li>Are looking for assistance with, or work with, leading edge Microsoft technologies, or</li>
                <li>Any business looking for software audit services</li>
            </ul>
    </div>
    <div class="section">
        <h2>
            <a name="Benefits"></a>Benefits</h2>
        <p>
            SSW NZ can simply and easily implement a software solution into your
            business. By choosing such a solution you could get:
        </p>
        <ul class="benefits">
            <li>A unified intranet using Sharepoint</li>
            <li>One source of truth for your customer records using MS Dynamics CRM</li>
            <li>An enterprise quality line of business application to run your business using ASP.NET MVC and Angular JS</li>
            <li>A cross platform mobile application using Xamarin</li>
        </ul>
    </div>

    <div class="section">
        <h2>
            <a name="CaseStudies"></a>Case Studies</h2>
        <h3>Vulcan Steel</h3>
            <p>Vulcan Steel approached SSW about a Windows application that needed to be updated to the latest technologies to ensure easier maintainability and reusability. This app is the backbone of Vulcan Steel’s day-to-day business operations.</p>
            <p><a href="/ssw/Consulting/Case-Study/VulcanSteel.aspx">Learn more about Vulcan Steel case study</a>.</p>

        <h3>Maximus Imprint</h3>
            <p>SSW was commissioned to create a Human Resources Management application now used by large clients such as News Corporation and Maxxium. SSW was chosen from a pool of 12 development houses to produce this application based on ASP.NET.</p>
            <p><a href="/ssw/Consulting/Case-Study/Maximus.aspx">Learn more about Maximus case study</a>.</p>
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
   
    <div class="section">
        <h3>
            Employment at SSW NZ</h3>
        <p>
            Due to the tremendous growth that our business has experienced over the last few
            months, we are seeking an enthusiastic person to join the SSW NZ team. SSW NZ is
            a progressive consulting firm specialising in enterprise software development.
        </p>
        <p>
            <a href="/SSW/Employment/EmploymentNewZealand.aspx">More</a>
        </p>
    </div>
    <div class="section">
        <h3>
            SSW NZ Clients</h3>
        <p>
            * New Zealand Defence Forces<br>
            * Internal Medicine Society of Australia and New Zealand<br>
            * Student Management Software Solutions Limited<br>
            * Certified Computer Contractors<br>
        </p>
    </div>

    <br />

</asp:Content>

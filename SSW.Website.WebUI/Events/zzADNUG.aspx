<%@ Page Language="c#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs"
    MasterPageFile="~/Masters/SubPage.master" Title="Adelaide Dot Net Users Group" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
<script runat="server">
  protected override void OnLoad(EventArgs e)
  {
      Response.Redirect("/SSW/events/Brain-Quest-VisualStudio2010-TFS2010-SharePoint2010.aspx");
      base.OnLoad(e);
  }
</script>
    <img src="Images/header_adnug.jpg" height="200" width="799" alt="SSW and ADNUG presents" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>
    TFS and SharePoint 2010 Cram Session</h1>
    <h2>
    Your introduction to the workings of TFS and SharePoint 2010</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
<br />
<h2>Event Highlights:</h2>
    <ul>
        <li><a href="#OverviewTFS">Team Foundation Server</a></li>
        <li><a href="#OverviewSharePoint">SharePoint 2010</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div id="eventsummary">
        <h1>
            <img src="/ssw/Training/images/thumb_vsTeam.jpg" alt="course image" class="thumbnail" />Team Foundation Server</h1>
        <ul class="vitals">
            <li>Presenter
                <ul>
                    <li>Adam Cogan</li>
                </ul>
            </li>
            <li>Date
                <ul>
                    <li>14 Dec</li>
                </ul>
            </li>
            <li>Location
                <ul>
                    <li>Microsoft Innovation Centre</li>
                </ul>
            </li>
        </ul>
        </div>
        <p>
        <h1><a name="OverviewTFS"></a>Team Foundation Server 2010 (TFS) for Successful Project Management</h1>
        Visual Studio Ultimate (formerly Visual Studio Team System (VSTS)) and Team Foundation Server (TFS) are the cornerstones of development on the Microsoft .NET platform. 
        These are the best tools for a project manager to have successful projects and for the developers to have a focused and smooth software development process.</p>
        <p>
        Come and see Adam Cogan, Microsoft Regional Director, VSTS Champ and Chief Architect from SSW show you:</p>
            <ul>
                <li>How to successfully gather requirements with User stories </li>
                <li>The right want to use work items </li>
                <li>The way to complete a work items and send a 'done' </li>
                <li>Use templates for your standard work items </li>
                <li>The extra work items that developers always forget </li>
                <li>What is good and bad about Excel and Project integration </li>
                <li>What you can use from the built in reporting as well as the Project portals available on from the SharePoint dashboard </li>
                <li>The important reports to give your Project Manager </li>
            </ul>
        <p>
        Walk away knowing how to see the project health and progress. Visual Studio Ultimate is designed to help address many of these traditional problems faced by project managers. 
        It does so by providing a set of integrated tools to help teams improve their software development activities and to help project managers better support the software 
        development processes.</p>
        <p>
        During this session we will cover the lifecycle of creating work items and tracking of releases using Visual Studio Ultimate and Team Foundation Server.</p>

    <h1>Visual Studio 2010 Team System - An Overview </h1>
        <p>Microsoft Visual Studio 2010 Team System is an integrated software development platform to build the mission-critical applications that businesses depend on. It extends 
        Visual Studio's integrated and productive experience from the developer to the entire development team by delivering powerful new role-based tools for software architects, 
        developers, testers and project managers. In this session you will see an overview of these tools and how they can improve your software development cycle. </p>
        
    <h1>Visual Studio 2010 Testing with Team Foundation Server (TFS) 2010 – the life of a bug </h1>
        <p>Visual Studio 2010 makes up a large part of a .Net developers life. This session will delve into the 'life of a bug' by taking a walk in the shoes of an everyday bug 
        from discovery to release (and the steps that make up the in between). Come along and check out the new features that will make you happier by making your code better, your 
        job easier, and your team more productive by reducing the obstacles you face in your everyday coding life. Learn:</p>
        <ul>
            <li>What the new features for testers and developers </li>
            <li>How you now care – even if the tester can't reproduce the bug </li>
            <li>How to stop struggling to find the source of the bug in your code</li>
            <li>How can you streamline the testing process and make sure you don't repeat the same bugs</li>
            <li>How to automate more and reproduce bugs easier and discover problems sooner.</li>
        </ul>
        
     <h1><a name="OverviewSharePoint"></a>What's new in SharePoint 2010</h1>
        <p>In this session Adam Cogan will provide information about what is new in SharePoint 2010 and his personal favourites. The SharePoint Team has invested in many including: </p>
        <ul>
            <li>UX support for Silverlight and Ajax </li>
            <li>their Web Content Management System </li>
            <li>Digital Asset Management System (for videos) </li>
            <li>Visual Studio 2010 tools for SharePoint 2010 </li>
            <li>Developer Platform </li>
            <li>Office 2010 integration </li>
            <li>RESTful Web API </li>
            <li>Tagging and Rating</li>
        </ul>
        <p>Lets see what's good and what's not.</p>
        
     <h1>Something About Mary (SharePoint 2010 and Office 2010)</h1>
        <p>
        Come see Adam Cogan explain what works well with SharePoint and Office for Mary and the other knowledge workers.</p>
        <p>First you will get an overview of what is great about having SharePoint in your business. Then see real world examples of:</p>
            <ul>
                <li>Using SharePoint 2010 and Office 2010 together (Comparing with what with had with 2007)</li>
                <li>Where it fits with other important Microsoft products like CRM 4 and TFS</li>
                <li>Examples of how Word and Excel can be integrated into business processes (separate from SharePoint), and then followed by </li>
                <li>Examples of how Word, Excel, PowerPoint can be combined with SharePoint to improve visibility/searchability/versioning across the company </li>
                <li>Overview of how data can be synchronised between the two (eg using Access and Excel) </li>
                <li>Overview of what 'workflow' (really!) means </li>
                <li>How Office can be incorporated into company workflows with SharePoint </li>
                <li>High level examples of using/integrating Office with other products (eg VSTS integration with Outlook) </li>
                <li>Where VBA and VSTO fit in terms of how solutions can be developed </li>
                <li>Examples of other interesting Office/SharePoint integrations (eg the <a href="http://www.atlassian.com/sharepoint/" target="_blank" class="external">Atlassian SharePoint Connector</a> and <a href="http://www.atlassian.com/office/" target="_blank" class="external">Office Connector</a>) </li>
            </ul>
        <p>This is a good chance for you to consider new ways of using Office in your company, along with pitfalls to avoid. Adam gets excited about this session because too often companies 
        limit Office to just an email application, word processor and spreadsheet - completely missing the positive impact it can have on the entire business process.</p>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="rounded">
        <h3>
            More Courses</h3>
    </div>
    <div class="section offer">
        <div class="trainday">
            <h3>
            Choose a Full Day training course</h3>
        <p>      
           Some developers need a head start on their next project; some to improve their skills and some to round out 
            their resume. A SSW 'Full Day' course will help you achieve these goals. 
        </p>
        <p>
            <a href="Courses.aspx">Select a training course</a></p></div>
    </div>
        <div class="section offer">
        <div class="trainnight">
            <h3>
            Choose an Evening training course</h3>
        <p>
            Some developers like extra punishment after working hours. These evening courses cover .NET, SQL, BI and SharePoint 
            and span across ten weeks.
        </p>
        <p>
            <a href="Courses.aspx">Select a training course</a></p>
            </div>
        </div>
        <div class="section offer">
        <div class="customworkshop">
            <h3>
                Customize</h3>
            <p>
                Create your own! Start with a 1, 2 or 3 day course and cutomize these workshops to suit your company's needs.</p>
          Select four 'Power Sessions' per day and email your program to <a onclick="javascript:sendEmailWithSubject('756C7973736573407373772E636F6D2E6175','Custom Course - http://www.ssw.com.au/Training/Sessions',this)" category="Ulysses" process='true' onmouseover="self.status='mailto:' + decodeit('756C7973736573407373772E636F6D2E6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer">
          756C7973736573407373772E636F6D2E6175 </a></div></div>
    <div class="section">
        <h3>
            About the presenter</h3>
        <p>
            <img src="https://sharepoint.ssw.com.au/AboutUs/Employees/PublishingImages/adam_thumb.jpg"
                class="thumbnail" /><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
            is a Microsoft Regional Director, and Chief Architect at SSW. Adam has been developing
            custom solutions for businesses across a range of industries such as Government,
            banking, insurance and manufacturing since 1990 for clients such as Microsoft, Quicken,
            and the Fisheries Research and Development Corporation. His wealth of experience
            in the industry and unsurpassed technical knowledge will ensure attendees get the
            most out of these sessions.</p>
    </div>
</asp:Content>
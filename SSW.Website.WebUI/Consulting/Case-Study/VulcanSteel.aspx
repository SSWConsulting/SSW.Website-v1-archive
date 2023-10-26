<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Vulcan Steel Case Study | SSW Consulting" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content4" ContentPlaceHolderID="title" runat="server">
    <h1>Vulcan Steel Case Study</h1>
    <h2>Steel alive and kicking: adding new vigour to a business application for Vulcan Steel</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2>Challenge</h2>
        <p>Vulcan Steel approached SSW about a Windows application that needed to be updated to the latest technologies to ensure easier maintainability and reusability. This app is the backbone of Vulcan Steel’s day-to-day business operations.</p>
        <p>They had a desire for a better architecture to allow changes to be made quicker, with a lower chance of unintended defects. With an app of this magnitude, it is essential to keep it up-to-date and functioning perfectly, to ensure a lower total cost of ownership.</p>
        <p>Because this app is so vital, it was also a requirement that the app remain up and running during the process of upgrading it to the new architecture. The challenges didn’t stop there though: All of the logic was embedded in the windows app with no service layer, and Vulcan Steel’s IT people are based in New Zealand whilst SSW are in Australia.</p>
    </div>
  
    <div class="section">
        <h2>Process</h2>
            <p>The first step was to review the existing code, then once the team decided how to proceed, they got to work breaking the job down into smaller tasks using <a href="/ssw/Consulting/Scrum.aspx">Scrum</a>. With the Scrum team spread across 3 cities in 2 countries, the best way to do this was using Skype and Team Viewer to bridge the distance. </p>
            <p>Whereas previously the one large app had done many things, the team decided to break it apart into smaller custom applications for specific groups (sales, reporting, mobile, etc.). These apps could be designed to fit the specific users, not the other way around.</p>               
    </div>

    <div class="section">
        <h1>Technologies</h1>
            <p>They did this by centralising and exposing functions with Web API to implement a service oriented architecture. They used technologies such as AngularJS, ASP.NET MVC 5, Azure Storage, Octopus Deploy, and SQL Server 2012, as well as truly bleeding edge technologies like OWIN and Azure (Search and Document DB). The team replaced parts of the application one at a time with feature toggles so they could slowly migrate to the new code without disrupting Vulcan’s business operations.</p>
    </div>

    <div class="section">
        <h1>Results</h1>
        <p>The team is carefully moving to a improved architecture while remaining focused on keeping the existing application running smoothly. Significant improvements have been made to the ALM process, in particular continuous deployment of all application components to test servers including automated testing.</p>
        <p>The remote working across three different locations hasn’t caused any dysfunction in the team, and the Scrum process has been effective in dealing with changing priorities. The new architecture separates independent system functions allowing for granular and purpose-built applications, while sensibly incorporating cross-cutting concerns like security and logging. </p>
        <p>The result is a more reusable, maintainable, and web-based architecture which will set Vulcan Steel in good stead for the future.</p>
    </div>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">

    <div class="section">
        <h3>Our Methodology</h3>
        <p>SSW's Rules to Better Project Management allows businesses to address their most important challenges first, and respond quickly to change. Our rules advocate software consultants working on-site, or on the phone, so long as there is close consultation with business users, with the goal to become integrated members of the client's team.</p>
        <p><a href="http://rules.ssw.com.au/management/rulestosuccessfulprojects/pages/default.aspx">Learn more about SSW development Methodology</a></p>
    </div>

    <br />
   
</asp:Content>

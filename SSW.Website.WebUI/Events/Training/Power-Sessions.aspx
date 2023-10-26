<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW Power Sessions" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>


<asp:Content ID="Content4" ContentPlaceHolderID="title" runat="server">
    <h1>SSW Power Sessions</h1>
    <h2>Get your team up to speed. Knowledge is power!</h2>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="maincontent" runat="server">

    <SSW:InfoBox ID="InfoBox1" runat="server" width="25%" Css="interInfoBoxSide" 
         text="<h1>Attention: SSW Developers</h1>
         <br/>
         <b>1. Events will be cached for 5 minutes.</b> 
         <br/>
         <br />
         <b>2. To update events calendars on events page and home page, go to <a href='https://sharepoint.ssw.com.au/events/Lists/Events/AllItems.aspx'>Events List</a>.</b> ">             
     </SSW:InfoBox>

    <div>
        <h2>Keep up with the latest developments in Microsoft Technologies...</h2>
    </div>
    <div>
        <p> If you are looking to improve your skill set and become an expert in the field, then get an SSW trainer today.</p>
        <p> SSW trainers are some of the best in the world, they are not only pragmatic, but their extensive technical 
        experience is 2nd to none. They are speakers at development conferences around the world and provide all materials, 
        powerpoints and feature real-world scenarios.</p>

        <p>Our 'Power Sessions' are 1.5 hours, fun and help you stay at the forefront of latest Microsoft Developer Tools.
        </p>
        <p>You can fit 4 in a day.
         </p>        
    </div>

    <div id="powersessionsSummary">
    </div>

    <div id="powersessionsPane">
    </div>
        <script src="/SSW/include/powersessions.js" type="text/javascript"></script>        
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>
        <a name="top"></a>Topics:</h2>
     <ul id="powersessionsCategories">        
    </ul>   
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="sidebar" runat="server">
    <div class="rounded">
        <h4>
            Special Offer</h4>
    </div>
    <div class="section offer">
        <div class="trainday">
            <h4>Choose a Full Day training course</h4>
            <p>Some developers need a head start on their next project; some to improve their skills and some to round out 
            their resume. A SSW 'Full Day' course will help you achieve these goals.</p>
        </div>

        <div class="trainnight">
            <h4>Choose an Evening training course</h4>
            <p>Some developers like extra punishment after working hours. These evening courses cover .NET, SQL, BI and SharePoint 
            and span across ten weeks.</p>
            <p><a href="/ssw/Events/Events.aspx" class="button red btn">Start your training</a></p>
        </div>
    </div>

    <div class="section offer">
        <div class="customworkshop">
            <h4>
                Customize</h4>
            <p>
                Create your own! Start with a 1, 2 or 3 day course and cutomize these workshops to suit your company's needs.</p>
          Select four 'Power Sessions' per day and email your program to <a onclick="javascript:sendEmailWithSubject('756C7973736573407373772E636F6D2E6175','Custom Course - http://www.ssw.com.au/Training/Sessions',this)" category="Ulysses" process='true' onmouseover="self.status='mailto:' + decodeit('756C7973736573407373772E636F6D2E6175 '); return true;" onmouseout="self.status='';return true;" >
          756C7973736573407373772E636F6D2E6175 </a></div>
    </div>
    <div class="section">
        <h4>
            Suggest a session</h4>
        <p>
            If you think we should present on a particular topic, feel free to mail us at <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','Power Session Suggestion - http://www.ssw.com.au/Training/Sessions',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" >
            696e666f72407373772e636f6d2e6175 </a>
        </p>
    </div>
    <div class="section">   
        <h4>
            Presenters</h4>
        <div id="train">
        <p>
            <a href="https://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Adam.aspx" class="image"><img src="images/training_adam.jpg" alt="Adam Cogan" /></a> 
            <a href="https://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Eric.aspx" class="image"><img src="images/training_eric.jpg" alt="Eric Phan"  /></a> 
            <a href="https://sharepoint.ssw.com.au/AboutUs/Employees/Pages/AdamS.aspx" class="image"><img src="images/training_adamstephensen.jpg" alt="Adam Stephensen" /></a> 
        </p></div>
    </div>
</asp:Content>
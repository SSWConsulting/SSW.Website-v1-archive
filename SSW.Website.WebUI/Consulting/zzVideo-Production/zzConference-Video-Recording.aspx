<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="Filming, Livestreaming, Recording & Video Editing | SSW Consulting - Sydney, Brisbane, Melbourne, Newcastle, France, China" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="../images/thumbs/thumb-video-production.jpg" alt="Video Production" />
    <h1>Filming, Livestreaming, Recording & Video Editing</h1>
    <h2>High quality videos for your sessions</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2><a name="AboutUs"></a>Filming, Livestreaming, Recording & Video Editing:</h2>
    <ul>
        <li><a href="#Overview">Overview</a></li>
        <li><a href="#getstarted">How to Get Started</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2><a name="Overview"></a>Overview</h2>
        <p>Using the latest technologies and with coaching from our media team SSW can create an innovative video of your presentation. This can be a really cost effective way of establishing yourself or an employee as an industry expert. One of the first to try it in the Software Industry, SSW has been creating presentation videos since 2009. It’s a great option if you are hosting a meeting/conference and have attendees situated across the country or internationally.</p>
        <p>Live streaming can be a great way to interact with a remote audience, in addition to the live audience. It might seem as easy as operating a Facebook account at first glance but when it comes down to it, it’s still a fairly new technology and it’s still very technical, especially if you want multiple cameras and/or computer screen feeds etc. so you need an expert that knows the ins and outs and can create a steady, professional live streaming setup. That’s us!</p>
        <h3>Scott Hanselman Presentation</h3>
            <div class="eric-video">
                <div class="video-player" data-id="_OL5sWgGySs" data-youkuid="" data-vimeoid="121205693"></div>
            </div>

    </div>

    <div class="section">
    <h2>Come to SSW - Hire a Conference Room with Live Stream</h2>
        <p>SSW offers a spacious and quiet training room away from the bustle of Military Road - the <strong>SSW Chapel</strong> We, at SSW, utilize this hall for many of our corporate training events and we are now making it available to other businesses looking for an uncomplicated venue to hold their small events without that hassle of negotiating with large conference hall coordinators. Learn more at <a href="/ssw/Events/Venues/Hire-Conference-Room.aspx">SSW Chapel website</a>.</p>
    
        <p>An indicative price for livestreaming an event like this would be approximately $9,000 AUD + GST per day, including preproduction and livestreaming with a dedicated Event Master and a Crew of 2 SSW TV team members.</p>

        <p>Please call for a quote to meet your specific requirement.</p>

    <h2>Going onsite - Live Stream Events at your Location</h2>
        <p>If you are already running a conference or event that you would like make available to a wider audience, we can come onsite and livestream your event. This would be suitable for conference sessions, user groups, AGMs, important company meetings, school or church events, or educational presentations.</p>
        <p>An indicative price for livestreaming an event like this would be approximately $9,000 AUD + GST per day.</p>
    </div>

    <div class="ContactUs">
	    <h2><a name="getstarted"></a>Get your project started</h2>
        <p>To find out if SSW can help your business, give us a call on <strong>+61 2 9953 3000</strong> or contact us by <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175')" onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                    onmouseout="javascript:clearStatus(); return true;">email</a> to get started! </p>
    </div>

    <text:Location runat="server" />
    
    <div class="section">
        <h2><a name="Related"></a>SSW Related Services</h2>
            <h3 class="accordionHeader"><a href="Video-Production-Product-Services.aspx">Product/Service Video</a></h3>
            
            <h3 class="accordionHeader"><a href="Video-Production-Training.aspx">Training Video</a></h3>
            
            <h3 class="accordionHeader"><a href="Video-Production-Content-Marketing.aspx">Content Marketing Video (Educational)</a></h3>
        
            <h3 class="accordionHeader"><a href="Video-Production-Custom-Video.aspx">Custom Video</a></h3>
            
            <h3 class="accordionHeader"><a href="Video-Production-Reusable-Extras.aspx">Reusable Extras</a></h3>
    </div>

</asp:Content>
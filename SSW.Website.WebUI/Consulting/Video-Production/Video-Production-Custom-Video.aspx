<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Videos - Custom Video | SSW Consulting - Sydney, Brisbane, Melbourne, Newcastle, France, China" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="../images/thumbs/thumb-video-production.jpg" alt="Video Production" />
    <h1>Video Production - Custom Video</h1>
    <h2>Whatever video you want, how you want it</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2><a name="AboutUs"></a>Videos - Custom Video:</h2>
    <ul>
        <li><a href="#Overview">Overview</a></li>
        <li><a href="#getstarted">How to Get Started</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2><a name="Overview"></a>Overview</h2>
        <p>Whatever video you want, how you want it. We follow your lead!</p>
        <p>Our video experts team can work alongside with your staff, as part of the team, to deliver your project outcomes.</p>
        <h3>Why Work for SSW</h3>
        <div id="id1"><iframe width="853" height="480" src="https://www.youtube.com/embed/eu0qhzevEXQ?rel=0" frameborder="0" allowfullscreen></iframe></div>
        <div id="id2" style="display: none"><iframe src="https://player.vimeo.com/video/121205695" width="853" height="480" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
        <a href="#id"onclick="toggle_visibility(this,'id1', 'id2');" class="red btn next">Watch in higher quality on Vimeo</a>
    </div>

    <h3>Indicative Pricing</h3>
        <p>Since this could be anything, please call us for an estimate.</p>

    <div class="ContactUs">
	    <h2><a name="getstarted"></a>Get your project started</h2>
        <p>To find out if SSW can help your business, give us a call on <strong>+61 2 9953 3000</strong> or contact us by <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175')" onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                    onmouseout="javascript:clearStatus(); return true;">email</a> to get started! </p>
    </div>

    <text:Location runat="server" />

    <div class="section">
        <h2><a name="Related"></a>SSW Related Services</h2>
            <h3 class="accordionHeader"><a href="Video-Production-Product-Services.aspx">Product/Service Video</a></h3>
           
            <h3 class="accordionHeader"><a href="Video-Production-Content-Marketing.aspx">Content Marketing Video (Educational)</a></h3>
        
            <h3 class="accordionHeader"><a href="Video-Production-Training.aspx">Training Video</a></h3>
            
            <h3 class="accordionHeader"><a href="Conference-Video-Recording.aspx">Live Events</a></h3>
            
            <h3 class="accordionHeader"><a href="Video-Production-Reusable-Extras.aspx">Reusable Extras</a></h3>
    </div>

    

</asp:Content>
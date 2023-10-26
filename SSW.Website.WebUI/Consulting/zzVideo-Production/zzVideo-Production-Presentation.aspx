<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Presentation Video Production | SSW Consulting - Sydney, Brisbane, Melbourne, Newcastle, France, China" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">

<script runat="server">
  protected override void OnLoad(EventArgs e)
  {      
      Response.StatusCode = 301;
      Response.AddHeader("Location", "/ssw/Consulting/Video-Production/");
  }
</script>

</asp:Content>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="../images/thumbs/thumb-video-production.jpg" alt="Video Production" />
    <h1>Presentation Video Production</h1>
    <h2>Create a innovative video of your presentation</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2><a name="AboutUs"></a>Presentation Video Production:</h2>
    <ul>
        <li><a href="#Overview">Overview</a></li>
        <li><a href="#Benefits">Benefits</a></li>
        <li><a href="#Features">Features</a></li>
        <li><a href="#Capability">SSW Capability</a></li>
        <li><a href="#getstarted">How to Get Started</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <div class="section">
        <h1><a name="Overview"></a>Overview</h1>
        <p>SSW as part of SSW.TV creates professional quality business videos on a weekly basis. If you require a business video to promote your business, service or skill set, ask SSW to help you communicate your message to your audience.</p>
        <p>Using the latest technologies and with coaching from our media team SSW can create a innovative video of your presentation. You can see examples at <a href="http://www.ssw.com.au/TV">SSW TV</a></p>
        <iframe width="682" height="384" src="//www.youtube.com/embed/_c_ybxnN-k0?rel=0" frameborder="0" allowfullscreen></iframe>
        <dl class="image">
            <dd>Figure: A sample video from SSW TV Team</dd>
        </dl>
    </div>
    <div class="section">
        <h1><a name="Benefits"></a>Benefits</h1>
        <p>These videos are a great resource for:</p>
        <ul class="benefits">
            <li>Businesses to promote their staff skill set or business capabilities</li>
            <li>Consultants who want to record a presentation to be used for promotion</li>
            <li>Businesses and individuals who want to reach a new audience by:
                    <ul>
                        <li>Getting your business in front of SSW's network</li>
                        <li>Being promoted through SSW's social media channels</li>
                    </ul>
            </li>
            <li>Creating professional content for your blog or business website</li>
        </ul>
    </div>

    <div class="section">
        <h1><a name="Features"></a>Features</h1>
        <ul>
            <li>Recording of a 1 hour presentation with professional camera crew using:
                <ul>
                    <li>1 camera</li>
                    <li>Wireless microphone</li>
                    <li>Lighting</li>
                </ul>
            </li>
            <li>Screen capture of your computer screen during the presentation</li>
            <li>Introduction to presentation by Adam Cogan Microsoft Regional Director</li>
            <li>High definition video of your headshot of the presentation and demos</li>
            <li>Video added to SSW.TV</li>
            <li>.mp4 format video of the full session including the highlights</li>
            <li>5 minute highlights video of the session</li>
            <li>Advertised in the SSW monthly newsletter going to more than 30,000 people</li>
            <li>Tweeted from SSW Twitter account</li>
            <li>Added to SSW Facebook Page</li>
            <li>Added to SSW LinkedIn Page</li>
            <li>Added to Sydney .NET user group page</li>
        </ul>

    </div>

    <div class="section">
        <h1>Investment</h1>
        <p>$3500 + GST</p>
    </div>

    <div class="section">
        <h1><a name="Capability"></a>SSW Capability</h1>
        <p>SSW consultants are typically engaged on media projects involving the latest techniques including:</p>
        <ul>
            <li>Video and Audio podcasting</li>
            <li>Video interviews using Skype and HD Video</li>
            <li>Live streaming of events using <a href="http://www.uStream.com" target="_blank">www.uStream.com</a> and <a href="http://www.justin.tv" target="_blank">www.Justin.TV</a></li>
            <li>Green screen recording</li>
            <li>Multicam recording of Presentation</li>
        </ul>
    </div>

    <div class="section">
        <h1><a name="Related"></a>SSW Related Services</h1>
            <h3 class="accordionHeader"><a href="Video-Production-Product-Services.aspx">Product/Service Video</a></h3>
            <p>A well thought out value proposition, straight to the end user, in video form, to demonstrate and/or advertize your product or service.</p>

            <h3 class="accordionHeader"><a href="Video-Production-Training.aspx">Training Video</a></h3>
            <p>Create a training/induction video to save time training your staff and increase training efficiency, meaning they're back to working on activities that will make your business money within less time.</p>

            <h3 class="accordionHeader"><a href="Video-Production-Content-Marketing.aspx">Content Marketing Video (Educational)</a></h3>
            <p>Educational marketing is the new way to build company/brand trust and loyalty. If you deliver viewers what they want to see and expand their knowledge, you are then seen as an expert in your field and thus worth trusting in your given area. This increases your marketing efforts meaning more clients are driven to your business, increasing overall profits.</p>

            <h3 class="accordionHeader"><a href="Conference-Video-Recording.aspx">Conference Video Recording (with Live Stream)</a></h3>
            <p>It is a great option if you are hosting a meeting/conference and have attendees situated across the country or internationally.</p>

            <h3 class="accordionHeader"><a href="Video-Production-Reusable-Extras.aspx">Reusable Extras</a></h3>
            <p>Add consistent branding to your videos.</p>
    </div>

    <div class="ContactUs">
	    <h2><a name="getstarted"></a>Get your project started</h2>
        <p>To find out if SSW can help your business, give us a call on <strong>+61 2 9953 3000</strong> or contact us by <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175')" onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                    onmouseout="javascript:clearStatus(); return true;">email</a> to get started! </p>
    </div>

</asp:Content>--%>

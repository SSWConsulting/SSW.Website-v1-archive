<%@ Page Language="c#" AutoEventWireup="true" MasterPageFile="~/Masters/RavenSubPage.master" Inherits="SSW.WebUI.Live.Default" Title="SSW Live Stream Channel" CodeBehind="Default.aspx.cs"%>

<%@ Import Namespace="System.Xml" %>
<%@ Import Namespace="SSW" %>
<%@ Import Namespace="SSW.SSWMT" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register TagPrefix="SSW" TagName="LiveStream" Src="~/Components/LivestreamWidget.ascx"  %>

<asp:Content ID="ContentHeader" ContentPlaceHolderID="HeaderScripts" runat="server">
<script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "Event",
      "name": "Online Live Sydney .NET User Group",
      "location": {
        "@type": "VirtualLocation",
        "url": "https://www.ssw.com.au/ssw/Live/"
        }
      },
      "image": [
        "https://www.ssw.com.au/ssw/NETUG/Images/thumbs/thumb-SydneyUG.jpg"
       ],
      "description": "The best place to learn development for free in Sydney",
      "organizer": {
        "@type": "User Group",
        "name": "SSW Consulting",
        "url": "https://ssw.com.au"
      }
    }
    </script>
    <meta name="description" content="Sydney's .NET User Group – covering .NET, Web, Mobile, CRM, SharePoint, Azure, Power BI, Angular, React, Office 365 and Dynamics" />
    <meta property="og:image" content="https://www.ssw.com.au/ssw/NETUG/Images/logos/NETUG-live.jpg" />
    
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img alt="Sydney UG" src="/ssw/Consulting/images/thumbs/thumb-video-production.jpg" class="icon" />
    <h1>SSW Live Stream Channel </h1>
    <h2>User Group Live every 3rd Wednesday of the month at 6.30PM [AEST (UTC+10) / AEDT (UTC+11)]</h2>
    <h2>Other special events - See dates on <a href="https://www.ssw.com.au/ssw/Events/">Our Events</a></h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="livestream_netug"></div>
    <script type="text/javascript" src="/SSW/include/livestream_netug_countingdown.js"></script>
    <!-- Live Stream Widget -->
    <div class="row">
    <SSW:LiveStream runat="server" />
    </div>
    <!-- Live Stream Widget End -->
        <a name="upcoming"></a>
        <h2>Upcoming Session Details</h2>

        <div class="grid" id="currentEvents" runat="server" style="width:100%;"></div>

    <p class="text-center"><a href="https://www.youtube.com/channel/UCBFgwtV9lIIhvoNh0xoQ7Pg" class="red next btn ignore">Visit SSW TV Channel on YouTube</a></p>

    <h2>Recent Broadcast</h2>
    <div id="broadcastList" runat="server">
    </div>
    <br />
    <p class="text-center"><a href="https://www.youtube.com/playlist?list=PLCFF4FD4DA9AC8CFE" target="_blank" class="red next btn ignore">Watch more on SSW TV channel on YouTube</a></p>

</asp:Content>

<asp:Content ContentPlaceHolderID="FooterScripts" runat="server">
    <script src="/ssw/include/pigeon/js/SSW.Events.js?v=20200407"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            filterItemsClick();
            filterItems();
            refreshIsotope();
            initialFilterFromUrlParas();
        });
    </script>
</asp:Content>

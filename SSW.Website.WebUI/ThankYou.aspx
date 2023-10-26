<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Thank you for contacting SSW!" %>

<%@ Register Src="~/Components/GoogleTrackingCode.ascx" TagName="GoogleTrackingCode"
    TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">

    <!-- Event snippet for Thank You Page conversion page -->
    <script>
      gtag('event', 'conversion', {'send_to': 'AW-1071324570/X8KvCIOK1qABEJq77P4D'});
    </script>

</asp:Content>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1><span class="red">Thank you</span> for contacting us!</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="maincontent" runat="server">

    <div class="container">
        <p>Thank you for your inquiry.</p>
        <p>We will be in contact soon. In the meantime, please have a look at our <a href="/ssw/Consulting/" target="_blank">Consulting Services</a> and <a href="/People" target="_blank">People</a>.</p>

    </div>

    <!--Here's the Google Tracking Code, only available on external servers because we only need to track for external.-->
    <ssw:GoogleTrackingCode ID="GoogleTrackingCode1" runat="server" />
</asp:content>
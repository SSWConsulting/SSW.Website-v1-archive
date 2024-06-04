<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Thank you" %>

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
    <h1>Thank you! SSW Consulting Services</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="maincontent" runat="server">

    <div class="container">
        <h2>Thank you for contacting us!</h2>
        <p>
            An email has been sent to the SSW Sales team and someone will contact you soon about your Superpowers discount code.
        </p>

        <p>
            Find more services on our 
            <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">Consulting Services</a> page.
        </p>

    </div>

    <!--Here's the Google Tracking Code, only available on external servers because we only need to track for external.-->
    <ssw:GoogleTrackingCode ID="GoogleTrackingCode1" runat="server" />
</asp:content>
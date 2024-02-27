<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs"
    MasterPageFile="~/Masters/SubPage.master" Title="Tour De Wagga" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content5" ContentPlaceHolderID="maincontentFull" runat="server">
    <p>        
	    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"></asp:SiteMapPath>
    </p>
    <div class="section">   
    <h1><a name="maps"></a>Maps</h1>
        
     <h2 class="accordionHeader">Day 1 - Sydney to Campbelltown - 57.5 km</h2>
        <dl class="image">
            <dt>
            <img alt="" src="../images/map_sydneytowaggawagga_leg1.jpg"/>
            </dt>
            <dd>
            Figure: Sydney to Campbelltown - we are not going through M5 (<a href="http://maps.google.com.au/maps?f=d&source=s_d&saddr=Sydney,+NSW,+Australia&daddr=Campbelltown+NSW&hl=en&geocode=&mra=ls&sll=-25.335448,135.745076&sspn=39.955171,93.076172&ie=UTF8&z=11">details on Google Maps</a>)
            </dd>
        </dl>
        
        <h2 class="accordionHeader">Day 2 - Campbelltown to Moss Vale - 72.2 km</h2>
        <dl class="image">
            <dt>
            <img alt="" src="../images/map_sydneytowaggawagga_leg2.jpg"/>
            </dt>
            <dd>
            Figure: Campbelltown to Moss Vale (<a href="http://maps.google.com.au/maps?f=d&source=s_d&saddr=Campbelltown+NSW&daddr=Moss+Vale+NSW&hl=en&geocode=&mra=ls&sll=-33.96577,151.015545&sspn=0.291008,0.727158&ie=UTF8&z=10">details on Google Maps</a>)
            </dd>
        </dl>
        
        <h2 class="accordionHeader">Day 3 - Moss Vale to Gunning - 117 km</h2>
        <dl class="image">
            <dt>
            <img alt="" src="../images/map_sydneytowaggawagga_leg3.jpg"/>
            </dt>
            <dd>
            Figure: Moss Vale to Gunning (<a href="http://maps.google.com.au/maps?f=d&source=s_d&saddr=Moss+Vale+NSW&daddr=Gunning+NSW&hl=en&geocode=&mra=ls&sll=-34.30555,150.59281&sspn=0.579677,1.454315&ie=UTF8&ll=-34.685169,149.819183&spn=0.577047,1.454315&z=10">details on Google Maps</a>)
            </dd>
        </dl>
        
        <h2 class="accordionHeader">Day 4 - Gunning to Gundagai - 135 km</h2>
        <dl class="image">
            <dt>
            <img alt="" src="../images/map_sydneytowaggawagga_leg4.jpg"/>
            </dt>
            <dd>
            Figure: Gunning to Gundagai (<a href="http://maps.google.com.au/maps?f=d&source=s_d&saddr=Gunning+NSW&daddr=Gundagai+NSW&hl=en&geocode=&mra=ls&sll=-34.685169,149.819183&sspn=0.577047,1.454315&ie=UTF8&ll=-34.916341,148.683472&spn=0.575431,1.454315&z=10">details on Google Maps</a>)
            </dd>
        </dl>
        
        <h2 class="accordionHeader">Day 5 - Gundagai to Wagga Wagga - 82.9 km</h2>
        <dl class="image">
            <dt>
            <img alt="" src="../images/map_sydneytowaggawagga_leg5.jpg"/>
            </dt>
            <dd>
            Figure: Gundagai to Wagga Wagga (<a href="http://maps.google.com.au/maps?f=d&source=s_d&saddr=Gundagai+NSW&daddr=Wagga+Wagga+NSW&hl=en&mra=ls&sll=-34.916341,148.683472&sspn=0.575431,1.454315&ie=UTF8&ll=-35.140125,147.738647&spn=0.573858,1.454315&z=10">details on Google Maps</a>)
            </dd>
        </dl>
        
    </div>
   
</asp:Content>
<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Google Maps & Bing Maps Development | SSW Consulting - Sydney, Brisbane, Melbourne" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Google Earth & Bing Maps Development</h1>
    <h2>Zoom it! Find it! See it!</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>Google Maps & Bing Maps Development:</h2>
    <ul>
        <li><a href="#overview">Overview</a></li>
        <li><a href="#benefits">Benefits</a></li>
        <li><a href="#keytechnologies">Key Technologies</a></li>
        <li><a href="#getstarted">How to get started</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2><a name="overview"></a>Overview</h2>
        <p>Bing Map (Virtual Earth) and Google Maps (Google Earth) are the most powerful online mapping technology that allows maps to be seamlessly integrated into a website. AJAX technology means users can smoothly pan and zoom the maps, and data visualized on the map, such as traffic data, climate change, and housing prices can be dynamically updated.</p>
    </div>
    <div class="section">
        <h2><a name="benefits"></a>Benefits</h2>
        <ul class="benefits">
            <li>Smoothly scrolling/zooming maps on any website</li>
            <li>Easy to understand geographic visualization of your data</li>
            <li>3D Capabilities</li>
        </ul>
    </div>

    <div class="section">
        <h2><a name="keytechnologies"></a>Key Technologies</h2>
            <p>Microsoft Bing Maps adn Google Maps are frameworks for the development of online mapping solutions. Maps can be displayed in several formats:</p>    
        <ul>
            <li>Street Level</li>
            <li>Topographic</li>
            <li>3D</li>
        </ul>
        <p>Data visualization includes:</p>
        <ul>
            <li>Pinpoints</li>
            <li>Polygons</li>
            <li>Lines</li>
            <li>Visual heat maps</li>
            <li>Animations</li>
            <li>Driving directions</li>
            <li>Custom Map Tiles</li>
            <li>Projecting custom maps<br />over existing maps (e.g. National Parks walking trails)</li>
        </ul>
        
        <h3>Bing Maps website for NineMSN</h3>
        
        <dl class="image">
            <dt>
                <img src="images/SpecialKNavigator.jpg" alt="NineMSN's Special K navigator" width="438" height="453" /> 
            </dt>
            <dd>Figure: NineMSN's <a href="/ssw/redirect/SpecialKNavigator.htm">Special K navigator</a></dd>
        </dl>

        <h3>Google Maps integrated with Toll Truck Tracking app</h3>
        
        <dl class="image">
            <dt>
                <img src="images/Toll-TruckTracking-01.png" alt="Toll Truck Tracking system" /> 
            </dt>
            <dd>Figure: Toll Truck Tracking screenshot</dd>
        </dl>
        
        <dl class="image">
            <dt>
                <img src="images/Toll-TruckTracking-02.png" alt="Toll Truck Tracking system" /> 
            </dt>
            <dd>Figure: Toll Truck Tracking screenshot</dd>
        </dl>
        
        <dl class="image">
            <dt>
                <img src="images/Toll-TruckTracking-03.png" alt="Toll Truck Tracking system" /> 
            </dt>
            <dd>Figure: Toll Truck Tracking screenshot</dd>
        </dl>

        <p>Watch the in-depth interview featuring the real life Product Owner (previously a Waterfall user) who talks to us about his perspectives using Agile on this large scale project:</p>

        <div class="eric-video">
                <div class="video-player" data-id="HeL8g4Z5PEA" data-youkuid=""></div>
        </div>
        <%--<iframe width="682" height="384" src="//www.youtube.com/embed/HeL8g4Z5PEA?rel=0" frameborder="0" allowfullscreen></iframe>--%>

    </div>
    <text:Location runat="server" />

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section first">
        <h3>Our methodology</h3>
        <p>
            SSW's Development Method XPDM, built on eXtreme Programming, allows businesses to
            address their most important challenges first, and respond quickly to a changing
            commercial environment. We prefer to work on-site, in close consultation with you
            and your business users, becoming an integrated part of your team.</p>
        <p>
            <a href="/ssw/Standards/Rules/RulestoBetterProjectManagement.aspx">Learn more about SSW development Methodology</a></p>
    </div>

</asp:Content>

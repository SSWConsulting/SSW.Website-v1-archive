<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Page Language="c#" AutoEventWireup="true" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="SSW.WebUI.Events.Default" Title="SSW Events" CodeBehind="default.aspx.cs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>SSW Events</h1>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="sidebarcontainer" runat="server"></asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="asideleft" runat="server">

    <h3 class="filter-header">I am looking for...</h3>
       <ul  id="filters" class="option-set option-set-tech">
            <li id="alltechnology"><a class="active selected" href="#" data-filter="tech_all">All Technology</a></li>
            <asp:Literal ID="filters_list_technologies" runat="server"></asp:Literal>
        </ul>
    <hr style="margin: 0" />
        <ul id="filters" class="option-set option-set-type">
            <li id="alltype"><a class="active selected" href="#" data-filter="type_all">All Formats</a></li>
            <asp:Literal ID="filters_list_types" runat="server"></asp:Literal>
        </ul>
    <hr style="margin: 0" />
        <ul id="filters">
            <li><a href="Past.aspx">View past events</a></li>
        </ul>
    <br />
    <br />
       <div class="rounded hidden-xs">
        <h3>Video On Demand</h3>
    </div>
    <div>
          <a href="https://vimeo.com/ondemand/sswazure" target="_blank" class="ignore"><img src="Images/AzureOnDemandL.png" alt="AzureOnDemand" /></a>
    </div>

     <br />
    <br />

       <div class="rounded hidden-xs">
        <h3>Free SuperPowers Videos</h3>
    </div>
    <div>
          <a href="https://vimeo.com/user/2032765/folder/314142" target="_blank" class="ignore"><img src="Images/AngularOnDemand.png" alt="Angular Academy" /></a>
    </div>
    <br />
    <div>
          <a href="https://vimeo.com/user/2032765/folder/2081388" target="_blank" class="ignore"><img src="Images/CAOnDemand.png" alt="CLean Architecture" /></a>
    </div>
    <br />
    <div>
          <a href="https://vimeo.com/user/2032765/folder/2895028" target="_blank" class="ignore"><img src="Images/dotNet5OnDemand.png" alt=".NET5" /></a>
    </div>
    <br />
    <div>
          <a href="https://vimeo.com/user/2032765/folder/1788540" target="_blank" class="ignore"><img src="Images/AzureOnVimeo.png" alt="Azure Tour" /></a>
    </div>

     <br />
    <br />

    <div class="rounded hidden-xs">
        <h3>Custom Training</h3>
    </div>
    <div class="section offer hidden-xs">
        <div class="onsite">
            <h4>Create your own training course!</h4>
            <p>SSW can also come to you for personalised training</p>
            <p>We can usually complete 4 sessions in one day</p>
            <p><a href="/ssw/Events/Training/Training-Options.aspx">Learn more about our customized training options</a></p>
        </div>
    </div>


    <blockquote class="hidden-xs">
        Many thanks to the fine folks at SSW... for coming to our offices and providing the training we needed specifically.
    <span>Phillip Clarkson</span>
    </blockquote>

    <div class="section hidden-xs">
            <p>SSW has run the industry-leading UTS web development short courses since 2005.</p>
            <img src="Images/uts-logo.png" alt="UTS logo" class="center" />
    </div>

</asp:Content>

<asp:Content ID="Content8" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section filtersection">
        <div id="filter-values" data-technology data-type style="display: none;"></div>

        <asp:Panel ID="TestimonialPanel" runat="server" CssClass="testimonials-wrap hidden-xs">
            <div class="testimonials-bg">
                <div class="testimonials-content">
                    We run some of the most popular Microsoft events in Australia. We have the perfect training course for you."
                </div>
                <div class="testimonials-content-bottom"></div>
                    <img src="/ssw/events/training/images/Ulysses-Maclaren.jpg" alt="Ulysses Maclaren" style="width: 60px; float: right; margin-left: 10px;">
                    <div class="testimonials-source">
                        <span class="testimonials-source-name"><a href="https://www.ssw.com.au/people/ulysses-maclaren">Ulysses Maclaren</a></span> <span>SSW General Manager</span>
                    </div>
            </div>
        </asp:Panel>

<div class="eventfilters" style="height: 0px; padding: 0px; float: right">
            <span>
                <span id="tech_filter_disp_ct" style="display: none;margin-left: 10px" class="filterlabel">
                    <label id="tech_filter_label" style="background-color: white; color:#333;">Technology:&nbsp;&nbsp;</label><img id="tech_filter_disp_remove"  onclick="remove_tech_filter();" alt="remove" src="/ssw/images/raven/li-bad.png" /><label id="tech_filter_disp" style="padding-left: 5px; padding-right: 5px"></label>
                </span>


                <span id="type_filter_disp_ct" style="display: none;margin-left: 10px" class="filterlabel">
                    <label id="type_filter_label" style="background-color: white; color:#333;">Format:&nbsp;&nbsp;</label><img id="type_filter_disp_remove"  onclick="remove_type_filter();" alt="remove" src="/ssw/images/raven/li-bad.png" /><label id="type_filter_disp" style="padding-left: 5px; padding-right: 5px"></label>
                </span>
            </span>
        </div>

    </div>
    <div class="section eventsection">
        <div id="ongoingEventsHeader" class="event-item isotope-header isotope-item" >
                <h2>Upcoming Events <span class="count"></span></h2>
        </div
        <div id="item-current">
            <div id="isotope" class="eventsindex">
                <div class="grid" id="currentEvents" runat="server" style="width:100%;"></div>
            </div>
        </div>
    </div>
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

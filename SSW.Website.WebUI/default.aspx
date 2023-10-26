<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Raven.Master" CodeBehind="default.aspx.cs" Inherits="SSW.Website.WebUI.Raven" %>

<%@ Register TagPrefix="uc1" TagName="OpenTime" Src="~/Components/OpenTime.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="LiveStream" Src="~/Components/LiveStreamWidget.ascx"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <!-- Live Stream Widget -->
    <div class="container">
        <SSW:LiveStream runat="server" />
    </div>
    <!-- Live Stream Widget End -->
    <div class="grey-gradient">
        <div id="carousel-example-generic" class="carousel slide hidden-xs" data-ride="carousel">
            <div class="container">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <a class="lightbox ignore" href="//vimeo.com/400817895">
                            <img class="lazy" src="/ssw/images/raven/why-ssw.jpg" alt="Why SSW" /></a>
                    </div>

                    <div class="item">
                        <a href="https://www.ssw.com.au/SSW/Consulting/Case-Study/SydneyUni.aspx" target="_blank" class="ignore">
                            <img src="/ssw/images/raven/Banner-BREAST-case-study.jpg" alt="BREAST - Improving Radiologists' Ability to Detect Breast Cancer" /></a>
                    </div>

                    <div class="item">
                        <a href="https://tv.ssw.com/" target="_blank">
                            <img src="/ssw/images/raven/Banner-SSWTV.png" alt="SSW TV" /></a>
                    </div>

                    <div class="item">
                        <a href="https://www.ssw.com.au/ssw/Consulting/Are-You-Stuck.aspx">
                            <img src="/ssw/images/raven/Banner-Are-You-Stuck.jpg" alt="Are you stuck on legacy technologies?" /></a>
                    </div>

                </div>
            </div>
        </div>

        <div id="WhatWeDo" class="block">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h2 class="special">Consulting</h2>
                    </div>
                    <div class="col-md-3 col-sm-6 do-angular">
                        <a href="/ssw/Consulting/Web-Applications.aspx">
                            <h2>Web / Angular / React</h2>
                            <p>Ever since SSW developed the very first .NET Website in Australia, we've been known as leaders in Web Development.</p>
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 do-cloud">
                        <a href="/ssw/Consulting/Azure.aspx">
                            <h2>DevOps &amp; Cloud</h2>
                            <p>Making your software ships by using SSW developers' best practices in Azure, DevOps and Docker Containers.</p>
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 do-mobile">
                        <a href="/ssw/Consulting/Mobile-Application-Development.aspx">
                            <h2>Mobile/Bots/AI</h2>
                            <p>SSW software developers are experts at building cross platform mobile and chat apps using the power of AI with Machine Learning.</p>
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 do-rules">
                        <a href="/ssw/Consulting/Dynamics365.aspx">
                            <h2>Dynamics 365</h2>
                            <p>Dynamics 365/CRM brings new levels of customer intelligence, providing employees the information they need to truly impress.</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div id="Services" class="block">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h2 class="special">Core Services</h2>
                    </div>
                    <div class="col-sm-3 col-xs-6 core-training">
                        <a href="/ssw/Events">
                            <h3>Training</h3>
                        </a>
                    </div>
                    <div class="col-sm-3 col-xs-6 core-sharepoint">
                        <a href="/ssw/Consulting/SharePoint.aspx">
                            <h3>Office 365/SharePoint</h3>
                        </a>
                    </div>
                    <div class="col-sm-3 col-xs-6 core-book">
                        <a href="/ssw/Consulting/Consulting.aspx">
                            <h3>Book an Expert</h3>
                        </a>
                    </div>
                    <div class="col-sm-3 col-xs-6 core-crm">
                        <a href="https://www.ssw.com.au/rules/">
                            <h3>Rules</h3>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <a href="/ssw/Consulting/" class="btn btn-default btn-sm">More Services...</a>
        </div>
        <!-- Gradient End -->
    </div>
    <div id="Content" class="block">
        <div class="container">
            <div class="row">
                <div class="col-sm-7 hidden-xs ssw-blurb">
                    <h1 class="first">Australia's Leading .NET and Azure Consultants</h1>
                    <p><span itemprop="name">SSW Consulting</span> has over 30 years of experience developing awesome Microsoft solutions that today build on top of Angular, React, Vue, Azure, Azure DevOps (was TFS), SharePoint, Office 365, Blazor, .NET, WebAPI, Dynamics 365, and SQL Server. <a href="/SSW/Company/AboutUs.aspx">Know more </a></p>

                    <div class="row partner-info">
                        <div class="col-sm-5">
                            <img src="/ssw/images/raven/MicrosoftPartnerLogo-2022.png" alt="Microsoft Partner Logo" />
                        </div>
                        <div class="col-sm-7">
                            <h3>We <i class="fa fa-heart" style="font-size: 1.2rem; color: #cc4141; line-height: 2rem; vertical-align: middle;"></i> Microsoft</h3>
                            <p>In 1999, we were first recognized as a Microsoft Gold Partner. Today <a href="/SSW/Company/Awards.aspx">SSW has competencies in a variety of areas</a>, earning gold in <strong>Application Development</strong>, <strong>Application Integration</strong>, <strong>Cloud Platform</strong>, <strong>DevOps</strong>; and silver in <strong>Collaboration and Content</strong>, and <strong>Data Analytics</strong>.</p>
                        </div>
                        <div class="col-sm-5">
                            <a href="http://firebootcamp.com/" class="ignore">
                                <img src="/ssw/images/raven/ssw-mapa.jpg" alt="Microsoft Australia Partner Awards" /></a>
                        </div>
                        <div class="col-sm-7">
                            <p>We are proud to announce we have won the <strong>MAPA - Microsoft Australia Partner Award - for Excellence in Learning</strong> for <a href="http://firebootcamp.com/" class="ignore">SSW FireBootCamp</a>. </p>
                            <p>We were chosen from a national field of top Microsoft Partners for delivering market-leading customer solutions built on the Microsoft platform.</p>
                        </div>
                    </div>
                    <hr />
                    <h3>Bring your apps to China <span class="flag-icon flag-icon-cn"></span></h3>
                    <p>China is a booming market and now is the time to take advantage of this growing user base. If you have a successful application that you would like to bring to the Chinese market, then working with <a href="/ssw/Consulting/Chinafy-App.aspx">SSW can help</a> streamline your entry into this market.</p>
                </div>
                <div class="col-sm-5">
                    <div id="EventsCalendar">
                        <h2 class="first">Upcoming Events</h2>
                        <div id="EventsWidget" class="nano">
                            <div class="nano-content">
                            </div>
                        </div>
                        <a href="/ssw/Events/" class="btn btn-default pull-right btn-sm" style="margin-top: 5px;">More Events</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="Video" class="block">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 hidden-xs hidden-sm">
                    <div class="homepage-video">
                        <h2>tv.ssw.com</h2>
                        <div class="eric-video">
                            <div class="video-player" data-id="2G7z2mF7Onk" data-youkuid=""></div>
                        </div>
                        <%--<iframe style="margin: 0; width: 100%; min-height: 270px;" src="//www.youtube.com/embed/2G7z2mF7Onk?&rel=0&theme=light&showinfo=0&disablekb=1&modestbranding=1&hd=1&autohide=1&color=white" frameborder="0" allowfullscreen></iframe>--%>
                    </div>
                </div>
                <div class="col-md-8 col-sm-12">
                    <div id="Location">
                        <h2>Contact Us</h2>
                        <div class="row">
                            <div class="location-accordian col-sm-6">

                                <div class="panel-group" id="LocationExpand">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <a data-toggle="collapse" data-parent="#LocationExpand" href="#collapseOne" class="nsw">
                                                <h3 class="panel-title">Sydney</h3>
                                                <div class="map-marker nsw hidden-xs">
                                                    <div class="state-sydney">
                                                        <h6>NSW</h6>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <p><a href="/ssw/Company/Sydney.aspx">SSW Sydney Office</a></p>
                                                <p itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                                                    <span itemprop="streetAddress">Level 1, 81 - 91 Military Road</span><br />
                                                    Neutral Bay, <span itemprop="addressLocality">Sydney</span>, <span itemprop="addressRegion">NSW</span> <span itemprop="postalCode">2089</span>, <span itemprop="addressCountry">Australia</span>
                                                </p>
                                                <p>Phone: <strong>+61 2 9953 3000</strong></p>
                                                <p>Hours: <strong>9am - 6pm AEST <uc1:OpenTime ID="OpenTime3" runat="server" IsOfficeHours="true"></uc1:OpenTime>
                                                   Monday - Friday</strong>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <a data-toggle="collapse" data-parent="#LocationExpand" href="#collapseTwo" class="collapsed qld">
                                                <h3 class="panel-title">Brisbane</h3>
                                                <div class="map-marker qld hidden-xs">
                                                    <div class="state-brisbane">
                                                        <h6>QLD</h6>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <p><a href="/SSW/Company/Brisbane.aspx">SSW Brisbane Office</a></p>
                                                <p>
                                                    Level 1, 471 Adelaide Street<br />
                                                    Brisbane, QLD 4000, Australia
                                                </p>
                                                <p>Phone: <strong>+61 7 3077 7081</strong></p>
                                                <p>Hours: <strong>9am - 6pm AEST <uc1:OpenTime ID="OpenTime4" runat="server" IsOfficeHours="true"></uc1:OpenTime>
                                                   Monday - Friday</strong>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <a data-toggle="collapse" data-parent="#LocationExpand" href="#collapseThree" class="collapsed vic">
                                                <h3 class="panel-title">Melbourne</h3>
                                                <div class="map-marker vic hidden-xs">
                                                    <div class="state-melbourne">
                                                        <h6>VIC</h6>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <p><a href="/SSW/Company/Melbourne.aspx">SSW Melbourne Office</a></p>
                                                <p>
                                                    Level 1, 370 Little Bourke Street<br />
                                                    Melbourne, VIC 3000, Australia
                                                </p>
                                                <p>Phone: <strong>+ 61 3 9005 2034</strong></p>
                                                <p>Hours: <strong>9am - 6pm AEST <uc1:OpenTime ID="OpenTime5" runat="server" IsOfficeHours="true"></uc1:OpenTime>
                                                   Monday - Friday</strong>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <a data-toggle="collapse" data-parent="#LocationExpand" href="#collapseFour" class="collapsed nsw">
                                                <h3 class="panel-title">Newcastle</h3>
                                                <!--<div class="map-marker nsw hidden-xs">
                                                    <div class="state-newcastle">
                                                        <h6>NSW</h6>
                                                    </div>
                                                </div>-->
                                            </a>
                                        </div>
                                        <div id="collapseFour" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <p><a href="/ssw/Company/Newcastle.aspx">SSW Newcastle Office</a></p>
                                                <p>432 Hunter St<br />
                                                    Newcastle, NSW 2300, Australia
                                                </p>
                                                <p>Phone: <strong>+ 61 3 9953 3000</strong></p>
                                                <p>Hours: <strong>9am - 6pm AEST <uc1:OpenTime ID="OpenTime1" runat="server" IsOfficeHours="true"></uc1:OpenTime>
                                                   Monday - Friday</strong>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class=" col-sm-6 hidden-xs">
                                <div id="map-wrap">

                                    <div id="location-map">

                                        <img border="0" src="/ssw/include/pigeon/img/placeholder.png" alt="" usemap="#map" orgwidth="402" orgheight="350" id="map-image">
                                        <map id="mapmarkers" name="map">
                                            <area id="qld" shape="rect" coords="545,310,482,273" style="outline: none;" />
                                            <area id="nsw" shape="rect" coords="504,519,448,486" style="outline: none;" />
                                            <area id="vic" shape="rect" coords="504,519,448,486" style="outline: none;" />
                                        </map>

                                    </div>

                                </div>
                            </div>



                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="Clients" class="center-block">
        <div class="container">
        
            <div class="row no-gutters">
                <div class="col-sm-4"><img src="/ssw/Images/clients1.png" alt="SSW Clients" class="center-block"/></div>
                <div class="col-sm-4"><img src="/ssw/Images/clients2.png" alt="SSW Clients" class="center-block"/></div>
                <div class="col-sm-4"><img src="/ssw/Images/clients3.png" alt="SSW Clients" class="center-block"/></div>   
            </div>
            <div class="row">
                <p class="text-center col-sm-12">Our software developers & consultants have delivered the best in the business to more than 1,400 clients in 15 countries. <a href="/ssw/company/AboutUs.aspx">Read more</a></p>
            </div>
        </div>

    </div>
    <!-- Scripts for Event Calendar -->


    <!-- Script for Contact Us Responsive Image Map -->
    <script src="/ssw/include/pigeon/js/jquery.rwdImageMaps.min.js"></script>
    <script>
        $('img[usemap]').rwdImageMaps();
        $("#vic, .vic").hover(
            function () { $("#location-map").addClass("select-vic"); },
            function () { $("#location-map").removeClass("select-vic"); });
        $("#qld, .qld").hover(
            function () { $("#location-map").addClass("select-qld"); },
            function () { $("#location-map").removeClass("select-qld"); });
        $("#nsw, .nsw").hover(
            function () { $("#location-map").addClass("select-nsw"); },
            function () { $("#location-map").removeClass("select-nsw"); });
    </script>
     <!-- Script for SSW Events -->
    <script src="/ssw/include/pigeon/js/SSW.Events.js?v=20200407"></script>
    <script>
        $(document).ready(function () { 
            initHomePage();
        });
    </script>

</asp:Content>


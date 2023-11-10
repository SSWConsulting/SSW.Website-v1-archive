<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/Raven.Master" Inherits="SSW.Website.WebUI.Raven" Title="Webinar Series -  Dev Superpowers" %>

<script runat="server">
    protected override void OnLoad(EventArgs e)
    {
        Response.StatusCode = 301;
        Response.AddHeader("Location", "http://tv.ssw.com/devsuperpowers");
    }
</script>

<asp:Content ID="Content2" runat="Server" ContentPlaceHolderID="Content">

    <div id="Subpage" class="superpower">
        <div class="CategoryColor full-margin">
            <div id="CategoryColor" class="events"></div>
            <div class="slider-wrapper theme-default background">
                <img src="/ssw/events/webinars/images/DevSuperPowers-BarBanner.png" alt="Microsoft DevSuperpowers Webinar Series" />
            </div>
        </div>
        <div id="Header">
            <div class="full-margin">
                <h2>Every month, we introduce a new superpower from the Microsoft stack of technologies</h2>
            </div>
        </div>

        <div class="content clearfix">
            <div class="full-margin">
                <div id="maincontentFull">
                    <div class="section">
                        <%--<div class="clearfix upcoming">
                            <h1>Sign up for upcoming Dev Superpowers webinars</h1>



                            
                        
                    </div>--%>

                        <div class="clearfix pastissues">
                            <h1>Watch Past Dev Superpowers Webinars</h1>

                            <div class="episode">
                                <div class="episode-content">
                                    <a href="/ssw/Events/Webinars/DevSuperpowers-ASP-NET-vNext.aspx">
                                        <img src="/ssw/events/webinars/images/DevSuperPowers-Banner-May_MVC.JPG" />
                                        <h3>ASP.NET Identity using vNext</h3>
                                        <p>Implement ASP.NET vNext User Membership using OWIN and Dependency injection // 28th May 2015, 11:00AM</p>
                                        <span>Sign up</span></a>
                                </div>
                            </div>

                            <div class="episode">
                                <div class="episode-content">
                                    <a href="/ssw/Events/Webinars/DevSuperpowers-ASP-NET-MVC.aspx">
                                        <img src="/ssw/events/webinars/images/DevSuperPowers-Asp.png" />
                                        <h3>ASP.NET MVC</h3>
                                        <p>Getting started with ASP.NET MVC // 5th June 2014, 11:00AM</p>
                                        <span>Watch Video</span></a>

                                </div>
                            </div>

                            <div class="episode">
                                <div class="episode-content">
                                    <a href="/ssw/Events/Webinars/DevSuperpowers-web-API.aspx">
                                        <img src="/ssw/events/webinars/images/DevSuperPowers-Webapi.png" />
                                        <h3>Web API</h3>
                                        <p>Adding Web Api to an ASP .NET MVC website // 26th June 2014, 11:00AM</p>
                                        <span>Watch Video</span></a>

                                </div>
                            </div>

                            <div class="episode">
                                <div class="episode-content">
                                    <a href="/ssw/Events/Webinars/DevSuperpowers-SignalR.aspx">
                                        <img src="/ssw/events/webinars/images/DevSuperPowers-Signalr.png" />
                                        <h3>SignalR</h3>
                                        <p>Using SignalR for real time communications // 24th July 2014, 11:00AM</p>
                                        <span>Watch Video</span></a>
                                </div>
                            </div>

                            <div class="episode">
                                <div class="episode-content">
                                    <a href="/ssw/Events/Webinars/DevSuperpowers-Bootstrap.aspx">
                                        <img src="/ssw/events/webinars/images/DevSuperPowers-Bootstrap.jpg" />
                                        <h3>Bootstrap</h3>
                                        <p>Beautiful and consistent web application design // 28th August 2014, 11:00AM</p>
                                        <span>Watch Video</span></a>
                                </div>
                            </div>

                            <div class="episode">
                                <div class="episode-content">
                                    <a href="/ssw/Events/Webinars/DevSuperpowers-Project-Management-with-Visual-Studio-Online.aspx">
                                        <img src="/ssw/events/webinars/images/DevSuperPowers-VisualStudio.png" />
                                        <h3>Visual Studio</h3>
                                        <p>Project Management with Visual Studio Online  // 25th September 2014, 11:00AM</p>
                                        <span>Watch Video</span></a>

                                </div>
                            </div>

                            <div class="episode">
                                <div class="episode-content">
                                    <a href="/ssw/Events/Webinars/DevSuperpowers-iOS-and-Android.aspx">
                                        <img src="/ssw/events/webinars/images/DevSuperPowers-Xamarin.png" />
                                        <h3>Xamarin</h3>

                                        <p>Building cross platform native mobile applications with Xamarin and Visual Studio  // 30th October 2014, 11:00AM</p>
                                        <span>Watch Video</span></a>

                                </div>
                            </div>

                            <div class="episode">
                                <div class="episode-content">
                                    <a href="/ssw/Events/Webinars/DevSuperpowers-AngularJS.aspx">
                                        <img src="/ssw/events/webinars/images/DevSuperPowers-AngularJS.jpg" />
                                        <h3>Angular JS</h3>
                                        <p>Create impressively dynamic interfaces // 27th November 2014, 11:00AM</p>
                                        <span>Watch Video</span></a>

                                </div>
                            </div>

                            <div class="episode">
                                <div class="episode-content">
                                    <a href="/ssw/Events/Webinars/DevSuperpowers-Azure.aspx">
                                        <img src="/ssw/events/webinars/images/DevSuperPowers-Azure.png" />
                                        <h3>Azure</h3>
                                        <p>Continuous deployment to Microsoft Azure websites  // 29th Jan 2015, 11:00AM</p>
                                        <span>Watch Video</span></a>
                                </div>
                            </div>

                            <div class="episode">
                                <div class="episode-content">
                                    <a href="/ssw/Events/Webinars/DevSuperpowers-AngularJS-with-TypeScript.aspx">
                                        <img src="/ssw/Events/Webinars/images/DevSuperPowers-AngularJS-with-TypeScript.png" />
                                        <h3>AngularJS with TypeScript</h3>
                                        <p>Harness the power of TypeScript in your AngularJS projects // 26th Feb 2015, 11:00AM</p>
                                        <span>Watch Video</span></a>
                                </div>
                            </div>

                            <div class="episode">
                                <div class="episode-content">
                                    <a href="/ssw/Events/Webinars/DevSuperpowers-XamarinForms-MVVM.aspx">
                                        <img src="/ssw/events/webinars/images/DevSuperPowers-XamarinForms-MVVM.png" />
                                        <h3>Xamarin.Forms & MVVM</h3>
                                        <p>Implementing MVVM from first principals with Xamarin.Forms // 26th Mar 2015, 11:00AM</p>
                                        <span>Watch Video</span></a>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="section">
                        <h1>Become a Dev Superhero</h1>
                        <div class="eric-video">
                            <div class="video-player" data-id="LbAl_n9tVJo" data-youkuid=""></div>
                        </div>
                        <%--<iframe width="962" height="541" src="//www.youtube.com/embed/LbAl_n9tVJo" frameborder="0" allowfullscreen></iframe>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>








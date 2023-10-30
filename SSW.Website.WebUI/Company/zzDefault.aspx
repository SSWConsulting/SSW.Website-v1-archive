<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW Company Index - Software Development Consulting" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <img src="/ssw/images/raven/SSW-website-banner-with-logo-962-140px.jpg" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Company Index</h1>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontentFull" runat="server">
    <div ID="isotope">
        <div class="grid" style="width:50%;"></div>
        <div class="item all">
            <a href="/ssw/Company/AboutUs.aspx">
                <div class="ourHolder-text">
                    <h2>About SSW</h2>
                    <p>SSW Consulting has over 30 years of experience developing awesome Microsoft solutions that build on top of Angular, React, Azure, TFS, SharePoint, Office 365, .NET, WebAPI, Dynamics 365 and SQL Server.</p>
                </div>
            </a>
        </div>
        <div class="item all">
            <a href="/ssw/Company/ContactUs.aspx">
                <div class="ourHolder-text">
                    <h2>Contact Us</h2>
                    <p>Our specialists are ready to answer any enquiry you have, so don't hesitate to give us a call or send us an email if you are interested in our consulting services, user groups or training.</p>
                </div>
            </a>
        </div>
        <div class="item all">
            <a href="/ssw/Company/Offices.aspx">
                <div class="ourHolder-text">
                    <h2>Our Offices</h2>
                    <p>SSW has offices in several cities around the world.</p>
                </div>
            </a>
        </div>
        <div class="item all">
            <a href="/ssw/Company/Clients/">
                <div class="ourHolder-text">
                    <h2>Our Clients</h2>
                    <p>For over a decade SSW has worked closely with a variety of Australian and international clients tailoring software solutions to business needs and objectives.</p>
                </div>
            </a>
        </div>
        <div class="item all">
            <a href="https://www.ssw.com.au/people/">
                <div class="ourHolder-text">
                    <h2>Our People</h2>
                    <p>SSW is made up of a great team of staff that are passionate about technology and how it meets business needs - including experts in Angular, React, Azure, TFS, SharePoint, Office 365, .NET, WebAPI, Dynamics 365, SQL Server, UX/Design and much more!</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="/ssw/Employment/Employment.aspx">
                <div class="ourHolder-text">
                    <h2>Employment Opportunities</h2>
                    <p>Due to the tremendous growth that our business has experienced over the past years, we are seeking an enthusiastic person to join the SSW team.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="/ssw/Testimonials/ViewAll.aspx">
                <div class="ourHolder-text">
                    <h2>Testimonials</h2>
                    <p>See a list of some of our clients' testimonials.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="/ssw/Company/History.aspx">
                <div class="ourHolder-text">
                    <h2>Our History</h2>
                    <p>SSW has been developing software solutions since 1990. See a brief summary of our history.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="/ssw/News/News.aspx">
                <div class="ourHolder-text">
                    <h2>News &amp; Press</h2>
                    <p>Check out the most important things SSW has accomplished in the industry.</p>
                </div>
            </a>
        </div>
        
    </div>
</asp:Content>

<asp:Content ID="Side" ContentPlaceHolderID="sidebarcontainer" runat="server">
<!--THIS IS EMPTY ON PURPOSE-->
</asp:Content>

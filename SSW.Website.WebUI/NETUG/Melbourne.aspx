<%@ Page Language="c#" AutoEventWireup="true" MasterPageFile="~/Masters/RavenSubPage.master" Inherits="SSW.WebUI.NETUG.Melbourne" Title="SSW - Melbourne .NET User Group | .NET development, Azure, Power Platform, general DevOps and ALM strategies, Angular, React, Blazor, and MAUI" CodeBehind="Melbourne.aspx.cs"%>

<%@ Import Namespace="System.Xml" %>
<%@ Import Namespace="SSW" %>
<%@ Import Namespace="SSW.SSWMT" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
<script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "Event",
      "name": "Melbourne .NET User Group",
      "location": {
        "@type": "Place",
        "name": "SSW Chapel Melbourne",
        "address": {
          "@type": "PostalAddress",
          "streetAddress": "Level 1, 370 Little Bourke Street",
          "addressLocality": "Melbourne",
          "postalCode": "3000",
          "addressRegion": "VIC",
          "addressCountry": "AU"
        }
      },
      "image": [
        "https://www.ssw.com.au/ssw/NETUG/Images/thumbs/thumb-melbourneUG.jpg"
       ],
      "description": "The best meetup to learn development for free in Melbourne",
      "organizer": {
        "@type": "User Group",
        "name": "SSW Consulting",
        "url": "https://ssw.com.au"
      }
    }
    </script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
	<img alt="Melbourne UG" src="Images/thumbs/thumb-UG.jpg" class="icon" />
    <h1>Melbourne .NET User Group</h1>
    <h2>Learn. Build contacts. Socialize</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>User Group:</h2>
    <ul>
        <li><a href="#upcoming">Upcoming Sessions</a></li>
        <li><a href="#why">Why Attend?</a></li>
        <li><a href="#when">When Is It On?</a></li>
        <li><a href="#agenda">Agenda</a></li>
        <li><a href="#Presenters">I Would Like to Present</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h3>Melbourne .NET User Group - The best meetup to learn .NET for free in Melbourne</h3>

<a name="upcoming"></a>
        <h2>Upcoming Session Details</h2>

        <div class="grid" id="currentEvents" runat="server" style="width:100%;"></div>

        <h2>When</h2><a name="when"></a> 
            <p>We meet on the 3rd Wednesday of every month from 6:00pm to 8:30pm.</p>

        <h2>Where</h2><a name="where"></a>
            <h3>SSW Melbourne</h3>
            <p class="address">
                Level 1<br />
                370 Little Bourke Street<br />
                Melbourne, VIC 3000<br />
                Australia</p>
        
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.0074501209624!2d144.9594337153187!3d-37.81329447975243!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642b536161529%3A0x7e9bcdc730a8045b!2s370+Little+Bourke+St%2C+Melbourne+VIC+3000!5e0!3m2!1sen!2sau!4v1511223626595" width="600" height="450" frameborder="0" style="border:0" allowfullscreen=""></iframe>
    </div>

    <div class="section">
       <h2>Why - 3 Great Reasons to Attend the .NET User Group</h2><a name="why"></a>
        <ul class="benefits">
            <li>Learn</li>
            <li>Build contacts</li>
            <li>Socialize*</li>
        </ul>
        <small>* For information on why we <a href="/SSW/Standards/Rules/RulesToBetterGoogleRankings.aspx#OnPage"> spell this the American way</a>.</small>
    </div>

    <div class="section">
        <h2>About</h2>
        <p>Every month, SSW hosts the Melbourne .NET User Group, where developers come together to learn about the latest technologies from local and internationally renowned experts. Topics focus on .NET and other Microsoft technologies (Azure, DevOps, SharePoint, Power Platform, and more), full stack development (Angular, React, Blazor), and mobile apps with .NET MAUI (was Xamarin), as well as exciting opportunities to learn about the latest industry trends and even tips on presenting from world class speakers.</p>
        
        <h2>Cost</h2>
        <p>Free to attend.</p>
    </div>

        <asp:Label ID="lblCurrMonth" runat="server" Visible="false" />

    <div class="section">
        <a name="agenda"></a>
        <h2>Agenda</h2>
        <table class="normal">
            <tbody>
                <tr><th colspan="2">This is how we run it:</th></tr>
                <tr><td>5min</td><td>Who are the first timers?</td></tr>
                <tr><td>20min</td><td>News (usually by <a href="https://www.ssw.com.au/people/william-liebenberg">William Liebenberg</a>)</td></tr>
                <tr><td>90min</td><td><strong>Session</strong></td></tr>
                <tr><td>5min</td><td>Retro (the good and bad) as per <a href="http://rules.ssw.com.au/Management/RulesToBetterScrumUsingTFS/Pages/RetrospectiveMeeting.aspx">Do you know what happens at a Sprint Retrospective Meeting?</a></td></tr>
            </tbody>
        </table>
    </div>

    <div class="section">
        <h2>Stuff we talk about?</h2>

        <div class="main col-sm-12">
            <div class="col-sm-6">
                <ul>
                    <li>React</li>
                    <li>Angular</li>
                    <li>Web API</li>
                    <li>LINQ</li>
                    <li>Blazor</li>
                    <li>CSS / HTML</li>
                    <li>Azure DevOps and Scrum</li>
                    <li>ALM tooling and processes (e.g. Continuous Integration)</li>
                </ul>
            </div>

            <div class="col-sm-6">
                <ul>
                    <li>Azure</li>
                    <li>Office 365</li>
                    <li>SharePoint </li>
                    <li>CRM</li>
                    <li>Mobile apps with .NET MAUI (was Xamarin)</li>
                    <li>Power Platform</li>
                    <li>Hot Sites</li>
                    <li>Hot Blogs</li>
                </ul>
            </div>
        </div>

        <p>Look forward to seeing you there!</p>
    </div>

    <div class="section">
        <a name="Presenters"></a>
        <h2>I Would Like to Present</h2>
        <p>Most speakers present in all cities - <strong>Melbourne</strong>, <strong>Canberra</strong> and last is <strong>Sydney</strong> which is live streamed the recording is posted on <a href="http://tv.ssw.com" target="_blank">tv.ssw.com</a> a couple of days later.</p>
        <p>Every month the User Group is full of highly technical early adopters of technology and our attendees are always open to seeing presentations on the latest technologies. We welcome companies and guest presenters to present new topics and new gadgets. We do encourage you to delve beyond the sales and marketing pitch and show us how it was built, not just why it was built. Here's a quick list of some tips for presenters:</p>
        <ul>
            <li>Presentation needs to be directed at a highly technical audience (No sales pitch)</li>
            <li>Introduce new technology</li>
            <li>Samples and giveaway prizes for attendees are great </li>
            <li>Prior to the meeting do a rehearsal  - make a time with Adam </li>
            <li>Send a summary of your presentation for inclusion into the SSW Newsletter (one week prior to the User Group)</li>
            <li>Your session will be recorded by the guys from <a href="http://tv.ssw.com/" target="_blank">SSW TV</a> straight from the projector cable. Very simpler for presenters</li>
        </ul>
        
        <p>
            If you think you're up for the challenge and have something new to show us please
            contact <a href="javascript:sendEmail('77696c6c69616d6c696562656e62657267407373772e636f6d2e6175','I Want To Present At The Melbourne User Group')"
                onmouseover="javascript:displayStatus('77696c6c69616d6c696562656e62657267407373772e636f6d2e6175'); return true;"
                onmouseout="javascript:clearStatus(); return true;">William Liebenberg</a>.</p>
    </div>
    
    <div class="section">
        <h2>Who Organizes It?</h2>
        <p>The User Group is organized by <a href="https://www.ssw.com.au/people/william-liebenberg">William Liebenberg</a>. He can be contacted at SSW on <strong>+61 3 9005 2034</strong>, by mobile on <strong>04 0737 6488</strong> - or by <a href="javascript:sendEmail('6164616d636f67616e407373772e636f6d2e6175')" onmouseover="javascript:displayStatus('6164616d636f67616e407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;">email</a>.</p>
    </div>
    
    <div class="section">
        <h2>SSW Newsletters</h2>
        <p>By signing up for our newsletter you'll be kept informed about the latest upcoming
            developer events and news. The User Group topic will only be known in advance to
            recipients of the SSW Update so make sure you sign up so that you're guaranteed
            that the topic at the next meeting is exactly what you're interested in. See previous 
            <a href="SSWUpdatePrevious.aspx">SSW Newsletters</a>.</p>
    </div>

    <div class="section">
        <h2>I'm Sold...What's Next?</h2>
        <p>Subscribe to our newsletter to receive NETUG updates!</p>
                    <div class="NETUGdownload">
            <asp:TextBox ID="newsletterEmailTextBox" runat="Server" value="Your Email" onblur="if (value == '') {value = 'Your Email'}"
                onfocus="if (value == 'Your Email') {value =''}"></asp:TextBox><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="newsletterEmailTextBox"
                ValidationExpression="^[\w-+\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="You did not enter a valid email address"
                Font-Size="X-Small">
            </asp:RegularExpressionValidator><br />
            <p><a id="newsletterSignUpButton" href="#" class="red next btn">sign up</a></p>

            <p>
                <img src="Images/facebook_icon.png" alt="Facebook" />
                Join our <a href="https://www.facebook.com/groups/MelbourneNetUG" class="ignore">Melbourne UG Facebook</a></p>
                        <p>and</p>
            <p>
                <img src="/ssw/NETUG/Images/linkedin_icon.png" alt="LinkedIn" />
                Join our <a href="https://www.linkedin.com/groups/10373000" class=" ignore">Melbourne UG LinkedIn</a></p>
                        <p>and</p>
            <p>
                <img src="/ssw/NETUG/Images/meetup-icon.png" alt="Meetup" />
                Join our <a href="https://www.meetup.com/Melbourne-NET-User-Group/" target="_blank" class=" ignore">Melbourne UG Meetup</a></p>

            <script>
                $(document).ready(function() {

                    $("#newsletterSignUpButton").click(function(e) {
                        e.preventDefault();

                        // ValidatorValidate()
                        if (Page_ClientValidate()) {
                            var email = $("#<%=newsletterEmailTextBox.ClientID %>").val();
                            email = email.replace( /\+/gi , "%2B");
                            window.location = "http://ssw.com.au/ssw/Shop/ClientDetail.aspx?Email=" + email + "&Tag=FNEWS";
                        }
                    });
                });
            </script>

        </div>
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebarcontainer" runat="server">
    <div class="rounded">
        <h3>
            Connect with us</h3>
    </div>
    <div class="section">
        <h4>
            <img src="Images/facebook_icon.png" alt="Facebook" />
            Join our <a href="https://www.facebook.com/groups/MelbourneNetUG" class="ignore">Facebook</a>
        </h4>
        <h4>
            <img src="/ssw/NETUG/Images/linkedin_icon.png" alt="LinkedIn" />
            Join our <a href="https://www.linkedin.com/groups/10373000" class="ignore">LinkedIn</a>
        </h4>
        <h4>
            <img src="/ssw/NETUG/Images/meetup-icon.png" alt="Meetup" />
            Join our <a href="https://www.meetup.com/Melbourne-NET-User-Group/" target="_blank" class="ignore">Meetup</a>
        </h4>
    </div>
    <br /><br />

    <div class="rounded">
        <h3>Feedback</h3>
    </div>
    <div class="section">
        <p>If you have attended a session recently, please fill in our <a href="Evaluation-Survey/">Evaluation Survey</a>.</p>
        <p>Your feedback helps us make the User Group even better!</p>
    </div>
    <br /><br />

    <div class="rounded">
        <h3>Follow us on Twitter</h3>
    </div>
    <div>
        <a class="twitter-timeline" data-height="300" data-link-color="#cc4141" href="https://twitter.com/SSW_TV?ref_src=twsrc%5Etfw">Tweets by SSW_TV</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    </div>
    <br />

    <div class="rounded">
        <h3>Join the conversation</h3>
    </div>
    <div>
        <p><a class="ignore btn red" href="https://twitter.com/search?q=%23NETUG" data-widget-id="386148376976183296" data-twitter-extracted-i1572545088830225625="true">#NETUG tweets</a></p>
    </div>
    <br />
    <br />

    <div class="rounded">
        <h3>Find us on Facebook</h3>
    </div>
    <div class="fb-box-section" style="padding-top:0;">
        <div id="fb-root"></div>
            <script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=410353905749062";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

        <div class="fb-like-box" data-href="https://www.facebook.com/SSW.page" data-width="260" data-show-faces="true" data-header="false" data-stream="false" data-show-border="false"></div>
    </div>
    <br /><br />

    <div class="section" style="text-align: center; width: 100%; background: #fff;">
        <img src="Images/logos/microsoft.jpg" alt="microsoft logo" />
        <img src="Images/logos/visualstudio.jpg" alt="microsoft Visual Studio" />
        <img src="Images/logos/net.jpg" alt="microsoft .net" />
        <img src="Images/logos/azure.jpg" alt="azure" />
        <img src="Images/logos/angular.jpg" alt="azure" />
        <img src="Images/logos/react.jpg" alt="react" />
        <img src="Images/logos/vue.jpg" alt="vue" />
        <img src="Images/logos/office.jpg" alt="microsoft office" />
        <img src="Images/logos/dynamics.jpg" alt="microsoft dynamics" />
        <img src="Images/logos/sharePoint.jpg" alt="microsoft SharePoint" />
        <img src="Images/logos/windows.jpg" alt="microsoft windows" />
        <img src="Images/logos/ios.jpg" alt="ios" />
        <img src="Images/logos/android.jpg" alt="android" />
        <img src="Images/logos/powerbi.jpg" alt="power bi" />
        <img src="Images/logos/sql.jpg" alt="microsoft SQL2005" />
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

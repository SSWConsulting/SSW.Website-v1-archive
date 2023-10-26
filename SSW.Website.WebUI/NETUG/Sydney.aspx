<%@ Page Language="c#" AutoEventWireup="true" MasterPageFile="~/Masters/RavenSubPage.master" Inherits="SSW.WebUI.NETUG.Sydney" Title="SSW - Sydney's .NET User Group | .NET development, Azure, Power Platform, general DevOps and ALM strategies, Angular, React, Blazor, and MAUI" CodeBehind="Sydney.aspx.cs"%>

<%@ Import Namespace="System.Xml" %>
<%@ Import Namespace="SSW" %>
<%@ Import Namespace="SSW.SSWMT" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
<script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "Event",
      "name": "Sydney .NET User Group",
      "location": {
        "@type": "Place",
        "name": "SSW Chapel Sydney",
        "address": {
          "@type": "PostalAddress",
          "streetAddress": "Level 1, 81-91 Military Rd",
          "addressLocality": "Neutral Bay",
          "postalCode": "2089",
          "addressRegion": "NSW",
          "addressCountry": "AU"
        }
      },
      "image": [
        "https://www.ssw.com.au/ssw/NETUG/Images/thumbs/thumb-SydneyUG.jpg"
       ],
      "description": "The best meetup to learn development for free in Sydney",
      "organizer": {
        "@type": "User Group",
        "name": "SSW Consulting",
        "url": "https://ssw.com.au"
      }
    }
    </script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img alt="Sydney UG" src="Images/thumbs/thumb-UG.jpg" class="icon" />
    <h1>Sydney .NET User Group</h1>
    <h2>The best meetup to learn .NET for free live in Sydney (or around the world)</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>User Group:</h2>
    <ul>
        <li><a href="#upcoming">Upcoming Sessions</a></li>
        <li><a href="#when">When Is It On?</a></li>
        <li><a href="#why">Why Attend?</a></li>
        <li><a href="#RecentSessions">Recent Sessions</a></li>
        <li><a href="#agenda">Agenda</a></li>
        <li><a href="#presenters">I Would Like to Present</a></li>
        <li><a href="History.aspx">History</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">

        <a name="upcoming"></a>
        <h2>Upcoming Session Details</h2>

        <div class="grid" id="currentEvents" runat="server" style="width:100%;"></div>

        <a name="when"></a>
        <h2>When</h2>
        <p>We meet on the 3rd Wednesday of every month from 6:30pm to 9:00pm.</p>

        <h2>Online attendance</h2>
        <p>Join us via Live Webcast - <a href="/Live">click here to join</a>. The live kicks off at 6:30pm.</p>
        <p class="indent">
            <a href="/Live">
                <img alt="NETUG Live" src="/ssw/NETUG/SSWUpdate/images/NETUG-live.jpg" /></a>
        </p>

        <h2>Where</h2>
        <a name="where"></a>
        <p>Physical attendance is recommended.</p>
            <h3><a href="https://sswchapel.com.au/sydney/">SSW Chapel</a></h3>
            <p class="address">
                Level 1<br />
                81-91 Military Rd<br />
                Neutral Bay, NSW 2089<br />
                Australia
            </p>
            <p>Limited Street Parking is available.</p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3314.2920992006666!2d151.2170279152093!3d-33.83057698066682!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae97d311ce63%3A0x96fd61603e38998c!2s15%2F81-91+Military+Rd%2C+Neutral+Bay+NSW+2089!5e0!3m2!1sen!2sau!4v1461716635207" width="800" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>


        <a name="why"></a>
        <h2>Why - 3 Great Reasons to Attend The .NET User Group</h2>
        <ul class="benefits">
            <li>Learn</li>
            <li>Build contacts</li>
            <li>Socialize*</li>
        </ul>
        <small>* For information on why we <a href="/SSW/Standards/Rules/RulesToBetterGoogleRankings.aspx#OnPage">spell this the American way</a>.</small>

        <h2>Recent Sessions</h2>
        <p>Find previous sessions on <a href="https://tv.ssw.com/presentations/">SSW TV</a>.</p>

        <h2>About</h2>
        <p>Every month SSW hosts the Sydney .NET User Group, where developers come together to learn about the latest technologies from local and internationally renowned experts. Topics focus on .NET and other Microsoft technologies (Azure, DevOps, SharePoint, Power Platform, and more), full stack development (Angular, React, Blazor), and mobile apps with .NET MAUI (was Xamarin), as well as exciting opportunities to learn about the latest industry trends and even tips on presenting from world class speakers.</p>
        <dl class="">
            <dt>
                <img src="Images/user-group-audience.jpg" alt="Sydney User Group audience" /></dt>
        </dl>

        <h2>Sponsors</h2>
        <dl class="image">
            <dt><a href="https://octopus.com/" class="ignore">
                <img src="Images/octopus-deploy-logo.jpg" /></a></dt>
        </dl>

        <h2>Cost</h2>
        <p>Free to attend.</p>

        <h2>What people are saying</h2>
        <div class="quoteRightWrap">
            <blockquote>
                Developers are already good at writing code. Writing reams of code just digs you
                    deeper into an already deeply specialized skill. What I am proposing is that we
                    spend less time coding and more time developing skills in other areas that complement
                    our coding skills. Become a better writer. Become a better speaker. Improve your
                    personal skills. Participate in the community. Try to spend some time talking to
                    people instead of the compiler. That's how you distinguish yourself from your peers.
                    And that's ultimately how you become a better software developer, too.
                    <span>Jeff Atwood</span>
            </blockquote>
        </div>
    </div>

    <div class="section">
        <asp:Label ID="lblCurrMonth" runat="server" Visible="false" />
        <h2>Social events</h2>
        <p>For people who attend in person at our SSW Neutral Bay venue, we all catch up for pizza and a beer after the meeting. We head over to The Oaks (just over the road) for beautiful oven fired pizza and other delicious meals.</p>
    </div>

    <div class="section">
        <a name="agenda"></a>
        <h2>Agenda</h2>
        <table class="normal">
            <tbody>
                <tr>
                    <th colspan="2">This is how we run it:</th>
                </tr>
                <tr>
                    <td>5min</td>
                    <td>Who are the first timers?</td>
                </tr>
                <tr>
                    <td>20min</td>
                    <td>News (usually by Adam Cogan)</td>
                </tr>
                <tr>
                    <td>90min</td>
                    <td><strong>Session</strong></td>
                </tr>
                <tr>
                    <td>15min</td>
                    <td>Q&A and pizza</td>
                </tr>
                <tr>
                    <td>5min</td>
                    <td>Retro (the good and bad) as per <a href="https://rules.ssw.com.au/do-you-know-what-happens-at-a-sprint-retrospective-meeting">Do you know what happens at a Sprint Retrospective Meeting?</a></td>
                </tr>
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
        <a name="presenters"></a>
        <h2>I Would Like to Present</h2>
        <ol>
            <li>
                <p>Most speakers present in all cities - <strong>Melbourne</strong>, <strong>Brisbane</strong>, <strong>Canberra</strong> and last is <strong>Sydney</strong> which is live streamed the recording is posted on <a href="http://tv.ssw.com" target="_blank">tv.ssw.com</a> a couple of days later.</p>
                <p>Every month the User Group is full of highly technical early adopters of technology and our attendees are always open to seeing presentations on the latest technologies. We welcome companies and guest presenters to present new topics and new gadgets. We do encourage you to delve beyond the sales and marketing pitch and show us how it was built, not just why it was built. Here's a quick list of some tips for presenters:</p>
                <ul>
                    <li>Presentation needs to be directed at a highly technical audience (No sales pitch)</li>
                    <li>Introduce new technology</li>
                    <li>Samples and giveaway prizes for attendees are great </li>
                    <li>Prior to the meeting do a rehearsal  - make a time with Adam </li>
                    <li>Send a summary of your presentation for inclusion into the SSW Newsletter (one week prior to the User Group)</li>
                    <li>Your session will be recorded by the guys from <a href="https://tv.ssw.com/" target="_blank">SSW TV</a> straight from the projector cable. Very simpler for presenters</li>
                </ul>
                <p>
                    If you think you're up for the challenge and have something new to show us please
            contact <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175','I Want To Present At The Sydney User Group')"
                onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                onmouseout="javascript:clearStatus(); return true;">Adam Cogan</a>.
                </p>
            </li>

            <li>
                <p>For the scheduled presenters, we will send you an email before the Sydney .NET User Group to remind you of things you need to bring/do.</p>
                <p>Remember, the Sydney presentation is going to be recorded AND streamed live to our website, so our video guys want to make sure you're aware of a few things:</p>
                <ul>
                    <li>Please be at the SSW Sydney Offices at 5:00 so we have enough time to get everything up and running properly. You can find the directions to our office <a href="https://www.ssw.com.au/ssw/Company/Directions/NeutralBay/">here</a>.</li>
                    <li>Make sure that your laptop has a HDMI, Display Port, or a DVI connection. (Basically anything besides VGA)</li>
                    <li>It would also be helpful to already have VS2012, 2013, 2015 Productivity Tools installed on your computer as per the rule <a href="https://rules.ssw.com.au/enable-presentation-mode-in-visual-studio" target="_blank">Do you enable presentation mode in Visual Studio?</a></li>
                    <li>For more tips and tricks on better ways to enhance your presentations, read through our <a href="https://rules.ssw.com.au/rules-to-better-powerpoint-presentations" target="_blank">Rules to Better Powerpoint Presentations</a>.</li>
                    <li>You will need to create 3 questions based on your presentation, to go with the video once it goes live. Please have these ready when you arrive to present</li>
                </ul>
            </li>
        </ol>
    </div>

    <div class="section">
        <h2>Who Organizes It?</h2>
        <p>The User Group is organized by its president Adam Cogan, who can be contacted at <a href="/ssw/Company/ContactUs.aspx">SSW</a> on +61 2 <strong>9953 3000</strong>. Contact Adam directly via mobile on <strong>04 1985 1995</strong>, or by email at <a href="/people/adam-cogan">his profile</a>.</p>
    </div>

    <div class="section">
        <h2>SSW Newsletters</h2>
        <p>
            By signing up for our newsletter you'll be kept informed about the latest upcoming
            developer events and news. The User Group topic will only be known in advance to
            recipients of the SSW Update so make sure you sign up so that you're guaranteed
            that the topic at the next meeting is exactly what you're interested in. See previous 
            <a href="SSWUpdatePrevious.aspx">SSW Newsletters</a>.
        </p>
    </div>

    <div class="section">
        <h2>I'm Sold...What's Next?</h2>
        <p>Subscribe to our newsletter to receive NETUG updates!</p>
        <div class="NETUGdownload">
            <asp:TextBox ID="newsletterEmailTextBox" runat="Server" value="Your Email" onblur="if (value == '') {value = 'Your Email'}"
                onfocus="if (value == 'Your Email') {value =''}"></asp:TextBox><br />
            <asp:RegularExpressionValidator ID="newsletterEmailValidator" runat="server" ControlToValidate="newsletterEmailTextBox"
                ValidationExpression="^[\w-+\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="You did not enter a valid email address"
                Font-Size="X-Small">
            </asp:RegularExpressionValidator><br />
            <p><a id="newsletterSignUpButton" href="#" class="red next btn">sign up</a></p>
            <p>
                <img src="Images/facebook_icon.png" alt="Facebook" />
                Join our <a href="https://www.facebook.com/groups/NetUG/" class="ignore">Sydney UG Facebook</a>
            </p>
            <p>and</p>
            <p>
                <img src="Images/linkedin_icon.png" alt="Linkedin" />
                Join our <a href="/ssw/Redirect/SSWLinkedinGroup.htm" class="ignore">Sydney UG Linkedin</a>
            </p>
            <p>and</p>
            <p>
                <img src="/ssw/NETUG/Images/meetup-icon.png" alt="Meetup" />
                Join our <a href="http://www.meetup.com/Sydney-NET-User-Group/" target="_blank" class="ignore">Sydney UG Meetup</a>
            </p>

            <script>
                $(document).ready(function () {

                    $("#newsletterSignUpButton").click(function (e) {
                        e.preventDefault();

                        // ValidatorValidate()
                        if (Page_ClientValidate()) {
                            var email = $("#<%=newsletterEmailTextBox.ClientID %>").val();
                            email = email.replace(/\+/gi, "%2B");
                            window.location = "http://ssw.com.au/ssw/Shop/ClientDetail.aspx?Email=" + email + "&Tag=FNEWS";
                        }
                    });
                });
            </script>

        </div>
    </div>
    <%-- 
    
    Commented out Poll temporarily 
    
    <div class="section">
        <h2>Poll</h2>
       <Poll:Poll id="pollSSW" runat="server" xPollUsedMode="eDatabase" CssClass="clsSSWTable"
                width="500">
                <xcategories>
				<poll:MatchListItem xTextToMatch="UserGroup"></poll:MatchListItem>
			</xcategories>
            </Poll:Poll>
    </div>--%>
    <p align="center">
        <%--<a id="Adrotator1" href="/ssw/Events/SSWTechBreakfast.aspx" target="_top" style="border: none;">
            <img src="/ssw/Images/SSWTechBreakfastBanner.gif" alt="SSW Tech Breakfast" width="468"
                height="60" /></a><br />--%>
        You can <a href="/ssw/Advertising/Default.aspx">advertize</a> here as well - we get thousands of unique visits every month
    </p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebarcontainer" runat="server">

    <div class="rounded">
        <h3>Live Stream</h3>
    </div>
    <div class="section">
        <a href="Live.aspx">
            <img src="Images/logos/NETUG-live.jpg" /></a>
    </div>

    <br />
    <br />
    <div class="rounded">
        <h3>Visit SSW TV</h3>
    </div>
    <div class="section" style="text-align:center;">
        <a href="https://tv.ssw.com/" style="border: none;"><img src="/ssw/logo/SSW-TV/Images/SSWTV_preview.png" alt="SSW TV" /></a>
    </div>

    <br />
    <br />
    <div class="rounded">
        <h3>Connect With Us</h3>
    </div>
    <div class="section">
        <h4>
            <img src="Images/facebook_icon.png" alt="Facebook" />
            Join our <a href="https://www.facebook.com/groups/NetUG/" class="ignore">Facebook</a>
        </h4>
        <h4>
            <img src="/ssw/NETUG/Images/linkedin_icon.png" alt="LinkedIn" />
            Join our <a href="/ssw/Redirect/SSWLinkedInGroup.htm" class="ignore">LinkedIn</a>
        </h4>
        <h4>
            <img src="/ssw/NETUG/Images/meetup-icon.png" alt="Meetup" />
            Join our <a href="https://www.meetup.com/Sydney-NET-User-Group/" target="_blank" class="ignore">Meetup</a>
        </h4>
    </div>
    <br />
    <br />

    <div class="rounded">
        <h3>Feedback</h3>
    </div>
    <div class="section">
        <p>If you have attended a session recently, please fill in our <a href="Evaluation-Survey/">Evaluation Survey</a>.</p>
        <p>Your feedback helps us make the User Group even better!</p>
    </div>
    <br />
    <br />

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
    <div class="fb-box-section" style="padding-top: 0;">
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

    <br />
    <br />

    <div class="rounded">
        <h3>About the Organizer</h3>
    </div>
    <div class="section">
        <p>
            Adam was in the Exchange Server Conference. He was asked to speak at the <a href="/ssw/Redirect/NTPCUG.htm" target="_blank">North Texas PC User Group - Developer Special Interest Groups.</a> The Leader of the Access SIG and Co-SIG Leader of Application Developer
            Issues - <strong>Larry Linson</strong> - one of the original founders of the comp.databases.ms-access newsgroup - gave some very positive feedback:&nbsp;
        </p>
        <p>
            &quot;Adam Cogan of SSW, President of the .NET User Group, was in
            Dallas for the Exchange Server Conference and graciously agreed to be a guest speaker
            at our North Texas PC User Group. He gave a two-hour
            presentation on XML that was, IMNSHO and the opinion of the other attendees, outstanding.
            I've thanked him personally, but I'll take this occasion to publicly do so. Thanks
            again, Adam. I look forward to seeing you again soon.&quot;
        </p>
        <p>View <a href="https://www.adamcogan.com/">Adam Cogan's blog</a>.</p>
    </div>
    <br />
    <br />
    <div class="rounded">
        <h3>Testimonials</h3>
    </div>
    <div class="section">
        <h4>Nick Wienholt</h4>
        <p>
            &quot;Truly the best place to learn .NET for free in Sydney.&quot;
        </p>
        <h4>Troy Magennis</h4>
        <p>
            &quot;Informative and entertaining. Lots of little snippets of lessons we would
            have had to learn through experience&quot;
        </p>
        <h4>Arashu Goto</h4>
        <p>
            &quot;People with various knowledge levels come and create a worthwhile session&quot;
        </p>
    </div>
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

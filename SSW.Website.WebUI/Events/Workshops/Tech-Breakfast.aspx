<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Tech Breakfast | Delicious and healthy breakfast, tips and tricks to use today" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumb-tech-breakfast.jpg" alt="Tech Breakfast" />
    <h1>SSW Tech Breakfast</h1>
    <h2>Delicious and healthy breakfast, tips and tricks to use today</h2>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="index" runat="server">
    <h2>SSW Tech Breakfast:</h2>
    <ul>
        <li><a href="#keyfeatures">Key Features & Benefits</a></li>
        <li><a href="#teachingformat">The Teaching Format</a></li>
        <li><a href="#specialoffer">Special Offer</a></li>
        <li><a href="#suggestasession">Suggest a Training Session</a></li>
        <li><a href="#termsandconditions">Terms and Conditions</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">
        <p>
            Looking for some serious hands-on advanced training? Get a mouthful of the SSW Tech
            Breakfast!</p>
        <p>
            Usually held on the <b>Last Friday of every month</b>, the SSW Tech Breakfast is
            a great way to keep up-to-date on the latest technical developments and development
            methods. The sessions are held in <a href="https://www.ssw.com.au/ssw/Events/Venues/Hire-Conference-Room.aspx">SSW Chapel</a> and led by industry leader <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC"> Adam Cogan</a>, Microsoft Regional Director. Check out what's coming up
            and register today - be quick, there is a limit of 15 delegates per seminar and
            numbers fill up fast!</p>
        <div style="margin:2rem 0;">
            <img src="/ssw/Images/Microsoft/Microsoft-Gold-Partner.png" alt="SSW is a Microsoft Gold Certified Partner" />
            <img src="/ssw/Company/Images/Microsoft-regional-director.png" alt="Adam Cogan is a Microsoft Regional Director" />
            <img src="Images/logo_microsoft_dotnet_techpage.jpg" alt="DOTNET" />
        </div>
        <dl class="image">
            <dt><img src="Images/SSWTechBreakfastGang.jpg" alt="SSW Tech Breakfast with Ken Getz & Brian Randall" /></dt>
            <dd>As you can see <a target="_blank" href="/ssw/Redirect/Training/DevelopMentorBrianRandall.htm"> Brian Randell</a> and Ken Getz drop by for the occasional breakfast</dd>
        </dl>
    </div>
    <div class="section">
        <h1>
            <a name="keyfeatures"></a>Key Features &amp; Benefits</h1>
        <p>
            Check out SSW's Tech Breakfast main benefits:</p>
        <ul>
            <li>Renowned speakers with years of industry experience.</li>
            <li>Interactive, hands-on sessions on the latest technology</li>
            <li>All attendees will receive a free copy of &quot;Developers Guide to Upgrading to
                Microsoft .NET&quot; including 2 CDs - Visual Basic .NET and ASP.NET Upgrade CDs.</li>
            <li>Code samples to plug in</li>
            <li>Tips and tricks to use today</li>
            <li>Delicious, healthy breakfast</li>
            <li>Satisfaction guaranteed, or your money back</li>
            <li>When you attend a full price Tech Breakfast you can purchase any single license
                SSW Software Product for 30% of the regular price</li>
            <li>Every attendee will receive an SSW Certificate of Completion signed by Adam Cogan.</li>
        </ul>
    </div>
    <div class="section">
        <h1>
            <a name="teachingformat"></a>The Teaching Format</h1>
        <p>
            The SSW Tech Breakfasts are intensive, in-depth, hands-on sessions enabling you
            to master the finer details of .NET technologies and return to work with knowledge
            of how to create impressive, robust applications.</p>
        <p>
            We believe in hands-on approach to training. Each session is limited to only 15
            delegates and filled with practical real-world exercises. For your convenience,
            you can even bring along your laptop.</p>
        <br />
        <p class="greybox"><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a> is the Chief
                Architect at SSW, a Microsoft Certified Partner specializing in Office and .NET
                Solutions. At SSW, Adam has been developing custom solutions for businesses across
                a range of industries such as Government, banking, insurance and manufacturing since
                1990 for clients such as Microsoft, Quicken, and the Fisheries Research and Development
                Corporation.</p>
       <%-- <h2 class="accordionHeader">Something About Mary (SharePoint and Office 2010) </h2>
        <p class="techBreakfastIcon">
            <img src="/ssw/EventsCalendar/Images/icon_techbreakfast.jpg" /></p>
        <div class="techBreakfastDescription">
            <p>
                <b>Friday, 27th November 2010 8:00am-11:00am</b><br />
                Location: <a href="/ssw/Company/Directions/NeutralBay/Default.aspx">SSW, Sydney</a></p>
                            <p>
                                Come and see Adam Cogan explain what works well with SharePoint and Office for Mary and the other  
                                knowledge workers.</p>
			    <p>First you will get an overview of what is great about having SharePoint in your business.</p>
                            <p>Then see real world examples of:</p>
                            <ul>
                                <li>Using SharePoint 2010 and Office 2010 together</li>
                                <li>Where it fits with other important Microsoft products like CRM 4 and TFS</li>
                                <li>Examples of how Word and Excel can be integrated into business processes (separate from SharePoint), and then followed by</li>
                                <li>Examples of how Word, Excel, PowerPoint can be combined with SharePoint to improve visibility/searchability/versioning across the company</li>
                                <li>Overview of how data can be synchronized between SharePoint and external data sources (eg using Access and Excel)</li>
                                <li>Overview of what 'workflow' really means!</li>
                                <li>How Office can be incorporated into company workflows with SharePoint</li>
                                <li>Extending SharePoint with Office SharePoint Designer 2010 (free!)</li>
				<li>Where VBA and VSTO fit in terms of how solutions can be developed </li>
				<li>Examples of other interesting Office/SharePoint integrations (eg the the Atlassian SharePoint Connector and Atlassian Office Connector)</li>
                            </ul>
                            <p>
                            This is a good chance for you to consider new ways of using Office in your company,  
                            along with pitfalls to avoid. Adam gets excited about this session because too often companies limit Office to just an email application, 
                            word processor and spreadsheet - completely missing the positive impact it can have on the entire business process.</p>
        </div>
        <div class="download narrowDownload">
            <a class="red next" href="/ssw/Shop/BasketInsert.aspx?ProductID=TBSP26">
                Register online now
            </a>
            <br />
            or
            <br />
            <br />
            Call (02) 9953 3000
        </div>--%>
    </div>
    <div class="section">
        <h1>
            <a name="specialoffer"></a>Special Offer</h1>
        <p>
            At only $150 plus GST per session, the SSW Tech Breakfasts represent great value
            and include a full continental breakfast and morning tea. We provide significant
            discounts for group bookings or those who book multiple sessions in advance. For
            more details call on (02)9953 3000 or <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175','TechBreakfast')"
                onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                onmouseout="javascript:clearStatus(); return true;">email us</a>.</p>
    </div>
    <div class="section">
        <h1>
            <a name="suggestasession"></a>Suggest a Training Session</h1>
        <p>
            At SSW we are committed to providing you with training sessions that you want. Here's
            your chance to play a key role and suggest to us what you really want to learn about.
            Whether it be a new topic or you would like us to invite particular presenter, we'd
            love to hear about it. <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175','TechBreakfast%20Topic%20Suggestion')"
                onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                onmouseout="javascript:clearStatus(); return true;">Email us</a> with your suggestion.</p>
    </div>
    <div class="section">
        <h1>
            <a name="termsandconditions"></a>Terms and Conditions</h1>
        <p>
            <b>Note</b>: As audience interaction changes from session to session, SSW cannot
            guarantee to cover all items listed for each session. If you have a burning desire
            to hear about a particular item, please mention it to the speaker during the session.</p>
        <p>
            <b>Cancellations</b>: If you are unable to attend after enrolment, you may send
            a replacement. Cancellations may receive a refund if made 5 days before commencement
            of a course. SSW reserves the right to postpone or cancel an event.</p>
    </div>
    <div class="section">
            <a href="/ssw/Events/SSWTechBreakfastPrevious.aspx"><img src="/ssw/images/old.png" class="right" alt="Previous Tech Breakfasts"/></a>
            <div align="right">
            <a href="/ssw/Events/Webinars/SharePoint-for-Business.aspx">Require business training?</a><br /> 
            <a href="/ssw/Events/SSWTechBreakfastPrevious.aspx">SSW Tech Breakfast Archive</a> </div>
    </div>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW User Group Special: the Agile Olympics with Jesse Houwing" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="http://ssw.com.au/ssw/NETUG/Images/olympics-thumbnail.png" alt="SSW User Group Special: the Agile Olympics with Jesse Houwing" />
    <h1 style="font-size: 34px;">Learn about Scrum with the Agile Dutchman Jesse Houwing</h1>
    <h2>SSW User Group Special</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>The Agile Olympics with Jesse Houwing</h2>
    <ul>
        <li><a href="#Details">User Group Details</a></li>
        <li><a href="#Register">Register</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div id="oversizeMaincontent">

        <div class="section">
            <p>
                <center><img src="http://ssw.com.au/ssw/NETUG/Images/banner-olympics.png" width="690" /><br />
            <b>This is no ordinary user group – this is the Agile Olympics with Jesse Houwing!</b></center>
            </p>



            <div class="eric-video">
                <div class="video-player" data-id="vPATUlkYGDg" data-youkuid=""></div>
            </div>
            <%--<iframe width="560" height="315" src="https://www.youtube.com/embed/vPATUlkYGDg" frameborder="0" allowfullscreen></iframe>--%>



            <p>Jesse, a Scrum.org Trainer, ALM Ranger, and Agile/ALM Consultant, will be leading the fun with Scrum, using interactive games such as</p>
            <ul>
                <li><a href="http://www.allaboutagile.com/agile-games-ball-point-game/" target="_blank">Ball point game</a> (time boxed to 20 minutes)</li>
                <li><a href="http://blog.jessehouwing.nl/2014/11/agile-chair-game-some-alternate.html" target="_blank">Chair game</a> time boxed to 20 minutes)</li>
                <li><a href="http://retrospectivewiki.org/index.php?title=Sailboat" target="_blank">The interactive sail boat</a> (time boxed to 20 minutes)</li>
                <li><a href="https://www.dropbox.com/s/r9y95zirwm630sp/Scrum Simulation with LEGO Bricks v2.0.pdf?dl=0" target="_blank">Scrum Simulation with Lego Bricks</a> (time boxed to 75 minutes)</li>
            </ul>

            <p>
                You'll get to play ball, do some mystifying things with chairs, and build a Lego city – all in the name of learning. 
            Through these fun exercises, Jesse will illustrate concepts like Technical Debt, Inspection and Adaption, Retrospectives, and Self-management and self-organization.
            </p>

            <p>
                Whether you already use Scrum and want to brush up on your skills, or you want to know more about Scrum and how it works, this friendly, interactive session is for everyone. 
        There'll be tonnes of fun, hands-on learning, and absolutely no boring bits!
            </p>


            <p>For those of you who can't make it in person, this event will also be streamed live at <a href="http://www.ssw.com.au/ssw/NETUG/Live.aspx">http://www.ssw.com.au/ssw/NETUG/Live.aspx</a></p>

            <p>
                <img src="http://ssw.com.au/ssw/NETUG/Images/agile-ball-game-bw.png" width="690" /><br />
                <b>Figure: a previous Agile Olympics session</b>
            </p>

            <p><b>Who is this event for?</b></p>
            <p>This event is for people anyone who is interested in Scrum – from those who are new to Scrum and want to learn more, to experienced Scrum developers who want to practise their skills in a fun environment. It's also a great refresher for people who have learned Scrum but haven't had a chance to use it in a while.</p>
            <p>If you're someone who currently uses Scrum, the games we play on the night would be fun team-building exercises to take back to your Scrum team at work. </p>
            <p>We recommend attendees who have not already done so to have a read <a href="http://www.scrumguides.org/docs/scrumguide/v1/scrum-guide-us.pdf" target="_blank">the Scrum Guide</a> before coming along on the night. </p>

            <p><b>Why we're using this format</b></p>
            <p>Scrum is a big idea and there are a lot of terms and concepts within it. So, instead of one long session with a speaker talking about Scrum for several hours, which can become tedious and therefore detrimental to learning, this night will be broken down into smaller segments. </p>
            <p>Each segment will involve games that allows us to explore and illustrate important principles of Scrum such as: </p>
            <ul>
                <li>Continuous incremental improvement over the course of several iterations (which typically take weeks or months but in this session just minutes) </li>
                <li>How to identify and overcome bottlenecks and other impediments</li>
                <li>The power of the retrospective</li>
                <li>Effective communication </li>
                <li>Backlogs as a flexible vision of the product, not a cut and dry task list</li>
            </ul>
            <p>For example, when completing the Scrum simulation with Lego, successful participants will build a project to spec. They'll start with an open backlog, incrementally assess their project's development, complete with retrospectives, and communicate effectively within the team. </p>

            <p><b>Why come along </b></p>
            <p>Observation usually works much better than written instructions, and interactive/hands-on learning works best of all. </p>
            <p>Using games to illustrate concepts makes it easier to grasp and leads to faster and more memorable learning – while keeping you engaged and focused. </p>
            <p>Attendees will:</p>

            <ul>
                <li>Learn about Scrum from a scrum.org certified trainer</li>
                <li>Have the chance to socialise with other developers</li>
                <li>Enjoy free delicious pizza</li>
            </ul>

            <p><b>Would I use these games in my own company? </b></p>
            <p>Yes! These games are great for team building, and if there's something your Scrum team is struggling with, they're also a great way keep your team positive while ensuring they’re all on the same page in regards to a concept or issue. </p>

            <p>Keep in mind that this session will only cover the basics. For more information regarding certified Scrum courses and training head over to <a href="http://www.ssw.com.au/ssw/Events/Training/Scrum-Training-Course-3-days.aspx" target="_blank">http://www.ssw.com.au/ssw/Events/Training/Scrum-Training-Course-3-days.aspx</a></p>


        </div>

        <div class="section">
            <h2><a name="Details"></a>Event Details</h2>
            <table class="beautyTable">
                <tr class="odd">
                    <td>Date:</td>
                    <td>18th of February 2015</td>
                </tr>
                <tr>
                    <td>Time:</td>
                    <td>6:00pm - 8:00pm AEDT</td>
                </tr>
                <tr class="odd">
                    <td>Cost:</td>
                    <td>No Charge </td>
                </tr>
                <tr>
                    <td>Presenter:</td>
                    <td>Jesse Houwing</td>
                </tr>
            </table>
        </div>

        <h2><a name="Register"></a>Register</h2>
        <div style="width: 100%; text-align: left;">
            <iframe src="//eventbrite.com.au/tickets-external?eid=15627506292&ref=etckt" frameborder="0" height="214" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe>
            <div style="font-family: Helvetica, Arial; font-size: 10px; padding: 5px 0 5px; margin: 2px; width: 100%; text-align: left;"><a style="color: #ddd; text-decoration: none;" target="_blank" href="http://www.eventbrite.com.au/r/etckt">Event management</a><span style="color: #ddd;"> for </span><a style="color: #ddd; text-decoration: none;" target="_blank" href="https://www.eventbrite.com.au/e/ssw-user-group-special-the-agile-olympics-with-jesse-houwing-tickets-15627506292?ref=etckt">SSW User Group Special: the Agile Olympics with Jesse Houwing</a> <span style="color: #ddd;">powered by</span> <a style="color: #ddd; text-decoration: none;" target="_blank" href="http://www.eventbrite.com.au?ref=etckt">Eventbrite</a></div>
        </div>

        <p>
            <center>This event proudly brought to you by<br />
        <img src="/ssw/NETUG/Images/thumbs/thumb-sydneyUG.jpg" border="0" alt="The Sydney .NET User Group" /><a href="http://www.ssw.com.au/ssw/NETUG/Sydney.aspx" target="_blank"></a></center>
        </p>

        <p>
            For more about the Sydney .NET user group and to see up coming sessions 
        visit <a href="http://www.ssw.com.au/ssw/NETUG/Sydney.aspx" target="_blank">The official Sydney .NET User Group web site</a>
        </p>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section">
        <h3>About the presenter</h3>
        <p>
            <img src="/ssw/netug/Images/thumbs/jesse-houwing-thumbnail.png" class="thumbnail" width="75" />
            <strong>Jesse Houwing</strong><br />
            Jesse is an agile addict, loves strong espressos, used to teach people how to create crazy regular expressions and tries to solve other people's LINQ queries in his spare time, they're better than a regular cryptogram, you know?! He works for Avanade as a Microsoft ALM Consultant and trains its development teams to do proper scrum. Adam dubbed him the Agile Dutchman. He's married to his lovely wife Charlotte and lives in the city of Utrecht, smack in the middle of The Netherlands.
        </p>
        <p>He blogs over at <a href="http://blog.jessehouwing.nl/" target="_blank">http://blog.jessehouwing.nl/</a></p>
    </div>
</asp:Content>

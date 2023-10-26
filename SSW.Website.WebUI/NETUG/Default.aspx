<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs"  MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW User Groups Index" %>

<%@ Register Src="~/Components/Newsletter.ascx" TagName="Newsletter" TagPrefix="ssw" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ContentPlaceHolderID="title" runat="server">
    <h1>SSW User Groups</h1>
    <h2>A Community for Developers</h2>
</asp:Content>
<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    
    <div class="section">
        <p>Every month SSW hosts the Sydney .NET User Group, where developers come together to learn about the latest technologies from local and internationally renowned experts. Topics focus on .NET and other Microsoft technologies (Azure, DevOps, SharePoint, Xamarin and more), full stack development (Angular, React and more), as well as exciting opportunities to learn about the latest industry trends and even tips on presenting from world class speakers.</p>
        <br />
        <div class="video-player" data-id="coPZ75akNYA"></div>
    </div>

    <hr />

    <div id="isotope">
        <div class="grid" style="width:50%;"></div>
        <div class="item all">
            <a href="/ssw/NETUG/Sydney.aspx">
                <img src="Images/thumbs/thumb-sydneyUG.jpg" alt="Thumbnail for Sydney UG" />
                <div class="ourHolder-text">
                    <h3>Sydney .NET User Group</h3>
                    <p>Every month, SSW hosts the Sydney .NET User Group where developers meet to exchange ideas and listen to presentations by industry experts.</p>
                </div>
            </a>
        </div>
        <div class="item all">
            <a href="/ssw/NETUG/Live.aspx">
                <img src="Images/thumbs/thumb-netug-live.jpg" alt="Thumbnail for Canberra UG" />
                <div class="ourHolder-text">
                    <h3>Sydney UG Live Stream</h3>
                    <p>Live every 3rd Wednesday of the month at 6PM AEDT (UTC+11). Join Sydney .NET UG from the comfort of your own home in your underpants.</p>
                </div>
            </a>
        </div>
        <div class="item all">
            <a href="/ssw/NETUG/Canberra.aspx">
                <img src="Images/thumbs/thumb-canberraUG.jpg" alt="Thumbnail for Canberra UG" />
                <div class="ourHolder-text">
                    <h3>Canberra .NET User Group</h3>
                    <p>Every month, SSW hosts the Canberra .NET User Group where developers meet to exchange ideas and listen to presentations by industry experts.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="/ssw/NETUG/Melbourne.aspx">
                <img src="Images/thumbs/thumb-melbourneUG.jpg" alt="Thumbnail for Melbourne UG" />
                <div class="ourHolder-text">
                    <h3>Melbourne .NET User Group</h3>
                    <p>Every month, SSW hosts the Melbourne .NET User Group where developers meet to exchange ideas and listen to presentations by industry experts.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="/ssw/NETUG/Brisbane.aspx">
                <img src="Images/thumbs/thumb-brisbaneUG.jpg" alt="Thumbnail for Brisbane UG" />
                <div class="ourHolder-text">
                    <h3>Brisbane Full Stack User Group</h3>
                    <p>Every month, SSW hosts the Brisbane Full Stack User Group where developers meet to exchange ideas and listen to presentations by industry experts.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="http://fireusergroup.com/" class="ignore">
                <img src="Images/thumbs/thumb-fireUG.jpg" alt="Thumbnail for Fire UG" />
                <div class="ourHolder-text">
                    <h3>Fire User Group <span class="flag-icon flag-icon-cn"></span></h3>
                    <p>Every month, SSW hosts the Fire User Group, in Beijing and Hangzhou - China, where developers meet to exchange ideas and listen to presentations by industry experts.</p>
                </div>
            </a>
        </div>

        <div class="item all">
            <a href="/ssw/NETUG/SSWUpdatePrevious.aspx">
                    <h3>Monthly SSW Newsletters</h3>
                    <p>By signing up for our newsletter you'll be kept informed about the latest upcoming developer events and news.</p>
            </a>
        </div>
        <div class="item all">
            <a href="/ssw/NETUG/Evaluation-Survey/">
                    <h3>User Group Evaluation Survey</h3>
                    <p>Fill the form to evaluate the session you have attended.</p>
            </a>
        </div>
        <div class="item all">
            <a href="/ssw/NETUG/PastSessions.aspx">
                    <h3>Past Sessions</h3>
                    <p>Check what happened on .NET User Groups past sessions.</p>
            </a>
        </div>
        <div class="item all">
            <a href="/ssw/NETUG/Developerlinks.aspx">
                    <h3>Developer UG Links</h3>
                    <p>These are some great resources for .NET, SQL Server, Access and VB developers.</p>
            </a>
        </div>
        
    </div>
</asp:Content>


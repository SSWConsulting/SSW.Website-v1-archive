<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Foursquare Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>

        <ol>
            <li><a href="#CheckinHistory">Show me check-in history and stop notifications</a></li>
            <li><a href="#InsertName">FourSquare - suggestion to insert the name (one of the people I follow) </a></li>
        </ol>

        <ol>
            <li>
                <h2><a name="CheckinHistory"></a>Show me check-in history and stop notifications</h2>
                <p>                </p>
                <dl class="image">
                    <dt><img src="Images/foursquare-alert.jpg" alt="foursquare screen" /></dt>
                    <dd>Figure: Noisy alert on my iPhone</dd>
                </dl>
                <ol>
                    <li>Help me see their history, before turning their noisy checkin's off</li>
                    <li>Add heading 'History' with their prior check-ins</li>
                    <li>Add button at bottom to "stop notifications for Ron"</li>
                </ol>
                <dl class="image">
                    <dt><img src="Images/foursquare-ron.jpg" alt="foursquare screen" /></dt>
                    <dd>Figure: I want to have more options on this screen</dd>
                </dl>
            </li>
            <li>
                <h2><a name="InsertName"></a>FourSquare - suggestion to insert the name (one of the people I follow)</h2>
                <dl class="image">
                    <dt><img src="Images/InsertName.jpg" alt="Insert a follower" /></dt>
                    <dd>Figure: Give me an easy way to 'Insert a follower'</dd>
                </dl>               
            </li>
        </ol>

</asp:Content>

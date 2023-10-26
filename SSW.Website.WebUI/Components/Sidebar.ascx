<%@ Control Language="C#" AutoEventWireup="true" Inherits="SSW.Website.WebUI.Components.Sidebar"
    CodeBehind="Sidebar.ascx.cs" %>
<%@ Register Src="SearchBox.ascx" TagName="SearchBox" TagPrefix="ssw" %>
<div id="leftSidebar">
    <!-- Personalisation -->
    <div id="hideLeftNav">
        <!--<a href="javascript:hideLeftNavBar();" title="Close left navigation bar">Hide Left Navigator <img src="/ssw/Images/CloseLeftNav.gif" alt="Close left navigation bar"/></a>-->
        <asp:LinkButton ID="lbtnHideLeftNavBar" runat="server" ToolTip="Close left navigation bar">Hide Left Navigator <img src="/ssw/Images/CloseLeftNav.gif" alt="Close left navigation bar"/></asp:LinkButton>
    </div>
    <asp:PlaceHolder ID="plcCaution" Visible="False" runat="server">
        <div class="cautionBox">
            <h4>
                <strong>SSW Developers,</strong><br />
                do you know what CSS Styles you should use?</h4>
            <p>
                <a href="/ssw/Standards/Templates/sswwebtemplate.aspx#css">View our SSW Web Templates</a></p>
        </div>
    </asp:PlaceHolder>
    <h2>
        Welcome</h2>
    <ul>
        <li>
            <asp:Panel ID="anonymousPanel" runat="Server">
                <asp:HyperLink ID="loginHyperLink" NavigateUrl="/ssw/Shop/Login.aspx" runat="Server">Login / Join ssw.com.au</asp:HyperLink>
            </asp:Panel>
            &nbsp;
            <asp:Panel ID="loggedOnPanel" runat="Server" Visible="False">
                <asp:Label ID="usernameLabel" runat="Server">[User]'s ssw.com.au</asp:Label>
                <a href="/ssw/Shop/Login.aspx?Action=Logout">Log Off</a><br />
                <asp:HyperLink ID="editDetailsHyperLink" NavigateUrl="/ssw/Shop/ClientDetail.aspx"
                    runat="Server">Edit My Details</asp:HyperLink>
            </asp:Panel>
        </li>
        <li>
            <asp:Label ID="greetingLabel" runat="Server">[Good Morning]</asp:Label>
        </li>
        <li>
            <asp:Label ID="currentDateTimeLabel" runat="Server">[What's the time?]</asp:Label>
        </li>
    </ul>
    <!-- Online Statistics -->
    <h2>
        Newsletter Statistics</h2>
    <asp:MultiView ID="membershipViews" runat="server" EnableTheming="False">
        <asp:View ID="membershipView" runat="server">
            <ul>
                <li>Total Members:
                    <asp:Label ID="totalMembersLabel" runat="Server">[0]</asp:Label>
                </li>
                <li>New This Week:
                    <asp:Label ID="newMembersWeekLabel" runat="Server">[0]</asp:Label>
                </li>
                <li>New Today:
                    <asp:Label ID="newMembersTodayLabel" runat="Server">[0]</asp:Label>
                </li>
            </ul>
        </asp:View>
        <asp:View ID="membershipErrorView" runat="server">
            <ul>
                <li>Temporarily unavailable:</li>
                <li>
                    <asp:Label ID="errorViewLabel" runat="server" Text=""></asp:Label></li></ul>
        </asp:View>
    </asp:MultiView>
    <ul>
        <li><a href="/ssw/netug/sswupdateprevious.aspx">Monthly SSW Newsletters</a> </li>
        <li>
            <asp:TextBox ID="newsletterEmailTextBox" runat="Server" CssClass="inputText" ValidationGroup="SignUpEmail"
                CausesValidation="False" value="Your Email" onblur="if (value == '') {value = 'Your Email'}"
                onfocus="if (value == 'Your Email') {value =''}"></asp:TextBox><asp:Button ID="newsletterSignUpButton"
                    runat="Server" Text="Join" CssClass="inputSubmit" ValidationGroup="SignUpEmail">
                </asp:Button>
            <span class="extraInfo"></span></li>
    </ul>
    <h2>
        People Online</h2>
    <ul>
        <li>Visitors:
            <asp:Label ID="visitorsOnlineLabel" runat="Server">[0]</asp:Label>
        </li>
        <li>Members:
            <asp:Label ID="membersOnlineLabel" runat="Server">[0]</asp:Label>
        </li>
        <li>Total:
            <asp:Label ID="totalOnlineLabel" runat="Server">[0]</asp:Label>
        </li>
    </ul>
    <!-- Contact Details -->
    <h2>
        Contact Us</h2>
    <ul id="contact">
        <li id="contactMail"><a href="javascript:sendEmail('696e666f407373772e636f6d2e6175')"
            onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
            onmouseout="javascript:clearStatus(); return true;">Email</a> </li>
        <li id="contactPhone"><span class="phoneNumber">(02) 9953 3000</span> </li>
        <li id="contactDirections"><a href="/ssw/company/directions/neutralbay/default.aspx">
            Directions to SSW</a> </li>
    </ul>
    <!-- Search Panels -->
    <ssw:SearchBox ID="searchBox" runat="server"></ssw:SearchBox>
    <asp:Literal ID="LiteralSideExtra" runat="server"></asp:Literal>
    <br />
    <div class="centerblock">
        <img src="/ssw/Images/Microsoft/poweredby_AspNet2.gif" border="0" alt="ASP.NET 2" /></div>
</div>

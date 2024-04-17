<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="SSW.Website.WebUI.Raven" Title=".NET User Group History" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
     --%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>User Group History</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>User Groups:</h2>
    <ul>
        <li><a href="Sydney.aspx">Sydney UG</a></li>
        <li><a href="Canberra.aspx">Canberra UG</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

<%--<p><asp:SiteMapPath ID="SiteMapPath2" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"></asp:SiteMapPath></p>--%>
    <h2>SSW has now run user groups for over 16 years</h2>
        
    <p>From its humble beginnings as the Access User Group to the largely popular <strong>Sydney .NET User Group</strong>, SSW has seen its membership and attendance levels increase. Aside from being a great chance to network with IT professionals at the cutting edge of their industry, it's a great chance to learn something new in a relaxed, fun environment.</p>
    <p>SSW has also been known to invite international guest speakers to present at the User Groups. Gurus such as:</p>
        <dl class="image" style="float: right;">
            <dt>
                <img alt="Plenty of interaction at our Sydney User Group " src="Images/user-group-interaction-photo.jpg"></dt>
            <dd>Plenty of interaction at our Sydney User Group </dd>
        </dl>
        <ul>
            <li><strong>Ken Getz</strong>, Microsoft Regional Director<span lang="en-au"> </span></li>
            <li><strong>Bill Vaughan</strong></li>
            <li><strong>Brian Randell</strong></li>
            <li><strong>Tom Howe</strong></li>
            <li><strong>Chris Kinsman</strong>, Microsoft Regional Director</li>
            <li><strong>Mike Fitzmaurice</strong></li>
            <li><strong>Scott Hanselman</strong> - Watch the videos:
                <ul>
                    <li><a href="http://tv.ssw.com/4916/scott-hanselman-unplugged-in-sydney-open-qa-on-microsoft-and-azure" target="_blank">Hanselman Unplugged in Sydney - Open Q&A on Microsoft and Azure</a></li>
                    <li><a href="http://tv.ssw.com/4975/scott-hanselman-windows-azure-visual-studio-2013" target="_blank">Scott Hanselman on Windows Azure and Visual Studio 2013</a></li>
                </ul>
            </li>
        </ul>
    <p>Here's a quick summary of the history of SSW User Groups:</p>
        <h2>1992</h2>
            <p>Debuts of the &quot;Access User Group, Sydney&quot;</p>
        <h2>1995</h2>   
            <p>Renamed to the &quot;Access/VB User Group, Sydney&quot;</p>
        <h2>1996</h2>
            <p>Renamed to the &quot;Access/VB/ASP User Group, Sydney&quot;</p>
        <h2>1997</h2>
            <p>Renamed to the &quot;Access/VB/ASP/SQL Server User Group, Sydney&quot;</p>
        <h2>2001</h2>
            <p>Renamed to the &quot;.NET User Group, Sydney&quot;</p>

</asp:Content>
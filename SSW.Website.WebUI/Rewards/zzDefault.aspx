<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="SSW.Website.WebUI.Raven" Title="SSW Rewards - Scan SSW QR codes, earn SSW Points, claim rewards, and win prizes!" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
     --%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>SSW Rewards App</h1>
    <h2>Scan SSW QR codes, earn SSW Points, claim rewards, and win prizes!</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

<%--<p><asp:SiteMapPath ID="SiteMapPath2" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"></asp:SiteMapPath></p>--%>

    <p>The SSW app allows people to scan SSW employees QR codes and then see their points increase and move up the leaderboard. When they have enough points, the app informs them of the prize that they just won. <a href="https://adamcogan.com/2019/11/06/ssw-had-fun-at-ndc-gotta-catch-em-all/">More on Adam's Blog</a>.</p>
    <div class="video-player" data-id="UVjun9hPwTc" data-youtuberes="hqdefault"></div>

    <h2>About the project</h2>
    <p>SSW Rewards is an open source project and can be found on <a href="https://github.com/SSWConsulting/SSW.Rewards" target="_blank">GitHub</a>.</p>
    <p>It comprises a front end written in Xamarin Forms and a back end written in ASP.NET Core.</p>
    <p><strong>Note:</strong> At SSW we also have an admin portal on Azure DevOps internally, used for managing content, user notifications and reporting.</p>
    <p>You are free to use and adapt the code on GitHub, and submit a pull request to help the community! <a href="/ssw/Company/ContactUs.aspx">Contact SSW</a> if you are interested in us adapting this for your own business.</p>

    <h2>Download the app</h2>
    <div>
        <div class="row">
            <div class="centered col-sm-6">
                <h3>iOS</h3>
                <a class="ignore" target="_blank" href="https://apps.apple.com/ca/app/ssw-rewards/id1482994853">
                    <img src="images/download-appstore.jpg" />
                </a>
            </div>
            <div class="centered col-sm-6">
                <h3>Android</h3>
                <a class="ignore" target="_blank" href="https://play.google.com/store/apps/details?id=com.ssw.consulting">
                    <img src="images/download-googleplay.jpg" />
                </a>
            </div>
        </div>
    </div>
    <hr style="margin: 5rem 0;">
    <h3>Launched at NDC Sydney conference</h3>
    <blockquote class="twitter-tweet"><p lang="en" dir="ltr">Hey <a href="https://twitter.com/NDCconferences?ref_src=twsrc%5Etfw">@NDCconferences</a> <a href="https://twitter.com/hashtag/Sydney?src=hash&amp;ref_src=twsrc%5Etfw">#Sydney</a> attendees! Do you want some cool prizes? You can win anything from a <a href="https://twitter.com/hashtag/googlenesthub?src=hash&amp;ref_src=twsrc%5Etfw">#googlenesthub</a> to <a href="https://twitter.com/hashtag/Xiaomi?src=hash&amp;ref_src=twsrc%5Etfw">#Xiaomi</a> Mi Bands! Watch this video to see how you can win the SSW Treasure hunt! 🤙 👀 <a href="https://t.co/HaPePO168o">pic.twitter.com/HaPePO168o</a></p>&mdash; SSW / SSW TV (@SSW_TV) <a href="https://twitter.com/SSW_TV/status/1184008604619284482?ref_src=twsrc%5Etfw">October 15, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

</asp:Content>
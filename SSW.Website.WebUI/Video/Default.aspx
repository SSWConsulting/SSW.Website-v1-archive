<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs"
    MasterPageFile="~/Masters/SubPage.master" Title="SSW Videos Index" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontentFull" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath2" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
        <h1>
            SSW Video Index</h1>
            <p>This is the index of all SSW videos that are on SSW. Others are on <a href="http://tv.ssw.com">tv.ssw.com</a> </p>
            <p>Also see <a href="Also see http://www.youtube.com/sswtechtalks" target="_blank">www.youtube.com/sswtechtalks</a></p>
        <table id="coursesSchedule" width="750" border="0" cellspacing="0" cellpadding="0">
            <tr class="coursesInfo">
                <td class="coursesTitles" width="60%">
                    Title
                </td>
                <td>
                    Date
                </td>
                <td>
                    Presenter
                </td>
                <td>
                    Notes
                </td>
            </tr>
            <tr>
                <td colspan="6" class="VideoSection">
                    SSW User Group Presentation
                </td>
            </tr>
            <tr class="parent">
                <th>
                    <a>Business Apps in SilverLight</a>
                </th>
                <td>
                    July 2009
                </td>
                <td>
                    Jonas Folles?
                </td>
                <td></td>
            </tr>
            <tr class="child">
                <td>
                    <object width="400" height="267">
                        <param name="allowfullscreen" value="true" />
                        <param name="allowscriptaccess" value="always" />
                        <param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=5602543&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1" />
                        <embed src="http://vimeo.com/moogaloop.swf?clip_id=5602543&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1"
                            type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always"
                            width="400" height="267"></embed></object>
                </td>
                <td colspan="2">
                    Link: <a href="http://www.vimeo.com/5602543">http://www.vimeo.com/5602543</a><br />
                </td>
            </tr>
            <tr>
                <td colspan="6" class="VideoSection">
                    SSW Promotional videos
                </td>
            </tr>
            <tr class="parent">
                <th>
                    <a>SharePoint 101 for Business People</a>
                </th>
                <td>
                    October 2009
                </td>
                <td>
                    Joe Hardy
                </td>
                <td></td>
            </tr>
            <tr class="child">
                <td>
                    <object data="data:application/x-silverlight-2," type="application/x-silverlight-2"
                        width="512" height="288">
                        <param name="source" value="/ssw/Include/Silverlight/MediaPlayerTemplate.xap" />
                        <param name="initparams" value='autoplay=False,autoload=True,enablecaptions=False,muted=False,stretchmode=1,displaytimecode=False,playlist=<playList><playListItems><playListItem title="" description="" mediaSource="SSW-SharePoint-101.wmv" adaptiveStreaming="False" thumbSource="" frameRate="25" width="512" height="288" ></playListItem></playListItems></playList>' />
                        <a href="http://www.microsoft.com/getsilverlight/handlers/getSilverlight.ashx?v=4.0" style="text-decoration: none;">
                            <img src="http://go2.microsoft.com/fwlink/?LinkId=108181" alt="Get Microsoft Silverlight"
                                style="border-style: none" /></a>
                    </object>
                </td>
                <td colspan="2">
                    Link: <a href="http://www.ssw.com.au/ssw/video/SSW-SharePoint-101.wmv">http://www.ssw.com.au/ssw/video/SSW-SharePoint-101.wmv</a><br />
                </td>
                <td></td>
            </tr>
            <tr class="parent">
                <th>
                    <strike><a>Why Should You Choose SSW? V1.0</a></strike>
                </th>
                <td>
                    July 2009
                </td>
                <td>
                    Marlon Marescia
                </td>
                <td></td>
            </tr>
            <tr class="child">
                <td>
                    <object data="data:application/x-silverlight-2," type="application/x-silverlight-2"
                        width="512" height="288">
                        <param name="source" value="/ssw/Include/Silverlight/MediaPlayerTemplate.xap" />
                        <param name="initparams" value='autoplay=False,autoload=True,enablecaptions=False,muted=False,stretchmode=1,displaytimecode=False,playlist=<playList><playListItems><playListItem title="" description="" mediaSource="Why-Choose-Ssw.wmv" adaptiveStreaming="False" thumbSource="" frameRate="25" width="512" height="288" ></playListItem></playListItems></playList>' />
                        <a href="http://www.microsoft.com/getsilverlight/handlers/getSilverlight.ashx?v=4.0" style="text-decoration: none;">
                            <img src="http://go2.microsoft.com/fwlink/?LinkId=108181" alt="Get Microsoft Silverlight"
                                style="border-style: none" /></a>
                    </object>
                </td>
                <td colspan="2">
                    Link: <a href="http://www.ssw.com.au/ssw/video/Why-Choose-Ssw.wmv">http://www.ssw.com.au/ssw/video/Why-Choose-Ssw.wmv</a><br />
                </td>
                <td></td>
            </tr>
            <tr>
                <th>
                    <a href="http://www.youtube.com/watch?v=li3Fkv4voL0" target="_blank">Why Should You Choose SSW? V2.0</a>
                </th>
                <td>
                    Feb 2012
                </td>
                <td>
                    Marlon Marescia
                </td>
                <td></td>
            </tr>
            <tr>
                <th>
                    <a href="http://www.youtube.com/watch?v=PtDNyWBusd0" target="_blank">Green Screen</a>
                </th>
                <td>
                    Dec 2011
                </td>
                <td>
                    Titus Maclaren
                </td>
                <td>
                    Quirky: Raj
                </td>
            </tr>
            <tr>
                <th>
                    <a href="http://www.youtube.com/watch?v=iQ0ujXPVSOc" target="_blank">Mentoring</a>
                </th>
                <td>
                    Jan 2012
                </td>
                <td>
                    Marlon Marescia
                </td>
                <td>
                    Quirky: None
                </td>
            </tr>
            <tr>
                <th>
                    <a href="http://www.youtube.com/watch?v=57t_o0Bspdk" target="_blank">SharePoint</a>
                </th>
                <td>
                    Jan 2012
                </td>
                <td>
                    Ulysses Maclaren
                </td>
                <td>
                    Quirky: none. TODO: Reveal
                </td>
            </tr>
            <tr>
                <th>
                    <a href="" target="_blank">In Progress: .NET MVC</a>
                </th>
                <td>
                    Feb 2012
                </td>
                <td>
                    Ulysses Maclaren
                </td>
                <td>
                    Quirky: None. TODO: Reveal
                </td>
            </tr>
            <tr>
                <th>
                    <a href="" target="_blank">In Progress: CRM</a>
                </th>
                <td>
                    Feb 2012
                </td>
                <td>
                    Ulysses Maclaren
                </td>
                <td>
                    Quirky: Uly
                </td>
            </tr>
            <tr>
                <th>
                    <a href="http://www.youtube.com/watch?v=0ugMkda9IBw" target="_blank">Top 5 MVC</a>
                </th>
                <td>
                    Dec 2012
                </td>
                <td>
                    Ulysses Maclaren
                </td>
                <td>
                    
                </td>
            </tr>
        </table>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Training Videos | SSW Consulting - Sydney, Brisbane, Melbourne, Newcastle, France, China" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="../images/thumbs/thumb-video-production.jpg" alt="Video Production" />
    <h1>Video Production - Training Videos</h1>
    <h2>Use the power of online videos for your business</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2><a name="AboutUs"></a>Training Videos:</h2>
    <ul>
        <li><a href="#Overview">Overview</a></li>
        <li><a href="#getstarted">How to Get Started</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2><a name="Overview"></a>Overview</h2>
        <p>Creating a training/induction video to save time training your staff and increase training efficiency, means they're back to working on activities that will make your business money within less time. At SSW, we specialize in a number of courses, events, user groups, and of course SSW TV. We’re well versed in educating professional people and will work to make the video(s) fit into your company culture, so it can be serious, quirky, humorously cocky, whatever you like!</p>
        <h3>How to Use Microsoft Lync</h3>
        <div id="id1">
            <div class="video-player" data-id="z45_IMwslYw" data-youkuid=""></div>
            <%--<iframe width="853" height="480" src="https://www.youtube.com/embed/z45_IMwslYw?rel=0" frameborder="0" allowfullscreen></iframe>--%> 
        </div>
        <div id="id2" style="display: none"><iframe src="https://player.vimeo.com/video/121205692" width="853" height="480" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
        <a href="#id"onclick="toggle_visibility(this,'id1', 'id2');" class="red btn next">Watch in higher quality on Vimeo</a>
    </div>

    <h3>Indicative Pricing</h3>
        <p>An indicative price for a video like this would be approximately $6,000 AUD + GST.</p>

    <%--<div class="section">
        <h2><a name="Details"></a>Details</h2>
        <table class="data" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <th>Training video</th>
                    <th>Short</th>
                    <th>Long</th>
                </tr>
                <tr>
                    <td>Slide Titles</td>
                    <td><span class="yes"></span></td>
                    <td><span class="yes"></span></td>
                </tr>
                <tr>
                    <td>Captions/lower 3rds</td>
                    <td><span class="yes"></span></td>
                    <td><span class="yes"></span></td>
                </tr>
                <tr>
                    <td>Music track during video</td>
                    <td><span class="yes"></span></td>
                    <td><span class="yes"></span></td>
                </tr>
                <tr>
                    <td>Talking Head</td>
                    <td>&nbsp;</td>
                    <td><span class="yes"></span></td>
                </tr>
                <tr>
                    <td>Lighting</td>
                    <td>&nbsp;</td>
                    <td><span class="yes"></span></td>
                </tr>
                <tr>
                    <td>Camera Type</td>
                    <td>Screen Recording</td>
                    <td>DSLR/Screen recording</td>
                </tr>
                <tr>
                    <td>Length of video</td>
                    <td>1-15 min</td>
                    <td>1-30 min</td>
                </tr>
                <tr>
                    <td>Number of video revisions</td>
                    <td>1</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>Hours of filming</td>
                    <td>1</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>Screen capture filming</td>
                    <td><span class="yes"></span></td>
                    <td><span class="yes"></span></td>
                </tr>
                <tr>
                    <td>Green screen filming</td>
                    <td>&nbsp;</td>
                    <td><span class="yes"></span></td>
                </tr>
                <tr>
                    <td>Examples</td>
                    <td>
                        <iframe width="200" height="113" src="//www.youtube.com/embed/yuf-jcbe1Ww?rel=0" frameborder="0" allowfullscreen></iframe>
                    </td>
                    <td>
                        <iframe width="200" height="113" src="//www.youtube.com/embed/q3OBkzwTQNw?rel=0" frameborder="0" allowfullscreen></iframe>
                    </td>
                </tr>
                <tr>
                    <td>Cost:</td>
                    <td><b>$500 + GST</b></td>
                    <td><b>$1,000 + GST</b></td>
                </tr>
            </tbody>
        </table>
    </div>--%>

    <div class="ContactUs">
	    <h2><a name="getstarted"></a>Get your project started</h2>
        <p>To find out if SSW can help your business, give us a call on <strong>+61 2 9953 3000</strong> or contact us by <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175')" onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                    onmouseout="javascript:clearStatus(); return true;">email</a> to get started! </p>
    </div>

    <text:Location runat="server" />
    
    <div class="section">
        <h2><a name="Related"></a>SSW Related Services</h2>
            <h3 class="accordionHeader"><a href="Video-Production-Product-Services.aspx">Product/Service Video</a></h3>
            
            <h3 class="accordionHeader"><a href="Video-Production-Content-Marketing.aspx">Content Marketing Video (Educational)</a></h3>
            
            <h3 class="accordionHeader"><a href="Conference-Video-Recording.aspx">Live Events</a></h3>
        
            <h3 class="accordionHeader"><a href="Video-Production-Custom-Video.aspx">Custom Video</a></h3>
            
            <h3 class="accordionHeader"><a href="Video-Production-Reusable-Extras.aspx">Reusable Extras</a></h3>
    </div>

</asp:Content>
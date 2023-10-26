<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Content Marketing Videos (Educational) | SSW Consulting - Sydney, Brisbane, Melbourne, Newcastle, France, China" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="../images/thumbs/thumb-video-production.jpg" alt="Video Production" />
    <h1>Video Production - Content Marketing Videos (Educational)</h1>
    <h2>Use the power of online videos for your business</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2><a name="AboutUs"></a>Content Marketing Videos:</h2>
    <ul>
        <li><a href="#Overview">Overview</a></li>
        <li><a href="#getstarted">How to Get Started</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2><a name="Overview"></a>Overview</h2>
            <p>Educational marketing is the new way to build company/brand trust and loyalty. If you deliver viewers what they want to see and expand their knowledge by sharing yours, you are then seen as an expert in your field and thus earn trust from colleagues, clients and industry associates. This increases your marketing efforts meaning more clients are driven to your business, increasing overall profits. 80% of a product or business’s success is dependent on marketing, so you want to get it right. Not only do we do this for our clients but we employ this technique for ourselves with <a href="http://tv.ssw.com/" target="_blank">SSW TV</a>, so we know the territory well.</p>
            <h3>Duncan Hunter FireBootCamp Interview</h3>
            <div id="id1">
                <div class="video-player" data-id="2FOvi8Ro1r0" data-youkuid=""></div>
                <%--<iframe width="853" height="480" src="https://www.youtube.com/embed/2FOvi8Ro1r0?rel=0" frameborder="0" allowfullscreen></iframe>--%>
            </div>
            <div id="id2" style="display: none"><iframe src="https://player.vimeo.com/video/121205694" width="682" height="384" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
            <a href="#id"onclick="toggle_visibility(this,'id1', 'id2');" class="red btn next">Watch in higher quality on Vimeo</a>
    </div>

    <h3>Indicative Pricing</h3>
        <p>An indicative price for a video like this would be approximately $4,000 AUD + GST.</p>

    <%--<div class="section">
        <h2><a name="Details"></a>Details</h2>
        <table class="data" cellspacing="0" cellpadding="0">
        <tbody>
        <tr>
        <td>&nbsp;</td>
        <td><b>Presentation (e.g. User Group)</b></td>
        <td><b>Content Marketing - short</b></td>
        <td><b>Content Marketing - long</b></td>
        </tr>
        <tr>
        <td><b>Number of participants</b></td>
        <td>1</td>
        <td>1</td>
        <td>2</td>
        </tr>
        <tr>
        <td><b>Slide Titles</b></td>
        <td><span class="yes"></span></td>
        <td><span class="yes"></span></td>
        <td><span class="yes"></span></td>
        </tr>
        <tr>
        <td><b>Talking Head</b></td>
        <td>&nbsp;</td>
        <td><span class="yes"></span></td>
        <td><span class="yes"></span></td>
        </tr>
        <tr>
        <td><b>Music track during video</b></td>
        <td>&nbsp;</td>
        <td><span class="yes"></span></td>
        <td><span class="yes"></span></td>
        </tr>
        <tr>
        <td><b>Skype interview</b></td>
        <td>&nbsp;</td>
        <td><span class="yes"></span></td>
        <td><span class="yes"></span></td>
        </tr>
        <tr>
        <td><b>Lighting</b></td>
        <td>&nbsp;</td>
        <td><span class="yes"></span></td>
        <td><span class="yes"></span></td>
        </tr>
        <tr>
        <td><b>Captions/lower 3rds</b></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><span class="yes"></span></td>
        </tr>
        <tr>
        <td><b>Camera Type</b></td>
        <td>Handy-cam/Screen recording</td>
        <td>DSLR</td>
        <td>DSLR</td>
        </tr>
        <tr>
        <td><b>Length of video</b></td>
        <td>30-120 min</td>
        <td>2-3 min</td>
        <td>3-8 min</td>
        </tr>
        <tr>
        <td><b>Hours of filming</b></td>
        <td>2</td>
        <td>1</td>
        <td>2</td>
        </tr>
        <tr>
        <td><b>Green screen filming</b></td>
        <td>&nbsp;</td>
        <td><span class="yes"></span></td>
        <td><span class="yes"></span></td>
        </tr>
        <tr>
        <td><b>On location filming</b></td>
        <td><span class="yes"></span></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        </tr>
        <tr>
        <td><b>Screen capture filming</b></td>
        <td><span class="yes"></span></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        </tr>
        <tr>
        <td><b>Live streaming</b></td>
        <td><span class="yes"></span></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        </tr>
        <tr>
        <td>Examples</td>
        <td><iframe width="200" height="113" src="//www.youtube.com/embed/G67ozf0dKT8?rel=0" frameborder="0" allowfullscreen></iframe></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        </tr>
        <tr>
        <td><b>Cost:</b></td>
        <td><b>$1,500 + GST</b></td>
        <td><b>$1,000 + GST</b></td>
        <td><b>$2,000 + GST</b></td>
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
           
            <h3 class="accordionHeader"><a href="Video-Production-Training.aspx">Training Video</a></h3>
            
            <h3 class="accordionHeader"><a href="Conference-Video-Recording.aspx">Live Events</a></h3>
        
            <h3 class="accordionHeader"><a href="Video-Production-Custom-Video.aspx">Custom Video</a></h3>
            
            <h3 class="accordionHeader"><a href="Video-Production-Reusable-Extras.aspx">Reusable Extras</a></h3>
            
    </div>

</asp:Content>
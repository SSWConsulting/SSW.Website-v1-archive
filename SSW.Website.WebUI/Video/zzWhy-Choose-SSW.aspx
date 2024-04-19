<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/SubPage.master" Title="SSW Consulting - 3 Reasons to Choose SSW" %>

<%@ Register TagPrefix="text" TagName="Location" Src="~/components/location.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>
        3 Reasons to Choose SSW</h1>
    <h2>
        Presented by Marlon Marescia</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
    <img src="video-header.jpg" height="142" width="799" alt="" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div class="section">
<object data="data:application/x-silverlight-2," type="application/x-silverlight-2" width="512" height="288">
<param name="source" value="/ssw/Include/Silverlight/MediaPlayerTemplate.xap"/>
<param name="initparams" value='autoplay=False,autoload=True,enablecaptions=False,muted=False,stretchmode=1,displaytimecode=False,playlist=<playList><playListItems><playListItem title="" description="" mediaSource="Why-Choose-Ssw.wmv" adaptiveStreaming="False" thumbSource="" frameRate="25" width="512" height="288" ></playListItem></playListItems></playList>' />
<a href="http://www.microsoft.com/getsilverlight/handlers/getSilverlight.ashx?v=4.0" style="text-decoration: none;"><img src="http://go2.microsoft.com/fwlink/?LinkId=108181" alt="Get Microsoft Silverlight" style="border-style: none"/></a>
</object>
</div>
    <div class="section">
<div id="productHighlights">
<ul>
<li>We lower risk of software development</li>
<li>We are a team of technology specialists</li>
<li>We’re the people other software developers call on</li>
</ul>
</div>
    </div>

    <text:Location runat="server" />

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
<%--    <div class="rounded">
        <h3>Our Experience</h3>
    </div>
        <div class="section">
        <p>For 16 years we have been servicing: Sydney NSW, Melbourne VIC, Brisbane QLD, Canberra ACT and Adelaide SA.</p>
    </div>
    <div class="section">
        <h3>
            How to get started</h3>

        <p><img src="images/phone.png" alt="" height="89" width="74" align="right" /><strong>
            Call us on <br /> +61 2 9953 3000 to get started!</strong></p>
    </div>--%>
   
</asp:Content>

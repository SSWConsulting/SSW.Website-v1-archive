<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="SSW.Website.WebUI.Raven" Title="Directions to SSW Hangzhou Office - China" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/images/raven/offices-Hangzhou.jpg" alt="Hangzhou">
    <h1>Directions to SSW Hangzhou Office</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sidebarcontainer" runat="server">

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div class="section">

        <h2><a name="Map"></a>SSW Hangzhou Map</h2>
            <dl class="image">
                <dt><img src="Images/SSW-hangzhou-map-wide.jpg" alt="SSW Hangzhou map" /></dt>
                <dd>Figure: SSW Hangzhou Office location</dd>
            </dl>

        <h2><a name="Directions"></a>SSW Hangzhou Directions</h2>
            <h4>Level 3, Room 304-1, Building 2, Star City Development Building, 406 Xintiandi Street<br />
            Hangzhou City, Zhejiang Province</h4>
            <dl class="image">
            <dt><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d430.506531677832!2d120.1774611293609!3d30.32103149999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe791e6ece8721a1e!2zMzDCsDE5JzE1LjkiTiAxMjDCsDEwJzQxLjIiRQ!5e0!3m2!1sen!2sus!4v1665617869534!5m2!1sen!2sus" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe></dt> 
        </dl>        
    
        <h2>SSW Hangzhou - New Office Tour</h2>

        <div class="video-player" data-id="BioFgITYAFY" data-youtuberes="hqdefault"></div>
    
    </div>
    <div class="section">
        <h2>Contact Information</h2>
        <p>Phone: +86 571 8517 8910<br />
            <a href="javascript:sendEmail('696e666f4265696a696e67407373772e636f6d2e6175')" onmouseover="javascript:displayStatus('696e666f4265696a696e67407373772e636f6d2e6175'); return true;"
            onmouseout="javascript:clearStatus(); return true;">Email</a>
        </p>
    </div>
</asp:Content>

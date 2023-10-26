<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="SSW.Website.WebUI.Raven" Title="Directions to SSW Strasbourg Office - France" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/images/raven/offices-Strasbourg.jpg" alt="Strasbourg">
    <h1>Directions to SSW Strasbourg Office</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sidebarcontainer" runat="server">

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div class="section">

        <h2>About Us</h2>
        <p>Strasbourg is in region of "Alsace" - famous for their wines and food... basically just like everywhere in France :)</p>
        <p><a href="https://ssw.fr/?utm_source=referral&utm_medium=sswaustralia" class="next btn red ignore">Visit our French website</a></p>

        <h2><a name="Map"></a>SSW Strasbourg Map</h2>
            <dl class="image">
                <dt><img src="Images/SSW-strasbourg-map-wide.jpg" alt="SSW Strasbourg map" /></dt>
                <dd>Figure: SSW Strasbourg Office is in the heart of Europe, in the middle of Luxembourg, Stuttgart, Zurich</dd>
            </dl>

        <h2><a name="Directions"></a>SSW Strasbourg Directions</h2>
            <h4>1 Rue de la Porte Blanche, 67000, Strasbourg, France</h4>
            <p>Phone: +33 3 67 39 05 39</p>
            <dl class="image">
                <dt><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1352420.9392975545!2d6.91544484592261!3d48.543825838494485!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4796c9cacd7964d9%3A0x202bcb60961ac3c6!2s1%20Pl.%20de%20la%20Prte%20Blanche%2C%2067000%20Strasbourg%2C%20France!5e0!3m2!1sen!2sca!4v1666378754177!5m2!1sen!2sca" width="800" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></dt>            
            </dl>

        <h3>Getting there</h3>

        <p>People can fly to:</p>
        <ul>
            <li><strong>Paris - France (CDG)</strong> then 2h high-speed train</li>
            <li><strong>Frankfurt - Germany (FRA)</strong> then 2h high-speed train</li>
            <li><strong>Zurich - Switzerland (SXB)</strong> then 3h train</li>
            <li><strong>Luxembourg - Luxembourg (LUX)</strong> then 4h train</li>
    </div>
</asp:Content>

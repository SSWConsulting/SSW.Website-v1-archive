<%@ Control Language="C#" AutoEventWireup="false" Inherits="SSW.Website.WebUI.Components.Footer" Codebehind="Footer.ascx.cs" %>
<script src="/ssw/include/decodeMail.js" type="text/javascript"></script>
<script runat="server">
    protected string GetYear() {
        return DateTime.Now.Year.ToString();
    }
</script>
<div id="footer">
    <p class="callnow">Call Now <a href="tel:+61299533000">+61 2 9953 3000</a></p>
    <span class="copyright">&#169; Copyright SSW 1990-<%=GetYear()%>. All Rights Reserved.</span>
    <ul>
        <li class="first"><asp:HyperLink ID="feedbackHyperLink" runat="Server" EnableViewState="false" Text="Feedback to SSW" TabIndex="100" CssClass="email"></asp:HyperLink></li>
        <%--<li><a href="/ssw/Company/Privacy.aspx">Privacy Policy</a></li>--%>
        <li><a href="/ssw/Company/AboutUs.aspx">About SSW</a></li>
        <li><a href="/ssw/Advertising/Default.aspx">Advertising</a></li>
        <li class="last"><a href="/ssw/MenuMap.aspx">Sitemap</a></li>
    </ul>
    <span class="proudly"><a href="http://www.ssw.com.au">Proudly developed by SSW Sydney Web Design</a></span>
    <!-- span class="proudlyAjax"><a href="/ssw/Standards/Rules/RulesToBetterWebsitesAdministration.aspx#AJAX">Powered by MS AJAX</a></span -->
    <p class="serverName">Our website is under constant continuous deployment. <asp:Literal ID="lthContDeployment" runat="server" EnableViewState="false"></asp:Literal></p>
</div>

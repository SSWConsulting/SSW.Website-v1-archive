<%@ Control Language="C#" AutoEventWireup="false" Inherits="SSW.Website.WebUI.Components.Footer" Codebehind="FooterNewZealand.ascx.cs" %>
<script runat="server">
    protected string GetYear()
    {
        return DateTime.Now.Year.ToString();
    }
</script>

<div id="footer">
    <p class="callnow">Call Now +64 9 889 2988</p>
  <span class="copyright">Copyright &copy; SSW 1990-<%=GetYear()%>. All Rights Reserved.</span>
  <ul>
    <li class="first"><asp:HyperLink ID="feedbackHyperLink" runat="Server" Text="Feedback to SSW" TabIndex="100" CssClass="email"></asp:HyperLink></li>
    <li ><a href="/ssw/Company/Privacy.aspx">Privacy Policy</a></li>
    <li><a href="/ssw/Company/AboutUs.aspx">About SSW</a></li>
    <li><a href="/ssw/Advertising/Default.aspx">Advertising</a></li>
    <li class="last"><a href="/ssw/MenuMap.aspx">Sitemap</a></li>
  </ul>
  <span class="proudly">Proudly developed by <a href="http://www.ssw.com.au">SSW Sydney Web Design</a></span>
  <span class="proudlyAjax"><a href="/ssw/Standards/Rules/RulesToBetterWebsitesAdministration.aspx#AJAX">Powered by MS AJAX</a></span>
<p class="serverName">   Our website is under constant continuous deployment. <asp:Literal ID="lthContDeployment" runat="server" EnableViewState="false"></asp:Literal> </p>
</div>

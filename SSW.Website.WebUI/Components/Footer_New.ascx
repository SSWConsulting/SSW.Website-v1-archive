<%@ Control Language="C#" AutoEventWireup="false" Inherits="SSW.Website.WebUI.Components.Footer_New" CodeBehind="Footer_New.ascx.cs" %>

<div id="BuiltOnAzure" class="center-block">
    <div class="container">
        <a href="/ssw/Consulting/Azure.aspx"><img src="/ssw/Consulting/images/thumbs/thumb-azure.jpg" />Built on the Microsoft Azure Platform</a>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <div class="footer-text row">
            <div class="col-xs-12 col-sm-4 copyright">
                <p>&#169; Copyright SSW 1990-<%=GetYear()%>. All Rights Reserved.</p>
            </div>
            <div class="col-xs-12 col-sm-8 footer-links">
			<p>
			    <span class="hidden-xs"><asp:HyperLink ID="feedbackHyperLink" runat="Server" EnableViewState="false" Text="Feedback to SSW" TabIndex="100"></asp:HyperLink> | 
                <a href="/ssw/Consulting/Terms-and-Conditions/">Terms and Conditions</a> | 
                <span class="hidden-sm"><a href="/ssw/MenuMap.aspx">Sitemap</a> | </span></span>
                <a href="/ssw/HealthCheck"><img src="/ssw/Content/healthcheck/healthchecklogo-nowords.png" height="9" alt="HealthCheck">Health Check</a> | 
                <a href="https://www.facebook.com/SSW.page" class="footer-facebook ignore">find us on</a> | 
                <a href="https://www.w3.org/html/logo/faq.html" class="footer-html ignore">HTML</a>
			</p>
            </div>
        </div>
		<div class="row">
            <div class="col-xs-12 hidden-xs footer-deploy">
                <p>Our website is under <a href="https://www.ssw.com.au/rules/rules-to-better-websites-deployment">constant continuous deployment</a>. <asp:Literal ID="lthContDeployment" runat="server" EnableViewState="false"></asp:Literal></p>
            </div>
        </div>
    </div>
</footer>

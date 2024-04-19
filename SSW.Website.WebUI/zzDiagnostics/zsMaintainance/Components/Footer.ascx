<%@ Control Language="C#" AutoEventWireup="false" Inherits="WebUI.Admin.Components.Footer"
    CodeBehind="Footer.ascx.cs" %>
<div id="footer">
    <div id="footerBlock">
        <a href="/ssw" tabindex="100">www.ssw.com.au | Superior Software for Windows | Call
            Now <span class="phoneNumber">+61 2 9953 3000</span></a>
    </div>
    <div id="footerDetails">
        Ph: (02) 9953 3000 | <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175')"
            onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
            onmouseout="javascript:clearStatus(); return true;" tabindex="100">Email</a>
        | <a href="http://www.ssw.com.au/ssw/company/directions/neutralbay/Default.aspx"
            tabindex="100">SSW Locations</a>
        <br />
        Please give
        <asp:HyperLink ID="feedbackHyperLink" runat="Server" Text="Feedback to SSW" TabIndex="100"></asp:HyperLink>
        | <a href="SSW/Company/Privacy.aspx" tabindex="100">Privacy Policy</a>
    </div>
    <div style="font-size: 10px; color: #666666;">
        Server:
        <%=Environment.MachineName%></div>
</div>

<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="SSW Rules to Better Firefox" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <div class="Intro">
        <p>
            Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532304C494E51')">
                Let us know</a> what you think.
        </p>
    </div>
    <div class="TableOfContents">
        <p>
            <strong>SSW Rules to Better Firefox</strong></p>
        <ol>
            <li><a href="#UseWIA">Do you know how to use Windows Integrated Authentication in Firefox?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="UseWIA"></a>Do you know how to use Windows Integrated Authentication in
                    Firefox?</h2>
                <p>
                    Internet Explorer has a great feature that you hardly notice. The Authentication
                    credentials of the current user will be used by default.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/Firefox_WIA_1.JPG" alt="IA in IE"/></dt>
                    <dd>
                        Figure: Internet Explorer has the Integrated Authentication feature built in</dd></dl>
                <p>
                    In Firefox, if you sign in to an internal server like SharePoint or CRM, you will get an authentication dialog. 
                </p>
                <p>
                    Even though you are already authenticated to the local domain.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/Firefox_WIA_2.JPG" alt="Authentication Required"/></dt>
                    <dd>
                        Figure: We want to avoid authenticating using Firefox (so it works like IE)</dd></dl>
                <p><strong>The Solution:</strong></p>
                <ol>
                    <li>Open Firefox</li>
                    <li>Go to "about:config"</li>
                    <li>Click "I'll be careful, I promise!"</li>
                    <li>Enter in the Filter box above: "network.automatic"</li>
                    <li>You see 2 records </li>
                    <li>Double-click the second one - It is the key called network.automatic-ntlm-auth.trusted-uris</li>
                    <li>Enter the servers delimited by ",", e.g. "aphrodite, mermaid"</li>
                    <li>Close browser and test</li>
                </ol>
                <br />
                <dl class="image">
                    <dt>
                        <img src="Images/Firefox_WIA_2b.JPG" alt="ntlm-auth.trusted-uris"/></dt>
                    <dd>
                        Figure: Showed how to find “network.automatic-ntlm-auth.trusted-uris” by using filter: “network.automatic”</dd></dl>
                
                <p>More info on blog: <a href="/ssw/Redirect/FirefoxBlog.htm">http://www.cauldwell.net/patrick/blog/PermaLink,guid,c7f1e799-c4ae-4758-9de7-5c3e7a16f3da.aspx</a></p>
                <p>
                    Tip:<br />
                    To test this without the Integrated Authentication enabled, you need to clear your session. You do this via<br />
                    Tools | Clear private data | Authenticated Sessions
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/Firefox_WIA_3.JPG" alt="Clear Private Data"/></dt>
                    <dd>
                        Figure: To test you will need to clear your "Authenticated Sessions" to completely logout from a site (SharePoint, CRM)</dd></dl>
            </li>
        </ol>
    </div>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=PGG">Peter Gfader</a>
    </p>
</asp:Content>
<%--        example:  
              <li>
                <h2>
                    <a name="Rings"></a>Different rings</h2>
                <p>
                    When you lose the network connection, I would prefer a message box:
                </p>
                <div class="greyBox">
                You have lost the network connection.<br /><br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Try Again]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Cancel]
                </div>
                <p>
                    But now it only show a error message tell you the error about network:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/LossConnMsg.JPG" alt="The message when loss network"/></dt>
                    <dd>
                        Figure: The message when you loss network connection.</dd></dl>
            </li>            
--%>
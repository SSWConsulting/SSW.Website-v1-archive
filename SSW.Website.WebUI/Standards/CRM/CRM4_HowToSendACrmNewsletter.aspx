<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="CRM 4 - How To Send A CRM Newsletter" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532304D6963726F736F667425323043524D')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <h3>
            CRM 4 - How To Send A CRM Newsletter</h3>
        <ol>
            <li><a href="#SendNewsletter">Do you know how to send newsletter in Microsoft CRM?</a></li>
            
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="SendNewsletter"></a>Do you know how to send newsletter in Microsoft CRM?</h2>
                <p>
                    Email newsletter can be sent and responses can be tracked using Microsoft Dynamic CRM:</p>
                    <%--<p>See below a video tutorial by Adam Cogan:</p>
                    <object width="515" height="290"><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=10593414&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=0&amp;show_portrait=0&amp;color=ffffff&amp;fullscreen=1" /><embed src="http://vimeo.com/moogaloop.swf?clip_id=10593414&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=0&amp;show_portrait=0&amp;color=ffffff&amp;fullscreen=1" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="515" height="290"></embed></object>--%>
                    <ol>
                        <li>Find contacts that we will send the newsletters to by using <b>Advanced Find</b> in CRM. In the instructions below we're
                            only interested in New Zealand contacts.</li>
                        <% If (Server.MachineName = ConfigurationManager.AppSettings.Get("internalMachineName")) Then%>
                        <div class="interInfoBoxSide" style="width: 866px; text-align: left;">
                            <h1>
                                Attention: SSW Developers</h1>
                            <p style="font-weight: normal;">
                                At SSW, we used different <b>System View</b> for different list of newsletter contacts,
                                you don't have to perform an <b>Advanced Find</b> everytime you want to send the
                                newsletter.</p>
                            <dl class="image">
                                <dt>
                                    <img src="Images/CRMNewsletterSelectNewsletterContacts.gif" alt="Newsletter Contacts View"
                                        width="806" height="364"></dt>
                                <dd>
                                    Figure: Select Newsletter Contacts view from here</dd>
                            </dl>
                        </div>
                        <% End If%>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMHomepageWithAdvancedFind.gif" alt="Go to Microsoft CRM Homepage and Click Advanced Find"
                                    width="661" height="472"></dt>
                            <dd>
                                Figure: Go to Microsoft CRM Homepage and Click Advanced Find.</dd>
                        </dl>
                        <dl class="image">
                            <dt>
                                <img src="Images/AdvancedFindLookingForNZNewsletterContacts.gif" alt="Select Contacts at Look For and specify a set of criteria to search for newsletter contacts"
                                    width="785" height="492"></dt>
                            <dd>
                                Figure: Select Contacts at Look For and specify a set of criteria to search for
                                newsletter contacts.</dd>
                        </dl>
                        <dl class="image">
                            <dt>
                                <img src="Images/AdancedFindResultForNewsletter.gif" alt="Advanced Find result" width="917"
                                    height="429"></dt>
                            <dd>
                                Figure: The result contacts that will get newsletter: these contacts allow us to
                                "Send Marketing Material" and have a New Zealand email address or living country is
                                New Zealand.</dd>
                        </dl>
                        <li>Create the newsletter in Microsoft CRM.</li>
                        <dl class="image">
                            <dt>
                                <img src="Images/CreateQuickCampaign.gif" alt="Create Quick Campaign" width="672"
                                    height="319"></dt>
                            <dd>
                                Figure: Create quick campaign for all the records on all the pages from current
                                contact list.</dd>
                        </dl>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMNewsletterQuickCampaignName.gif" alt="Specify name of quick campaign"
                                    width="597" height="449"></dt>
                            <dd>
                                Figure: Click Next and then specify name of quick campaign.</dd>
                        </dl>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMNewsletterActivityTypeandOwner.gif" alt="Select the Activity Type and Owner"
                                    width="660" height="566"></dt>
                            <dd>
                                Figure: Select the Activity Type and Owner.</dd>
                        </dl>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMNewsletterContent.gif" alt="Fill in newsletter Content" width="716"
                                    height="629"></dt>
                            <dd>
                                Figure: Fill in newsletter content.</dd>
                        </dl>
                        <% If (Server.MachineName = ConfigurationManager.AppSettings.Get("internalMachineName")) Then%>
                        <div class="interInfoBoxSide" style="width: 50%; text-align: left;">
                            <h1>
                                Attention: SSW Employees</h1>
                            <p style="font-weight: normal;">
                                You need to follow instruction in SSW Standards Internal for preparing newsletter.
                                Then you will need to use <b>Internet Explorer</b> to view the content of the newsletter
                                and copy and paste it in the text area.</p>
                        </div>
                        <%  End If%>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMNewsletterUnsubscribe.gif" alt="Newsletter Ubsubscribe" width="716"
                                    height="629"></dt>
                            <dd>
                                Figure: Highlight the keyword and click Unsubscribe button to make a link for subscribers
                                to unsubscribe themselves.</dd>
                        </dl>
                        <li>Click <b>Next</b> to create all email activities in Microsoft CRM.</li>
                        <li>If you're using:
                            <ul>
                                <li><b>Microsoft CRM Outlook</b> for outgoing email, then you need to open your Microsoft
                                    Outlook, so the email activities can be promoted to Outlook and sent out. This
                                    method is slow because of the synchronization process between CRM and Microsoft Outlook and 
                                    you need to leave outlook open during the entire process.</li>
                                <li><b>Email router</b> for outgoing email, then those email activites will be sent
                                    out automatically by Email router. This method is our prefer method of sending the newsletter,
                                    CRM email router can be configured to send out newsletters immediately and user don't have to open
                                    outlook while the emails are being processed.</li>
                            </ul>
                        </li>
                        <div class="greyBox">
                            <p>
                                Microsoft should show the following UI during the process of creating the <b>Quick Campaign</b>
                                to let users know what is his/her access method for outgoing email.
                            </p>
                            <dl class="image">
                                <dt>
                                    <img src="Images/EmailAccessMethodFromUserSettings.gif" alt="Email access methods of a user can only be viewed from that user's settings page" width="669"
                                        height="634"></dt>
                                <dd>
                                    Figure: Email access methods of a user can only be viewed from that user's settings page.</dd>
                            </dl>
                        </div>
                    </ol>
                </p>
            </li>
        </ol>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ZV">Zune Vien</a>
            <br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
        </p>
    </div>
</asp:Content>

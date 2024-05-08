<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW - Rules to Better Exchange Server" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
    <div id="mainContent">
    </div>

    <div class="TableOfContents">
        <b>Rules to Better Exchange Server</b>
        <ol>
            <li><a href="#EnableSearch">Do you enable the search?</a></li>
            <li><a href="#custom-owa">Do you customise Outlook Web Access (OWA)?</a></li>
            <li><a href="#redirection-to-HTTPS">Do you configure redirection to HTTPS (OWA)?</a></li>
        </ol>
    </div>

    <ol>
        <li>
            <h2><a name="EnableSearch"></a>Do you enable the search?</h2>
                <p>If search is not enabled you will get this message in OWA:</p>
                <div class="greyBox">
                    <p>"Search results may take a long time to appear because Microsoft Exchange Search is unavailable. Results will not include matches in the email body."</p>
                </div>
                <p>There is an Microsoft KB regarding this error: <a href="/ssw/Redirect/StandardsRules/MicrosoftKB.htm" class="external"  target="_blank">http://support.microsoft.com/kb/945077</a></p>
                <p>This is how you fix it:</p>
                <h4>To diagnose Exchange Search issues</h4>
                <ol>
                    <li>Is the MSExchangeSearch service started on the Mailbox server? If Yes, go to
                        Step 2. If No, use the Services MMC snap-in to verify that the MSExchangeSearch
                        service is running:
                            <ul>
                                <li>Click <strong>Start</strong>, and then click <strong>Control Panel</strong></li>
                                <li>In <strong>Control Panel</strong>, double-click <strong>Administrative Tools</strong></li>
                                <li>In <strong>Administrative Tools</strong>, double-click <strong>Services</strong></li>
                                <li>Verify that the <strong>Microsoft Exchange Search Indexer</strong> service is started</li>
                            </ul>
                    </li>
                    <li>Is the <em>IndexEnabled</em> parameter configure to true for the mailbox database of the user?
                        Run the following command in the Exchange Management Shell to verify that the <em>IndexEnabled</em>
                        flag is configure to true: <strong>Get-MailboxDatabase |ft Name,IndexEnabled</strong> </li>
                    <li>Run the <strong>Test-ExchangeSearch</strong> command for the user: Test-ExchangeSearch -Identity ericphan[at]ssw.com.au</li>
                    <li>Check Event Viewer for search-related error messages. Check the <strong>Source: MSExchangeSearch Indexer</strong> and <strong>msftesql-Exchange</strong> events. For more information, follow the link on the event log.</li>
                </ol>
                <h4>To Rebuild the Full-Text Index Catalog Using the ResetSearchIndex.ps1 Script</h4>
                <ol>
                    <li>Start the Exchange Management Shell.</li>
                    <li><em>ResetSearchIndex.ps1 -force -all</em><br />
                        Wait a couple of minutes to the index be created</li>
                    <li>Run the command to verify if the index was created<br />
                        <em>GetSearchIndexForDatabase -All</em></li>
                </ol>
        </li>

        <li>
            <h2><a name="custom-owa"></a>Do you customise Outlook Web Access (OWA)?</h2>
                <p>It is possible to customise OWA, for example you can add change the colouring and add your company logo to the OWA logon page.</p>
                <dl class="badImage">
                    <dt><img src="Images/custom-owa-bad.jpg" /></dt>
                    <dd>Figure: Bad Example - OWA logon page doesn't clearly show it's from SSW</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/custom-owa.jpg" /></dt>
                    <dd>Figure: Good Example - SSW OWA logon page with custom logo</dd>
                </dl>
                <p>The following Microsoft article explains how to customise OWA: <a href="http://technet.microsoft.com/en-us/library/ee633483(v=exchg.150).aspx" target="_blank">Customize the Outlook Web App Sign-In, Language Selection, and Error Pages</a>.</p>
        </li>

        <li>
            <h2><a name="redirection-to-HTTPS"></a>Do you configure redirection to HTTPS (OWA)?</h2>
            <p>Users like to access Outlook Web App (OWA) using well known address e.g. mail.ssw.com.au. Since OWA is running under a different URL they will face a 403 error. In such case it is good to redirect them to HTTPS address where OWA is actually running. E.g.</p>
            <p>From http://mail.ssw.com.au</p>
            <p>To https://mail.ssw.com.au<span class="highlight" >/owa</span></p>
            <dl class="image">
                <dt><img src="Images/owa-redirection.png" alt="OWA redirection" /></dt>
                <dd>Figure: Bad example - 403 error is thrown where redirect is a better option </dd>
            </dl>
            <p>The following Microsoft articles explains how to configure redirection to HTTPS for OWA:</p>
            <ul>
                <li><a href="http://blogs.msdn.com/b/kaushal/archive/2013/05/23/http-to-https-redirects-on-iis-7-x-and-higher.aspx" target="_blank">HTTP to HTTPS redirects on IIS 7.x and higher</a></li>
                <li><a href="http://support.microsoft.com/kb/975341" target="_blank">How to configure Exchange to redirect OWA HTTP requests to HTTPS requests in IIS 7</a></li>
            </ul>

        </li>


    </ol>
    <br />
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
    </p>
</asp:Content>

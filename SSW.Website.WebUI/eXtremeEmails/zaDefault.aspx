<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW eXtreme Emails! - Bug and Task Tracking Tool for Outlook" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="ProductTestimonial" Src="~/Components/ProductTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="asideright" runat="server">
    <div id="additionalInfo" class="noPrint">
        <img src="Images/productBox_extrememail.jpg" />
        <div class="download">
            <a href="/ssw/Download/ProdBasket.aspx?ID=ExEml1" class="button red next">Download</a>
        </div>
        <h6>Product Info</h6>
        <div class="section">
            <ul>
                <li><a href="/ssw/EXtremeEmails/UserGuide.aspx">Screenshots</a></li>
                <li><a href="/ssw/EXtremeEmails/Flyer/ExtremeEmailsFlyer.pdf">
                    Promotional Flyers</a></li>
                <li><a href="/ssw/EXtremeEmails/ManageProjects.aspx">Manage
                        your Projects</a></li>
                <li><a href="Reports/Default.aspx">Reports</a></li>
            </ul>
            </div>
            <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBoxSide" Text="<h1>Attention: SSW Developers</h1><a href='../Products/prodsummarylist.aspx'>This page is on the new template as it is one of the 6 products we are focused on.</a>">
            </SSW:InfoBox>
    </div>
    <div id="productSidebar" class="noPrint">
        <SSW:ProductTestimonial ID="ProductTestimonial" runat="server" ProdID="EXEML" CatID="4EXOUT"
            Display="SideBarRight"></SSW:ProductTestimonial>
        <div class="region">
            <h6>
                Awards</h6>
            <div class="section" style="text-align: center">
                <img src="/ssw/Images/Awards/SharewareRiverlinkbutton(bw).gif" width="80" height="28"
                    class="award" />
                <img src="/ssw/Images/Awards/coredownload(bw).gif" class="award" />
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
                    <img src="Images/eXtremeEmailsLogo.gif" />
                    <h2>
                        The Simplest Project Management System Available
                    </h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

    <div id="productInfo">
        <div id="productDescription">
            <div id="productHighlights">
                <div class="noneFloat">
                    <ul class="good">
                        <li>Issue management system built on .NET Platform and Outlook.</li>
                        <li>Comprehensive feature-set.</li>
                        <li>Pay nothing for Full Version!</li></ul>
                </div>
            </div>
            <br />
            <p>
                Turn your Inbox into a task-tracking system with SSW eXtreme Emails!</p>
            <p>
                More than simply bug tracking software for Outlook, SSW eXtreme Emails can help
                you manage your email more effectively.
            </p>
            <p>
                Allocate tasks, set priorities, assign due dates and get progress reports without
                re-entering any data, all while working in the familiar Microsoft Outlook environment.
                Written in .NET, this Outlook COM Add-In lets you take control of your email.</p>
				<p>
				Check <a href="/ssw/AgileTemplate">SSW Agile Template</a> for managing projects within Microsoft TFS.
				</p>
            <h2>
                Key Features &amp; Benefits</h2>
            <p>
                SSW SSW eXtreme Emails! enables you to use Microsoft Outlook as an:</p>
            <ul class="good">
                <li>intelligent bug tracking and project management system</li><li>Email is transformed
                    from an unstructured information source into a data-centric tool, permitting reports
                    and data analysis</li><li>allows you to categorize emails as work tasks (or 'incidents'),
                        and assign properties to permit tracking of those tasks</li><li>Especially useful for
                            companies who use email as a communication tool, you can use Exchange Public Folders
                            to share information internally or over the Internet</li><li>SSW eXtreme Emails! finally
                                allows you to make sense of your email</li></ul>
            <br />
            <table border="0" cellspacing="0" class="tblScreenshots normal">
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial1.jpg" alt="screen shot" width="180" height="110" />
                    </td>
                    <td valign="top">
                        <b>Use Microsoft Outlook emails to manage your company </b>SSW eXtreme Emails intergrates
                        directly into Microsoft Outlook so that you can use your inbox to manage how your
                        company works.
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial2.jpg" alt="Partial Screen shot 2" width="180" height="185" />
                    </td>
                    <td valign="top">
                        <b>Helps manage projects and their bugs effectively </b>Turns all the emails in
                        your inbox into tasks that you can use as your bug tracking tool.
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial3.jpg" alt="Partial Screen Shot 3" width="180" height="100" />
                    </td>
                    <td valign="top">
                        <b>Generates customizable reports for progress analysis </b>SSW eXtreme Emails!
                        has several inbuilt reports that are customizable to allow you to report on the
                        status of tasks.
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial4.jpg" alt="Partial Screen Shot 4" width="180" height="90" />
                    </td>
                    <td valign="top">
                        <b>Assigns and manage tasks in each project </b>With SSW eXtreme Emails! you can
                        assign a task to a particular person and generate reports on each project.
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial5.jpg" alt="Partial Screen Shot 5" width="180" height="104" />
                    </td>
                    <td valign="top">
                        <b>Assign properties to an email (or incident) using the interface </b>SSW eXtreme
                        Emails! extends Outlook's mail items to include properties like:
                        <ul>
                            <li>Estimated Hours</li><li>Actual Hours</li><li>Status</li><li>Priority</li></ul>
                        and many more...
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial6.jpg" alt="Partial Screen Shot 6" width="180" height="172" />
                    </td>
                    <td valign="top">
                        <b>Use Microsoft Exchange Public Folders to share incidents, or store incidents in your
                            Inbox directory </b>SSW eXtreme Emails! integrates with Microsoft Exchange Server
                        to provide you with a powerful tool to manage your projects and share tasks between
                        different staff all in the one centralized location.
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial9.jpg" alt="Partial Screen Shot 7" width="180" height="206" />
                    </td>
                    <td valign="top">
                        <b>Integration with Team Foundation Server</b> SSW eXtreme Emails! integrates with
                        Team Foundation Server (TFS) to enable you to manage your project progress by easily
                        emails.
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial7.jpg" alt="Partial Screen Shot 8" width="180" height="125" />
                    </td>
                    <td valign="top">
                        <b>Manage projects, provide estimates, enable debriefs </b>
                    The built in reports allow you to sent clients estimates, debriefs and Test Please
                    emails on the project, providing you with a great tool for communication with your
                    clients.
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial8.jpg" alt="Partial Screen Shot 9" width="180" height="85" />
                    </td>
                    <td valign="top">
                        <b>Built using Microsoft Visual Studio Tools For Office (VSTO)</b>
                        <ul>
                            <li>Eliminates notorious bugs from the previous interop assemblies</li><li>Plugins built
                                using a .NET library</li></ul>
                </tr>
                <tr>
                    <td width="100">
                        <img src="/ssw/Methodology/Images/XPDM.gif" alt="Partial Screen Shot 10" width="180"
                            height="52" />
                    </td>
                    <td valign="top">
                        <b>Perfect for software developers using eXtreme Programming or any Time Billing company
                        </b>
                    SSW eXtreme Emails is the perfect tool for use with XP - that's why we created SSW
                    eXtreme Emails!
                </tr>
            </table>
            <br />
            <h2>
                User Guide</h2>
            <p>
                Welcome to the <a href="UserGuide.aspx">User Guide</a>. This help facility is designed
                to quickly get you up and running using our software.
            </p>
            <SSW:incDemonstration ID="IncDemo" runat="server"></SSW:incDemonstration>
            <div class="greyBox">
                <h2>Why have we developed another Bug Tracking Tool?</h2>
                <p>
                    Believe me, we didn't want to. There are many decent tools out there, but nothing
                    good enough. We have tried others including:</p>
                <h3>Red-Gates Aardvark</h3>
                <ul class="good">
                    <li>Nice web based solution</li>
                    <li>Nice reports </li>
                </ul>

                <ul class="bad">
                    <li>Web interface - constant roundtrips to server</li>
                    <li>No offline ability</li>
                    <li>Very slow to enter bugs online - so many fields</li>
                </ul>
                
                <h3>FogCreek's FogBugz</h3>
                <ul class="good">
                    <li>Simplicity</li>
                    <li>Easy to enter bugs (not many fields to fill out)</li>
                    <li>A customers email is transferred to the database</li>
                </ul>
                <ul class="bad">
                    <li>Web interface - constant roundtrips to server</li><li>No offline ability</li>
                    <li>The fact that they have include email functionality - why take me away from Outlook</li>
                    <li>When you reply to the email, the email you send to the customer is not the same as the one they sent to you (different format, missing screen captures)</li>
                    <li>The way it allows &quot;Public Submissions&quot; - we prefer customers to email us, and we first try and resolve with a KB, otherwise we decide if it goes into the 'bug database' (public folder) for fixing&nbsp; </li>
                    <li>The &quot;Attach a File&quot; feature - Uploading files is a pain</li><li>When you resolve a bug it stays on the list, with little indication it has been resolved. I think it would be an improvement if they used strike-though for resolved bugs.</li>
                    <li>The feature that the developer resolves a bug and the customer closes the bug. They try to make this system work with warnings like &quot;Remember, it is your responsibility to check if the resolution is satisfactory and close the case after it is resolved.&quot; Developers should close - clearly the system breaks down because only conscientious customers are going to bother to close bugs.&nbsp; </li>
                    <li>Don't like the noisy dashboard. When I click OK, I don't want to see the same screen again.</li>
                    <li>Only Administrators can enter new project and areas</li>
                </ul>
                
                <h3>Seapine Software's TestTrack Pro</h3>
                <ul class="good">
                    <li>Well Architected</li>
                    <li>Very flexible (custom fields, etc.)</li>
                    <li>Provides both Rich Client and Web-Based front ends</li>
                </ul>
                <ul class="bad">
                    <li>Very Confusing</li>
                    <li>Difficult/tedious to enter a bug</li>
                    <li>Inefficient tab-based UI</li>
                </ul>
                    
                    <p><b>Major Problem</b>: Bugs come from users in Emails...<br />
                    All of these systems either require you to enter the email in the system or they
                    read the email and make a duplicate in their bug tracking system (and usually store
                    them in a database of some kind)</p>
                    <p>
                    The approach we took with SSW eXtreme Emails! was not to make a duplicate but to
                    add properties onto the mail item within Outlook to manage and track bugs. This
                    has the additional benefit of keeping users in the familiar Outlook environment.</p>                
            </div>
            <h2>
                How it Works
            </h2>
            <p>
                As a bug tracking tool for Outlook, SSW eXtreme Emails! takes advantage of the most
                commonly used means of communication - email. Utilizing the User Properties extension
                within Microsoft Outlook, SSW eXtreme Emails! assigns extra properties to email.
                This permits querying against your email similar to querying against SQL Server
                or Access. eXtreme Emails! does away with two common problems of incident tracking
                systems, duplicate data entry and uploading images over a slow connection. Just
                by using HTML format in your email, sending screen shots becomes a breeze!</p>
            <h2>
                Reports</h2>
            <p>
                SSW eXtreme Emails comes with some <a href="/ssw/eXtremeEmails/Reports/Default.aspx">
                    great reports </a>(which you can customize)
            </p>
            <h2>
                System Requirements
            </h2>
            <ul>
                <li><a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework 2.0</a></li><li>
                    Outlook 2003 (with &quot;<a href="/ssw/KB/KB.aspx?KBID=Q757100">CDO</a>&quot; and
                    &quot;<span style="font-family: Verdana"><span id="ctlAnswer"><a href="/ssw/KB/KB.aspx?KBID=Q1991130">.NET
                        Programmability Support</a></span></span>&quot; options selected)</li><li>Exchange Server
                            2000 or 2003 (optional if you want to use Public Folders) </li>
            </ul>
            <br />
            <h2>
                Getting Support
            </h2>
            <p>
                If you can't find what you are looking for in the product documentation then check
                our <a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=INCID">knowledge base</a>
                for further information and tips about this product.
            </p>
            <p>
                Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a>
                and <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));"
                    title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">
                    feedback</a> so that we can evolve our software into a product that matches
                your requirements. We guarantee a response.
            </p>
            <h2>
                Links
            </h2>
            <p>
                <b>OL97:</b> Using Hyperlinks to Access Outlook Folders and Items (Q158135) <a href="/ssw/Redirect/Microsoft/MSSupportQ158135.htm"
                    target="_blank">Microsoft Support Page</a>
                <img src="/ssw/Images/LeaveSite.GIF" alt="You are now leaving the SSW site" width="17"
                    height="11">
            </p>
            <p>
                Programming Microsoft Outlook with Visual Studio .NET <a href="/ssw/Redirect/MicroEyeOutlookVSNETHotTip.htm"
                    target="_blank">Microeye Web Site</a>
                <img src="/ssw/Images/LeaveSite.GIF" alt="You are now leaving the SSW site" width="17"
                    height="11">
            </p>
            <p>
                <b>151241 XCLN:</b> How to Work with Public Folders Offline <a href="/ssw/Redirect/KbAlertz151241.htm"
                    target="_blank">KBAlertz</a>
                <img src="/ssw/Images/LeaveSite.GIF" alt="You are now leaving the SSW site" width="17"
                    height="11">
            </p>
            <h2>
                Video Demo</h2>
            <p>
                See SSW eXtreme Emails in action.Download the SSW eXtremeEmail Video Demo (27MB)</p>
            <p>
                <dl class="image">
                    <dt>
                       <img src="Images/videodemo.gif" alt="Preview of eXtreme Email demo running on Windows Media Player"
                            width="598" height="581" /></dt>
                    <dd>
                        Figure: SSW eXtreme Emails Video Demo</dd>
                </dl>
            </p>
            <h2>
                I'm Sold... What's next?</h2>
            
                <div class="download">
                    <a href="/ssw/Download/ProdBasket.aspx?ID=ExEml1" class="red next">Download</a>
                </div>
            
            Microsoft and the Office logo are trademarks or registered trademarks of Microsoft
            Corporation in the United States and/or other countries.
        </div>
    </div>
    
</asp:Content>

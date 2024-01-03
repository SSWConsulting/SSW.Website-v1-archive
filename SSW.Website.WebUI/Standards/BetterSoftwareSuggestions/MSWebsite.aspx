<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Website Suggestions" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#UpdatePage">Microsoft do not spend enough time going back and updating old pages....</a></li>
            <li><a href="#PasteOutlook">Allow users to copy and paste threads from MSDN forum to an Outlook email</a></li>
            <li><a href="#QuickLink">Provide a means for users to link to a specific entry in a forum thread or comment in a blog</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="UpdatePage"></a>Microsoft do not spend enough time going back and updating
                    old pages....</h2>
                <p>
                    Go to Virtual PC 2007:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/MSWeb_VPC_1.jpg" alt="VPC 2007 download page" /></dt>
                    <dd>
                        Figure: On the VPC 2007 download page can't find any link to VPC 2007 SP1.</dd></dl>
                <p>
                    How would <strong>anyone</strong> know there is something newer at Microsoft Virtual PC 2007 SP1:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/MSWeb_VPC_2.jpg" alt="VPC 2007 SP1 download page" /></dt>
                    <dd>
                        Figure: The page whick can download VPC 2007 SP1.</dd></dl>
                <p>
                    The documentation team, needs a new policy:
                </p>
                <p>
                    <strong>When you add a *new* Service Pack page, the original page should have strike through
                    text with a big link....</strong>
                </p>
                <p>
                    <strong>Microsoft do not spend enough time going back and updating old pages....</strong>
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/MSWeb_VPC_3.jpg" alt="SSW Diagnostics" /></dt>
                    <dd>
                        Figure: FYI this is how I knew there was a <a href="/ssw/Diagnostics/">newer version of this software</a></dd></dl>
            </li>
            <li>
                <h2>
                    <a name="PasteOutlook"></a>Allow users to copy and paste threads from MSDN forum to an Outlook email</h2>
                <p>
                    Either by making the HTML look nicer or by allowing users to see a "Print preview" and copy the content from there.
                    Due to the security issue, Outlook doesn't support rendering all kinds of CSS. It's a good idea to supply users with different styles for 
                    printing or pasting in Outlook.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/MSThreadPaste.png" alt="Styles are missing and it's hard to read" />
                    </dt>
                    <dd>
                        Figure: Bad example - styles are missing and it's hard to read 
                        (<a href="http://social.msdn.microsoft.com/Forums/en-US/wpf/thread/e30556c4-fbcf-4799-8f53-f119e7e4cb6e">http://social.msdn.microsoft.com/Forums/en-US/wpf/thread/e30556c4-fbcf-4799-8f53-f119e7e4cb6e</a>)
                    </dd>
                </dl>
                
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ShowPrintableVersion.png" alt="Choose the different style for printing" />
                    </dt>
                    <dd>
                        Figure: Good example - choose the different style for printing</dd>
                    </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/XDAThreadPaste.png" alt="the style is simple but readable" /></dt>
                    <dd>
                        Figure: Good example - the style is simple but readable     
                    </dd>
                </dl>
           </li>
           <li>
                <h2>
                    <a name="QuickLink"></a>Provide a means for users to link to a specific entry in a forum thread or comment in a blog</h2>
                <p>
                    There are times when I want to send a link to someone else regarding a specific entry in a thread on MSDN, 
                    but there is no way to get a link to a single entry.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/MSDNWithoutAnchor.png" alt="Styles are missing and it's hard to read" />
                    </dt>
                    <dd>
                        Figure: Bad example - there is no way to find the link to this explicit entry in the thread 
                        (e.g.  
                        <a href="http://social.msdn.microsoft.com/Forums/en/tfsgeneral/thread/039d03d7-4936-4431-9227-a7b549cc9648">
                        http://social.msdn.microsoft.com/Forums/en/tfsgeneral/thread/039d03d7-4936-4431-9227-a7b549cc9648</a>)
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/StackWithAnchor.png" alt="the style is simple but readable" /></dt>
                    <dd>
                        Figure: Good example - hovering over "link" on StackOverflow reveals a link to the specific entry in the thread
                        (e.g. 
                        <a href="http://stackoverflow.com/questions/661389/tfs-vs-svn">
                        http://stackoverflow.com/questions/661389/tfs-vs-svn</a>)
                    </dd>
                </dl>
           </li>
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
    </p>
</asp:Content>

<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Silverlight Suggestion" %>

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
            <li><a href="#UserVoice">The Top Ones on UserVoice</a></li>
            <li><a href="#LossConnMsg">Prefer a message box when lose the network connection</a></li>
            <li><a href="#RightClick">Better support for right click</a></li>
            <li><a href="#DoubleClick">Better support for double click</a></li>
            <li><a href="#IEFontSize">Silverlight ignores my IE Font size request</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
               <h2><a name="UserVoice">The Top Ones on UserVoice</a></h2>
               <p>Vote for all the really important Silverlight suggestions on UserVoice.</p>
               <p>For lesser important ones, keep reading...</p>
            </li>
            <li>
                <h2>
                    <a name="LossConnMsg"></a>Prefer a message box when lose the network connection</h2>
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
            <li>
                <h2>
                    <a name="RightClick"></a>Better support for right click</h2>
                <p>
                    At the moment you need to use various hacks to enable right click context menus in Silverlight:
                    <ul>
                        <li>Override the OnContextMenu event - 
                            <a href="http://silverlight.net/blogs/msnow/archive/2008/07/01/tip-of-the-day-14-how-to-right-click-on-a-silverlight-application.aspx">
                            Silverlight Tip of the Day #14 ?How to Right Click on a Silverlight Application</a>
                        </li>
                    </ul>
                    It would be nice to have a built in event like OnRightClick or use OnClick with a flag in the argument 
                    to check if it was a right click.
                </p>
            </li>
            <li>
                <h2>
                    <a name="DoubleClick"></a>Better support for double click</h2>
                <p>
                    There currently is no double click event in Silverlight 2.0.
                    You need to use various hacks with timers to detect two clicks in a given space of time 
                    (<a href="http://hackingsilverlight.blogspot.com/2008/02/silverlight-20-double-click-support.html">
                    Silverlight 2.0 Double Click Support
                    </a>)<br />
                    There should be a built in event for double click just like in Windows Forms.
                </p>
            </li>            
            <li>
                <h2><a name="IEFontSize"></a>Silverlight ignores my IE Font size request</h2>
                <p>
                    IE should disable this size option in the menu (when the whole page is just Silverlight). Or is it possible to make it work with Silverlight?
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/Silverlight_IEFontSize.png" alt="Silverlight ignores my IE Font size request"/></dt>
                    <dd>Figure: Silverlight ignores my IE Font size request.</dd>
                </dl>
            </li>
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TKK">tristan kurniawan</a>
    </p>
</asp:Content>

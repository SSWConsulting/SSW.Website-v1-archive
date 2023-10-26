<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Interfaces - Mobiles" Buffer="true" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230496E7465726661636573')">
            Let us know</a> what you think.
    </p>
    <div class="TableOfContents">
        <p>
            <strong>Rules To Better Interfaces - Mobiles</strong></p>
        <ol>
            <li><a href="#Touch">Do you design for touch interfaces?</a></li>
            <li><a href="#App">Do you know when to build an iPhone app over an iPhone web app?</a></li>
            <li><a href="#WP7">Do you know when to build a WP8 app over an iPhone app?</a></li>
            <li><a href="#Guide">Do you know what guidelines to follow for WP8?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="Touch"></a>Do you design for touch interfaces?
                </h2>
                <p>With the internet moving so fast into the world of mobile devices, it's important to design for a variety of platforms. Many websites these days have a unique mobile optimized site which is great for usability.</p>
                <p>Although mobile browsers are capable of rendering your normal website, some functionality does not carry across. Touch screens have no concept of "hover" so drop down menus must be activated on click. Screen estimate and the precision of the user is impaired on touch devices, so links and other clickable objects need to be rendered bigger.</p>
                <p>The key thing to remember is that a mobile phone is a different device and have completely different use cases. EBay on a desktop can be used for a large variety of cases, including the creation of new bids, while EBay Mobile is primarily for checking activity while on the move. The focus of a mobile design for EBay centers on browsing, bidding and status updates for products - it doesn't need to cover all cases, just the right ones.</p>
                <p>True mobile interface design focuses that which is used on mobile and simplifies the process.</p>
                <dl class="badImage">
                   <dt>
                      <img src="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesGeneral/PublishingImages/TimePro-NotMobile.png" alt=""/>
                   </dt>
                   <dd>​Figure: Bad Example - TimePro as it renders on mobile. It is near unusable!<br/></dd>
                </dl>
                <dl class="goodImage">
                   <dt>
                      <img width="286" src="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesGeneral/PublishingImages/TimePro-Mobile.png" alt=""/>
                   </dt> 
                   <dd>​Figure: Good Example - TimePro designed for mobile.</dd>
                </dl>
                <font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesMobile/Pages/Do-you-design-for-touch-interfaces.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesMobile/Pages/Do-you-design-for-touch-interfaces.aspx</a></font>

            </li>
            <li>
                <h2>
                    <a name="App"></a>Do you know when to build an iPhone app over an iPhone web app?
                </h2>
                <p>
                    It depends on:</p>
                <ul>
                    <li>Your Budget</li>
                    <li>Usage of native API</li>
                    <li>If you have an existing web app - in this case, it's easier to convert it to a web app by adding CSS</li>
                </ul>
                <p>
                    Note: An iPhone (or WP7) web app without a network connection, will not load the web page you were on previously.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesMobile/Pages/Do-you-know-when-to-build-an-iPhone-app-over-an-iPhone-web-app.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesMobile/Pages/Do-you-know-when-to-build-an-iPhone-app-over-an-iPhone-web-app.aspx</a></font>
                
            </li>
            <li>
                <h2>
                    <a name="WP7"></a>Do you know when to build a WP app over an iPhone app?
                </h2>
                <ol>
                <li>
                    <s>If your app is built on Silverlight today.</s> Stop building things on Silverlight today.
                </li>
                <li>
                    Reasons are:<br />
                <ul>
                    <li>Time to market</li>
                    <li>Lower cost</li>
                    <li>Reuse MVVM</li>
                    <li>Reuse Silverlight controls</li>
                    <li>Reuse the Business and Data layer</li>
                </ul>
                </li>
                <li>
                    The Biggest thing going for windows phone is:<br />
                <ul>
                    <li>.NET dev shops</li>
                    <li>Environment more productive than xcode</li></ul>
                <p>
                    Note: WP7 is built on Silverlight 3 (not Silverlight 4)</p>
                <p>
                    Note: WP7 was built by a 'web team' not "Rich client app team', so some issues exist:</p>
                <ul>
                    <li>Bing map control relies on host page (authentication)</li>
                    <li>Avoid using System.Windows.Browser.dll in your Silverlight App (as it works only
                        OOB on desktop) and you will have to use a different control on Windows Phone 7</li>
                </ul>
                </li>
                <li>
                    Others reasons are:
                    <ul>
                    <li>You can deploy your app without going through the appstore/market place. E.g. my
                    SSW business app<br />
                <table class="data">
                    <tr>
                        <td>
                            Appstore:
                        </td>
                        <td>
                            No
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Market place:
                        </td>
                        <td>
                            Yes
                        </td>
                    </tr>
                </table>
                        <br />
                </li>
                <li>
                    Turn around through the appstore is quicker:
                <table class="data">
                    <tr>
                        <td>
                            Appstore:
                        </td>
                        <td>
                            1-3 weeks
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Market place:
                        </td>
                        <td>
                            2 days (Quicker since it is managed code. Unmanaged code is easy to spot)
                        </td>
                    </tr>
                </table>
                    <br />
                </li>
                <li>
                    App store is blocking applications MS won't.
                </li>
                </ul>

                </li>
                </ol>
                                <font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesMobile/Pages/Do-you-know-when-to-build-a-WP-app-over-an-iPhone-app.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesMobile/Pages/Do-you-know-when-to-build-a-WP-app-over-an-iPhone-app.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="Touch"></a>Do you know what guidelines to follow for WP?
                </h2>
                <p>Microsoft has extensive documentation regarding the use of WP design guidelines: <a href="http://msdn.microsoft.com/en-us/library/windowsphone/design/hh202915(v=vs.92).aspx">http://msdn.microsoft.com/en-us/library/windowsphone/design/hh202915(v=vs.92).aspx</a></p>
                <font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesMobile/Pages/Do-you-know-what-guidelines-to-follow-for-WP.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesMobile/Pages/Do-you-know-what-guidelines-to-follow-for-WP.aspx</a></font>
            </li>

        </ol>

        <h2>Related Rules</h2>
            <p>Read the specific rules below:</p>
            <ul>
                <li><a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx">Rules to Better Interfaces - General</a></li>
                <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Windows-Applications.aspx">Rules to Better Interfaces - Windows Application</a></li>
                <li><a href="/ssw/Standards/Rules/RulesToBetterInterfaces-Popups-and-Messages.aspx">Rules to Better Interfaces - Popups and Messages</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Controls.aspx">Rules to Better Interfaces - Controls</a></li>	
                <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Forms.aspx">Rules to Better Interfaces - Forms</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Wizard.aspx">Rules to Better Interfaces - Wizards</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Reports.aspx">Rules to Better Interfaces - Reports, Charts and Dates</a></li>
				<li>Rules to Better Interfaces - Mobile UI</li>
            </ul>

        <h2>Links</h2>
        <ul>
            <li><a href="/ssw/Redirect/AskTog.htm" target="_blank">http://www.asktog.com/basics/firstPrinciples.html</a>
            </li>
            <li><a href="/ssw/Redirect/Microsoft/MSDNMessageBoxes.htm" target="_blank">http://msdn.microsoft.com/library/Default.asp?url=/library/en-us/dnwue/html/ch09f.asp</a>
            </li>
        </ul>
        <h2>Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
        </p>
    </div>
</asp:Content>

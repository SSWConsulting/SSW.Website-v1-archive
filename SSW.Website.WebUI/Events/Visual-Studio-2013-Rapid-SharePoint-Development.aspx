<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Moving the Titanic - Rapid SharePoint Development using Visual Studio 2010" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%--<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
    <img src="/ssw/Images/banner_rapid.jpg" alt="Moving the Titanic - Rapid SharePoint Development for Teams using Visual Studio 2013" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">

    <h2>
        Rapid SharePoint Development:</h2>
    <ul>
        <li><a href="#outline">Workshop Outline</a></li>
        <li><a href="#attend">Who Should attend?</a></li>
        <li><a href="#when">Workshop Details</a></li>
        <li><a href="#Register">Register</a></li>
    </ul>
</asp:Content>--%>

<asp:Content ID="Content3" ContentPlaceHolderID="title" runat="server">
    <h1>Moving the Titanic</h1>
    <h2>Rapid SharePoint Development for Teams using Visual Studio 2013</h2>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div id="Maincontent">
        <div class="section">
            <div id="eventsummary">
                <h1>
                    <img src="/ssw/Training/images/thumb_SharePoint_and_TFS_2010.jpg" alt="course image"
                        class="thumbnail" />
                    <a name="Register"></a>Moving the Titanic - Rapid SharePoint Development for Teams using Visual Studio 2013</h1>
                <ul class="vitals conferenceprice">
                    <li>Duration
                        <ul>
                            <li>2.5 hours</li>
                        </ul>
                    </li>
                    <li>Price
                        <ul>
                            <li>$110</li>
                        </ul>
                    </li>
                    <li style="width:160px;">Speaker
                        <ul>
                            <li style="width:160px;">Adam Cogan</li>
                        </ul>
                    </li>
                </ul>
                <ul class="schedule conference">
                    <li><strong>Sydney<br />
                        <span>Mon 25th Mar 2013</span></strong>
                        <ul>
                            <li style="width: 100px;"><%--<a href="/ssw/Shop/BasketInsert.aspx?ProductID=VSSPSY"><span>
                                Book Now</span></a>--%>COMPLETED</li>
                        </ul>
                    </li>
                    <li><strong>Melbourne<br />
                        <span>Tue 26th Mar 2013</span></strong>
                        <ul>
                            <li style="width: 100px;"><%--<a href="/ssw/Shop/BasketInsert.aspx?ProductID=VSSPME"><span>
                                Book Now</span></a>--%>COMPLETED</li>
                        </ul>
                    </li>
                    <li><strong>Canberra<br />
                        <span>Wed 27th Mar 2013</span></strong>
                        <ul>
                            <li style="width: 100px;"><%--<a href="/ssw/Shop/BasketInsert.aspx?ProductID=VSSPCA"><span>
                                Book Now</span></a>--%>COMPLETED</li>
                        </ul>
                    </li>
                    <li><strong>Brisbane<br />
                        <span>Thu 28th Mar 2013</span></strong>
                        <ul>
                            <li style="width: 100px;"><%--<a href="/ssw/Shop/BasketInsert.aspx?ProductID=VSSPBR"><span>
                                Book Now</span></a>--%>COMPLETED</li>
                        </ul>
                    </li>
                    <li><strong>Perth<br />
                        <span>Tue 9th Apr 2013</span></strong>
                        <ul>
                            <li style="width: 100px;"><%--<a href="/ssw/Shop/BasketInsert.aspx?ProductID=VSSPPE"><span>
                                Book Now</span></a>--%>COMPLETED</li>
                        </ul>
                    </li>
                    <li><strong>Adelaide<br />
                        <span>Wed 10th Apr 2013</span></strong>
                        <ul>
                            <li style="width: 100px;"><%--<a href="/ssw/Shop/BasketInsert.aspx?ProductID=VSSPAD"><span>
                                Book Now</span></a>--%>COMPLETED</li>
                        </ul>
                    </li>
                    <li><strong>Wellington, NZ<br />
                        <span>Wed 15th Apr 2013</span></strong>
                        <ul>
                            <li style="width: 100px;">COMPLETED</li>
                        </ul>
                    </li>
                </ul>
            </div>
            <a name="outline"></a>
            <p>
                Team Foundation Server 2013 (TFS) is the fully integrated solution to manage projects,
                giving developers, testers and management a single source of truth for all project
                needs. Using TFS to develop for SharePoint will make the development and maintenance
                process much more efficient and effective.</p>
            <p>
                During the session you will see how the 3 roles in a development team will benefit
                from using Team Foundation Server 2013.</p>
            <h2>
                <a name="attend"></a>Project Managers and stakeholders will love:
            </h2>
            <ul>
                <li>The dashboard that gives an overall picture of how the project is progressing</li>
                <li>The easy customization of the reports using Excel Web Services</li>
                <li>How Visual Studio and Team Foundation Server integrate seamlessly for SharePoint
                    development</li>
            </ul>
            <h2>
                Developers will love:
            </h2>
            <ul>
                <li>The integrated SharePoint developer experience inside Visual Studio 2013 like the
                    SharePoint Server Explorer and built in templates</li>
                <li>The extensive details provided by the testers using Test Manager like video recording,
                    environment details and intellitrace to help reproduce bugs</li>
                <li>The automated build server that can compile, run unit tests and run end to end UI
                    testing</li>
            </ul>
            <h2>
                Testers will love:
            </h2>
            <ul>
                <li>The many ways of automating their manual tests via:
                    <ul>
                        <li>Web tests</li>
                        <li>Performance tests </li>
                        <li>Coded UI Tests</li>
                    </ul>
                </li>
                <li>The built in bug reporting and capturing utilities in Test Manager that will provide
                    developers with ample details on the bug</li>
                <li>How they can easily test on different environments with Lab Manager at the click
                    of a button</li>
            </ul>
        </div>
        <div class="section">
            <h1>
                <a name="when"></a>Workshop Details</h1>
            <table class="outline">
                <tr class="odd">
                    <th scope="row">
                        Time:
                    </th>
                    <td>
                        3:30pm - 6:00pm
                    </td>
                </tr>
                <tr class="odd">
                    <th scope="row">
                        Catering:
                    </th>
                    <td>
                        Afternoon tea is provided from 3:30pm - 4:00pm
                    </td>
                </tr>
                <tr class="odd">
                    <th scope="row">
                        Cost:
                    </th>
                    <td>
                        No Charge
                    </td>
                </tr>
                <tr>
                <td colspan="2">
                    Venues
                </td>
                </tr>
                <tr class="odd">
                    <th scope="row">
                        Sydney
                    </th>
                    <td>
                        <strong>Ballroom A</strong><br />
                        Vibe Hotel North Sydney, 88 Alfred Street<br />
                        Milsons Point NSW 2061
                    </td>
                </tr>
                <tr class="odd">
                    <th scope="row">
                        Melbourne
                    </th>
                    <td>
                        <strong>Exhibition</strong><br />
                        Level 5, 4 Freshwater Place<br />
                        Southbank VIC 3006
                    </td>
                </tr>
                <tr class="odd">
                    <th scope="row">
                        Canberra
                    </th>
                    <td>
                        <strong>Theatres 1 + 2</strong><br />
                        Walter Turnbull Building Level 2, 44 Sydney Ave
                        <br />
                        Barton ACT 2600
                    </td>
                </tr>
                <tr class="odd">
                    <th scope="row">
                        Brisbane
                    </th>
                    <td>
                        <strong>Theatres 1 + 2</strong><br />
                        Level 9 Waterfront Place, 1 Eagle St.<br />
                        Brisbane QLD 4000
                    </td>
                </tr>
                <tr class="odd">
                    <th scope="row">
                        Perth
                    </th>
                    <td>
                        <strong>Enex 100 Seminar Room</strong><br />
                        Level 3, 100 St Georges Terrace<br />
                        PERTH WA 6000
                    </td>
                </tr>
                <tr class="odd">
                    <th scope="row">
                        Adelaide
                    </th>
                    <td>
                        <strong>Function L2 / Auditorium</strong><br />
                        Level 26 Westpac House, 91 King William St<br />
                        Adelaide SA 5000
                    </td>
                </tr>
            </table>
            <%--            <div class="download narrowDownload">
                <a style="border: medium none;">
                    <img src="/ssw/Images/Button_Register.gif" alt="Register online now" /></a>
                <br />
                or
                <br />
                <br />
                Call (02) 9953 3000
            </div>--%>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="rounded">
        <h3>
            More Training</h3>
    </div>
    <div class="section offer">
        <div class="onsite">
            <h4>
                Team Foundation Server 2013</h4>
            <p>
                Are you roaring to go? Let's get started with <a href="/ssw/Events/Training/Brain-Quest-VS-TFS-Sharepoint.aspx#OverviewTFS">Team Foundation Server</a>!</p>
            <p>
                <strong>Price:</strong> $110+GST.</p>
            <h4>
                SharePoint 2013</h4>
            <p>
                Relaxed after lunch? Sit back and take it easy with <a href="/ssw/Events/Training/Brain-Quest-VS-TFS-Sharepoint.aspx#OverviewSharePoint">SharePoint 2013</a>.</p>
            <p>
                <strong>Price:</strong> $110+GST.</p>
            <h4>
                Full Day Pass</h4>
            <p>
                Book both sessions to take advantage of our special offer.</p>
            <p>
                <strong>Price:</strong> $190+GST.</p>
            <div class="clear">
            </div>
        </div>
    </div>
    <div class="section">
        <h3>
            About the presenter</h3>
        <p>
            <img src="https://sharepoint.ssw.com.au/AboutUs/Employees/PublishingImages/adam_thumb.jpg"
                class="thumbnail" /><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
            is a Microsoft Regional Director, and Chief Architect at SSW. Adam has been developing
            custom solutions for businesses across a range of industries such as Government,
            banking, insurance and manufacturing since 1990 for clients such as Microsoft, Quicken,
            and the Fisheries Research and Development Corporation. His wealth of experience
            in the industry and unsurpassed technical knowledge will ensure attendees get the
            most out of these sessions.</p>
    </div>
    <div class="section">
        <h3>
            About Telerik</h3>
        <p>
Telerik is a market-leading provider of end-to-end solutions for <a href="http://www.telerik.com/developer-productivity-tools.aspx" class="ignore">application development</a>, <a href="http://www.telerik.com/automated-testing-tools.aspx" class="ignore">automated testing</a>, <a href="http://www.telerik.com/team-productivity-tools.aspx" class="ignore">agile project management</a>, <a href="http://www.telerik.com/products/reporting.aspx" class="ignore">reporting</a>, and <a href="http://www.sitefinity.com/" class="ignore">content management</a> across all major Microsoft development platforms.
</p>
<br />
    <a href="http://www.telerik.com" style="margin-left:25px;border-bottom:none;"><img src="/ssw/Events/images/telerikLogo-web-122x48px.png"/></a>
    </div>
</asp:Content>

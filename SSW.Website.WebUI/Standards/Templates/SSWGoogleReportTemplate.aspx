<%@ Page Language="C#" AutoEventWireup="false" Title="SSW Google Analytics Report Template"
    MasterPageFile="~/Masters/Default.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <div>
        <style type="text/css">
            .tablePast
            {
                color: Gray;
            }
            .tableRowMark
            {
                background: #EFD3D2;
                height: 18.3pt;
            }
            TD
            {
                color: #943634;
                vertical-align: top;
                width: 193;
                padding: 0cm 5.4pt 0cm 5.4pt;
            }
            .columnList
            {
                width: 20px;
            }
            .style1
            {
                color: #FF0000;
                font-weight: bold;
            }
            .style3
            {
                background-color: #FFFF00;
            }
        </style>
        <h2>
            Google Analytics Report Template</h2>
        <p>
            As per our conversation, here is my look at some of the stats from Google Analysis.</p>
        <div>
            <p>
                <h1>
                    How many visitors we had?</h1>
            </p>
            <p>
                <table>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <span>July 2008</span>
                        </td>
                        <td>
                            <span class="tablePast">June 2008</span>
                        </td>
                    </tr>
                    <tr class="tableRowMark">
                        <td>
                            Visits
                        </td>
                        <td>
                            <span class="style3">380</span>
                        </td>
                        <td class="tablePast">
                            <span class="style3">284</span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Unique Visitor
                        </td>
                        <td>
                            349
                        </td>
                        <td class="tablePast">
                            237
                        </td>
                    </tr>
                    <tr class="tableRowMark">
                        <td>
                            New Visitor
                        </td>
                        <td>
                            330
                        </td>
                        <td class="tablePast">
                            221
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Page Views
                        </td>
                        <td>
                            713
                        </td>
                        <td class="tablePast">
                            531
                        </td>
                    </tr>
                </table>
            </p>
            <p>
                <span style="background-position: 0% 0%; color: #1F497D; background-image: none;
                    background-repeat: repeat; background-attachment: scroll;" class="style3">* Visits
                    = traffic and it is increasing</span></p>
        </div>
        <p>&nbsp;
        </p>
        <div>
            <h1>
                <p>
                    Where did the visitors come from?</p>
            </h1>
            <p>
                <span style="color: #1F497D;">Top 5 countries</span></p>
            <p>
                <table>
                    <tr>
                        <td class="columnList">
                        </td>
                        <td>
                            July 2008
                        </td>
                        <td class="tablePast">
                            June 2008
                        </td>
                    </tr>
                    <tr class="tableRowMark">
                        <td class="columnList">
                            1
                        </td>
                        <td>
                            Australia (45%)
                        </td>
                        <td class="tablePast">
                            Australia (50.16%)
                        </td>
                    </tr>
                    <tr>
                        <td class="columnList">
                            2
                        </td>
                        <td>
                            United kingdom (18.68%)
                        </td>
                        <td class="tablePast">
                            United Kingdom (19.02%)
                        </td>
                    </tr>
                    <tr class="tableRowMark">
                        <td class="columnList">
                            3
                        </td>
                        <td>
                            <span class="style3">United States (14.47%)</span>
                        </td>
                        <td class="tablePast">
                            <span class="style3">United States (12.79%)</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="columnList">
                            4
                        </td>
                        <td>
                            Ireland (5.26%)
                        </td>
                        <td class="tablePast">
                            Canada (2.62%)
                        </td>
                    </tr>
                    <tr class="tableRowMark">
                        <td class="columnList">
                            5
                        </td>
                        <td>
                            New Zealand (2.89%)
                        </td>
                        <td class="tablePast">
                            Sweden (1.64%)
                        </td>
                    </tr>
                </table>
            </p>
            <p>
                <span style="background-position: 0% 0%; color: #1F497D; background-image: none;
                    background-repeat: repeat; background-attachment: scroll;" class="style3">* US traffic
                    is up</span></p>
        </div>
        <p>&nbsp;
        </p>
        <div>
            <h1>
                <span>How they found Coogee Castaway?</span></h1>
            <p>
                <table>
                    <tr>
                        <td class="columnList">
                        </td>
                        <td>
                            July 2008
                        </td>
                        <td class="tablePast">
                            June 2008
                        </td>
                    </tr>
                    <tr class="tableRowMark">
                        <td class="columnList">
                            1
                        </td>
                        <td>
                            Google (30.26%)
                        </td>
                        <td class="tablePast">
                            Google (32.75%)
                        </td>
                    </tr>
                    <tr>
                        <td class="columnList">
                            2
                        </td>
                        <td>
                            Google Adword (21.23%)
                        </td>
                        <td class="tablePast">
                            Google Adword (23.24%)
                        </td>
                    </tr>
                    <tr class="tableRowMark">
                        <td class="columnList">
                            3
                        </td>
                        <td>
                            Direct (12.37%)
                        </td>
                        <td class="tablePast">
                            Direct (17.25%)
                        </td>
                    </tr>
                    <tr>
                        <td class="columnList">
                            4
                        </td>
                        <td>
                            <span class="style3">Google Image (10.26%)</span>
                        </td>
                        <td class="tablePast">
                            <span class="style3">Google Image (6.69%)</span>
                        </td>
                    </tr>
                    <tr class="tableRowMark">
                        <td class="columnList">
                            5
                        </td>
                        <td>
                            Live (5.53%)
                        </td>
                        <td class="tablePast">
                            Live (4.23%)
                        </td>
                    </tr>
                </table>
            </p>
            <p>
                <span style="color: #003572">*cosma.wobistdujetzt.com is the blog of a German passenger.
                    This is another way to advertise.</span></p>
            <p>
                <span style="color: #1F497D; background: yellow;">* Google images are up. This might
                    be because </span><span class="style3" style="color: #003572">some people used Google
                        image to search for Coogee apartments.<o:p></o:p></span></p>
        </div>
        <p>&nbsp;
        </p>
        <div>
            <h1>
                <p>
                    What were they looking for?</p>
            </h1>
            <p>
                <span lang="EN-US" style="color: #1F497D;">The top keywords that led visitors to <a
                    href="http://www.coogeecastaway.com.au">www.coogeecastaway.com.au</a> from search
                    engine: (excluding searching by name "Coogee Castaway" and the URL "<a href="http://www.coogeecastaway.com.au">www.coogeecastaway.com.au</a>")</span></p>
            <p>
                <table>
                    <tr>
                        <td class="columnList">
                        </td>
                        <td>
                            July 2008
                        </td>
                        <td class="tablePast">
                            June 2008
                        </td>
                    </tr>
                    <tr class="tableRowMark">
                        <td class="columnList">
                            1
                        </td>
                        <td>
                            coogee apartments (25.10%)
                        </td>
                        <td class="tablePast">
                            coogee apartments (23.53%)
                        </td>
                    </tr>
                    <tr>
                        <td class="columnList">
                            2
                        </td>
                        <td>
                            hotel coogeee (4.45%)
                        </td>
                        <td class="tablePast">
                            hotel coogee (6.95%)
                        </td>
                    </tr>
                    <tr class="tableRowMark">
                        <td class="columnList">
                            3
                        </td>
                        <td>
                            coogee beach accommodation (2.02%)
                        </td>
                        <td class="tablePast">
                            coogee castaway 5 (2.14%)
                        </td>
                    </tr>
                    <tr>
                        <td class="columnList">
                            4
                        </td>
                        <td>
                            coogee beach crown plaza ( 1.62%)
                        </td>
                        <td class="tablePast">
                            coogee accommodation (1.60%)
                        </td>
                    </tr>
                    <tr class="tableRowMark">
                        <td class="columnList">
                            5
                        </td>
                        <td>
                            two bedroom accommodation site:au (1.62%)
                        </td>
                        <td class="tablePast">
                            coogee holiday accommodation (1.60%)
                        </td>
                    </tr>
                </table>
            </p>
            <p>
                <span style="color: #003572">Top 5 pages visited and the exit rate</span></p>
            <p>
                <table>
                    <tr>
                        <td style="width: 500px">
                            Default.aspx - 53.91%
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 500px">
                            CoogeeAustraliaHolidayAccomodation.aspx - 45.58%
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 500px">
                            CoogeeAustraliaHolidayAccommodation - LargeImages.aspx - 43.68%s
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 500px">
                            CoogeeAustraliaHolidayAccommodation_House.aspx - <span class="style1">60.27%</span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 500px">
                        CoogeeAustraliaHolidayAccommodation_Lurline.aspx&nbsp; - 35.29%
                    </tr>
                </table>
            </p>
            <p>
                <span style="color: #003572">*The exit rate of house page is much higher than the rate
                    of other two pages. Although we have such links back to the default page at the
                    bottom of the page, I suggest that we should re-group the section's on the page.
                    The pages are too long and the sections are not placed balanced, so that would be
                    a bit hard for user to find the link to go forward or backward. </span><span style="color: #1F497D">
                        <span style="mso-spacerun: yes">&nbsp;</span><o:p></o:p></span></p>
        </div>
        <p>&nbsp;
        </p>
        <div>
            <h1>
                <p>
                    What made the visitors exited?</p>
            </h1>
            <p>
                <table>
                    <tr>
                        <td style="width: 500px">
                            Default.aspx - 53.91%
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 500px">
                            CoogeeAustraliaHolidayAccommodation.aspx - 45.58%
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 500px">
                            CoogeeAustraliaHolidayAccommodation_LargeImages.aspx - 60.27%
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 500px">
                            CoogeeAustraliaHolidayAccommodation_House - 43.68%
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 500px">
                            CoogeeAustraliaHolidayAccommodation_LargeImages.aspx - 35.94%
                        </td>
                    </tr>
                </table>
            </p>
        </div>
        <p>&nbsp;
        </p>
        <div>
            <h1>
                <p>
                    The Adwords statistics of last month (July 2008)</p>
            </h1>
            <p>
                <span>
                    <img src="images/googlereport.jpg" /></span>&nbsp;</p>
        </div>
        <p>&nbsp;
        </p>
        <div>
            <p>
                <span>Note:</span></p>
            <p>
                1.Only 3 Adwords are working now. The CTR is not high. I think we should delete
                those phrase which are never shown on Google. And if you permit, I can do some test
                to find the best phrase for Adword.</p>
            <p>
                2.According to the scan result of WebCEO, <b><span style="color: red">holiday</span></b>
                and <b><span style="color: red">apartment</span></b>” are searched by users frequently.
                So I suggest you add these two words to the keyword in your website, and add coogee
                holiday rentals to the Adword. </span>
                <br />
                <br />
                <img src="images/WebCEO_1.jpg" />
                <br />
                <br />
                <img src="images/WebCEO_2.jpg" /></p>
            <p>
                Some of our competitors also have these keywords.&nbsp;
            </p>
            <p>
                3.Stayz and Real Holidays seem not the same kind of our website. They both have
                a high page rank (6), which makes them at the top of searching result. Coogee Sands
                is not that good, but it has higher pagerank (4) than Coogee Castaway (2). The advantage
                of Coogee Castaway is that we have good pictures, simple content and behavioural
                targeting, which are better than Coogee Sands. To improve the page rank, I suggest
                to add more contents to the website and cooperate with other websites. I noticed
                that some of the visitors came from Stayz, so maybe that is a kind of choice.
            </p>
            <p>
                For the changes to the content, my suggestions are:
                <ul>
                    <li>Add something about the beach, e.g. photos, stories... </li>
                    <li>Add separate page for map and booking. Use images instead of link. </li>
                    <li>Add some information of local service, e.g. transport and entertainment</li></ul>
            </p>
        </div>
    </div>
</asp:Content>

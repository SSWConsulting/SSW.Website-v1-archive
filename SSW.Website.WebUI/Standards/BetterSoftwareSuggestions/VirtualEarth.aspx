<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Virtual Earth Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        style="width: 100%;">
        <tr>
            <td>
                <b>Strategic Suggestions</b><br />
                <ol>
                    <li><a href="#Contact">Make contact information for Microsoft personal available</a></li><li>
                        <a href="#Support">Microsoft Supporting the application</a></li><li><a href="#Monetisation">
                            Monetisation Strategy - this was a good suggestion from Dr. Neil</a></li><li><a href="#Licensing">
                                Clear Published Pricing/Licensing System</a></li><li><a href="#Roadmap">Clear Roadmap
                                    on features going forward</a></li><li><a href="#Public">Public Site pushing the technology
                                        to business customers</a></li><li><a href="#DeveloperCertifications">Virtual Earth Developer
                                            Certifications</a></li>
                    <li><a href="#GISSupport">Improving the entire Microsoft Platform for GIS support </a>
                    </li>
                </ol>
            </td>
        </tr>
        <tr>
            <td>
                <b>Technical Suggestions</b><br />
                <ol>
                    <li><a href="#DataAndUtilities">Data & Utilities Suggestions</a></li><li><a href="#MapManipulation">
                        Map Manipulation Suggestions</a></li><li><a href="#GeneralUsability">Suggestions for
                            General Usability Improvements</a></li><li><a href="#MapPoints">Suggestions for Improved
                                Map Points</a></li><li><a href="#LayerSupport">Suggestions for Improved Layer Support</a></li><li>
                                    <a href="#MarkerPopups">Suggestions for Improved Marker Popups</a></li><li><a href="#MapCruncher">
                                        Map Cruncher Suggestions</a></li></ol>
            </td>
        </tr>
    </table>
    <br />
    <h2>
        Strategic Suggestions</h2>
    <br />
    <ol>
        <li>
            <h2>
                <a name="Contact"></a>Make contact information for Microsoft personal available
                for:</h2>
            <ul>
                <li>Business Development - people who can help win large proposals</li><li>Technical
                    Team - with separate people for each aspect of virtual earth
                    <ul>
                        <li>Eg. Projection specialist </li>
                        <li>Map data specialist</li><li>Integration with other platform specialists</li></ul>
                </li>
                <li>Licensing Team</li></ul>
        </li>
        <li>
            <h2>
                <a name="Support"></a>Microsoft Supporting the application</h2>
            <ul>
                <li>The Virtual Earth team should clearly identify what functionality is fully supported
                    by Microsoft. ( I like the Microsoft Ajax team approach to this ).
                    <ul>
                        <li>Partners & Clients have a duty of care to know what functionality is supported.</li></ul>
                </li>
                <li>Support for previous versions
                    <ul>
                        <li>New URL for every major and minor version.</li><li>how long will each be supported?
                        </li>
                    </ul>
                </li>
                <li>Proper Testing - Everyone's v3 website crashed when v4 of VE was released.</li></ul>
        </li>
        <li>
            <h2>
                <a name="Monetisation"></a>Monetisation Strategy - this was a good suggestion from
                Dr. Neil</h2>
            <ul>
                <li>Microsoft should make an advertising monetisation system, with a revenue-share model
                    with developers/publishers. This will encourage more entry-level implementations,
                    which can then drive the community and lead to larger VE sales. </li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="Licensing"></a>Clear Published Pricing/Licensing System</h2>
            <ul>
                <li>Microsoft should look to Amazon's web services, which are leading the field in this
                    area. </li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="Roadmap"></a>Clear Roadmap on features going forward</h2>
            <ul>
                <li>The situation where Microsoft kept the v4 feature set secret, is pretty immature.
                    Businesses need a clear roadmap of future Virtual Earth features, so they can make
                    informed decisions on adopting the technology, and planning for future releases.
                </li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="Public"></a>Public Site pushing the technology to business customers</h2>
            <ul>
                <li>Suggested solutions/Case studies for different verticals</li><li>Partner directory</li></ul>
        </li>
        <li>
            <h2>
                <a name="DeveloperCertifications"></a>Virtual Earth Developer Certifications</h2>
            <ul>
                <li>40% programming with VE technology </li>
                <li>40% Application Architecture & Best Practices</li><li>20% Mapping/GIS concepts (
                    although Dr. Neil believes this knowledge will become commodity as improved mapping
                    functionality is integrated into the platform) </li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="GISSupport"></a>Improving the entire Microsoft Platform for GIS support</h2>
            <ul>
                <li>by adding spatial extensions to Microsft SQL Server to support the handling of spatial
                    data and complex queries.</li>
            </ul>
        </li>
    </ol>
    <br />
    <h2>
        Technical Suggestions</h2>
    <br />
    <ol>
        <li>
            <h2>
                <a name="DataAndUtilities"></a>Data & Utilities Suggestions</h2>
            <ul>
                <li>There should be public methods for geocoding and reverse-geocoding. The geocoding
                    should be of high quality. even if we have to pay for it.</li><li>The Find Location/
                        Find address method should have a callback, so we know when the location has been
                        found.</li><li>The Find Location method tends to have problems with area codes. Sometimes
                            it works, and sometimes it doesn't.</li><li>Error information should optionally catchable
                                in a callback, rather than being displayed automatically on screen.</li><li>There should
                                    be more data available for Points of Interest, with the ability load & switch on
                                    and off layers with the appropriate data
                                    <ul>
                                        <li>Eg. Cinemas, Utilities, Landmarks, Railways [Michael Kring]</li></ul>
                                </li>
                <li>There should be optional dynamically downloadable javascript libraries for calculations
                    such as:
                    <ul>
                        <li>Conversion between different coordinate systems (eg. Mercator to/from Long/Lat)</li><li>
                            Distance between points</li><li>Distance to nearest features
                                <ul>
                                    <li>Eg distance to nearest road, nearest junction</li></ul>
                            </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="MapManipulation"></a>Map Manipulation Suggestions</h2>
            <ul>
                <li>Resizing of the map needs to work correctly in all browsers. At 100%, the scalebar
                    often does not show. Working examples should be made for maps scaled to 100% of
                    the page that work in all browsers.</li><li>There should be documentation on how to
                        add extra zoom level information - eg. To allow the user to zoom in and see floor
                        plans of a house Ability to record user actions into the browser history.</li><li>Dynamic
                            loading of map components as needed to cut down the size of the footprint.
                            <ul>
                                <li>Java script size impact</li><li>DOM footprint (eg. For dashboards)</li><li>There
                                    could be a variety of different map dashboards and map rendering styles that are
                                    selected & downloaded on demand</li></ul>
                        </li>
                <li>There should be multiple rendering styles.. eg. Without roads, without railways...</li></ul>
        </li>
        <li>
            <h2>
                <a name="GeneralUsability"></a>Suggestions for General Usability Improvements</h2>
            <ul>
                <li>The cursors need to be improved. Eg. When you click the map, and drag the map
                    there should be appropriate cursors, rather than the current hand.</li><li>90% of
                        non-technical users find the default dashboard too hard to use and understand. There
                        should be a clear labelling of the zoom control. The slider should also be improved
                        (look at Microsoft Ajax examples)</li></ul>
        </li>
        <li>
            <h2>
                <a name="MapPoints"></a>Suggestions for Improved Map Points</h2>
            <ul>
                <li>Z-index of map points
                    <ul>
                        <li>There needs to be a way of specifying the z-index ordering of points</li><li>There
                            should also be a bring to front, send to back methods</li></ul>
                </li>
                <li>The map should correctly support transparent png images for both overlays and pins.
                    (in all browsers)</li><li>There should be a method to change the icon of a pin (rather
                        than requiring us to delete and add the pin)</li></ul>
        </li>
        <li>
            <h2>
                <a name="LayerSupport"></a>Suggestions for Improved Layer Support</h2>
            <ul>
                <li>Layers should have improved methods to control the z-index of the layers</li><li>
                    Layers should have improved transparency support</li><li>There should be ways to add
                        animated imagery to layers. Eg. Adding animated isobars for a weathermap</li><li>We
                            should be able to add individual markers to layers, rather than just using Live
                            Collections and GeoRSS feeds</li></ul>
        </li>
        <li>
            <h2>
                <a name="MarkerPopups"></a>Suggestions for Improved Marker Popups</h2>
            <ul>
                <li>There should be public methods for showing and hiding the ero popup for a particular
                    marker (using pinID)</li><li>Currently asynchronously loading data to place in a popup
                        requires a hack. Please make a public interface for this</li><li>There should be support
                            for opening multiple ero popups at the same time if desired. (and support for deleting
                            them again)</li><li>Options to display the popup as a new copy, or using the existing
                                popup</li><li>Methods for deleting ero popups (probably based on pinID)</li></ul>
        </li>
        <li>
            <h2>
                <a name="MapCruncher"></a>Map Cruncher Suggestions</h2>
            <ul>
                <li>Should provide an API</li></ul>
        </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TK">Tim Kremer</a>
    </p>
</asp:Content>
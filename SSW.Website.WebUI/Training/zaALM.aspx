<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Training & Events | Visual Studio 2010 ALM (Overview)" %>
<%@ Register TagPrefix="text" TagName="Training" Src="/ssw/components/TrainingSidebar.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Visual Studio 2013 ALM</h1>
    <h2>Overview</h2>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="eventsummary">
        <ul class="vitals">
            <li>Presenter
                <ul>
                    <li>Adam Cogan</li>
                </ul>
            </li>
            <li>Duration
                <ul>
                    <li>Half day</li>
                </ul>
            </li>
            <li>Price (ex GST)
                <ul>
                    <li>$700</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule">
            <li><strong>Sydney</strong>
                <ul>
                    <li>

                   </li>
                </ul>
            </li>
        </ul>
    </div>

        <div class="greybox">
        <p>This course is available in house by appointment only. Please call us on (02) 9953 3000 or email <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','Suggest - Visual Studio Team System Half Day',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer">
            696e666f72407373772e636f6d2e6175 </a> for more information.</p>
    </div>

    <p>
        Microsoft Visual Studio 2013 Application Lifecycle Management is an integrated software development platform
        to build the mission-critical applications that businesses depend on. It extends
        Visual Studios integrated and productive experience from the developer to the entire
        development team by delivering powerful new role-based tools for software architects,
        developers, testers and project managers.</p>
    <p>
        In this session you will see an overview of the Visual Studio ALM suite
        of tools and how they can improve your software development cycle.</p>
    <table class="outline">
        <tr>
            <th scope="row">
                Course Times
            </th>
            <td>
                9am - 1pm
            </td>
        </tr>
        <tr>
            <th scope="row">
                Venue
            </th>
            <td>
                SSW Sydney
                <br />
                Gateway Court Suite 10<br />
                81-91 Military Road<br />
                Neutral Bay, NSW 2089<br />
                (<a href="/ssw/Company/Directions/NeutralBay/Default.aspx">directions</a>)
            </td>
        </tr>
        <tr>
            <th scope="row">
                System Requirements
            </th>
            <td>
                Systems will be provided during the demonstrations that have all necessary software
                installed. You are welcome to bring your own laptop - make sure you have the latest
                versions (including Service Packs) of Visual Studio 2013, Team System and SQL Server
                2012 (or Express) installed.
            </td>
        </tr>
    </table>

        <h2>Related Links</h2>
    <a href="/ssw/consulting/scrum.aspx">Agile Development with Scrum and TFS 2013</a>           
    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <text:Training runat="server" />

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
</asp:Content>

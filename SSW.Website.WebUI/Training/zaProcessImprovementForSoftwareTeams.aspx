<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubpage.master" Title="Process Improvement 101 for Software Teams" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Process Improvement 101 for Software Teams</h1>
    <h2>What all software teams should know about Process Improvement</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>
        Process Improvement 101 for Software Teams:</h2>
    <ul>
        <li><a href="#objectives">Workshop Objectives</a></li>
        <li><a href="#attend">Who Should attend?</a></li>
        <li><a href="#when">Workshop Details</a></li>
        <li><a href="#Register">Register</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div id="oversizeMaincontent">
        <p>
            <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"
                CurrentNodeStyle-CssClass="current" PathSeparator=" &raquo; " PathSeparatorStyle-CssClass="separator"
                CssClass="breadcrumblight">
            </asp:SiteMapPath>
        </p>
        <div class="section">
            <%--        <div class="joeVid">
		<a class="imgRight joe" href="javascript:showSswVideo('../video/JoeSharePoint101_v3.wmv');"></a>
		<p><strong>Video:</strong> hear Joe Hardy introduce SharePoint 101.</p>
		</div>
	           
	    <dl class="imgRight" style="width:200px;">
	        <dt> <img src="Images/SharePoint2010Logo_Small.jpg" alt=""/> </dt>
	        <dd></dd>
	    </dl>--%>
            <p>
                We all know, deep down, that our processes, workflows and tools within our software
                or IT organization are not optimal and that with some careful consideration, efficiency
                could be greatly improved.
            </p>
            <p>
                By using the Scrum Methodology, we are able use the framework to ensure full communication
                between team members and correct and identify new processes and tools to improve
                efficiency and reduce wastage.
            </p>
        </div>
        <div class="section">
            <h2>
                <a name="objectives"></a>Workshop Objectives</h2>
            <p>
                This workshop will show:</p>
            <ul class="benefits">
                <li>How to read the signs of wastage and inefficiency</li>
                <li>An overview of the Scrum Methodology</li>
                <li>Ways to use Scrum to address the wastage and inefficiency</li>
                <li>How SSW uses Scrum internally to build high-performing teams</li>
                <li>How SSW uses Scrum and the high-performing teams to deliver value to its customers</li>
                <li>How to use tools to make the Scrum process efficient</li>
            </ul>
            <p>
                This workshop is presented in layman terms staff in all departments understands.</p>
        </div>
<%--        <div class="section">
            <h2>
                <a name="outline"></a>Workshop Outline</h2>
            <ol>
                <li>Why your business needs to consider improving your software processes? </li>
                <li>The 7 signs of wastage</li>
                <li>The process for improving process</li>
                <li>Group Exercise</li>
                <li>Demonstration of SSW's workflow for the development team using Team Foundation Server</li>
                <li>Case studies</li>
                <li>Some leading industry tools</li>
            </ol>
            <p>
                Case studies are used throughout for real world examples.</p>
        </div>--%>
        <div class="section">
            <h2>
                <a name="attend"></a>Who should attend?</h2>
            <p>
                Software Product Owners (Program Managers, Product Managers), team leaders of software teams, CIO's, development managers and senior developers seeking ways to improve, wanting to become agile or wanting to become more agile while providing and maintaining transparency.</p>
        </div>
        <div class="section">
            <h2>
                <a name="when"></a>Workshop Details</h2>
            <table class="beautyTable">
                <tr class="odd">
                    <td>
                        Date:
                    </td>
                    <td>
                        Friday 30th April 2010
                    </td>
                </tr>
                <tr>
                    <td>
                        Time:
                    </td>
                    <td>
                        8:00am - 11:00am
                    </td>
                </tr>
                <tr class="odd">
                    <td style="vertical-align: top;">
                        Address:
                    </td>
                    <td>
                        <a href="/ssw/Company/Directions/NeutralBay/">Suite 10, 81-91 Military Road Neutral
                            bay 2089 NSW</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        Food:
                    </td>
                    <td>
                        Breakfast is provided
                    </td>
                </tr>
                <tr class="odd">
                    <td>
                        Cost:
                    </td>
                    <td>
                        $110
                    </td>
                </tr>
            </table>
            <a name="Register"></a>

        </div>
        <div align="right">
            <a href="/ssw/Events/SSWTechBreakfast.aspx">Require technical training?</a>
        </div>
    </div>

    <script src="/ssw/Include/SswVideoPlayer.js" type="text/javascript"></script>

    <script type='text/javascript' src="/ssw/Include/Silverlight/MicrosoftAjax.js"></script>

    <script type='text/javascript' src="/ssw/Include/Silverlight/Silverlight.js"></script>

    <script type='text/javascript' src="/ssw/Include/Silverlight/SilverlightControl.js"></script>

    <script type='text/javascript' src="/ssw/Include/Silverlight/SilverlightMedia.js"></script>

    <script type='text/javascript' src="/ssw/Include/Silverlight/ExpressionPlayer.js"></script>

    <script type='text/javascript' src="/ssw/Include/Silverlight/PlayerStrings.js"></script>

    <script type='text/javascript' src="/ssw/Include/Silverlight/player.js"></script>

    <script type='text/javascript' src="/ssw/Video/StartJoeSharePoint101.js"></script>

</asp:Content>

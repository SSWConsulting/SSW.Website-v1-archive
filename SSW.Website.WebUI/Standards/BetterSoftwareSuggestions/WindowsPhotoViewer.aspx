<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Suggestions for Windows Photo Viewer"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <asp:label id="lblWelcome" runat="server"></asp:label><p>
    <div class="TableOfContents">
	    <ol>
		    <li><a href="#zoom-in-and-out">Help me use key strokes to Zoom in and out (little one)</a></li>
	    </ol>
    </div>

    <ol>

        <li>
	        <h2>
            <a name="zoom-in-and-out"></a>Help me use key strokes to Zoom in and out (little one)</h2>
	        <p>Note: I am aware that Alt+Up and Alt+Down works, but this is totally not intuitive.</p>
            <dl class="image">
                <dt><img border="0" src="Images/zoomInAndOut.jpg" alt="Zoom in"></dt>
                <dd>Figure: Zooming in should be more intuitive</dd>
            </dl>
        </li>
    </ol>
    <h2>Acknowledgements</h2>
	    <p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>
	    
</asp:content>
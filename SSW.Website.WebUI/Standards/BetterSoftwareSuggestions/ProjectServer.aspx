<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Office Project Server Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" align="right" style="{width:100%;}">
	    <tr> 
  		    <td>
        <ol>
        <li><a href="#ShowTaskNotes">Task notes field should be shown and editable in Project
            Center views</a></li>
        <li><a href="#DeveloperRates">Enable more rates for a developer</a></li>
    </ol></td>
	    </tr>
    </table>
    <ol>
        <li>
            <h2>
                <a name="ShowTaskNotes"></a>Task notes field should be shown and editable in Project
                Details View</h2>
            <p>
                Project Server task notes field should be accessible via the Project Center view
                of a project. You should be able to see the entire contents of the task notes, and
                they should be editable.
            </p>
            <dl class="image">
                <dt>
                    <img src="images/ProjectServerNotes.GIF" border="0" /></dt>
                <dd>
                    Figure: Can't view task notes via the Project Center views.</dd>
            </dl>
        </li>
        <li>
            <h2>
                <a name="DeveloperRates"></a>Enable more rates for a developer</h2>
            <p>
                You should be able to set more than 5 rates per developer. This is too limiting
                when you have resources working on many client projects, and varying rates.</p>
            <dl class="image">
                <dt>
                    <img src="images/DeveloperRate.JPG" border="0" /></dt>
                <dd>
                    Figure: Can only set 5 different rates for resources.</dd>
            </dl>
        </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TK">Tim Kremer</a><br />
    </p>
</asp:Content>

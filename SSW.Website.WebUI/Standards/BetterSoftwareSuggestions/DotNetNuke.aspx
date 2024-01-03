<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="DotNetNuke Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <div class="TableOfContents">
        <h3>
            DotNetNuke Suggestions</h3>
        <ol>
            <li><a href="#Version">Help me have a better way of checking DotNetNuke version</a></li>
            <li><a href="#PasswordRequirements">Help me know the password requirements</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li><h2><a name="Version"></a>
                
                    Help me have a better way of checking DotNetNuke version</h2>
                <p>
                    It would be nice if I can see version number in:
                    <ul>
                        <li>The HTML source.</li>
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/MenuVersion.jpg" alt=" " width="715" height="327" /></dt><dd>Figure:
                                    Good Example - The version of the menu can be checked via HTML source.</dd></dl>
                        <li>Via a web service call eg. <a href="">http://www.dotnetnuke.com/Version.XML</a></li>
                    </ul>
                </p>
                <p>
                    Unfortunately this is how you can check your DotNetNuke version <a href="/ssw/Standards/Rules/RulesToBetterDotNetNuke.aspx#LatestVersion">
                        Rule to always update your DotNetNuke on "Rules To Better DotNetNuke"</a></p>
            </li>
            <li><h2><a name="PasswordRequirements"></a>Help me know the password requirements</h2>
             <p>Out of the box, DotNetNuke does not tell users what are the password requirements.</p>  
                                     <dl class="image">
                            <dt>
                                <img src="Images/PasswordRequirements.jpg" alt="Password requirements error when updating password"/></dt><dd>Figure:
                                    Password requirements should be displayed in the help text</dd></dl>
               <p>Even administrator cannot easily tell what the password requirements are. In order to tell what they are, you have to search web.config for ASP.NET membership provider settings.</p>
                                                    <dl class="image">
                            <dt>
                                <img src="Images/PasswordRequirementSettings.jpg" alt="Passsword requirement settings in web.config"/></dt><dd>Figure:
                                    There should be an easier to check password requirements instead of searching in web.config</dd></dl>
            </li>
        </ol>
    </div>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ZV">Zune Vien</a>
    </p>
</asp:Content>

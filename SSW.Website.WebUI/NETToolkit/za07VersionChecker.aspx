<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW .NET Toolkit - Standard Version Checker Control" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <p>
        <a href="/ssw/NETToolkit/">SSW .NET Toolkit</a> > <a href="/ssw/NETToolkit/userguide.aspx">
            User Guide</a></p>
    <p>
        <img src="Images/NETToolkitLogo.gif" alt="DOT NET Tool kit - Develop Applications More Efficiently with the SSW .NET Toolkit"
            width="188" height="83"></p>
    <h2>
        The SSW Standard Version Checker Control</h2>
    <p>
        The green tick at the bottom left on below form is what this control looks like.
        The idea of this control came from one of our rule <a href="/ssw/Standards/Rules/RulestoSuccessfulProjects.aspx#new_version">
            Do you allow users to check for a new version easily?</a></p>
    <p>
        <img border="0" src="Images/VersionChecker.JPG" alt="Version Checker Control" width="657"
            height="529"><br>
        <b><span style="font-size: 10pt;">Figure: SSW Standard Version Checker Control - latest
            version</span></b></p>
    <p>
        This control calls a Web Service and then shows as a green tick or red cross based
        on the latest version infomation returned from the Web Service.
    </p>
    <p>
        <img border="0" src="Images/VersionChecker_red.JPG" alt="Version Checker Control"
            width="655" height="523"><br>
        <b><span style="font-size: 10pt;">Figure: SSW Standard Version Checker Control - need
            upgrade</span></b></p>
    <p>
        <img border="0" src="Images/VersionChecker_properties.JPG" alt="Version Checker Control"
            width="588" height="87"><br>
        <b><span style="font-size: 10pt;">Figure: SSW Standard Version Checker Control - properties</span></b></p>
    <p>
        The URL of Web Service used in .NETToolkit for demo is  <a href="/ssw/NetToolkitWebService/VersionChecker.asmx">
            http://webservices.ssw.com.au/ssw/NETToolkit/VersionChecker.asmx</a></p>
    <h2>
        How do I use the SSW Standard Version Checker Control in my project?</h2>
    You can use the SSW Standard Version Checker in your applications by following the
    steps listed below. You will need a website to host the webservice and the product
    update page.
    <ul>
        <li>Install SSW .Net Toolkit
            <dl class="image">
                <dt>
                    <img src="images/VersionChecker_01.gif" alt="Install SSW .Net Toolkit" />
                </dt>
            </dl>
        </li>
        <li>Add reference to SSW.Framework.WindowsUI.dll in your porject
            <dl class="image">
                <dt>
                    <img src="images/VersionChecker_02.gif" alt="Add reference" />
                </dt>
                <dd>Figure: You can get the assembly in the installed folder of SSW .Net Toolkit</dd>
            </dl>
            
        </li>
        <li>Add the VersionStatus control to your form
            <br />
            You can create it dynamically or just drag it from the toolbox.
            <dl class="image">
                <dt>
                    <img src="images/VersionChecker_03.gif" alt="Add control to toolbox" />
                </dt>
            </dl>
            <dl class="image">
                <dt>
                    <img src="images/VersionChecker_04.gif" alt="Add control to toolbox" />
                </dt>
                <dd>Figure: Add SSW standard controls to your toolbox</dd>
            </dl>
            
            <dl class="image">
                <dt>
                    <img src="images/VersionChecker_05.gif" alt="Drag to the form" />
                </dt>
                <dd>Figure: Drag VersionStatus control to your form</dd>
            </dl>
             </li>
        <li>Create a webservice in your web project
            <br />
            The SSW Standard Version Checker control needs a webservice to get the version number
            of the specific product.<br />
            The webservice must contains a method called <b>GetLatestVersionAndUpdateUrl</b>
            like below:
            <dl class="code">
                <dt>
                    <pre>
        [WebMethod]
        public string[] GetLatestVersionAndUpdateUrl(string ProductDownloadID)
        {
           return new string[] { "1.1.1.1", "http://www.ssw.com.au/ssw" };
        }
                        </pre>
                </dt>
            </dl>
            The method returns a string array, which contains the latest version number and the URL of update page.
        </li>
        <li>Set the properties of the control
            <dl class="image">
                <dt>
                    <img src="images/VersionChecker_06.gif" alt="Set properties" />
                </dt>
                <dd>Figure: Set the webservice URL and product ID</dd>
            </dl>
        </li>
        <li>Run the application</li>
    </ul>
</asp:Content>

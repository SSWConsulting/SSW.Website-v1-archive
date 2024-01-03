<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Windows Forms Applications - ClickOnce" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
    <p>
        ClickOnce is a technology that allows developers to write Windows Forms applications
        that utilize the powerful features of the client, yet are as hassle-free to deploy
        and update as a Web page.
    </p>
    <p>
        ClickOnce provides a rich set of easy to use capabilities for deploying and updating
        smart client applications, including lots of options and ways of approaching things.
        Once you understand how to get your application out the door and updated, using
        the myriad of options that ClickOnce provides, lots of other questions arise, including
        how to make it more secure and how things will change in the future.
    </p>
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F25323042657474657225323057696E646F7773253230466F726D732532302D253230436C69636B2532304F6E6365')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#VersionNumbers">The Assembly and File Version should be the same by default</a></li>
            <li><a href="#SyncVersionNumbers">Do you keep the version in Sync (in all 3 places)?</a></li>
            <li><a href="#DownloadType">Do you set the appropriate download (.exe or .application)
                for your web users?</a></li>
            <li><a href="#ClickOnceSymbol">Do you make a clear symbol to inform the users that you
                are using a ClickOnce version application?</a></li>
            <li><a href="#Steps">Do you know whether you should use Click Once or MSI?</a></li>
            <li><a href="#AsyncCheckForUpdate">Do you know to use async code to do the check for update? (using System.Deployment.Application classes)</a></li>
            <li><a href="#CheckForUpdate">Do you know what the user experience should be like?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li><a name="VersionNumbers"></a>
                <h2>
                    The Assembly and File Version should be the same by default</h2>
                <p>
                    For the purpose of consistency, version numbers should be the same there are few exceptions.
                    One exception is for backward compilation:<br>
                    If you have other .dll files depend on the assembly, changing Assembly Version will
                    break these dependencies and then cause a crash in your application. So you can
                    keep the Assembly Version unchanged and increase the File Version when you release
                    new build. It is easy to maintain the version numbers in VS.NET 2005, but we have
                    some <a href="/ssw/Standards/BetterSoftwareSuggestions/VisualStudio.aspx#VersionNumbers">
                        suggestions on modification of version numbers in VS.NET</a>.
                    <dl class="image">
                        <dt>
                            <img src="Images/VersionNumbers.gif" width="398" height="386" /></dt>
                    </dl>
                </p>
            </li>
            <li><a name="SyncVersionNumbers"></a>
                <h2>
                    Do you keep the version in Sync (in all 3 places)?</h2>
                <p>
                    The Assembly Version, File Version should be in Sync 95% of the time. The only case
                    is backward compatibility. If you are using ClickOnce for deployment, you also need
                    to keep the Publish Version in sync also. Yes that is 3 places Microsoft should make
                    this easier. See <a href="/ssw/Standards/BetterSoftwareSuggestions/VisualStudio.aspx#VersionNumbers">
                        suggestions on modification of version numbers in VS.NET</a>
                </p>
            </li>
            <li><a name="DownloadType"></a>
                <h2>
                    Do you set the appropriate download (.exe or .application) for your web users?</h2>
                <p>
                    In general, you should set the user to download the Setup.exe of your ClickOnce application.
                    However there are many cases where the only prerequisite of the application is .Net
                    2, and the users don't need the Setup.exe. Instead, the .application file would
                    allow the user to install the application, or run it instantly if they already have
                    .Net 2. The following code allows you to check for the .Net 2 runtime on the client's
                    machine (note: Request.Browser.ClrVersion may return 0.0 on some browsers).</p>
                <dl class="code">
                    <dt>
                        <pre>
                            dim verHave as Version = Request.Browser.ClrVersion
                            dim verNeed as Version = new Version("2.0.50727")
                                                                
                            if ( verHave < verNeed ) then
                                Response.Write("&lt;a href=""./Download/Setup.exe""&gt;")
                            else
                                Response.Write("&lt;a href=""./Download/SSWDiagnostics.application""&gt;")
                            end if
			           </pre>
                    </dt>
                    <dd>
                        Figure: Code to detect the client's CLR version and offers the download accordingly
                    </dd>
                    <p>
                        Note: <a href="/ssw/Diagnostics">SSW Diagnostics</a> uses this code on its homepage.
                    </p>
                </dl>
            </li>
            <li><a name="ClickOnceSymbol"></a>
                <h2>
                    Do you make a clear symbol to inform the users that you are using a ClickOnce version
                    application?</h2>
                <p>
                    If you use ClickOnce to deploy your application, you should clearly show a symbol
                    indicating this is a ClickOnce version application. ClickOnce makes applications
                    enjoying convenient update, maximizing to keep the safety of the users' system environment.
                </p>
                <dl class="image">
                    <dt>
                        <img src="images/ClickOnceSymbol.jpg" alt="Good Example" /></dt>
                    <dd>
                        Good Example: Showed a symbol indicates this is a ClickOnce version of application.</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="images/NonClickOnce.jpg" alt="Bad Example" /></dt>
                    <dd>
                        Bad Example: No any symbol indicates this is a ClickOnce version of application.</dd>
                </dl>
            </li>
            <li><a name="Steps"></a>
                <h2>
                    Do you know whether you should use Click Once or MSI?</h2>
                <p>
                    <ol>
                        <li>
                            <p>
                                Check the following table whether ClickOnce is suit for your application.<br />
                                This table compares the features of ClickOnce deployment with Windows Installer
                                deployment. Read <a href="/ssw/redirect/msdn/ClickOnceDeployment.htm">ClickOnce
                                    Deployment Overview</a> for more details.</p>
                            <table class="clsSSWTable">
                                <tr>
                                    <th>
                                        <p>
                                            Feature
                                        </p>
                                    </th>
                                    <th>
                                        <p>
                                            ClickOnce
                                        </p>
                                    </th>
                                    <th>
                                        <p>
                                            Windows Installer
                                        </p>
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Automatic update<sup>1</sup>
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Post-installation rollback<sup>2</sup>
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            No
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Update from Web
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            No
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Does not affect shared components or other applications
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            No
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Security permissions granted
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Grants only permissions necessary for the application (more safe)
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Grants Full Trust by default (less safe)
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Security permissions required
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Internet or Intranet Zone (Full Trust for CD-ROM installation)
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Administrator
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Application and deployment manifest signing
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            No
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Installation-time user interface
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Single prompt
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Multipart Wizard
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Installation of assemblies on demand
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            No
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Installation of shared files
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            No
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Installation of drivers
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            No
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes (with custom actions)
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Installation to Global Assembly Cache
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            No
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Installation for multiple users
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            No
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Add application to <span class="ui">Start</span> menu
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Add application to Startup group
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            No
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Add application to <span class="ui">Favorites</span> menu
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            No
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Register file types
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            No
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Install time registry access<sup>3</sup>
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Limited
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Binary file patching
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            No
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Yes
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Application installation location
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            ClickOnce application cache
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            <span class="ui">Program Files</span> folder
                                        </p>
                                    </td>
                                </tr>
                            </table>
                            <p>
                                <span class="label">Notes</span>
                            </p>
                            <p>
                                1. With Windows Installer, you must implement programmatic updates in the application
                                code.
                            </p>
                            <p>
                                2. With ClickOnce, rollback is available in <span class="ui">Add or Remove Programs</span>.
                            </p>
                            <p>
                                3. ClickOnce deployment can access HKEY_LOCAL_MACHINE (HKLM) only with Full Trust
                                permission.
                            </p>
                            <p>
                                For more information, see <a href="/ssw/redirect/msdn/ChoosingDeploymentStrategy.htm">
                                    Choosing a Deployment Strategy</a>.
                            </p>
                        </li>
                        <li>
                            <p>
                                Customize the Installation of the Application, including: Publish location, installation
                                url, install mode, publish version, Download files on demand, Prerequisites, Updates,
                                Options.<br />
                                <dl class="image">
                                    <dt>
                                        <img src="images/ClickOnce_PublishTab.gif" alt="ClickOnce Publish property" /></dt>
                                    <dd>
                                        Figure: Publish tab of the application properties</dd>
                                </dl>
                            </p>
                        </li>
                        <li>
                            <p>
                                Specify the code access security permissions that the application requires in order
                                to run.<br />
                                <dl class="image">
                                    <dt>
                                        <img src="images/ClickOnce_SecurityTab.gif" alt="ClickOnce Security property" /></dt>
                                    <dd>
                                        Figure: Security tab of the application properties</dd>
                                </dl>
                            </p>
                        </li>
                        <li>
                            <p>
                                Deploy the COM Components. Read <a href="/ssw/redirect/msdn/DeployingCOMComponentswitClickOnce.htm">
                                    Deploying COM Components with ClickOnce</a> for more informations.
                            </p>
                        </li>
                        <li>
                            <p>
                                Publish the application using Publish Wizard.<br />
                                <dl class="image">
                                    <dt>
                                        <img src="images/ClickOnce_PublishWizard.gif" alt="ClickOnce Publish Wizard" /></dt>
                                    <dd>
                                        Figure: ClickOnce Publish Wizard</dd>
                                </dl>
                            </p>
                        </li>
                    </ol>
                </p>
            </li>
            <li>
                <a name="AsyncCheckForUpdate"></a>
                <h2>Do you know to use async code to do the check for update? (using System.Deployment.Application classes)</h2>
                <p>Application updates don’t have to be difficult to do for the user. Pointing the user to a website where he can download an update is not ideal. A better way is to take advantage of the System.Deployment.Application namespace. You can develop custom upgrade behaviours into your ClickOnce/Smart client application.</p>
                <dl class="code">
                    <dt>
                        <pre>
System.Diagnostics.Process.Start(@"http://www.ssw.com.au/ssw/Download/ProdBasket.aspx?ID=15");
			           </pre>
                    </dt>
                    <dd>
                        Figure: Bad example - Using web page to do the check for a new version
                    </dd>
                </dl>
                <dl class="code">
                    <dt>
                        <pre>
long sizeOfUpdate = 0;

private void UpdateApplication()
{
    if (ApplicationDeployment.IsNetworkDeployed)
    {
        ApplicationDeployment ad = ApplicationDeployment.CurrentDeployment;
        ad.CheckForUpdateCompleted += new CheckForUpdateCompletedEventHandler(ad_CheckForUpdateCompleted);
        ad.CheckForUpdateProgressChanged += new DeploymentProgressChangedEventHandler(ad_CheckForUpdateProgressChanged);

        ad.CheckForUpdateAsync();
    }
}

void  ad_CheckForUpdateProgressChanged(object sender, DeploymentProgressChangedEventArgs e)
{
    downloadStatus.Text = String.Format("Downloading: {0}. {1:D}K of {2:D}K downloaded.", e.State, e.BytesCompleted/1024, 
    e.BytesTotal/1024);   
}

void ad_CheckForUpdateCompleted(object sender, CheckForUpdateCompletedEventArgs e)
{
    if (e.Error != null)
    {
        MessageBox.Show("ERROR: Could not retrieve new version of the application. Reason: \n" + e.Error.Message + 
        "\nPlease report this error to the system administrator.");
        return;
    }
    else if (e.Cancelled == true)
    {
        MessageBox.Show("The update was cancelled.");
    }

    // Ask the user if they would like to update the application now.
    if (e.UpdateAvailable)
    {
        sizeOfUpdate = e.UpdateSizeBytes;

        if (!e.IsUpdateRequired)
        {
            DialogResult dr = MessageBox.Show("An update is available. Would you like to update the application now?
            \n\nEstimated Download Time: ", "Update Available", MessageBoxButtons.OKCancel);
            if (DialogResult.OK == dr)
            {
                BeginUpdate();
            }
        }
        else
        {
            MessageBox.Show("A mandatory update is available for your application. We will install the update now, 
            after which we will save all of your in-progress data and restart your application.");
            BeginUpdate();
        }
    }
}

private void BeginUpdate()
{
    ApplicationDeployment ad = ApplicationDeployment.CurrentDeployment;
    ad.UpdateCompleted += new AsyncCompletedEventHandler(ad_UpdateCompleted);

    // Indicate progress in the application's status bar.
    ad.UpdateProgressChanged += new DeploymentProgressChangedEventHandler(ad_UpdateProgressChanged);
    ad.UpdateAsync();
}

void ad_UpdateProgressChanged(object sender, DeploymentProgressChangedEventArgs e)
{
    String progressText = String.Format("{0:D}K out of {1:D}K downloaded - {2:D}% complete", 
    e.BytesCompleted / 1024, e.BytesTotal / 1024, e.ProgressPercentage);
    downloadStatus.Text = progressText;
}

void ad_UpdateCompleted(object sender, AsyncCompletedEventArgs e)
{
    if (e.Cancelled)
    {
        MessageBox.Show("The update of the application's latest version was cancelled.");
        return;
    }
    else if (e.Error != null)
    {
        MessageBox.Show("ERROR: Could not install the latest version of the application. Reason: \n" + e.Error.Message + 
        "\nPlease report this error to the system administrator.");
        return;
    }

    DialogResult dr = MessageBox.Show("The application has been updated. Restart? (If you do not restart now, 
    the new version will not take effect until after you quit and launch the application again.)", 
    "Restart Application", MessageBoxButtons.OKCancel);
    if (DialogResult.OK == dr)
    {
        Application.Restart();
    }
}
			           </pre>
                    </dt>
                    <dd>
                        Figure: Good example - Using System.Deployment.Application classes to do the check for a new version
                    </dd>
                </dl>                
                <p>More Information:</p>
                <p>When testing whether your deployment has an available update by using either the CheckForUpdate or CheckForUpdateAsync methods; the latter method raises the CheckForUpdateCompleted event when it has successfully completed. If an update is available, you can install it by using Update or UpdateAsync; the latter method raises the UpdateCompleted event after installation of the update is finished.</p>
            </li>
            <li>
                <a name="CheckForUpdate"></a>
                <h2>Do you know what the user experience should be like?</h2>
                <p>As per the rule <a href="RulesToBetterWindowsForms.aspx#CheckForUpdates">Do you know there should be a standard menu item "Check for Updates"?</a> on Rules to Better Windows UI, you should have a standard menu item "Check for Updates" in the Help menu.</p>
                <p>Here are a couple of examples of Check for Updates results:</p>
                <dl class="image">
                    <dt><img src="images/CheckForUpdate_Skype.png" alt="Bad Example" /></dt>
                    <dd>Figure: Skype does a good job, with a green tick and simple message. The actual version number would have made it more complete.</dd>
                </dl>
                <dl class="image">
                    <dt><img src="images/CheckForUpdate_Snagit.png" alt="Bad Example" /></dt>
                    <dd>Figure: Snagit has horrible UI (<u>red text when it is not an error</u> and <u>Hyperlinks without underlines</u>), however the link to the latest features is not bad</dd>
                </dl>
                <dl class="image">
                    <dt><img src="images/CodeAuditorUpdater.png" alt="Good Example" /></dt>
                    <dd>SSW Code Auditor has a great UI (using the freely available component in .NET Toolkit)</dd>
                </dl>
                <p>More Information:</p>
                <p>If you implement this code from the SSW Toolkit, you will get this UI.</p>
                <dl class="image">
                    <dt><img src="images/DiagnosticsUpdater01.jpg" alt="Help | Check for Updates opens the Updater form" /></dt>
                    <dd>Figure 1: Help | Check for Updates opens the Updater form.</dd>
                </dl>
                <dl class="image">
                    <dt><img src="images/DiagnosticsUpdater02.jpg" alt="Confirmation that they already have the latest version" /></dt>
                    <dd>Figure 2: Confirmation that they already have the latest version. </dd>
                </dl>
                <dl class="image">
                    <dt><img src="images/DiagnosticsUpdater03.jpg" alt="The simple prompt to upgrade when a new version is available." /></dt>
                    <dd>Figure 3: The simple prompt to upgrade when a new version is available. </dd>
                </dl>
                <dl class="image">
                    <dt><img src="images/DiagnosticsUpdater04.jpg" alt="Showing the upgrading progress." /></dt>
                    <dd>Figure 4: Showing the upgrading progress. </dd>
                </dl>
                <dl class="image">
                    <dt><img src="images/DiagnosticsUpdater05.jpg" alt="Restarting the application is required." /></dt>
                    <dd>Figure 5: Restarting the application is required because the new version will not take affect until quit and launch the app again. </dd>
                </dl>
            </li>
        </ol>
    </div>
    <h2>
        <a name="AcknowledgementsLikeThis"></a>Acknowledgements</h2>
    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=MA">Marten Ataalla</a>
</asp:Content>

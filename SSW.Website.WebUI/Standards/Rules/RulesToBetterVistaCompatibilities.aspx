<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="SSW Rules to Better Windows Vista Compatibilities" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>
        Windows Vista is totally different to any previous operation system, it has been
        totally rewritten and has some unique feature to protect your system from attach.
        However, everything comes with a price. To ensure your application take all advantages
        of Windows Vista, you need to make sure your application is compliant with <a href="/ssw/redirect/msdn/VistaApplicationCompatibilityCookbook.htm">
            Microsoft Application Compatibility Guidelines</a>.
    </p>
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f253230426574746572253230536574757073')" 
onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f253230426574746572253230536574757073');return true;"  
onmouseout="javascript:clearStatus(); return true;" >
 Let us know
 </a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#Manifest">Do you define execution level for your application executables?</a></li>
            <li><a href="#Sign">Do you sign your application?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <%--        example:  
              <li>
                <h2>
                    <a name="Rings"></a>Different rings</h2>
                <p>
                    When you lose the network connection, I would prefer a message box:
                </p>
                <div class="greyBox">
                You have lost the network connection.<br /><br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Try Again]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Cancel]
                </div>
                <p>
                    But now it only show a error message tell you the error about network:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/LossConnMsg.JPG" alt="The message when loss network"/></dt>
                    <dd>
                        Figure: The message when you loss network connection.</dd></dl>
            </li>            
--%>
            <li>
                <h2>
                    <a name="Manifest"></a>Do you define execution level for your application executables?</h2>
                <p>
                    Windows Vista requires every application define its execution level in its manifest, this is to ensure the operation system is aware of the required permissions that the application demand so UAC (User Account Control) can prompt the user about the permission demand from the application. 
                </p>
                <p>
                
                There are two available execution levels that application can choose to use:</p>
                <ul>
                    <li><strong>asInvoker</strong>: this indicate your application will be running at the same level of the invoker
                    </li>
                    <li><strong>higestAvailable</strong>: this indicate your application will be running at the highest available permission level of the current user
                    </li>
                    <li><strong>requireAdministrator</strong>: this indicate your application will need administrator permission to run 
                    </li>
                </ul>
                <p>
                You need to specify one of above in your application manifest file:
                </p>
                <dl class="greyBox">
                    <dt>
                    
                                  
                    <pre>
&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;yes&quot;?&gt;
&lt;assembly xmlns=&quot;urn:schemas-microsoft-com:asm.v1&quot; manifestVersion=&quot;1.0&quot;&gt;
    &lt;trustInfo xmlns=&quot;urn:schemas-microsoft-com:asm.v3&quot;&gt;
        &lt;security&gt;
            &lt;requestedPrivileges&gt;
                &lt;requestedExecutionLevel level=&quot;requireAdministrator&quot;/&gt;
            &lt;/requestedPrivileges&gt;
        &lt;/security&gt;
    &lt;/trustInfo&gt;
&lt;/assembly&gt;
                    </pre>
                    </dt>
                    <dd>
                        Figure: Application manifest file with execution level specified to "requireAdministrator"</dd></dl>
                <p>
                You can use <a href="/ssw/redirect/CFFExplorer.htm">CFF Explorer</a> to check if an executable has execution level in its manifest. 
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/Manifest_Bad.JPG" alt="The file without manifest"/></dt>
                    <dd>
                        Figure: Bad - Application manifest doesn't include execution level </dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/Manifest_Good.JPG" alt="The file with manifest"/></dt>
                    <dd>
                        Figure: Good - Application manifest includes execution level</dd></dl>

            </li>
            <li>
                <h2>
                    <a name="Sign"></a>Do you sign your application?</h2>
                <p>
                    We all have our own identity and it's crucial that the identify can be verified. Identify of an application is also very important because you need to ensure your users are running genuine application. The only we can ensure this is to sign your application with a digital signature. 
                </p>
                <p>
                Windows Vista puts extra requirement for application to be signed, it will prompt different UAC warning based on the presence of digital signature, this will allow the users easily determine if the application is trustable. 
                </p>
                <p>
                This requirement applies to all executables, including: .exe, .dll, .ocx, .sys, .cpl, .drv or .scr extensions. 
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/Sign_Bad.JPG" alt="The file without sign"/></dt>
                    <dd>
                        Figure: Bad - Application is not signed</dd></dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/Run_Bad.JPG" alt="The file running without sign"/></dt>
                    <dd>
                        Figure: Bad - Windows Vista treat your application "An unidentified program", this will reduce the trust level from your users</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/Sign_Good.JPG" alt="The file with sign"/></dt>
                    <dd>
                        Figure: Good - Application is signed </dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/Run_Good.JPG" alt="The file running with sign"/></dt>
                    <dd>
                        Figure: Good - Windows Vista identified your program</dd></dl>
            </li>
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=LX">Lei Xu</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=WW">Wilson Wu</a>
    </p>
</asp:Content>

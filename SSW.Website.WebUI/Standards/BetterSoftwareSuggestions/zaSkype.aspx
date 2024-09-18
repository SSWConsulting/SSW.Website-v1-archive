<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Skype Suggestions" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#SMSMessage">SMS Feature should give a warning when it did not send with the correct number</a></li>
            <li><a href="#NoInternet">Don't show the contacts as green and online when I have no Internet connection</a></li>
            <li><a href="#ChinaSendSMS">China can't send and receive SMS from Skype</a></li>
            <li><a href="#SMSValidation">Add Validation</a></li>
            <li><a href="#CopyFromIM">Copying from an IM conversation to an email should keep the formatting</a></li>
            <li><a href="#CursorLocation">Default Skype to have the cursor in the search text box</a></li>
            <li><a href="#EnableEmail">Enable us to email support@skype.com instead of</a></li>
            <li><a href="#NewFeature">Too hard to suggest a new feature</a></li>
            <li><a href="#SkypeAndSQLServer">Don't make Skype interfere with SQL Server</a></li>
            <li><a href="#AutoGetFile">Help me automatically get the file</a></li>
            <li><a href="#HideBar">Hide the process bar when completed</a></li>
            <li><a href="#Twitter">Help me know their Twitter address</a></li>
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
                    <a name="SMSMessage"></a>SMS Feature should give a warning when it did not send with the correct number</h2>
                <p>
                    The SMS feature works great for me when sending inside Australia to an Australian mobile
                </p>
                <p>
                    But when sending inside Australia to a US mobile (and they are in Australia) it shows a different return number (so the receiver is unable to automatically reply). In this case change: "Sent: 2/6/2008" <br />
                    To:
                    "Sent: 2/6/2008: Warning: Your return number was not able to be sent because xxx".
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/SKP_SMS.JPG" alt="No message when SMS not be sent"/></dt>
                    <dd>
                        Figure: There is no warning message when the SMS have not bee sent.</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="NoInternet"></a>Don't show the contacts as green and online when I have no Internet connection</h2>
                <p>
                    See the "Connecting..." at the bottom. This means I have no Internet connection. Which I have not had for 20 mins:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/SKP_NoInternet.JPG" alt="No Internet connection"/></dt>
                    <dd>
                        Figure: Have no Internet, but the Contacts still show online.</dd></dl>
                <p>
                    So please don"t show the contacts as green and online, it is confusing.
                </p>
            </li>
            <li>
                <h2>
                    <a name="ChinaSendSMS"></a>China can't send and receive SMS from Skype</h2>
                <p>
                    Dont use Skype to send SMS to China (from Australia) as it doesnt work.
                </p>
                <p>
                    dont use Skype to send SMS from China (as Australian can't reply).
                </p>
            </li>
            <li>
                <h2>
                    <a name="SMSValidation"></a>Add Validation</h2>
                <p>
                    Obviously sms'ing people in China does not work (no idea why).
                </p>
                <p>
                    But can you add a validation message like:
                </p>
                <p><strong>
                    Failed: You cannot sms people in China because xxxxx</strong>
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/Skype_v_01.JPG" alt="Add Validation"/></dt>
                    <dd>
                        Figure: Add a validation message when send SMS failed.</dd></dl>
            </li>
            <li>
               <h2><a name="CopyFromIM"></a>Copying from an IM conversation to an email should keep the formatting</h2>
               <p>Compare copying from a Live Messenger conversation and pasting into an email. It does a much better experience.</p>
            </li>
            <li>
               <h2><a name="CursorLocation"></a>Default Skype to have the cursor in the search text box</h2>
               <p>Very annoying<br />
                  BTW every window in Win7 defaults the cursor to the search box
               </p>
            </li>
            <li>
               <h2><a name="EnableEmail"></a>Enable us to email support@skype.com instead of</h2>
               <p>
                Enable us to email support@skype.com instead of<br />
                Using <a href="https://support.skype.com/en/support_request">https://support.skype.com/en/support_request</a><br />
               </p>
               <p>PS: It would be good if you reply back with the URL so others can also see the suggestions</p>
            </li>
            <li>
              <h2><a name="NewFeature"></a>Too hard to suggest a new feature</h2>
              <p>
               Add a menu option under 'Help' with a link to this page<br />
                <a href="https://support.skype.com/en/support_request">https://support.skype.com/en/support_request</a>
              </p>        
            </li>
            <li>
              <h2><a name="SkypeAndSQLServer"></a>Don't make Skype interfere with SQL Server</h2>
              <p>
               Add a check box <br />
              [x] Don't use any ports that SQL Server or SQL Server Express might use because it stops it from starting
              </p>
            </li>
            <li>
              <h2><a name="AutoGetFile"></a>Help me automatically get the file</h2>
              <p>Selecting a download location before getting a file is painful for the sender and receiver?make it work like MSN messenger does</p>
              <dl class="image">
                    <dt>
                        <img src="Images/RemoveWaiting.JPG" alt="Remove this waiting"/></dt>
                    <dd>
                        Figure: Remove this 'Waiting'</dd></dl>
            </li>
            <li>
              <h2><a name="HideBar"></a>Hide the process bar when completed</h2>
              <dl class="image">
                    <dt>
                        <img src="Images/SendingProcess.JPG" alt="Sending process of the files "/></dt>
                    <dd>
                        Figure: The first blue bar should disappear when it hits 100% </dd></dl>
              <p>Please refer to this related rule about it. <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Windows-Applications.aspx#LongProcessHideBar">Long Process - Do you know that you should provide a detailed summary, play a sound and hide the progress bar at the end </a></p>
            </li>
            <li>
              <h2><a name="Twitter"></a>Help me know their Twitter address</h2>
              <p>Add a field 'Twitter' in the profile section</p>
              <dl class="image">
                    <dt>
                        <img src="Images/TwitterField.JPG" alt="Add a twitter field "/></dt>
                    <dd>
                        Figure: In the profile section add a 'Twitter' field </dd></dl>
            </li>
            
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=LX">Lei Xu</a><br />
        <a href="/people/alumni/peter-gfader">Peter Gfader</a>
    </p>
</asp:Content>

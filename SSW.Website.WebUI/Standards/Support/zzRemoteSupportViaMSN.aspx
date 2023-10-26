<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Remote Support Standard - MSN Messenger (Windows Live Messenger) "  %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
 <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <h2>
        Assist clients using MSN Messenger for Remote Support</h2>
    <p>
        This method of support is the second last resort before a physical visit to your
        premises. 99% of problems can be resolved remotely.
    </p>
    
    
    <div class="TableOfContents">
        <li><a href="#Developer">Instructions for developers</a></li>
        <li><a href="#Client">Instructions for clients</a></li>
        <li><a href="#Notes">Important notes (known issues)</a></li>
    </div>
    <h2><a id="Developer">
        Developer: Follow the instructions below to start remote support</a></h2>
    <ol>
        <li>Contact your client to arrange a mutually convenient time to remotely resolve the
            issue your client is experiencing. </li>
        <li>Make sure both of you and client has been added to MSN Messenger contact list </li>
        <li>Estimate how long the support could last and let your client know this, so your
            client won't run away in the middle of the process. </li>
        <li>Once connected, you can ask for taking control of your client computer through the
            button Take Control on the tool bar at the top of Remote Assistance window
            <br />
            <dl class="image">
                <dt>
                    <img src="Images/RS_MSN_Toolbar.gif" border="0" width="566" height="67"></dt>
                 <dd>Figure: taking control of remote computer
                </dd>
            </dl>
        </li>
        <li>When your client accepts your request, you will be able to control client's computer
            on your screen. </li>
    </ol>
    <br />
    <br />
    <h2><a id="Client">
        Client: Follow the instructions below to connect MSN Messenger for remote support</a></h2>
    <p>
    <b>Step 1:</b> Double click the developer's name in your contact list and open a chat window 
    </p>
    <p>
    <b>Step 2:</b> In the chat window, click the menu item on top-right hand side and go to "Actions->Request Remote Assistance?as per the following screen
    <br />
    <dl class="image">
        <dt>
            <img src="Images/RS_MSN_Request.gif" border="0" width="332" height="224"></dt><dd>Figure: request remote assistance
                from client side
            </dd>
    </dl>
    </p>
    
    <p>
    <b>Step 3: </b>The remote support session will start initializing, please wait until the following window disappears. 
    <dl class="image">
        <dt>
            <img src="Images/RS_MSN_Connecting.gif" border="0" width="429" height="146"></dt><dd>Figure: connecting to remote
                side
            </dd>
    </dl>
    </p>
    <p>
    <b>Step 4: </b>Once connected, the developer will prompt you to start controlling your computer and you will see the following screen, please click "Yes" to proceed. 
    <br />
    <dl class="image">
        <dt>
            <img src="Images/RS_MSN_Accept.gif" border="0" width="408" height="271"></dt><dd>Figure: Client should click
                Yes to allow you take control his/her computer
            </dd>
    </dl>
    <dl class="image">
        <dt>
            <img src="Images/AssistentAllow.png" border="0"></dt>
         <dd>Figure: Click 'yes'
        </dd>
    </dl>
    <dl class="image">
        <dt>
            <img src="Images/AssistentSession.jpg" border="0"></dt>
         <dd>Figure: We will end the session
        </dd>
    </dl>
    <dl class="image">
        <dt>
            <img src="Images/AssistentPassword.png" border="0"></dt>
         <dd>Figure: Enter a password for the connection
        </dd>
    </dl>
    </p>
    <p>
    Developer will notify you the estimated time required and you could sit in front your computer to monitor the operations or just go away to run your business and just come back to check the result later on. 
    </p>
    <h2><a id="Notes">
        Problems and Notes</a></h2>
    <p>
        The following is known issues and notes of using MSN Remote Assistance:
    </p>
    <ol>
        <li>The computer receiving assistance and the computer providing assistance must both
            run Windows XP, and Windows Messenger (not to be confused with MSN Messenger or
            Windows Live Messenger) must be installed on both computers. Otherwise you will
            get a message like this:<br />
            <table class="clsSSWTable" width="100%" id="Table2">
                <tr>
                    <td>
                        James Zhou wants to use the Remote Assistance feature with you, but you need to
                        update your version of Windows Messenger first. Please go to the Windows Messenger
                        update site to install the latest version.</td>
                </tr>
            </table>
        </li>
        <li>Ensure Windows Firewall doesn't block Remote Assistance at both sides of you and your
            client.
            <br>
            <dl class="image">
                <dt>
                    <img src="Images/RS_MSN_WindowsFirewall.gif" border="0" width="439" height="238"></dt><dd>Figure: Allowing Remote
                        Assistance connection in your Windows Firewall
                    </dd>
            </dl>
            Intranet firewall or other network utilities e.g. Microsoft ISA server may block
            Remote Assistance connection, if so you should explain this to your client and try
            <a href="RemoteSupportViaUltraVNC.aspx">Remote Support via UltraVNC</a> </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JZ">James Zhou</a><br>
    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=LX">Lei Xu</a><br>
</asp:Content>


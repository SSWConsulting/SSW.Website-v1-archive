<%@ Page Language="VB" MasterPageFile="~/Masters/RavenSubpage.master" AutoEventWireup="false"
    Title="Remote Support Standard - UltraVNC" %>

<asp:Content ID="Title" ContentPlaceHolderID="title" runat="server">
    <h1>Assist clients using UltraVNC for Remote Support</h1>
</asp:Content>

<asp:Content ID="Side" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">
    <p>
        If you have firewall issue with remote assistance in msn, VNC is a good solution
        to handle the firewall problem. But it's not easy for a client to install and configure
        VNC software. UltraVNC provides a Single Click solution to simplify the work on
        the client side - what your client needs to do is just to download an exe file and
        execute it. The following steps are what you need to do as a supporter to create
        UltraVNC SC customized exe as per <a href="/ssw/Redirect/UltraVNCSingleClick.htm"
            class="external">UltraVNC SC (SingleClick)</a>:<br />
        <br />
        <div class="TableOfContents">
            <li><a href="#Developer">Instructions for developers to create support package</a></li>
            <li><a href="#DeveloperStart">Instructions for developers to start remote session</a></li>
            <li><a href="#Client">Instructions for clients</a></li>
        </div>
    </p>
    <h2><a id="Developer">Developers: Follow the instructions below to create UltraVNC remote support package </a></h2>
    <ol>
        <li>Download template from <a href="/ssw/Redirect/UltraVNCSingleClickTemplate.htm"
            class="external">UltraVNC SC Custom.zip</a> and unzip it to a folder e.g. SSWRemoteSupportByJamesZhou
            <br />
            <dl class="image">
                <dt>
                    <img src="Images/RS_VNC_Template.gif" border="0" width="959" height="165"></dt>
                <dd>Figure: unzipped content of the template
                </dd>
            </dl>
        </li>
        <li>Replace the default icons and logo pictures with the SSW ones
            <br />
            <dl class="image">
                <dt>
                    <img src="Images/RS_VNC_TemplateCust.gif" border="0" width="961" height="163"></dt>
                <dd>Figure: customize the template with SSW icons and logos
                </dd>
            </dl>
        </li>
        <li>Delete the file rc4.key if you don't need to encrypt your connection to client. If
            encryption is needed, you need to install <a href="/ssw/Redirect/UltraVNC_DSMPlugin.htm"
                class="external">DSM plugin for UltraVNC </a>and generate a key file to replace
            the one in the template. </li>
        <li>Edit the helpdesk.txt file in the template like this 
        <br />
            <table class="clsSSWTable" width="100%" id="Table2">
                <tr>
                    <td>
                        <pre>
[TITLE]
SSW Remote Desktop Support

[HOST]
Internet support
-connect xxx.xxx.215.24:5500 -noregistry

[HOST]
Internet support encryption
-plugin -connect xxx.xxx.215.24:5500 -noregistry

[TEXTTOP]
Double Click to make a connection

[TEXTMIDDLE]
SSW - Sydney's Leading .NET and SQL Consultants

[TEXTBOTTOM]
Call +61 2 9953 3000 to contact us

[TEXTRBOTTOM]
Remote Support from SSW

[TEXTRMIDDLE]
by &lt;Your Name&gt;

[TEXTRTOP]
SSW Remote Desktop Support

[TEXTBUTTON]
More Info

[WEBPAGE]
http://www.ssw.com.au

[TEXTCLOSEBUTTON]
Cancel


[BALLOON1TITLE]
Establishing connection...

[BALLOON1A]
Trying to connect

[BALLOON1B]
If it fails, the software will remove itself

[BALLOON1C]
from your system. 

[BALLOON2TITLE]
Connection active.

[BALLOON2A]
Warning, your desktop is remote visible 

[BALLOON2B]
You can break the connection any time

[BALLOON2C]
by using the close button

[WEBPAGE]
http://www.ssw.com.au
</pre>
                    </td>
                </tr>
            </table>
            <b>Figure: helpdesk.txt</b>
            <br />
            <br />
            Note:
            <ol>
                <li>For SSW employees, you can use a copy of <a href="UltraVNCSC_SSWTemplate.zip">SSW UltraVNC SC template</a> and what you need to change is the ip address and &lt;Your Name&gt; in the helpdesk.txt</li>
                <li>The IP address is your router's public address if you are behind a router. In this case, you need to configure the router to forward the connection to port 5500 to your pc or add your intranet IP as a virtual server to expose this port on the router.</li>

                <li>Check your firewall to allow this port number to use.</li>
            </ol>
            <br />
        </li>
        <li>Zip the folder as e.g. SSWRemoteSupportByJamesZhou.zip (Note: dot is not allowed in the name).
        </li>
        <li>Go to <a href="/ssw/Redirect/UltraVNCSingleClickOnlineCompiler.htm" class="external">UltraVNC SC Online Compiler</a> and upload the zip file you created. 
            <br />
            <dl class="image">
                <dt>
                    <img src="Images/RS_VNC_CompilerForm.gif" border="0" width="438" height="200"></dt>
                <dd>Figure: fill up the submit form (userid: foo password: foobar)
                </dd>
            </dl>


            Submit it and an exe file with the same name of the zip file will be created
            <br />
            <dl class="image">
                <dt>
                    <img src="Images/RS_VNC_Download.gif" border="0" width="466" height="285"></dt>
                <dd>Figure: customized exe created
                </dd>
            </dl>


            Download the exe and put it under www.ssw.com.au/ssw/RemoteSupport/ and inform your client to download it from there.
            <br />
            <br />
            Important Notes:
            <ol>
                <li>To ensure your client is in trust of your assistance, you should always tell your client to download anything from SSW official site</li>
                <li>If your client still doubts the exe file, you should explain what the exe is like this: VNC is an industry standard program for remote support. We have customized this exe for easy use. </li>
            </ol>
            <br />
        </li>
    </ol>

    <h2>
        <a id="DeveloperStart">Developer: Follow the instructions below to start UltraVNC remote
            support session</a></h2>
    <ol>
        <li>Install UltraVNC from <a href="/ssw/Redirect/UltraVNCHome.htm" class="external">UltraVNC Home Page</a>. Make sure your Windows Firewall allow the default port it
            uses.
            <br />
            <dl class="image">
                <dt>
                    <img src="Images/RS_VNC_WindowsFirewall.gif" border="0" width="554" height="418"></dt>
                <dd>Figure: Allowing UltraVNC connection in Window Firewall
                </dd>
            </dl>
        </li>
        <li>Start UltraVNC Viewer in listen mode
            <br />
            <dl class="image">
                <dt>
                    <img src="Images/RS_VNC_Viewer.gif" border="0" width="381" height="103"></dt>
                <dd>Figure: run UltraVNC in listen mode
                </dd>
            </dl>
            <dl class="image">
                <dt>
                    <img src="Images/RS_VNC_ViewerTrayIcon.gif" border="0" width="195" height="92"></dt>
                <dd>Figure: tray icon in your taskbar
                </dd>
            </dl>
        </li>
        <li>Ask your client to run the exe file after download and start the connection. You will be notified once your client opens the EXE. And then you can take control
            of client's computer and start the actual remote session. </li>
    </ol>


    <br />
    <br />
    <h2>
        <a id="Client">Client: Please follow the instructions below to start UltraVNC remote
            support session</a></h2>
    <p>
        <b>Step 1: </b>Our developer will send you a url where you can download an EXE. Please
        download this EXE and place it on your desktop.
    </p>
    <p>
        <b>Step 2: </b>Double click the EXE to start remote session. (Note: our developer
        will arrange a time that's convenient for you, you only need to run this EXE during
        this time.)
        <br />
        Once you run it, you will see a screen that's similar to the following. Please double
        click the "Internet support?link in the left hand side box.
        <br />
        <dl class="image">
            <dt>
                <img src="Images/RS_VNC_ClientUI.gif" border="0" width="504" height="317"></dt>
            <dd>Figure: UI for the Remote Support exe at client side
            </dd>
        </dl>
        <br />
        When you double click, this EXE will stay on your taskbar as a SSW icon and update
        you with the status of the remote session.
        <br />
        <dl class="image">
            <dt>
                <img src="Images/RS_VNC_ClientUITrayIcon.gif" border="0" width="248" height="129"></dt>
            <dd>Figure: tray icon at client side
            </dd>
        </dl>
    </p>
    <p>
        <b>Step 3: </b>Our developer will try to take control of your computer now, please
        click the link in the following screen to proceed.
        <br />
        <dl class="image">
            <dt>
                <img src="Images/RS_VNC_Accept.gif" border="0" width="858" height="153"></dt>
            <dd>Figure: taking control of remote computer
            </dd>
        </dl>
        <br />
        Once you accept this connection, our developer will be able to control your computer
        and you can sit in front of your screen and monitor the operations. See the following
        screen for how our developer opens a Notepad and type in some information on your
        screen.
        <br />
        <dl class="image">
            <dt>
                <img src="Images/RS_VNC_RemoteControlUI.gif" border="0" width="1169" height="386"></dt>
            <dd>Figure: remote desktop showing at your side
            </dd>
        </dl>
        <br />
    </p>
    <p>
        <b>Step 4: </b>Once the support is finished, you can close the connection by click
        on the system tray icon.
        <br />
        <dl class="image">
            <dt>
                <img src="Images/RS_VNC_Close.gif" border="0" width="172" height="144"></dt>
            <dd>Figure: Cancel remote control through the Close button at client side
            </dd>
        </dl>
    </p>
    <p>
        <br />
        <br />
        <h2>Acknowledgements</h2>

        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JZ">James Zhou</a><br>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=LX">Lei Xu</a><br>
</asp:Content>

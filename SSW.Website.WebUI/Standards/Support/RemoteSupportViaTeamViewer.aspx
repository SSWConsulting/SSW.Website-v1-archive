<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Remote Support Standard - TeamViewer"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">	
 <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    
    <div class="TableOfContents">
        <li><a href="#Developer">Instructions for developers</a></li>
        <li><a href="#Client">Instructions for clients</a></li>
        <!--<li><a href="#Notes">Important notes (known issues)</a></li>-->
    </div>
    
    <h2><a id="Developer">Developer: Follow the instructions below to create TeamViewer remote support package</a></h2>
    <p>
        <a href="/ssw/Redirect/TeamViewer.htm" class="external">TeamViewer</a> 
        <!--SSW Code Auditor - Ignore next line(HTML)-->
        provides a simple solution to logon client's PC and make a remote support - 
        what your client needs to do is just to download the application and send you his ID and Password. 
        The following steps are what you need to do as a supporter.
    </p>
    <ol>
        <li>
            Input client's ID and click "Connect to partner" button.
            <br />
            <dl class="image">
                <dt>
                    <img src="Images/TeamViewerID.gif" border="0"></dt><dd>
                        Figure: Connect to client
                    </dd>
            </dl>
        </li>
        <li>
            Input client's Password and click "Log On" button.
            <br />
            <dl class="image">
                <dt>
                    <img src="Images/TeamViewerPassword.gif" border="0"></dt><dd>
                        Figure: Log on
                    </dd>
            </dl>
        </li>
        <li>
            Other supporting functionalities.
            <ul>
                <li>
                    Communicate with client by chat.
                    <dl class="image">
                        <dt>
                            <img src="Images/TeamViewerChat.gif" border="0"></dt><dd>
                                Figure: Chat
                            </dd>
                        
                    </dl>
            
                </li>
           <dd>NOTE: If you are giving support to the client by messenger or by phone, keep on using the communication
                  media you are using. </dd>
                  <dd>Do NOT open TeamViewer Chat, as this might be confusing. </dd>
                <li>
                    Transfer files to client.
                    <dl class="image">
                        <dt>
                            <img src="Images/TeamViewerFile.gif" border="0"></dt><dd>
                                Figure: File transfer
                            </dd>
                    </dl>                    
                </li>
            </ul>
            
        </li>
    </ol>
    <h2><a id="Client">Client: Follow the instructions below to start TeamViewer remote support session</a></h2>
    
    <ol>
    <li>(if you don’t have TeamViewer installed, read on; otherwise, go to Step 2) <a href="/ssw/Redirect/TeamViewer.htm" class="external">TeamViewer</a> is a remote access software that allow our consultant to connect and control your PC; you will monitor the whole process and the access and control will require your authorization. 
Please download TeamViewer <a href="http://www.teamviewer.com/download/TeamViewer_Setup.exe">here</a>, if you need more information about TeamViewer, <a href="/ssw/Redirect/TeamViewer.htm" class="external">click here</a>.
</li>
    
    <li>
    <!--SSW Code Auditor - Ignore next line(HTML)-->
        Run TeamViewer and send ID and Password in "Wait for session" box to supporter. Then supporter can logon your PC.
        <br />
        <dl class="image">
            <dt>
                <img src="Images/TeamViewerID.gif" border="0"></dt><dd>
                    Figure: ID and Password
                </dd>
        </dl>
    </li>
    
    <!--<h2><a href="#Notes">Important notes (known issues)</a></h2>-->
    
<h2>Acknowledgements</h2>
  
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JL">Jay Lin</a><br>
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=LX">Lei Xu</a><br>

</asp:content>
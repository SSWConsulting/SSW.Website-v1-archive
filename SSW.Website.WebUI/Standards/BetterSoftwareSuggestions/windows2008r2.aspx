<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Windows 2008 R2 Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <div class="TableOfContents">
        <ol>
        <!--SSW Code Auditor - Ignore next line(HTML)-->
            <li><a href="#XPS">Help me Open an XPS on Windows 2008 R2 </a></li>
           
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
             <h2><a name="XPS"></a>
             <!--SSW Code Auditor - Ignore next line(HTML)-->
              Help me Open an XPS on Windows 2008 R2</h2>
              
               <dl class="image">
                     <dt>
                        <img src="images/BetterThanThis.JPG" alt="Can do better than this." />
                     </dt>
                      <dd>
                      <!--SSW Code Auditor - Ignore next line(HTML)-->
                        Figure: I think you can do better than this!
                      </dd>
                </dl>  
                <ul>
                 10 mins work to make it work
                 <li>I need to google</li>
                 <li>I learn... I don't have to download anything.... it is already installed, but not enabled</li>
                 <li>Then find this <a href="http://www.microsoft.com/whdc/xps/xpsview_win7.mspx">http://www.microsoft.com/whdc/xps/xpsview_win7.mspx</a></li>
                 <li>Then learn how to turn the feature on</li> 
                 <li>Then open the file again</li>                                 
                </ul> 
                <p>How about modify that dialog to change "OK" to be "Enable Feature"<br />
                    ( Does this suggestion relate to Windows 7 too? )</p>            
            </li>
           
    </ol>                       
        <h2>
            Acknowledgements</h2>            
    </div>    
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan </a>
       
    </p>
</asp:Content>

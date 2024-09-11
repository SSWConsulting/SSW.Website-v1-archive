<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft MSDN Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <div class="TableOfContents">
        <ol>
        <!--SSW Code Auditor - Ignore next line(HTML)-->
            <li><a href="#NiceURL">On MSDN - Can we get nice URLs ? </a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
             <h2><a name="NiceURL">On MSDN - Can we get nice URLs ?</a>
              </h2>   
              <p>(a long shot I know)</p>
              <p>So instead of <br />
                  http://msdn.microsoft.com/en-us/<span class="highlight">library</span>/dd380648.aspx <br />
                I would love<br />
                  http://msdn.microsoft.com/en-us/<span class="highlight">tfs/ProcessTemplates</span>/dd380648.aspx <br />
                and other examples would be<br />
                  http://msdn.microsoft.com/en-us/<span class="highlight">tfs/SourceControl</span>/dd380648.aspx <br />
                  http://msdn.microsoft.com/en-us/<span class="highlight">tfs/WorkItems</span>/dd380648.aspx <br />
                  http://msdn.microsoft.com/en-us/<span class="highlight">tfs/Build</span>/dd380648.aspx <br />
                  http://msdn.microsoft.com/en-us/<span class="highlight">tfs/Reports</span>/dd380648.aspx 
                </p>
                <p>PS: Of course I would like dd380648.aspx  - but it is the folders that help navigation when browsing.</p>    
            </li>
            
                    
    </ol>                       
        <h2>
            Acknowledgements</h2>            
    </div>    
    <p>
        <a href="/people/adam-cogan">Adam Cogan </a>
       
    </p>
</asp:Content>

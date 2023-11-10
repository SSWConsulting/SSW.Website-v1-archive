<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft HOHM Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <div class="TableOfContents">
        <ol>
        <!--SSW Code Auditor - Ignore next line(HTML)-->
            <li><a href="#SaveElectricity">Help me save Electricity </a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
             <h2><a name="SaveElectricity">Help me save Electricity</a>
              </h2>   
              <p>More info on this electricity saving service at <a href="http://www.microsoft-hohm.com/">http://www.microsoft-hohm.com/</a></p>          
               <dl class="image">
                     <dt>
                        <img src="images/InvalidUI.JPG" alt="Invalid UI " />
                     </dt>
                      <dd>
                        Figure: I want to give you more feedback – but I can't get past <a href="http://www.microsoft-hohm.com">http://www.microsoft-hohm.com</a> 
                      </dd>
                </dl>               
            </li>
            
                    
    </ol>                       
        <h2>
            Acknowledgements</h2>            
    </div>    
    <p>
        <a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Adam.aspx">Adam Cogan </a>
       
    </p>
</asp:Content>

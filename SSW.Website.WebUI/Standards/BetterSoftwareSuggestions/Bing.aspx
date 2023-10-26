<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Bing Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <div class="TableOfContents">
        <ol>
        <!--SSW Code Auditor - Ignore next line(HTML)-->
            <li><a href="#PurchaseDelicious">Purchase Delicious </a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
             <h2><a name="PurchaseDelicious">Purchase Delicious</a>
              </h2>   
              <p>Given that there's still uncertainty around the future of Delicious and that Yahoo may want to off-load it - <a href="http://chronicle.com/blogs/profhacker/whats-next-for-delicious/35960"></a> <br />
                - I think this would be an excellent acquisition for the Bing team. </p>
                <ul>
                Besides the fact that delicious is awesome, and would be a wonderful addition to Live, there's big value for the Bing team:
                  <li>As it would mean Microsoft incorporate LiveID into this new asset</li>
                  <li>As it would give a compelling reason to have the live toolbar installed</li>
                  <li>As it would give Live users a bookmark solution - that would be better than google bookmarks</li>
                  <li>As Bing search could be improved by incorporating Delicious bookmarks as a social ranking factor in the Bing ranking algorithm. </li>                  
                </ul> 
                <p>
                FYI Bing has been actively increasing its social signals lately (aka SocialRank via Facebook & Twitter) and adding Delicious would be another step up and way to differentiate from <br />
                Google: <br />
                <a href="http://searchengineland.com/what-social-signals-do-google-bing-really-count-55389">http://searchengineland.com/what-social-signals-do-google-bing-really-count-55389</a>
                </p>         
               <dl class="image">
                     <dt>
                        <img src="images/AddLogo.JPG" alt="Add logo " />
                     </dt>
                      <dd>
                      Figure: Adding this logo would look good
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

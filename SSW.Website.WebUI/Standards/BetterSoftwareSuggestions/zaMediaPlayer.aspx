<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Windows Media Player Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <div class="TableOfContents">
        <ol>
        <!--SSW Code Auditor - Ignore next line(HTML)-->
            <li><a href="#WorkOffline">Work Offline - more apps should take advantage of it e.g. Media Player </a></li>
           
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
             <h2><a name="WorkOffline"></a>
             <!--SSW Code Auditor - Ignore next line(HTML)-->
              Work Offline - more apps should take advantage of it eg. Media Player</h2>
               <p>
                Losing an internet connection should be a seamless experience. Testing 'Work offline' is important<br />

                This problem occurs across many teams at Microsoft<br />
                So I run a video successfully e.g. <!--SSW Link Auditor - Ignore begin--> <a href="http://web.me.com/kengetz/filechute/Foxtrot.m4v">http://web.me.com/kengetz/filechute/Foxtrot.m4v</a><!--SSW Link Auditor - Ignore end-->
                </p>
               <dl class="image">
                     <dt>
                        <img src="images/WorkOffline.JPG" alt="Lose internet and work offline" />
                     </dt>
                      <dd>
                        Figure: When I lose the internet connection and click "Work Offline"
                      </dd>
                </dl>   
                 <dl class="image">
                     <dt>
                        <img src="images/Cached.JPG" alt="It doesn't work." />
                     </dt>
                      <dd>
                        Figure: Why can't I click "Play Again" ?  (Surely it should be cached)
                      </dd>
                </dl>               
            </li>
                    
    </ol>                       
        <h2>
            Acknowledgements</h2>            
    </div>    
    <p>
        <a href="/people/adam-cogan">Adam Cogan </a>
       
    </p>
</asp:Content>

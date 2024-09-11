<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Google Analytics Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
        
        <div class="TableOfContents">
        <ol>
        <!--SSW Code Auditor - Ignore next line(HTML)-->
            <li><a href="#Introductory">Add introductory paragraphs </a></li>
            <li><a href="#TopXDimensions">Provide Top X dimensions in Custom Reports </a></li>
        </ol>
        </div>
        <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="Introductory">Add introductory paragraphs</a>
                </h2>
                <p>
                    Add introductory paragraphs telling users what the goal of each report is.
                    <br />
                    E.g. I have no idea what the "Bounce Rate for all visitors" report means... or what
                    is a average range is.<br />
                    Note: In respect of this "Bounce Rate for all visitors" report I have googled it
                    and it means
                </p>
                <dl class="greyBox">
                    <dt>
                        <img src="Images\GA_Introductary.jpg" />
                    </dt>
                </dl>
            </li>
            <li>
               <h2><a name="TopXDimensions"> Provide Top X dimensions in Custom Reports</a></h2>
            <p>
            When adding a second dimension attribute to custom reports we'd like to be able to limit the list to the Top X results for that attribute.<br />
            For example if listing by Page Title as the first dimension we'd like to add a second dimension of Top 5 keywords.<br />
            This would allow a single report to list out all pages along with their top 5 referring keywords.            
            </p>
            <p>For example, in the screenshot below, when selecting Keyword, we'd like to be able to limit this to just the top 5 keywords.</p>
                 <dl class="image">
                     <dt>
                        <img src="images/PickTopOnes.JPG" alt="There should be a filter box which allows you pick top 5. " />
                     </dt>
                      <dd>
                        Figure: When you click an attribute like 'Keyword' (or any of the other ones), it should pop a filter box that allows you to pick the 'Top 5'
                      </dd></dl>
            </li>
            
        </ol>
    <h2>
            Acknowledgements</h2>            
    </div>    
    <p>
        <a href="/people/adam-cogan">Adam Cogan </a>
       
    </p>
</asp:Content>

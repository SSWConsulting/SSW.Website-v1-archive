<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="SSW.Website.WebUI.Raven" Title="Microsoft SharePoint 2016 Benefits | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="images/thumbs/thumb-sharepoint.jpg" alt="SharePoint" />
    <h1>Microsoft SharePoint 2016 Benefits</h1>
    <h2>Why migrate?</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server"> 
    <h2>SharePoint 2016 Benefits</h2>
    <ul>
        <li><a href="#benefits">Benefits</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section"><a name="benefits"></a>
        <h1>Benefits of SharePoint 2016 over SharePoint 2007</h1>
            <h2>Increased Browser Support</h2>
                <p>Part of Web Content Management is accessibility. SharePoint 2007 is for the most part jailed to Internet Explorer. Sure, you can load any SharePoint site in Firefox or Chrome, but it’s not fully supported and several features do not function correctly. SharePoint 2016 supports several commonly used web browsers, like IE 10, Firefox and Chrome.</p>

            <h2>Better Rich Text Editor</h2>
                <p>The new and improved Rich Text Editor (RTE) provides a "Word-like" editing experience that most people take for granted in a non-browser world. The RTE in SharePoint 2016 provides rich formatting of text, live preview of formatting options, easy embedding of images and videos directly into the RTE and drag and drop capability to place them exactly where you want.</p>
                <p>The rich editor integration with the new UI and ribbon will cut down on page loads, it shows quick access to the tools and actions you use most often, and automatically updated to the content you are working on.</p>
                <p>E.g. it will shows media options when you are working on an media web part.</p>

            <h2>Easily able to add Rich Media eg. a YouTube link</h2>
                <p>SharePoint 2016 makes it easy for authors to select and add rich media content (like images, audio, video and Silverlight controls) to their pages. Authors have quick access to Media, Video and Silverlight Web Parts that they can add to their pages.  We’ve also introduced a new experience for selecting rich media content that has features like getting to preview and play the video before you select it.</p>

            <h2>Device Channels</h2>
                <p>One of the new capabilities of SharePoint 2016 are Device Channels. Using Device Channels you can optimize how your website is displayed on different devices. By using different Master Pages with different channels and by ensuring the right markup is generated using the Mobile Panel controls, you can improve the user experience for all the different devices.</p>

            <h2>Responsive Design (Dynamically changing via Page Layout templates)</h2>
                <p>Page Layouts (templates) provide a way to apply a consistent look and feel to a page.  In SharePoint 2016, changing page layout is as easy as picking a layout from a gallery in the Ribbon while the author is editing the page.</p>

            <h2>Managed Metadata service</h2>
                <p>This helps solidify SharePoint as a solid web-based tool for managing content across all of your sites.</p>
                <p>SharePoint 2016 introduces a powerful set of features around defining and managing taxonomies and then leveraging those "terms" to tag content in SharePoint. Leveraging these managed metadata fields in web content enables scenarios around showing dynamic content (discussed above), driving dynamic navigation based on metadata and helps with search engine optimization.</p>

            <h2>Friendly URLs</h2>
                <p>By using managed navigation and category pages, the URLs of category pages can be built from the terms that you have specified in the term set, such as Computers or Marketing. For individual catalog items, you can specify that the URL consists of additional properties from the library or list that is shared as a catalog. This lets you create more meaningful, user-friendly URLs, instead of having URLs that consist of strings that do not make sense to users. In SharePoint Server 2016, the URLs for publishing sites included the name of the Pages library — for example, <strong>www.contoso.com/Pages/Computers.aspx#/ID=453&Source=http%3A%2F1010101</strong>. In SharePoint Server 2016, you can create URLs that are more user-friendly — for example <strong>www.contoso.com/Computers/model101</strong>.</p>

            <h2>Better CSS (Web site styling) without being so table heavy</h2>
                <p>Sharepoint 2016 uses DIV instead of tables which provides faster loading pages.</p>

            <h2>Web Analytics</h2>
                <p>An important part of any site is understanding what is going on with the content, users and the servers powering the site. SharePoint 2016 provides a range of new Web Analytics capabilities that monitor different aspects of site usage.  In addition to the out of box reports, you can subscribe to alerts to monitor changes on key metrics.  Beyond traffic insight, there is support for search insight around search queries, popular terms and queries that are succeeding or failing.  It also recommends new best bets for the search system by watching what links people are clicking on the search result page so you can promote these to the top of the page.</p>

            <h2>Server Health Monitoring</h2>
                <p>SharePoint 2016 has made some big investments in logging infrastructure from the analytic side that will help you monitor the performance of your SharePoint deployment.  You can now easily find the slowest pages (in terms of rendering) on your site.  So in case you have customization where you have one or more Content Query Web Parts making expensive queries and forgot to turn on caching then we’ll help you find that page.  Since sites are highly customized with custom web parts and field controls, we’ve introduced the Developer Dashboard feature that allows a developer investigating why a certain page renders slowly to see at a page level which queries went to SQL backend and how long they took. Introduction of Sandboxed solutions allows site administrators to upload custom code that runs in its own sandbox in a way that it can be monitored and throttled so it doesn’t impact the quality of service to other users on the farm.</p>

            <h2>Image rendition (automatically reduces)</h2>
                <p>Finally, SharePoint Server 2016 supports image renditions. Image renditions let you display different sized versions of an image on different pages. When you create an image rendition, you specify the width and height for all images that use that image rendition. For example, if the site has a news article page layout that contains an image field, you can create an image rendition named Article_image to display the full-sized image in the article page. A second image rendition named Thumbnail_small can be used to display a smaller version of the image associated with a particular article when the image is displayed in a Web Part that lists all recent news articles on the site home page. To use image renditions, you first define the image rendition sizes. Next, you generate the default image preview by uploading an image, which you can adjust if it is necessary. Finally, you add the image to a page and specify which image rendition to use on that page.</p>
                <p>By default, the image preview that is displayed for an image rendition is generated from the center of the image. You can adjust the image preview for individual images by selecting and resizing the portion of the image that you want to use as the image preview. For example, if a photo contains a person’s face but the default image preview does not show the whole face, you can change the selected image area so that the whole face is displayed.</p>
                <p>Image renditions let you have large source images on the site and also have places on the site where pages only use smaller versions. This reduces the size of the file that is downloaded to the client, which improves site performance. Image renditions also let you have multiple versions of the same image that are cropped differently without having to upload multiple images. This reduces the storage space that is required for images. Finally, image renditions are useful in mobile scenarios, where different versions of images can be displayed based on the device that is used.</p>

            <h2>Cross Site Publishing when you have multiple websites</h2>
                <p>Cross-site publishing lets you store and maintain content in one or more authoring site collections, and display this content in one or more publishing site collections. When you change the content in an authoring site collection, those changes are displayed on all site collections that are reusing this content.</p>
                <p>Cross-site publishing uses search technology to retrieve content. On a site collection where the Cross-Site Collection Publishing feature is enabled, libraries and lists have to be enabled as catalogs before the content can be reused in other site collections. For more information, see Catalog-enabled libraries and lists. The content of the library or list catalogs must be crawled and added to the search index. The content can then be displayed in a publishing site collection by using one or more Content Search Web Parts. For more information, see Content Search Web Part.</p>

            <h2>Managed Navigation</h2>
                <p>Managed navigation lets you define and maintain the navigation on a site by using term sets. Managed navigation supplements the existing SharePoint navigation that is based on site structure. You create the managed navigation structure by adding terms to term sets in the Term Store Management tool. You can copy the navigation term set and translate it into the same languages that are used for variations labels.</p>

            <h2>App Support for extensibility</h2>
                <p>Apps provide easier discovery & installation. Microsoft now provides an app store which is seamlessly integrated into SharePoint 2016 which allows you to access a marketplace where you can purchase additional components. Developers can now easily write applications and use the app store deploy this additional functionality which you can easily add to your SharePoint site.</p>
                <p>The following are the advantages of Apps from the Developer perspective:</p>
                <ol>
                    <li>Web Programming skills are reusable in creating Apps</li>
                    <li>Common web standards of HTML, JavaScript, CSS can be used to develop Apps</li>
                    <li>Opportunity to create & publish Apps to the SharePoint store, which could be installed on different SharePoint site</li>
                    <li>More potential in developing revenues through Apps</li>
                </ol>

            <h2>Sharepoint Search service</h2>
                <p>Without having to open each search result, users can quickly identify useful results in ways such as the following:</p>
                <ul>
                    <li>Users can rest the pointer over a search result to preview the document content in the hover panel to the right of the result</li>
                    <li>Users can quickly distinguish search results based on their type. For example, Microsoft Office documents display the application icon in front of the title of the search result. Newsfeed conversation results display the number of replies and the number of likes to the right. Site results list the top links that users often click on the site. People in results show the picture and the Lync availability status to the left</li>
                    <li>By default, certain types of related results are displayed in groups called result blocks. A result block contains a small subset of results that are related in a particular way. For example, results that are PowerPoint documents appear in a result block when the word "presentation" is one of the search terms. Administrators and site owners can also create result blocks to group other results. Like individual search results, you can promote result blocks or rank them with other results</li>
                </ul>

    <p><a href="/ssw/Consulting/Consulting.aspx" class="red next btn">Book a SharePoint Expert</a></p>
</div>

    <text:Location runat="server" />
<%--  <div class="section">
        <h2><a name="getstarted"></a>How to get started</h2>
        <p>To find out if a CRM based solution is right for your business, give us a call on  <strong>+61 2 9953 3000</strong> to get started!</p>
    </div>--%>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="rounded">
        <h3>Free Workshop</h3>
    </div>
    <div class="section">
        <strong>
            SharePoint 101</strong>
        <p>
            Learn what every business person should know about SharePoint 2016. Find out more
            about the <a href="/ssw/SharePointForBusiness.aspx">SharePoint 101 Workshop</a></p>
        <%--<a style="border: medium none ;" href="/ssw/Shop/BasketInsert.aspx?ProductID=TBSPYB">
                <img src="/ssw/Images/button_register_grey.gif" alt="Register online now" class="regist_grey" /></a>--%>
    </div>
    <br />
    <div class="rounded">
        <h3>Case Studies</h3>
    </div>
    <div class="section">
        <strong>Microsoft Australia</strong>
        <p>
            <a href="/ssw/Consulting/Case-Study/SharePoint-Office-Forum.aspx">
                <img src="/ssw/company/images/thumb_microsoft.gif" alt="Logo of Microsoft" align="right" /></a>Microsoft
            Australia approached SSW to develop a website in preparation for the upcoming 2008
            Forum event for SharePoint and Office. The original website design used for previous
            events required a complete overhaul with clear layout and navigation, and to demonstrate
            a SharePoint 2016 site integrating with various other technologies.</p>
        <p>
            <a href="/ssw/Consulting/Case-Study/SharePoint-Office-Forum.aspx">Learn more about Microsoft Australia
                SharePoint case study</a>
        </p>
        <p>
            <a href="case_Sharepoint_flyer.pdf">
                <img src="Images/case_sharepoint_smallimage.png" alt="SharePoint Case Study Image"
                    align="left" class="thumbnail" /></a> <a href="case_Sharepoint_flyer.pdf">Download SharePoint
                        case study flyer</a></p>
    </div>
    <div class="section">
        <p>
            <a href="/ssw/Consulting/Case-Study/WorleyParsons.aspx">
                <img src="Images/case_worleyparsons_smallimage.png" alt="WorleyParsons Case Study Image"
                    align="left" class="thumbnail" /></a> <a href="case_WorleyParsons_flyer.pdf">Download
                        WorleyParsons case study flyer</a>
        </p>
    </div>
<br />
    <div class="section">
        <h3>Our experience</h3>
        <p>For 20 years we have been servicing: Sydney NSW, Melbourne VIC, Brisbane QLD, Canberra ACT and Adelaide SA.</p>
    </div>
    <div class="section">
        <h3>How to get started</h3>
            <p>Find out if a SharePoint solution is right for your business.</p>
            <img class="phone" src="images/phone.png" alt="phone icon" /> 
            <p><strong>Call us on +61 2 9953 3000 to get started!</strong></p>
    </div>
</asp:Content>

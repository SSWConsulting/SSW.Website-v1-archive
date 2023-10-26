<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="SSW.Website.WebUI.Raven" Title="SSW Consulting Services | Over 25 years of experience developing awesome solutions on top of Angular, React, Blazor, .NET, Azure, GitHub, DevOps (was VSTS/TFS), Power Apps, Power Automate, Power BI, SharePoint, Dynamics and SQL Server" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%-- BLURBS CONTENT - Always make texts less than 4 lines (on a large cpu screen) to avoid misalignments.
     TIP: Use current blurbs as reference for amount of text --%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Consulting Services</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="asideleft" runat="server">
    <h3 class="filter-header"><a name="filter"></a>I am looking for...</h3>
    <ul id="filters" class="option-set">
        <li><a href="#filter" data-filter=".all" class="selected">All SSW Services</a></li>
        <li><a href="#filter" data-filter=".webdev">Website Development</a></li>
        <li><a href="#filter" data-filter=".appdev">Application Development</a></li>
        <li><a href="#filter" data-filter=".datadev">Database Development</a></li>
        <li><a href="#filter" data-filter=".mobdev">Mobile Development</a></li>
        <li><a href="#filter" data-filter=".platform">Platform Development</a></li>
        <li><a href="#filter" data-filter=".consulting-services">Consulting</a></li>
        <li><a href="#filter" data-filter=".design">Design</a></li>
        <li><a href="#filter" data-filter=".cms">Content Management Systems (CMS)</a></li>
        <li><a href="#filter" data-filter=".hosting-solutions">Cloud and Infrastructure</a></li>
        <li><a href="#filter" data-filter=".video">Video</a></li>
    </ul>
</asp:Content>

<asp:Content ContentPlaceHolderID="maincontent" runat="server">
    <div id="isotope">
        <div class="grid" style="width:50%;"></div>
        <div class="item development mobdev datadev webdev appdev isotope-header all">
            <h2>Development Teams</h2>
        </div>
        <%--<div class="item appdev isotope-header ">
            <h2>Application Development</h2>
        </div>
        <div class="item video isotope-header ">
            <h2>Business Consulting</h2>
        </div>--%>

        <div class="item webdev all">
            <a href="/ssw/Consulting/Web-Applications.aspx">
                <img src="images/thumbs/thumb-web-mvc.jpg" alt="Web and MVC" />
                <div class="ourHolder-text">
                    <h3>Web Applications + APIs</h3>
                    <p>SSW has the resources to develop sites of any scope, from ongoing maintenance tasks to the implementation of large complex sites.</p>
                </div>
            </a>
        </div>

        <div class="item mobdev appdev all">
            <a href="/ssw/Consulting/Mobile-Application-Development.aspx">
                <img src="images/thumbs/thumb-mobiles-apps.jpg" alt="Mobile Apps" />
                <div class="ourHolder-text">
                    <h3>Mobile Apps</h3>
                    <p>We can build your mobile app using React Native, MAUI (was Xamarin), Flutter, Cordova, PWA, or Ionic!</p>
                </div>
            </a>
        </div>

        <div class="item webdev appdev all">
            <a href="/ssw/Consulting/Angular.aspx">
                <img src="images/thumbs/thumb-angularjs.jpg" alt="Angular" />
                <div class="ourHolder-text">
                    <h3>Angular / SPA</h3>
                    <p>Build sexy web apps with this a TypeScript-based web application platform, open-sourced and led by Google!</p>
                </div>
            </a>
        </div>

        <div class="item webdev appdev all">
            <a href="/ssw/Consulting/React.aspx">
                <img src="images/thumbs/thumb-react.jpg" alt="React" />
                <div class="ourHolder-text">
                    <h3>React</h3>
                    <p>Easily create interactive UIs with this JavaScript library, maintained by Facebook, Instagram and a large community!</p>
                </div>
            </a>
        </div>

         <div class="item webdev appdev all">
            <a href="/ssw/Consulting/Vuejs.aspx">
                <img src="images/thumbs/thumb-vuejs.jpg" alt="VueJS" />
                <div class="ourHolder-text">
                    <h3>Vue.js</h3>
                    <p>Vue.js is a progressive JavaScript framework to build web interfaces and applications.</p>
                </div>
            </a>
        </div>

        <div class="item webdev appdev all">
            <a href="/ssw/Consulting/Blazor.aspx">
                <img src="images/thumbs/thumb-blazor.jpg" alt="Blazor" />
                <div class="ourHolder-text">
                    <h3>Blazor</h3>
                    <p>The best way to build an enterprise app blazing fast. We've seen it more than 50x faster than Angular (once it's loaded) on testing. C# with Razor pages is nicer than JavaScript.</p>
                </div>
            </a>
        </div>

       <div class="item webdev mobdev appdev all">
            <a href="/ssw/Consulting/Desktop-Development.aspx">
                <img src="images/thumbs/thumb-windows8.jpg" alt="Windows" />
                <div class="ourHolder-text">
                    <h3>.NET MAUI (aka Windows Desktop Apps)</h3>
                    <p>Desktop Apps have different responsive layouts, menus, and multi–windowing, but they work on Windows too. .NET MAUI (previously WinUI and WPF) is used to create these business applications.</p>
                </div>
            </a>
        </div>

        <div class="item all webdev">
            <a href="/ssw/Consulting/Jamstack.aspx">
                <img src="images/thumbs/thumb-jamstack.jpg" alt="Jamstack" />
                <div class="ourHolder-text">
                    <h3>Jamstack (Static Sites with Gatsby/Next.js)</h3>
                    <p>Jamstack is a modern web development architecture based on client-side JavaScript, reusable APIs and prebuilt Markup. It's used on SSW Rules and SSW People.</p>
                </div>
            </a>
        </div>
        
        <div class="item datadev all">
            <a href="/ssw/Consulting/Database-Development.aspx">
                <img src="images/thumbs/thumb-database-dev.jpg" alt="Database Dev" />
                <div class="ourHolder-text">
                    <h3>Database Development and Performance</h3>
                    <p>Whether it is good old SQL Server or the super scalable SQL Azure, our consultants know how to help you simplify your database and improve its performance.</p>
                </div>
            </a>
        </div>
        <div class="item webdev appdev datadev all">
            <a href="/ssw/Consulting/Enterprise-Reporting.aspx">
                <img src="images/thumbs/thumb-enterprise-reporting.jpg" alt="Enterprise Reporting" />
                <div class="ourHolder-text">
                    <h3>Enterprise Reporting + BI</h3>
                    <p>Custom SQL reporting for unparalleled access to your company's data. Add a cube, Telerik Reports and a dashboard to drive your business forward.</p>
                </div>
            </a>
        </div>

        <div class="item datadev appdev all">
            <a href="/ssw/Consulting/Power-BI.aspx">
                <img src="images/thumbs/thumb-powerbi.jpg" alt="Power BI" />
                <div class="ourHolder-text">
                    <h3>Power BI</h3>
                    <p>A cloud based business analytics service that allows anyone to visualize and analyze data with greater speed, efficiency and understanding.</p>
                </div>
            </a>
        </div>

        <div class="item webdev appdev all">
            <a href="/ssw/Consulting/Bots.aspx">
                <img src="images/thumbs/thumb-azurebot.jpg" alt="Bots" />
                <div class="ourHolder-text">
                    <h3>Bots</h3>
                    <p>Awesome bots gives you an advantage in finding and automatically entering data for your business with advanced artificial intelligence.</p>
                </div>
            </a>
        </div>

        <div class="item webdev appdev all">
            <a href="/ssw/Consulting/Azure.aspx">
                <img src="images/thumbs/thumb-azurecognitiveservices.jpg" alt="Azure Cognitive Services" />
                <div class="ourHolder-text">
                    <h3>Azure Cognitive Services</h3>
                    <p>Make your existing applications smarter. Add Artificial Intelligence APIs like vision, speech, language and knowledge capability to your apps.</p>
                </div>
            </a>
        </div>

        <div class="item datadev all">
            <a href="/ssw/Consulting/Azure-Synapse.aspx">
                <img src="images/thumbs/thumb-azuresynapse.jpg" alt="Azure Synapse" />
                <div class="ourHolder-text">
                    <h3>Azure Synapse</h3>
                    <p>A limitless analytics service that brings together enterprise data warehousing and Big Data analytics. It gives you the freedom to query data on your terms, using either serverless or dedicated resources at scale.</p>
                </div>
            </a>
        </div>
        
        <div class="item consulting-services training-services isotope-header all">
            <h2>Consulting</h2>
        </div>
        <div class="item consulting-services all">
            <a href="/ssw/Consulting/Remote-Work.aspx">
                <img src="Images/thumbs/thumb-remote.jpg" alt="Remote Work" />
                <div class="ourHolder-text">
                    <h3>Remote Work</h3>
                    <p>Put the tools in place to allow your employees to work from home including Teams, cloud migration, VPN, training, and more.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Consulting/Chinafy-App.aspx">
                <img src="Images/thumbs/thumb-china.jpg" alt="China" />
                <div class="ourHolder-text">
                    <h3>Chinafy</h3>
                    <p>China is a booming market and now is the time to take advantage of this growing user base. Includes WeChat Mini Programs.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Consulting/Strategic-Architecture.aspx">
                <img src="images/thumbs/thumb-strategicarchitecture.jpg" alt="Strategic Architecture" />
                <div class="ourHolder-text">
                    <h3>Strategic Architecture</h3>
                    <p>Combine SSW's deep experience with best practices and industry trends to develop a strategic architecture for your organization.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Consulting/Software-Audit.aspx">
                <img src="Images/thumbs/thumb-software-auditing.jpg" alt="Software Auditing" />
                <div class="ourHolder-text">
                    <h3>Software Auditing</h3>
                    <p>Receive an independent examination of your software product and processes.</p>
                </div>
            </a>
        </div>
        <div class="item consulting-services all">
            <a href="/ssw/Consulting/ALM-Azure-DevOps.aspx">
                <img src="Images/thumbs/thumb-vs.jpg" alt="ALM" />
                <div class="ourHolder-text">
                    <h3>ALM + GitHub + Azure DevOps</h3>
                    <p>Azure DevOps, GitHub, Visual Studio, and VS Code provide the backbone for delivering software continuously. Manage large teams and codebases with ease.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Consulting/DevOps.aspx">
                <img src="Images/thumbs/thumb-devops.jpg" alt="DevOps" />
                <div class="ourHolder-text">
                    <h3>DevOps</h3>
                    <p>Enables your organization be more agile, bringing consistency, improving quality, and allowing you to be responsive to changes and issues.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Consulting/Scrum.aspx">
                <img src="Images/thumbs/thumb-scrum.jpg" alt="Scrum" />
                <div class="ourHolder-text">
                    <h3>Scrum</h3>
                    <p>Increase software quality and eliminate miscommunication by adopting the Scrum framework.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Consulting/Kubernetes.aspx">
                <img src="Images/thumbs/thumb-kubernetes.jpg" alt="Kubernetes" />
                <div class="ourHolder-text">
                    <h3>Kubernetes</h3>
                    <p>Kubernetes provides great benefits, such as high availability, auto-scaling, self-healing and supports automated blue-green deployments.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Consulting/document-management-workflow.aspx">
                <img src="Images/thumbs/thumb-document-management.jpg" alt="Document Management" />
                <div class="ourHolder-text">
                    <h3>Document Management</h3>
                    <p>SSW has potential solutions to improve the logistics of getting multiple document approvals, focussing on automated document workflow.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Consulting/PayPerClick.aspx">
                <img src="Images/thumbs/thumb-search.jpg" alt="PPC" />
                <div class="ourHolder-text">
                    <h3>Pay Per Click</h3>
                    <p>Businesses are now able to target their prospects based on their interests and actions on social media platforms.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Consulting/HoloLens.aspx">
                <img src="Images/thumbs/thumb-hololens.jpg" alt="HoloLens" />
                <div class="ourHolder-text">
                    <h3>Microsoft HoloLens</h3>
                    <p>Get started with the first fully self-contained, holographic computer, which enables you to interact with high‑definition holograms.</p>
                </div>
            </a>
        </div>
        
        <div class="item consulting-services all">
            <a href="/ssw/Consulting/Machine-Learning-and-AI.aspx">
                <img src="images/thumbs/thumb-machinelearning.jpg" alt="Machine Learning and AI" />
                <div class="ourHolder-text">
                    <h3>Machine Learning &amp; AI</h3>
                    <p>Enable better decisions based on data. Now computers can understand and learn on their own.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Consulting/GPT.aspx">
                <img src="images/thumbs/thumb-GPT.jpg" alt="Machine Learning and AI" />
                <div class="ourHolder-text">
                    <h3>ChatGPT & GPT-4</h3>
                    <p>GPT and ChatGPT are ground-breaking AI language models that can revolutionize the way businesses communicate, automate tasks, and streamline processes.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Consulting/Smart-Office-and-Smart-Home.aspx">
                <img src="Images/thumbs/thumb-control4.jpg" alt="Smart Office and Smart Home" />
                <div class="ourHolder-text">
                    <h3>Smart Office &amp; Smart Home</h3>
                    <p>An office or house becomes smart when its systems (lights, climate control, music, blinds etc) are integrated and perform automated tasks.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Consulting/Access-Database-Upsizing.aspx">
                <img src="Images/thumbs/thumb-access.jpg" alt="Access Database" />
                <div class="ourHolder-text">
                    <h3>Access Database Upsizing</h3>
                    <p>If you are experiencing connection, speed and data corruption issues with Microsoft Access, then there is a way to solve them all.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Consulting/Zendesk.aspx">
                <img src="Images/thumbs/thumb-zendesk.jpg" alt="Zendesk" />
                <div class="ourHolder-text">
                    <h3>Zendesk</h3>
                    <p>Modern customers want to be able to contact you by different media and devices seamlessly. Zendesk is the perfect solution.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services all">
            <a href="/ssw/Educational/">
                <img src="Images/thumbs/thumb-educational.jpg" alt="Educational" />
                <div class="ourHolder-text">
                    <h3>Educational</h3>
                    <p>We can create a whole raft of other solutions depending on your school’s (or university’s) existing technology and unique requirements.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services training-services all">
            <a href="/ssw/Consulting/Mentoring.aspx">
                <img src="Images/thumbs/thumb-mentor.jpg" alt="Mentoring" />
                <div class="ourHolder-text">
                    <h3>Mentoring</h3>
                    <p>Does your team of developers need to learn a new technology? SSW mentoring is the best way to get them up to speed to deliver quality software.</p>
                </div>
            </a>
        </div>

        <div class="item consulting-services training-services all">
            <a href="/ssw/Events/Training/Training-Options.aspx">
                <img src="Images/thumbs/thumb-customtraining.jpg" alt="Training" />
                <div class="ourHolder-text">
                    <h3>Custom Training</h3>
                    <p>We believe that everyone should have access to expert advice. SSW provides high quality hands-on training for your team.</p>
                </div>
            </a>
        </div>

        <div class="item all consulting-services">
            <a href="/ssw/Consulting/Security.aspx">
                <img src="Images/thumbs/thumb-security.jpg" alt="Security" />
                <div class="ourHolder-text">
                    <h3>Security</h3>
                    <p>We help you avoid high cost and high profile breaches. Include secure code auditing, network and infrastructure consulting, and identity. We specialise in Auth0, B2C, Azure AD and IdentityServer.</p>
                </div>
            </a>
        </div>

        <div class="item all consulting-services">
            <a href="/ssw/Consulting/Xero-MYOB.aspx">
                <img src="Images/thumbs/thumb-xeromyob.jpg" alt="Xero and MYOB" />
                <div class="ourHolder-text">
                    <h3>Xero & MYOB</h3>
                    <p>We help organizations to remain more organized while carrying out standard accounting functions with Xero and MYOB.</p>
                </div>
            </a>
        </div>

         <div class="item all consulting-services">
            <a href="/ssw/Consulting/Microsoft-Viva.aspx">
                <img src="Images/thumbs/thumb-viva.jpg" alt="Xero and MYOB" />
                <div class="ourHolder-text">
                    <h3>Microsoft Viva</h3>
                    <p>Microsoft Viva is an employee experience platform. It is designed to help people connect, focus, learn and thrive at work.</p>
                </div>
            </a>
        </div>

        <div class="item all consulting-services">
            <a href="/ssw/Consulting/Test-Practice.aspx">
                <img src="Images/thumbs/thumb-testing.jpg" alt="Test Practice" />
                <div class="ourHolder-text">
                    <h3>Test Practice</h3>
                    <p>SSW can help you to review your current practices and recommend better test strategies and approaches to help you improve the quality of your software.</p>
                </div>
            </a>
        </div>

             <div class="item webdev video appdev mobdev design isotope-header all">
            <h2>Creatives</h2>
        </div>
          <div class="item appdev mobdev design webdev all">
            <a href="/ssw/Consulting/Product-Design.aspx">
                <img src="images/thumbs/thumb-product-design.jpg" alt="Product Design" />
                <div class="ourHolder-text">
                    <h3>Product Design</h3>
                    <p>We help companies to successfully launch products or services or re-create existing ones, improving UI, UX, and the corporate identity for your project.</p>
                </div>
            </a>
        </div>
        <div class="item appdev mobdev design webdev all">
            <a href="/ssw/Consulting/UI-UX-Design.aspx">
                <img src="images/thumbs/thumb-design.jpg" alt="Design" />
                <div class="ourHolder-text">
                    <h3>Web Design & UX</h3>
                    <p>A well designed user interface can improve your corporate image and sales. We deliver practical, creative and unique user experience for your website/app.</p>
                </div>
            </a>
        </div>
        <div class="item design video all">
            <a href="/ssw/Consulting/Video-Production/">
                <img src="images/thumbs/thumb-video-production.jpg" alt="Video Production" />
                <div class="ourHolder-text">
                    <h3>Video Production</h3>
                    <p>Use a great video to promote your message and build more customers.</p>
                </div>
            </a>
        </div>

        <div class="item design video all">
            <a href="https://sswdigital.com/" target="_blank" class="ignore">
                <img src="images/thumbs/thumb-sswdigital.jpg" alt="SSW Digital" />
                <div class="ourHolder-text">
                    <h3>SSW Digital</h3>
                    <p>To accelerate growth you need a digital partner who can help build your digital strategy, prioritise the implementation and execute the campaigns.</p>
                </div>
            </a>
        </div>

        <div class="item design video video marketing all">
            <a href="http://sswchapel.com.au/" target="_blank" class="ignore">
                <img src="images/thumbs/thumb-chapelrental.jpg" alt="Conference Room" />
                <div class="ourHolder-text">
                    <h3>SSW Chapel Conference Rental</h3>
                    <p>Do you have an event idea? Then we have the venue! The SSW Chapel conference rooms are spacious and quiet retreats in convenient locations.</p>
                </div>
            </a>
        </div>

        <div class="item platform isotope-header all">
            <h2>Platforms</h2>
        </div>

        <div class="item platform all">
            <a href="/ssw/Consulting/Azure.aspx">
                <img src="images/thumbs/thumb-azure.jpg" alt="Azure" />
                <div class="ourHolder-text">
                    <h3>Microsoft Azure</h3>
                    <p>Enables you to build and run highly available applications without focusing on the infrastructure. Azure makes it easy, scalable, and cheap... for others it is difficult and expensive :)</p>
                </div>
            </a>
        </div>

        <div class="item platform all">
            <a href="/ssw/Consulting/Power-Platform.aspx">
                <img src="images/thumbs/thumb-power-platform.jpg" alt="Power Platform" />
                <div class="ourHolder-text">
                    <h3>Power Platform</h3>
                    <p>Microsoft's Power Platform is a set of low-code applications that can be used individually to create easy to use business solutions. </p>
                </div>
            </a>
        </div>

        <div class="item platform all">
            <a href="/ssw/Consulting/Microsoft-Dynamics-365.aspx">
                <img src="images/thumbs/thumb-dynamics.jpg" alt="Dynamics 365" />
                <div class="ourHolder-text">
                    <h3>Microsoft Dynamics 365</h3>
                    <p>Dynamics 365 combines existing Microsoft products such as Dynamics CRM, Dynamics NAV, and Dynamics AX into one seamless solution.</p>
                </div>
            </a>
        </div>
        
        <div class="item platform all">
            <a href="/ssw/Consulting/SharePoint.aspx">
                <img src="images/thumbs/thumb-sharepoint.jpg" alt="SharePoint" />
                <div class="ourHolder-text">
                    <h3>SharePoint</h3>
                    <p>The premier content management to store all documents & records. SSW helps enterprises customize and develop SharePoint often powered by the SharePoint Framework (aka SPFx) with React.</p>
                </div>
            </a>
        </div>

        <div class="item platform all">
            <a href="/ssw/Consulting/Office-365.aspx">
                <img src="images/thumbs/thumb-office.jpg" alt="Office365" />
                <div class="ourHolder-text">
                    <h3>Office 365</h3>
                    <p>The Office you know plus extra tools will help you work better together, all based on the cloud.</p>
                </div>
            </a>
        </div>

        <div class="item cms isotope-header all">
            <h2>Content Management Systems</h2>
        </div>

        <div class="item cms all">
            <a href="/ssw/Consulting/WordPress.aspx">
                <img src="images/thumbs/thumb-wordpress.jpg" alt="WordPress" />
                <div class="ourHolder-text">
                    <h3>WordPress</h3>
                    <p>WordPress the most popular content management system (CMS) on the web, and is trusted by content publishers from both large and small businesses.</p>
                </div>
            </a>
        </div>

        <div class="item cms all">
            <a href="/ssw/Consulting/Kentico.aspx">
                <img src="images/thumbs/thumb-kentico.jpg" alt="Kentico" />
                <div class="ourHolder-text">
                    <h3>Kentico</h3>
                    <p>Kentico is the only fully integrated ASP.NET CMS, E-commerce, and Online Marketing platform.</p>
                </div>
            </a>
        </div>

        <div class="item cms all">
            <a href="/ssw/Consulting/DNN-DotNetNuke.aspx">
                <img src="images/thumbs/thumb-dnn.jpg" alt="DotNetNuke" />
                <div class="ourHolder-text">
                    <h3>DNN - DotNetNuke</h3>
                    <p>DNN (AKA Evoq) can be used as a web content management system (CMS) for simple web sites or as a powerful application development framework.</p>
                </div>
            </a>
        </div>

        <div class="item cms all">
            <a href="/ssw/Consulting/Sitefinity.aspx">
                <img src="images/thumbs/thumb-sitefinity.jpg" alt="Sitefinity" />
                <div class="ourHolder-text">
                    <h3>Sitefinity</h3>
                    <p>Sitefinity's mix of benefits for marketers, IT managers, Developers and designers make it the ideal choice for medium sized businesses.</p>
                </div>
            </a>
        </div>

        <div class="item cms all">
            <a href="/ssw/Consulting/Orchard.aspx">
                <img src="images/thumbs/thumb-orchard.jpg" alt="Orchard" />
                <div class="ourHolder-text">
                    <h3>Orchard</h3>
                    <p>A free, open source, community-focused project aimed at delivering applications and reusable components on the rock-solid ASP.NET MVC platform.</p>
                </div>
            </a>
        </div>

        <div class="item cms all">
            <a href="/ssw/Consulting/Sitecore.aspx">
                <img src="images/thumbs/thumb-sitecore.jpg" alt="Sitecore" />
                <div class="ourHolder-text">
                    <h3>Sitecore</h3>
                    <p>A mix of powerful marketing and business features, rich development support and scalability make it the ideal solution for leading websites.</p>
                </div>
            </a>
        </div>

        <div class="item cms all">
            <a href="/ssw/Consulting/Umbraco.aspx">
                <img src="images/thumbs/thumb-umbraco.jpg" alt="Umbraco" />
                <div class="ourHolder-text">
                    <h3>Umbraco</h3>
                    <p>With over than 200.000 installations, Umbraco is one of the most deployed Web Content Management Systems on the Microsoft stack.</p>
                </div>
            </a>
        </div>

        <div class="item hosting-solutions isotope-header all">
            <h2>Cloud and Infrastructure</h2>
        </div>
        <div class="item hosting-solutions all">
            <a href="/ssw/Consulting/Network-Architecture.aspx">
                <img src="Images/thumbs/thumb-network.jpg" alt="Network Architecture" />
                <div class="ourHolder-text">
                    <h3>Network Architecture</h3>
                    <p>In such a fast paced moving industry, it's important to have a well designed and maintained Network Infrastructure.</p>
                </div>
            </a>
        </div>

        <div class="item hosting-solutions all">
            <a href="/ssw/Consulting/PowerShell.aspx">
                <img src="Images/thumbs/thumb-powershell.jpg" alt="PowerShell" />
                <div class="ourHolder-text">
                    <h3>PowerShell</h3>
                    <p>Get your infrastructure automation from snail's pace to blazing fast.</p>
                </div>
            </a>
        </div>

        <div class="item hosting-solutions all">
            <a href="/ssw/Consulting/Hyper-V.aspx">
                <img src="Images/thumbs/thumb-hyper-v.jpg" alt="Virtualization with Hyper-V" />
                <div class="ourHolder-text">
                    <h3>On-Premises: Hyper-V</h3>
                    <p>We recommend Microsoft Hyper-V - the fastest growing virtualization solution on the market today.</p>
                </div>
            </a>
        </div>
        <div class="item hosting-solutions all">
            <a href="/ssw/Consulting/Data-Protection-Manager.aspx">
                <img src="Images/thumbs/thumb-data-protection.jpg" alt="Data Protection Manager" />
                <div class="ourHolder-text">
                    <h3>On-Premises: Data Protection Manager</h3>
                    <p>Microsoft System Center Data Protection Manager can take the stress out of backups by allowing you to control all backups from one central console.</p>
                </div>
            </a>
        </div>

          <div class="item hosting-solutions all">
            <a href="/ssw/Consulting/BackBlaze-and-CloudBerry-Backup.aspx">
                <img src="Images/thumbs/thumb-backblaze.jpg" alt="BackBlaze and CloudBerry Backup" />
                <div class="ourHolder-text">
                    <h3>BackBlaze and CloudBerry</h3>
                    <p>Backblaze has introduced a simple backup system utilizing B2 Cloud Storage which is cheap, requires little on premises infrastructure and fast to setup.</p>
                </div>
            </a>
        </div>

        <div class="item hosting-solutions all">
            <a href="/ssw/Consulting/Backup-Recovery.aspx">
                <img src="Images/thumbs/thumb-backup.jpg" alt="Backup Recovery" />
                <div class="ourHolder-text">
                    <h3>Backup/Disaster Recovery Audit</h3>
                    <p>If you have good backups and a thorough Disaster Recovery plan, you can mitigate or completely overcome potential catastrophes.</p>
                </div>
            </a>
        </div>

         <div class="item hosting-solutions all">
            <a href="/ssw/Consulting/Microsoft-Teams.aspx">
                <img src="Images/thumbs/thumb-teams.jpg" alt="Microsoft Teams" />
                <div class="ourHolder-text">
                    <h3>Microsoft Teams</h3>
                    <p>Teams is the premier Office 365 chat, collaboration and phone system from Microsoft.</p>
                </div>
            </a>
        </div>

        <div class="item hosting-solutions all">
            <a href="/ssw/Consulting/Video-Conferencing.aspx">
                <img src="Images/thumbs/thumb-video-conferencing.jpg" alt="Video Conferencing" />
                <div class="ourHolder-text">
                    <h3>Video Conferencing</h3>
                    <p>Engage remote teams and employees to work from home; promote collaboration across the team; run webinars and live events; meet clients; interview job candidates.</p>
                </div>
            </a>
        </div>

        <div class="item hosting-solutions all">
            <a href="/ssw/Consulting/Service-Desk.aspx">
                <img src="Images/thumbs/thumb-servicedesk.jpg" alt="Service Desk" />
                <div class="ourHolder-text">
                    <h3>Service Desk</h3>
                    <p>Potential costs savings as you are only paying for support when you need it.</p>
                </div>
            </a>
        </div>

        <div class="item hosting-solutions all">
            <a href="/ssw/Consulting/Support-Plans.aspx">
                <img src="Images/thumbs/thumb-supportplans.jpg" alt="Support Plans" />
                <div class="ourHolder-text">
                    <h3>Support Plans</h3>
                    <p>Gain peace of mind that you'll be covered in case of an emergency.</p>
                </div>
            </a>
        </div>

    </div>
</asp:Content>


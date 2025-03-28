<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW - Developer Training" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

    <div class="greyBox">
        <p>This page is deprecated. <a href="https://www.ssw.com.au/ssw/Events">See current SSW Events</a>.</p>
    </div>

<p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"></asp:SiteMapPath>
</p>
    <div class="greyBox floatRight" style="width: 35%;">
        <p>
            <strong>Training is available in a variety of formats </strong></p>
        <ul>
            <li><a href="/ssw/Events/sswtechbreakfast.aspx">The SSW Big Tech Breakfast</a></li>
            <li>1/2 day or full day sessions <a href="/ssw/Events/SampleTrainingDay.aspx">Sample
                Training Agenda</a></li>
            <li>Weekend sessions</li>
        </ul>
        <p>
            View our <a href="/ssw/Products/ProdCategoryList.aspx?GroupCategoryID=7DEVT">training
                prices</a> or <a href="../company/ContactUs.aspx">contact us</a> for further
            information.
        </p>
    </div>
    <div id="intro">
        <p>
            <img src="/SSW/Products/Images/DeveloperTrainingLogo.gif" alt="SSW Developer Training"
                align="left" width="285" height="82" style="margin: 0px 10px;" /></p>
        <p>
            SSW provide training in the latest Microsoft Technologies at our offices or your
            premises. Our instructors have substantial experience and speak at development conferences
            around the world.
        </p>
        <p>
            Material is presented to small groups in a workshop type format. All courses provide
            comprehensive coverage of the subject matter with extensive code samples intended
            to plug into your existing applications. Sample applications are provided to show
            the &quot;big picture&quot;.
        </p>
        <p>
            Please note that in general each Training Topic takes one half-day training session.
        </p>
        <p>
            Note: As audience interaction changes from session to session, SSW cannot guarantee
            to cover all items listed for each session. If you have a burning desire to hear
            about a particular item, please mention it to the speaker during the session.
        </p>
    </div>
    <h2>
        Training Topics</h2>
    <div class="TableOfContents">
        <p>
            <b>Reporting Services</b>
        </p>
        <ol>
            <li><a href="#ShowYourData">The best ways to show your data</a></li>
            <li><a href="#ReportingServices">Up and Running with Microsoft SQL Server 2005 Reporting
                Services</a></li>
            <li><a href="#ReportingServices2005">What's new in Reporting Services 2005 + Developing
                Custom Report Items</a></li>
            <li><a href="#AccessToReporting">Migrating from Access Reports to Microsoft SQL Server
                Reporting Services</a></li>
            <li><a href="#CombiningExchangeData">Reporting on Data in Microsoft Exchange Using SQL
                Server 2005 Reporting Services</a></li>
            <li><a href="#TwelveTips">Twelve Tips for Better Reporting Services</a></li>
        </ol>
        <p>
            <b>Visual Studio .NET</b>
        </p>
        <ol>
            <li><a href="#TeamSystem">Visual Studio 2005 Team System - An Overview</a></li>
            <li><a href="#TeamSystemDrilling">Visual Studio 2005 Team System - Drilling into Work
                Items and Customization</a></li>
            <li><a href="#ExtendingCheckPoliciesVSTS">Visual Studio 2005 Team System - Extending
                Check in Policies</a></li>
            <li><a href="#DataBindingASP2">Data Binding in ASP .NET 2.0</a></li>
            <li><a href="#FavouriteThirdPartyToolsTFS">Favourite Third Party Tools for Team Foundation
                Server (TFS) and Visual Studio Team System (VSTS)</a></li>
            <li><a href="#RealWorldWindowsFormsApps">The Top 15 tips for Real World Windows Forms
                Applications (including &quot;What's new for Visual Studio 2005 &quot;)</a></li>
            <li><a href="#ASPPeek">A big peek at ASP .NET 2 Applications</a></li>
            <li><a href="#PockedPCApplicationsC">Building Rich Mobile Applications for Pocket PC
                2002</a></li>
            <li><a href="#IntroductionADONET">ADO.NET - Introduction to ADO.NET</a></li>
            <li><a href="#HardcoreADONET">ADO.NET Going Hardcore with SQL Server 2005</a></li>
            <li><a href="#VBNETWindowsService">Building a VB.NET Windows Service</a></li>
            <li><a href="#XMLWebServices">XML Web Services in .NET</a></li>
            <li><a href="#DotNetNuke">An Examination of DotNetNuke</a></li>
            <li><a href="#IBUYSPY">An Examination of IBuySpy.com - the .NET Northwind</a></li>
            <li><a href="#VSNETTipsTricks">Visual Studio .NET Tips and Tricks</a></li>
            <li><a href="#WindowsAppsVBNET">Building Windows Applications with VB.NET</a></li>
            <li><a href="#WebAppsASPNET">Building Web Applications with ASP.NET</a></li>
            <li><a href="#OfficeWebComponentGraphs">Using Office Web-Component Graphs in .NET</a></li>
            <li><a href="#AdvancedSmartClients">Building Advanced Data-Centric Winform Smart Clients</a></li>
            <li><a href="#XPForDotNetDev">eXtreme Programming for .NET Developers</a></li>
            <li><a href="#BoostProductivity">Boost Your Productivity with the best Microsoft's .NET
                Application Blocks (Configuration &amp; Exception Block</a></li>
            <li><a href="#AccessToNET">Migrating from Access Forms to .NET Windows Forms</a></li>
            <li><a href="#ClickOnce">Real World ClickOnce</a></li>
            <li><a href="#ExpWeb">Up and Running with Expression Web Designer</a></li>
            <li><a href="#CSSBestPrac">10 CSS Best Practices</a></li>
        </ol>
        <p>
            <b>SQL Server</b>
        </p>
        <ol>
            <li><a href="#AccesstoSQLServer">Planning and Managing a Smooth Migration from Access
                to SQL Server</a></li>
            <li><a href="#Top15SQLServerDBATasks">Top 15 SQL Server DBA Tasks for SQL Server 2005</a></li>
            <li><a href="#SQLServerNotifications">Microsoft SQL Server 2005 Notification Services</a></li>
            <li><a href="#BestTools">The best tools to Audit Your SQL Server Database &quot;The
                SQL 2000 Best Practices Analyzer&quot;</a></li>
            <li><a href="#WritingNewsletterApplications">Writing a Newsletter application with Microsoft
                SQL Server 2005 Notification Services</a></li>
            <li><a href="#SQLServer2000">Design and Implement Database Solutions Using Microsoft
                SQL Server 2005</a></li>
            <li><a href="#3rdPartyToolsSQLServer">Favourite 3rd Party Tools for SQL Server</a></li>
            <li><a href="#SQLIndexing">Introduction to SQL Indexing</a></li>
        </ol>
        <p>
            <b>Office</b>
        </p>
        <ol>
            <li><a href="#office2007newdifferent">What's new and different in Office 2007?</a></li>
            <li><a href="#SharePoint2007">Getting Started with Microsoft Office SharePoint Server
                2007 (Beta)</a></li>
            <li><a href="#AccessAndSharePoint">How to use Access 2007 and SharePoint 2007 together</a></li>
            <li><a href="#SmartTags">Connect your enterprise data to Microsoft Office with VS.NET
                (aka Smart Tags)</a></li>
            <li><a href="#BuildonAccess">Build on Your Knowledge of Microsoft Access</a></li>
            <li><a href="#MSAccess2007">Microsoft Access 2007</a></li>
        </ol>
        <p>
            <b>Other</b>
        </p>
        <ol>
            <li><a href="#WSS">Windows SharePoint Services</a></li>
            <li><a href="#HealthyCode">15 Rules to Better Code + Tools to Keep your Code Healthy
                (including FX Cop)</a></li>
            <li><a href="#RulestoBetterCode">Rules to Better Code and Successful Projects</a></li>
            <li><a href="#eXtremeProgramming">Great solutions via Extreme Programming (XP)</a></li>
            <li><a href="#BetterSpecs">An A- Z on Writing Better Specs</a></li>
            <li><a href="#Components">Component-based Design in .NET</a></li>
            <li><a href="#SharePoint">Developing for Microsoft SharePoint Portal Server and the
                Web Storage System</a></li>
            <li><a href="#3rdPartyTools">Favourite 3rd Party Tools</a></li>
            <li><a href="#CRM">Microsoft Customer Relationship Management (CRM)</a></li>
        </ol>
        <p>
            <b>Day-long Courses</b>
        </p>
        <ol>
            <li><a href="#DayLongRS2005">Creating Reporting Solutions Using Microsoft SQL Server
                2005 Reporting Services</a></li>
        </ol>
        <p>
            <b>Discontinued</b>
        </p>
        <ol>
            <li><a href="#ExcelAdvanced" class="strike">Advanced MS Excel (For Power-Users)</a></li>
            <li><a href="#XMLNTier" class="strike">Utilizing XML as the Solution for n-Tier Development</a></li>
            <li><a href="#XMLeBusiness" class="strike">XML &amp; e-Business</a></li>
            <li><a href="#ADO" class="strike">Get to know ALL about ActiveX Data Objects (ADO)</a></li>
            <li><a href="#AdvancedADO" class="strike">Advanced ADO</a></li>
            <li><a href="#UsabilityWebForms" class="strike">Usability - Rules to Better Web Forms</a></li>
        </ol>
    </div>
    <a name="ReportingServices"></a>
    <h2>
        Reporting Services
    </h2>
    <div>
        <ol>
            <li><a name="ShowYourData"></a>
                <h2>
                    The Best Ways to Show Your Data</h2>
                <p>
                    Today there are a myriad of ways to connect to and display your data. What are the
                    options? Which technology gets you across the finish line with the lowest cost and
                    greatest flexibility? In this session we will compare the most popular reporting
                    technologies in the industry:</p>
                <ul>
                    <li>Reporting Services 2005 </li>
                    <li>ASP.NET 2.0 </li>
                    <li>Crystal </li>
                    <li>Access (via SSW Access Reporter) </li>
                    <li>Office Web Components (OWC) </li>
                    <li>OLAP - Reporting Services 2005, Data Analyzer and 3rd Party Web Solutions </li>
                </ul>
                <p>
                    We will take you through developing the same sample report using all these technologies
                    so you can make an informed decision on what is best for your organization</p>
            </li>
            <li>
                <h2>
                    Up and Running with Microsoft SQL Server 2005 Reporting Services</h2>
                <p>
                    OK so you know about how the new powerful reporting platform from Microsoft will
                    change the landscape of enterprise reporting. Come see Sydney based SQL Guru and
                    MS Regional Director Adam Cogan show the developer features of this latest addition
                    to the Microsoft SQL Server family of products. You will see real world examples
                    of this server-based platform when used for creating, managing, and delivering both
                    traditional, paper-oriented reports and interactive, Web-based reports. Reporting
                    Services 2005 combines the data management capabilities of SQL Server and Microsoft
                    Windows Server with familiar and powerful Microsoft Office System applications to
                    deliver real-time information to support daily operations and decisions.</p>
            </li>
            <li>
                <p>
                    <a name="ReportingServices2005"></a>
                </p>
                <h2>
                    What's new in Reporting Services 2005 + Developing Custom Report Items</h2>
                <p>
                    Reporting Services makes viewing your data a breeze and SQL Server 2005 brings database
                    reporting to a whole new level. In this session you will learn how to take full
                    advantage of the new Report Designer that is integrated into Visual Studio 2005.
                    We will discuss the core product improvements, reporting improvements, the better
                    integration, and the richer developer experience.</p>
                <p>
                    You will also discover how to create and implement Custom Report Items - custom
                    data visualization controls that allow you to make powerful reports.
                </p>
                <a name="AccessToReporting"></a></li>
            <li>
                <h2>
                    Migrating from Access Reports to Microsoft SQL Server Reporting Services 2005</h2>
                <p>
                    Microsoft SQL Server Reporting Services is a new web-based reporting solution from
                    Microsoft. It solves many of the issues with existing reporting solutions, such
                    as deployment, scalability and availability.
                </p>
                <p>
                    In this session, you will learn about all the important differences between Access
                    Reports and Reporting Services, and equip yourself with the knowledge to make a
                    decision on whether or not to move your reports into Reporting Services. You will
                    also be taken through a real demo of an Access to Reporting Services migration.</p>
                <a name="CombiningExchangeData"></a></li>
            <li>
                <h2>
                    Reporting on Data in Microsoft Exchange Using SQL Server 2005 Reporting Services</h2>
                <p>
                    Come see a code packed session that will show how to extend the out-of-the box features
                    of Reporting Services. Everyone who has an Exchange Server 2000/2003 should be reporting
                    on it - but nobody does. Following this, we will explore the creation of a real
                    Reporting Services solution. You will learn about the important issues of security,
                    data access, rendering, and delivery. We will also discuss the deployment issues
                    of an application that requires Reporting Services. Sample code is provided so you
                    can use this useful solution. &nbsp;
                </p>
            </li>
            <li><a name="TwelveTips"></a>
                <h2>
                    Twelve Tips for Better Reporting Services</h2>
                <p>
                    OK so you know about how powerful this reporting platform from Microsoft is. Come
                    see Sydney based SQL Guru and MS Regional Director Adam Cogan show the right and
                    wrong ways to develop reports and show data to users.
                </p>
            </li>
        </ol>
    </div>
    <h2>
        Visual Studio .NET</h2>
    <ol>
        <li>
            <h2>
                Visual Studio for Database Professionals (Data Dude)
            </h2>
            <p>
                In this session Adam will provide introduction to Visual Studio Team Edition for
                Database Professionals and will cover: schema maintenance, unit testing and data
                generation, including a discussion on<br />
                ways of extending this newly released product.</p>
        </li>
        <li><a name="TeamSystem"></a>
            <h2>
                Visual Studio 2005 Team System - An Overview
            </h2>
            <p>
                Microsoft Visual Studio 2005 Team System is an integrated software development platform
                to build the mission-critical applications that businesses depend on. It extends
                Visual Studio&#8217;s integrated and productive experience from the developer to
                the entire development team by delivering powerful new role-based tools for software
                architects, developers, testers and project managers. In this session you will see
                an overview of these tools and how they can improve your software development cycle.
            </p>
        </li>
        <li><a name="TeamSystemDrilling"></a>
            <h2>
                Visual Studio 2005 Team System - Drilling into Work Items and Customization</h2>
            <p>
                Visual Studio Team System (VSTS) and Team Foundation Server (TFS) combine to integrate
                the whole development cycle from initial design, testing and development as well
                as bug tracking and project management tools. In this session you will be taken
                through everything you need to know to optimize your software development cycle
                using VSTS:</p>
            <ol>
                <li>How a bug tracking system should work</li>
                <li>How TFS work items work</li>
                <li>The missing pieces</li>
                <li>Customizing TFS to work in your organization</li>
                <li>Integrating work items and your bug tracking system</li>
                <li>A review of third-party tools</li>
            </ol>
        </li>
        <li><a name="ExtendingCheckPoliciesVSTS"></a>
            <h2>
                Visual Studio 2005 Team System - Extending Check in Policies</h2>
            <p>
                Visual Studio Team System (VSTS) and Team Foundation Server (TFS) combine to integrate
                the whole development cycle from initial design, testing and development as well
                as bug tracking and project management tools.
            </p>
            <p>
                Check in policies can stop developers checking in code that:</p>
            <ul>
                <li>does not comply with existing unit tests</li>
                <li>does not comply Static Code Analysis Rules (aka FXCop)</li>
                <li>is not associated with a Work Item</li>
            </ul>
            <p>
                But what if you want more checks? In this session you will learn about extending
                check in policies and what you can do with them. You will also see the steps that
                were involved for <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> - the first commercial
                check in policy for TFS.
                <br />
                <br />
            </p>
        </li>
        <li>
            <p>
                <a name="DataBindingASP2"></a>
            </p>
            <h2>
                Data Binding in ASP.NET 2.0</h2>
            <p>
                Do you want to connect people to your data? You will learn how to unleash the data
                binding potential of ASP.NET 2.0 to assist you in creating powerful data-driven
                websites in a snap. You will discover how to utilize the newest ASP.NET 2.0 data-bound
                controls to give your users a rich and responsive web experience. You will also
                see how the improved caching works.</p>
            <p>
                Are you ready to be connected? Let us show you how!</p>
        </li>
        <li><a name="FavouriteThirdPartyToolsTFS"></a>
            <h2>
                Favourite Third Party Tools for Team Foundation Server (TFS) and Visual Studio Team
                System (VSTS)</h2>
            <p>
                Learning the big world of Microsoft Team System can be made easier when you know
                the great tools that 3rd party vendors have released. These smart cookies have built
                some great programs and utilities.
            </p>
        </li>
        <li><a name="RealWorldWindowsFormsApps"></a>
            <h2>
                The Top 15 tips for Real World Windows Forms Applications (including &quot;What's
                new for Visual Studio 2005 &quot;)
            </h2>
            <p>
                Creating solid and flexible windows forms applications, only comes from experience.
                Learn the top 15 rules that every developer should follow when making windows applications.
                Adam will demonstrate techniques such as configuration management, the right and
                wrong way of making inherited forms and 3rd party controls. See how to benefit from
                user controls and effective exception management.
                <br />
                <br />
                Also see how Windows Forms 2.0 is a giant step forward. Learn how Windows Forms
                2.0 makes it easy to build professional looking applications and see demonstrations
                of the new Grid, ToolBar, Menu and Layout controls.
                <br />
                <br />
                Learn how less code is more, and how code reuse really reduces your development
                time.</p>
        </li>
        <li>
            <p>
                <a name="ASPPeek"></a>
            </p>
            <h2>
                A big peek at ASP .NET 2.0 Applications</h2>
            <p>
                Adam Cogan will give a talk on: ASP.NET overview, working with data, caching improvements
                to significantly boost the performance of the next generation of ASP.NET applications,
                master pages for consistent web sites, new membership features, and personalization.</p>
        </li>
        <li><a name="PockedPCApplicationsC"></a>
            <h2>
                Building Rich Mobile Applications for Pocket PC 2002
            </h2>
            <p>
                Mobile computing has been a promise for ages. PDAs are a really convenient device
                for many business uses. This session shows how .NET developers can use VS.NET and
                the .NET Compact Framework to create real world applications. This demo will be
                using SQL Server on a handheld device. Along the way Adam will highlight some of
                the features and technologies that you need to be especially careful with and show
                how you can overcome their limitations.
            </p>
        </li>
        <li><a name="IntroductionADONET"></a>
            <h2>
                ADO.NET - Introduction to ADO.NET
            </h2>
            <p>
                ADO.NET is a significant upgrade from ADO, and it changes the techniques for working
                with data. Whether the data is from SQL Server 2005, a Jet MDB file, an XML file,
                or almost any other data source, ADO.NET provides the tools for working with your
                data. This session introduces the basics of ADO.NET, and demonstrates how to retrieve
                and update data.
            </p>
        </li>
        <li><a name="HardcoreADONET"></a>
            <h2>
                ADO.NET Going Hardcore with SQL Server 2005</h2>
            <p>
                This session focuses on one of the hottest new areas in data access development.
                Learn how you can harness Visual Studio .NET's deep XML support with ADO .NET to
                integrate interoperable, robust data access into your applications and components.
                The .NET framework includes many new classes for data access that require a fundamentally
                different way of using data than in ADO classic. This includes relational data,
                XML data, and other data stores, collectively making up the new ADO.NET. It is designed
                to simplify data access, reduce network traffic, and support distributed, disconnected
                applications. You'll find out how to code the ADO .NET to access the data in SQL
                Server 2005 and the use of strongly typed datasets using XSD and SQL Server 2005
                stored procedures.
            </p>
        </li>
        <li><a name="VBNETWindowsService"></a>
            <h2>
                Building a VB.NET Windows Service
            </h2>
            <p>
                Building a Windows Service in VB6 was a tricky affair and so rarely done. With VB.NET,
                the Windows Service is now easier to build and deploy. This session will:
            </p>
            <ul>
                <li>Let you know when you need a Windows Service</li>
                <li>Show you how to build a Windows Service that is a useful real life utility</li>
                <li>Provide tips and tricks for developing Windows Services</li>
                <li>Help you understand .NET remoting</li>
                <li>Assist to to use it for real performance</li>
            </ul>
        </li>
        <li><a name="XMLWebServices"></a>
            <h2>
                XML Web Services in .NET</h2>
            <p>
                Are programming Web Services hard or easy? Is it a real paradigm shift for developers?
                Well you will see how Web Services provide a rich set of components that are easy
                to use. They communicate using standard Internet protocols and are becoming the
                key building blocks for the next generation of both Microsoft Windows or Web based
                applications. In this fast paced session, see how to speed your development by plugging
                Web Services into your own application development projects.
            </p>
        </li>
        <li><a name="DotNetNuke"></a>
            <h2>
                An Examination of DotNetNuke</h2>
            <p>
                <b>Developing a web site...the quick way!</b><br />
                Adam will compare IBuySpy Portal vs DotNetNuke, then he will take a deeper look
                into the new DotNetNuke 2.0, which now offers a mature portal framework that helps
                increase everyday organizational efficiency.
                <br />
                <br />
                DotNetNuke is an open source reference application for everyone from the aspiring
                webmaster to the experienced ASP.NET developer. Adam discusses:<br />
                <br />
            </p>
            <ul>
                <li>The history of the Project </li>
                <li>Multiple Database Support </li>
                <li>Portal Features </li>
                <li>Portal Architecture</li>
                <li>Skinning (via a two-tiered presentation model)</li>
                <li>Module Development </li>
                <li>Run-time extensibility </li>
            </ul>
        </li>
        <li><a name="IBUYSPY"></a>
            <h2>
                An Examination of IBuySpy.com - the .NET Northwind</h2>
            <p>
                www.IBuySpy.com can be considered the &quot;Northwind&quot; of ASP.NET applications.
                As the model for .NET Web apps, this session will step you through the important
                features IBuySpy promotes including:
            </p>
            <ul>
                <li>Cross-browser support for Netscape and Internet Explorer</li>
                <li>Clean code/html content separation using server controls </li>
                <li>High performance catalogue pages that use output caching </li>
                <li>3-tier ADO.NET data access using Stored Procedures </li>
                <li>Forms authentication</li>
                <li>SOAP XML web services</li>
            </ul>
            <p>
                An essential session for advanced ASP.NET developers.
            </p>
        </li>
        <li><a name="VSNETTipsTricks"></a>
            <h2>
                Visual Studio .NET Tips and Tricks
            </h2>
            <p>
                A fun fast-paced session about getting the most from the Visual Studio .NET IDE.
                The Visual Studio development environment is full of new features to make developers
                more productive. Learn the favourite tips and tricks that our own developers use
                in Visual Studio .NET. See examples of how third-party products can extend Visual
                Studio .NET. Learn how to take advantage of the free Web hosting feature. This session
                is 99.9% demo.
            </p>
        </li>
        <li><a name="WindowsAppsVBNET"></a>
            <h2>
                Building Windows Applications with VB.NET
            </h2>
            <p>
                Learn how to take advantage of Visual Studio .NET support for Windows Forms to build
                more powerful Windows apps with SQL Server and connect them to Web Services.
            </p>
            <p>
                This session will detail how to create a VB.NET/ SQL Server desktop database application.
                We will discuss the advantages of VB.NET over Access and VB. You&#8217;ll also learn
                about:
            </p>
            <ul>
                <li>Using .NET as a replacement for Enterprise Manager</li>
                <li>Data Binding in a Windows Form using SQL Server</li>
                <li>How to utilize a UDL and connection strings</li>
                <li>Using the SubMain for application startup</li>
                <li>Using client side sorting and filtering </li>
                <li>Using the new error handling Try-Catch-Finally</li>
            </ul>
            <a name="WebAppsASPNET"></a></li>
        <li>
            <h2>
                Building Web Applications with ASP.NET
            </h2>
            <p>
                ASP.NET is a revolutionary new version of Microsoft's Active Server Pages. It provides
                a wealth of new features that make developers more productive and the applications
                they build faster, more reliable and scalable. There's a lot to learn about ASP.NET
                and this session is devoted to bringing you the latest and best information. You
                will walk away with code samples you can plug into your application.
            </p>
            <ul>
                <li>ASP.NET and the .NET Framework</li>
                <li>Validating Data Using the ASP.NET Validator Controls</li>
                <li>Moving from ASP to ASP.NET</li>
                <li>Building Web Services</li>
                <li>Making Sense of ADO.NET</li>
                <li>ASP.NET Configuration and Deployment</li>
            </ul>
            <p>
                <a href="/SSW/Products/NETTrainingCourse.aspx">Comprehensive list of .NET training topics</a>
            </p>
        </li>
        <li><a name="OfficeWebComponentGraphs"></a>
            <h2>
                Using Office Web Components Graphs in .NET
            </h2>
            <p>
                Too often we expect users to read and understand data in a table instead of showing
                them an easy to understand graph. This was because we had to rely upon expensive
                3rd party charting tools. The new expanded charting function in Office XP Office
                Web Components offers developers a great solution to this problem.
            </p>
            <p>
                This session will show you how to create a dynamically driven graphs in ASP.NET
                with tips and tricks for fine&#8211;tuning your chart with some of the new features
                in OWC 10, such as automatic axis scaling, label orientation, and color control,
                and as well as some of the manual override features. We also discuss the features
                of good and bad charts.
            </p>
        </li>
        <li><a name="AdvancedSmartClients"></a>
            <h2>
                Building Advanced Data-Centric Smart Clients</h2>
            <p>
                Get techniques for performing data validation, dirty' record recognition logic,
                and many other routine capabilities of data applications, with minimal code. See
                the end result: a set of tools and techniques that allow a typical data maintenance
                program to be created in just a few minutes, and also allow it to be extended and
                improved for a specific application.
            </p>
            <a name="XPForDotNetDev"></a></li>
        <li>
            <h2>
                eXtreme Programming for .NET Developers</h2>
            <p>
                Presented by Adam Cogan, this session will cover how to incorporate eXtreme Programming
                practices with .NET- connected technologies to create high quality, low cost software.
                Adam will walk you through the 12 tenants of eXtreme Programming and then tell you
                what works and what doesn't.
                <br />
                How to implement is discussed and demo'ed in the context of Visual Studio .NET.
            </p>
        </li>
        <li><a name="BoostProductivity"></a>
            <h2>
                Boost Your Productivity with the best Microsoft's .NET Application Blocks (Configuration
                &amp; Exception Block)</h2>
            <p>
                All developers need exception management and all developers need to store settings.
                Microsoft has built these two code sets called: Application Blocks to address these
                tasks. They are ready to use but are missing some important functionality. Come
                see how they have been extended, ready for you to insert them straight into your
                applications.
            </p>
        </li>
        <li><a name="AccessToNET"></a>
            <h2>
                Migrating Access Forms to .NET Windows Forms</h2>
            <p>
                Do you have Microsoft Access Database applications in use in your organization?
                Are you challenged with upgrading them to the most recent version or are you looking
                to move the data or reporting into SQL Server for greater reliability and scalability?
                If so, this session is for you. It will help you understand what your options are
                and how to move forward with confidence.
            </p>
        </li>
        <li><a name="ClickOnce"></a>
            <h2>
                Real World ClickOnce</h2>
            <p>
                ClickOnce is a technology that allows developers to write Windows Forms applications
                that utilize the powerful features of the client, yet are as hassle-free to deploy
                and update as a Web page.
            </p>
            <p>
                ClickOnce provides a rich set of easy to use capabilities for deploying and updating
                smart client applications, including lots of options and ways of approaching things.
                Once you understand how to get your application out the door and updated, using
                the myriad of options that ClickOnce provides, lots of other questions arise, including
                how to make it more secure and how things will change in the future.
            </p>
            <p>
                The problem for developers is that ClickOnce provides so much flexibility for getting
                your smart client applications into your users hands. Come learn how to conquer
                the challenges of employing ClickOnce in real world enterprise environments. This
                session will quickly review the process of deploying an application with ClickOnce,
                focusing on what is placed where and what security mechanisms and configuration
                is involved. It will then cover how to move ClickOnce applications from development
                machines onto production servers including the server configuration required and
                the modifications needed to your manifest files.
            </p>
            <p>
                Also covered will be how to version your ClickOnce applications to control who gets
                what version when, as well as how to tighten down security using trusted publishers
                and avoiding user prompting. (The goal being to take the trust decisions out the
                users hands and put them back in control of your enterprise administrators).
            </p>
            <p>
                Strategies for tracking application usage and restricting access to ClickOnce applications
                will also be discussed.
            </p>
        </li>
        <li><a name="ExpWeb"></a>
            <h2>
                Up and Running with Expression Web Designer</h2>
            <p>
                <a target="_blank" href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Tristan.aspx">
                    Tristan Kurniawan</a> is SSW Graphic Designer and the person responsible for
                the Web 2.0 look on SSW and other sites. He will begin by explaining how Microsoft&#8217;s
                latest offering can integrate Web design and development teams. Then Tristan will
                show how to use Expression Web through each stage of a website design and share
                his tips on real-world web development and modern web standards. You will see how
                this is a tool for creating great CSS-based, standards-compliant Web sites.
            </p>
        </li>
        <%--            <li><a name="Atlas"></a>
                <h2>
                    Introduction to Atlas</h2>
                <p>
                    Tim Kremer will demonstrate some of the capabilities of Microsoft's new framework
                    for AJAX, codenamed "Atlas". He will discuss the architecture and the methodology
                    for client and server side development and how to easily "ajaxify" your existing
                    ASP.NET pages.
                </p>
                <p>
                    In subsequent sessions, Tim will dive into:
                </p>
                <ul>
                    <li>Client side control binding</li>
                    <li>data binding</li>
                    <li>server side control extendors</li>
                    <li>and creating your own server side controls with Atlas integration</li>
                </ul>
            </li>
--%>
        <li><a name="CSSBestPrac"></a>
            <h2>
                10 CSS Best Practices</h2>
            <p>
                Sick of style saturation? <a target="_blank" href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Tristan.aspx">
                    Tristan Kurniawan</a>, SSW Graphic Designer, will show you how to apply these
                CSS best practices to regain creative control over the layout and design whilst
                streamlining the process of creating and maintaining your website.</p>
        </li>
        <%--            <li><a name="Atlas"></a>
                <h2>
                    Introduction to Atlas</h2>
                <p>
                    Tim Kremer will demonstrate some of the capabilities of Microsoft's new framework
                    for AJAX, codenamed "Atlas". He will discuss the architecture and the methodology
                    for client and server side development and how to easily "ajaxify" your existing
                    ASP.NET pages.
                </p>
                <p>
                    In subsequent sessions, Tim will dive into:
                </p>
                <ul>
                    <li>Client side control binding</li>
                    <li>data binding</li>
                    <li>server side control extendors</li>
                    <li>and creating your own server side controls with Atlas integration</li>
                </ul>
            </li>
--%>
    </ol>
    <br />
    <h2>
        SQL Server</h2>
    <ol>
        <li><a name="AccesstoSQLServer"></a>
            <h2>
                Planning and Managing Your Smooth Migration from Access to SQL Server
            </h2>
            <p>
                When Access mdb's hit their limit of scalability, corrupting too often and unable
                to handle the number of concurrent users required, it's time to upsize to SQL Server.
                But upsizing your application involves a lot more than running the Upsizing Wizard...
            </p>
            <p>
                This session will demonstrate what changes to make to your application before running
                the Upsizing Wizard and what to do after. You will be walked through development
                tools, application interface changes, query design and stored procedures to bring
                scalability for more users. You'll begin by learning how to:
            </p>
            <ul>
                <li>Maximise the benefits of MS SQL server in your application </li>
                <li>Upsize MS Access applications to MS SQL Server/MSDE while maintaining the user interface
                    in Access </li>
                <li>Design efficient applications for MS SQL Server </li>
                <li>Weigh up when to use the new ADP Access 2000 option as opposed to link tables </li>
                <li>Move processes to stored procedures (action queries) and views </li>
                <li>Use triggers for de-normalised fields</li>
            </ul>
        </li>
        <li><a name="Top15SQLServerDBATasks"></a>
            <h2>
                Top 15 SQL Server DBA Tasks for SQL Server 2005</h2>
            <p>
                Examine how to automate your SQL Server 2005 servers and set them on &quot;auto-pilot&quot;
                for routine tasks. Examine how best to take advantage of the DBMaint utility to
                automate your backups and reorgs. Take a look at how to configure your alerts and
                operators to get proper notifications when events occur. Examine administering proper
                security, testing your restores, and routine performance monitoring/tuning. Examine
                resources to help you diagnose problems as they occur on your SQL Servers.
            </p>
        </li>
        <li><a name="SQLServerNotifications"></a>
            <h2>
                Microsoft SQL Server 2005 Notification Services</h2>
            <p>
                Come learn about the premier platform for developing and deploying a new class of
                scalable Web applications that deliver personalized, timely information updates
                to a variety of mobile devices.</p>
        </li>
        <li><a name="BestTools"></a>
            <h2>
                The best tools to Audit Your SQL Server Database - The &quot;SQL 2000 Best Practices
                Analyzer&quot;</h2>
            <p>
                Microsoft recently released a tool called &quot;Best Practices Analyzer&quot;. All
                SQL Server developers and administrators should run this tool. Come learn about
                many issues you can't afford to ignore from Database Design and SQL Server 2005
                Readiness to T-SQL issues and poor Configuration choices.
            </p>
            <p>
                This is a great session for everyone - from the new SQL Server developer to the
                old DBA! You'll all be impressed when you see how to run the tool and how to fix
                the identified issues.</p>
        </li>
        <li><a name="WritingNewsletterApplications"></a>
            <h2>
                Writing a Newsletter application with Microsoft SQL Server 2005 Notification Services</h2>
            <p>
                Come see a session using SQL Server Notification Services. During this session you
                will see the code to develop a number of Event Providers. It is a new way of developing
                and deploying scalable Web applications that deliver personalized, timely information
                updates to a variety of devices. The version we will build, will monitor web pages
                and deliver HTML emails.
            </p>
        </li>
        <li><a name="SQLServer2000"></a>
            <h2>
                Design and Implement Database Solutions Using Microsoft SQL Server
            </h2>
            <p>
                Microsoft SQL Server has set the fastest TCP-C Performance record ever and is setting
                itself as the preferred database for both developer and industry. In this session
                you'll learn to:
            </p>
            <ul>
                <li>Plan and initiate a logical data model</li>
                <li>Create solutions for performance, maintainability, and scalability</li>
                <li>Implement stored procedures and triggers</li>
                <li>Develop and maintain explicit, implicit, and distributed transactions to ensure
                    data integrity</li>
                <li>Run Index Tuning Wizard and Database Maintenance Wizard</li>
                <li>Utilize SP Mail as the most powerful work-horse in your application</li>
                <li>Use DTS (Data Transformation Services) effectively </li>
            </ul>
        </li>
        <li><a name="3rdPartyToolsSQLServer"></a>
            <h2>
                Favourite 3rd Party Tools for SQL Server
            </h2>
            <p>
                Microsoft's tools don't have all the answers. Let someone else's hard work save
                you time in SQL Server development. Adam reviews some of the best SQL Server tools
                on the market from Red-Gate, Lecco, Embarcadero, FMS and others.
            </p>
        </li>
        <li><a name="SQLIndexing"></a>
            <h2>
                SQL Server 2005: Advanced Indexing Strategies</h2>
            <p>
                In this session we look at a fast-paced collection of indexing tips and tricks based
                on an already optimized base table structure. How you create your base table - as
                well as cluster it - has a big impact on that table's performance.
            </p>
            <p>
                Once the base table structures have been defined and you have to further improve
                system performance, where do you look and how do you do this? In this session we
                will talk about targeting both the known and finding the unknown performance problems.
                Once you know where the problems are we'll go through numerous options to improve
                the performance using indexes.
            </p>
        </li>
    </ol>
    <h2>
        Office</h2>
    <ol>
        <li>
            <h2>
                <a name="office2007newdifferent"></a>What's new and different in Office 2007?</h2>
            <p>
                In this fun and informative session, you will discover the upcoming suite of tools
                in Office 2007. You will be led through the new features including:</p>
            <ul>
                <li>New collaboration capabilities that enable workers to more easily share, access
                    and synchronize information and documents across a wide range of devices</li>
                <li>Improved Business Intelligence capabilities such as OLAP reporting within Excel
                    2007</li>
                <li>New User Interface to streamline access to common functions</li>
                <li>Extensible XML-based file formats and improved XML support</li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="SharePoint2007"></a>Getting Started with Microsoft Office SharePoint Server
                2007 (Beta)
            </h2>
            <p>
                In this session, we will explore the design goals and features of Office SharePoint
                Server 2007. You also manage documents and Web content using Office SharePoint Server
                2007. We will cover:
            </p>
            <ul>
                <li>The design goals and features of Office SharePoint Server 2007</li>
                <li>How to manage documents and Web content using Office SharePoint Server 2007</li>
                <li>The Office SharePoint Server 2007 features for organizing and finding data</li>
                <li>How to implement business solutions using Office SharePoint Server 2007</li>
            </ul>
        </li>
        <li>
            <h2>
            <a name="AccessAndSharePoint"></a>How to use Access 2007 and SharePoint 2007 together
            </h2>
            <p>
            SharePoint 2007 and Access 2007 have had an enormous amount of work done in this version 
            and they work together beautifully.
            </p>
            <p>
            SharePoint 2007 to many is a web version of Access. Come see Adam Cogan show you how you have
            a lot of options including:                      
            <ul>
                <li>using SharePoint data in your Access solution</li>
                <li>using Access to report on your SharePoint data</li>
                <li>upsizing your access data to SharePoint and then continue with Access as the frontend</li>
                <li>upsizing your entire Access solution to SharePoint and then finish using 
                Access as your platform</li>
            </ul>
            </p>
            <p>
            In addition we will look at using SharePoint data in other Office applications.
            </p>
        </li>
        <li>
            <h2>
                <a name="SmartTags"></a>Connect your enterprise data to Microsoft Office with VS.NET
                (aka Smart Tags)</h2>
            <p>
                Wondering how to develop better Word, Outlook and Excel solutions that can either
                communicate over XML Web Services or automatically make your applications more productive
                through intelligent hyperlinks? Smart tags provide a way to connect directly to
                your database. With or without defined terms you can associate user actions right
                from within these applications. We will build a real world solution from woah to
                go. Smart tags work by recognizing certain types of text and then offering related
                functions and commands - this session will cover both topics: Smart Tags and XML
                Web Services in Word, Outlook and Excel. Join us on the journey as we teach you
                how easy it now is to build interactive applications that leverage XML web services
                inside Word, Outlook and Excel, and extend these applications with Add-ins.
            </p>
        </li>
        <li>
            <h2>
                <a name="BuildonAccess"></a>Build on Your Knowledge of Microsoft Access
            </h2>
            <p>
                Microsoft Access plays an integral role in the Microsoft Office suite. Small-to-Medium
                enterprises still use the familiar Access front-end as the centre-piece for their
                database systems. For developers wanting to keep this valuable market, a knowledge
                of Access is an invaluable tool for rapid development. This session can go hand-in-hand
                with the Access to SQL Server Upsizing session.
            </p>
            <ul>
                <li>Design and develop quality solutions with Microsoft Access</li>
                <li>Build on your knowledge of using Access </li>
                <li>Leverage the strengths of Access to build powerful applications</li>
                <li>Maximise form and report events to enable outcomes</li>
                <li>Develop better shrink wrapped applications</li>
                <li>Modulise/genericise your development for easy reuse and/or smaller deployments</li>
                <li>What's new in Access 10 (2001)</li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="MSAccess2007"></a>Microsoft Office Access 2007
            </h2>
            <p>
                <a href="/ssw/Employees/employeesprofile.aspx?EmpID=AC">Adam Cogan</a> will cover
                Microsoft Office Access' 2007 new and improved features which can help you:
            </p>
            <ul>
                <li>Provide the ability to get you started quickly with prebuilt applications that can
                    be modified or adapted to changing business needs</li>
                <li>Track and report information with ease</li>
                <li>Integrate Access 2007 with SharePoint</li>
                <li>Collect information through forms in email or import data from external applications.</li>
            </ul>
        </li>
    </ol>
    <h2>
        Other</h2>
    <ol>
        <li><a name="WSS"></a>
            <h2>
                Windows SharePoint Services</h2>
            <p>
                In this session, SSW will provide an introduction to Windows SharePoint Services
                with the aim of evaluating its effectiveness for Enterprise Content Management (ECM).</p>
            <p>
                We will also look at document and record management scenarios and taking advantage
                of the rich new Workflow and Content Management System.</p>
        </li>
        <li><a name="HealthyCode"></a>
            <h2>
                15 Rules to Better Code + Tools to Keep your Code Healthy (including FX Cop)</h2>
            <p>
                Are you looking to eradicate bugs and ensure consistency? Learn how to take control
                of your code, ensuring large, complex source code can be simplified, cleaned and
                maintained. The focus is on the most popular .NET languages (C#, VB.NET) for both
                Windows Forms and ASP.NET; however, you will learn how to maintain quality code
                in any language.<br />
                <br />
                As a project or company grows, managing code standards throughout your team becomes
                virtually impossible. Consistent code is crucial to future development and maintenance.
                Learn how to review your web apps and projects.</p>
            <p>
                The tools we will explore include FX Cop, SSW Code Auditor, and Re-Sharper.</p>
        </li>
        <li><a name="RulestoBetterCode"></a>
            <h2>
                Rules to Better Code and Successful Projects
            </h2>
            <p>
                Managing a team of coders can be a tricky experience, especially as most coders
                like to do things their own way. During this session we go through a list of rules
                that help make the development process as smooth as possible. These rules govern
                the creation of specifications and schedules, best methods for testing and fixing
                bugs and even the employees working conditions.
            </p>
        </li>
        <li><a name="eXtremeProgramming"></a>
            <h2>
                Great solutions via Extreme Programming (XP)
            </h2>
            <p>
                Extreme Programming is NOT extreme - it is a discipline of software development
                based on values of simplicity, communication, feedback, and courage. It works by
                bringing the whole team together in the presence of simple practices, with enough
                feedback to enable the team to see where they are and to tune the practices to their
                unique situation.
            </p>
            <p>
                In this session we are going to cover all of the practices of Extreme Programming
                including Pair Programming and Test-First Development. While Adam Cogan will be
                showing you how it works in the .NET environment, these principles work regardless
                of the development environment.
            </p>
        </li>
        <li><a name="BetterSpecs"></a>
            <h2>
                An A - Z on Writing Better Specs
            </h2>
            <p>
                Skipping the spec writing phase is all too common in the software industry. Adam
                will teach you how to write one so you get a happier client and write better code
                along the way. At the end he will share a whole bunch of tips and tricks you can
                start using straight away.
            </p>
        </li>
        <li><a name="Components"></a>
            <h2>
                Component-based Design and .NET</h2>
            <p>
                This course presents an introduction to the Component-based features of Visual Basic
                .NET &amp; C#, and advanced topics such as connecting objects to a database using
                ADO.NET, architecting great .NET applications, building components. It starts with
                the basics of object-oriented techniques in .NET, including building a class and
                creating and using objects from the class. It then details many of the new features
                of .NET such as parameterized constructors, function overloading, static class data,
                inheritance and inheritance-based polymorphism.
            </p>
            <ul>
                <li>What does .NET do to replace COM and COM+.</li>
                <li>What functionalities does .NET provide e.g. remoting, assemblies work and how the
                    development paradigm from VB6 and C++ has changed.</li>
                <li>Overview of how UML can be used to describe components that you're building.</li>
            </ul>
        </li>
        <li><a name="SharePoint"></a>
            <h2>
                Developing for Microsoft SharePoint Portal (Tahoe) Server and the Web Storage System</h2>
            <p>
                Adam Cogan will introduce you to the ins and outs of SharePoint, including how it
                can help with both enterprise portal/search as well as document management solutions.
                You'll learn how SharePoint can provide for relatively simple development of departmental
                Web Storage System solutions. All the while, he'll illustrate these key features
                with live demonstrations, examples and code!
            </p>
        </li>
        <li><a name="3rdPartyTools"></a>
            <h2>
                Favourite Third Party Tools
            </h2>
            <p>
                In the big world of Microsoft it's easy to forget that there are a lot of other
                smart cookies out there building great programs and utilities. You could spend hours
                scouring the net for the latest .exe or you could save time and let Adam show you
                the best new tools around. These tools will help you write code quicker, upsize
                faster than ever before, and build better ASP.NET 2.0 pages, along with dozens of
                other useful tricks that will no doubt save you time if you're developing in Windows
                Forms, ASP.NET, SQL Server or Access.</p>
        </li>
        <li><a name="CRM"></a>
            <h2>
                Microsoft Customer Relationship Management (CRM)
            </h2>
            <p>
                <a href="/ssw/Employees/employeesprofile.aspx?EmpID=AC">Adam Cogan</a> will introduce
                Microsoft CRM which has been designed to provide a complete suite of powerful marketing,
                sales, and customer service capabilities, all with a familiar and consistent user
                experience based on Microsoft Office and the Microsoft Office Outlook messaging
                and collaboration client.
            </p>
            <p>
                The session will be broken into the following sections:
            </p>
            <ul>
                <li>Up and Running on Microsoft CRM</li>
                <li>Experiences with customizing and extending CRM</li>
                <li>Using Workflow in CRM</li>
                <li>Planning for Microsoft CRM 4 (aka Titan)</li>
            </ul>
            <br />
        </li>
    </ol>
    <h2>
        Day-long Courses</h2>
    <ol>
        <li><a name="DayLongRS2005"></a>
            <h2>
                Creating Reporting Solutions Using Microsoft SQL Server 2005 Reporting Services</h2>
            <p>
                No doubt that by now you have heard of Microsoft SQL Server Reporting Services -
                Microsoft's solution to the web reporting problem. Join Microsoft Regional Director
                and SSW Chief Architect <a href="/ssw/Employees/employeesprofile.aspx?EmpID=AC">Adam
                    Cogan</a> as he takes you through the basics of Reporting services, managing
                your report content, administering your reports as well as adding custom code. More
                on <a href="/ssw/Events/2005ReportingServices/">Creating Reporting Solutions in Reporting
                    Services 2005</a>
            </p>
        </li>
    </ol>
    <h2>
        Discontinued</h2>
    <span class="strike">
        <ol>
            <li><a name="UsabilityWebForms"></a>
                <h2>
                    Usability - Rules to Better Web Forms</h2>
                <p>
                    Are you looking to eradicate bugs and ensure consistency? Learn how to take control
                    of your code, ensuring large, complex source code can be simplified, cleaned and
                    maintained. The focus is on the most popular .NET languages (C#, VB.NET) for both
                    Web Forms and ASP.NET; however, you will learn how to maintain quality code in any
                    language.<br />
                    <br />
                    As a project or company grows, managing code standards throughout your team becomes
                    virtually impossible. Consistent code is crucial to future development and maintenance.
                    Learn how to review your web apps and projects.</p>
                <p>
                    The tools we will explore include FX Cop and SSW Code Auditor.</p>
            </li>
            <li><a name="ExcelAdvanced"></a>
                <h2>
                    Advanced MS Excel (For Power-Users)</h2>
                <p>
                    This topic will help power-users get the most out of Excel and includes the following
                    material:
                </p>
                <ul>
                    <li>Create a database using only Excel</li>
                    <li>Sort a database</li>
                    <li>Perform multiple sorts</li>
                    <li>Use the Data Form</li>
                    <li>Locate records</li>
                    <li>Delete records</li>
                    <li>Use compound criteria </li>
                    <li>Extract unique records</li>
                    <li>Use database functions</li>
                    <li>Import &amp; export data</li>
                    <li>Formula auditing</li>
                    <li>Add Auto Filter to apply filters to a database to display specified data</li>
                    <li>Specify conditions that apply designated formatting to cells that meet the conditions
                    </li>
                    <li>Create Custom Lists that can be automatically inserted into a worksheet</li>
                    <li>Design custom number formats</li>
                    <li>Link and embed Word objects</li>
                    <li>Record Macros to automate repetitive tasks</li>
                    <li>Work with multiple workbooks</li>
                    <li>Create Pivot Tables to display data from different perspectives</li>
                    <li>Create templates (pre-designed forms)</li>
                    <li>Customize toolbars</li>
                </ul>
            </li>
            <li><a name="XMLNTier"></a>
                <h2>
                    Utilizing XML as the Solution for n-Tier Development
                </h2>
                <p>
                    This session will highlight and detail how and where XML can be utilized within
                    data tiers. We will discuss the advantages of XML over DCOM and MTS/COM+. You&#8217;ll
                    also be given a snapshot profile on how to:
                </p>
                <ul>
                    <li>Build stateless objects with XML via ADO</li>
                    <li>Design COM objects to use XML efficiently</li>
                    <li>Develop an N-tier solution that can use the Internet as its network </li>
                    <li>Build highly scalable distributed applications</li>
                    <li>Use Data Islands for &quot;rich&quot; browser development</li>
                </ul>
            </li>
            <li><a name="XMLeBusiness"></a>
                <h2>
                    XML &amp; e-Business
                </h2>
                <p>
                    XML brings power, flexibility and interoperability to Web-based applications and
                    provides developers and users with an industry standard for expressing structured
                    data. XML, a standard developed by the World Wide Web Consortium (W3C), is viewed
                    as the cornerstone technology for building e-business applications. This sessions
                    looks at how developers can use XML in their applications.
                </p>
                <ul>
                    <li>Where you will be using XML</li>
                    <li>Assigning attributes</li>
                    <li>Defining tags</li>
                    <li>Entity references</li>
                    <li>Processing instructions</li>
                    <li>Validation/document type definitions </li>
                </ul>
                <p>
                    Then you'll advance into:
                </p>
                <ul>
                    <li>Uniquely tagging data with XML</li>
                    <li>Developing flexible web applications</li>
                    <li>Incorporating XML into your Access and Visual Basic Applications</li>
                    <li>Integrating data from multiple, disparate sources and building three-tiered Web-enabled
                        applications </li>
                </ul>
            </li>
            <li><a name="ADO"></a>
                <h2>
                    Get to know ALL about ActiveX Data Objects (ADO)</h2>
                <p>
                    ActiveX Data Objects (ADO) is Microsoft's strategic, high-level interface for all
                    kinds of data. ADO provides the fastest, easiest and most productive means for accessing
                    both relational and non-relational data. You'll review the ADO object model, and
                    the role of the Connection, Command, Recordset, and Parameters objects. Learn how
                    to use ADO to build database solutions in Access, Visual Basic, and Office.
                </p>
                <ul>
                    <li>What is ADO?</li>
                    <li>Assessing when to use ADO and when to use DAO</li>
                    <li>Understanding connection strings to ensure your code will work with any back-end</li>
                    <li>Minimising network traffic via ADO access over the Internet and Intranets</li>
                </ul>
                <p>
                    Build on your skill set by:
                </p>
                <ul>
                    <li>Creating recordsets</li>
                    <li>Updating recordset data, deleting records and working with multiple result sets</li>
                    <li>Creating and using Command Objects</li>
                    <li>Developing a constant connection to your datasource </li>
                </ul>
            </li>
            <li><a name="AdvancedADO"></a>
                <h2>
                    Advanced ADO
                </h2>
                <p>
                    Catapult your working knowledge of ADO through this intensive session packed full
                    of key features. To name a few:
                </p>
                <ul>
                    <li>Executing a stored procedure
                        <ul>
                            <li>input and output parameters</li>
                            <li>return values </li>
                        </ul>
                    </li>
                    <li>Utilizing prepared statements</li>
                    <li>Returning multiple result sets to a single Recordset object</li>
                    <li>Using ADO to support complex cursors, including batch, client and server side cursors</li>
                    <li>Using batch updating</li>
                    <li>Generating multiple result sets</li>
                    <li>Working with Persistent Recordsets</li>
                    <li>Asynchronous Operations</li>
                    <li>Using ADOx for Data Definition Language (DDL) operations </li>
                </ul>
            </li>
        </ol>
    </span>
</asp:Content>

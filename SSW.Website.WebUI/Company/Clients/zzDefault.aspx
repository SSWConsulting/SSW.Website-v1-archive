<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="SSW.Website.WebUI.Raven" Title="Our Clients' Stories - SSW Consulting" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Our Clients' Stories</h1>
    <h2>Software solutions to business needs and objectives</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincontentfull" runat="server">
    <div class="section">
        <p>For over a decade, SSW has worked closely with a variety of Australian and international clients, tailoring software solutions to business needs and objectives. We have amassed a wealth of technical knowledge and are considered the experts in developing solutions using the latest Microsoft technologies including:</p>
        <ul>
            <li>Microsoft .NET (Web API, ASP .NET MVC, C#)</li>
            <li>Angular, React, Vue</li>
            <li>SQL Server, Access</li>
            <li>Exchange Server, SharePoint, Office 365</li>
        </ul>
        <p>SSW has built custom software solutions that vary in size and complexity, for both large multinational companies and also SME's. As a software solutions provider or an outsourced IT department SSW have proved to be the ideal partner for organizations that lack the technical expertise to compete in an increasingly competitive and dynamic global economy.</p>
        <p>Read some of <a href="/SSW/Testimonials/">SSW clients' testimonials</a>.</p>
        <p><i class="fa fa-youtube"></i> Watch the <a href="https://youtube.com/playlist?list=PLpiOR7CBNvlovBGeEB3vVhYzVWYnkFpA-">SSW Consulting Clients' Stories playlist</a> on SSW TV.</p>
    </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="asideleft" runat="server">
    <h3 class="filter-header"><a name="filter"></a>Pick an industry...</h3>
    <ul id="filters" class="option-set">
        <li><a href="#filter" data-filter=".all" class="selected">All SSW Clients</a></li>
        <li><a href="#filter" data-filter=".edu">Education</a></li>
        <li><a href="#filter" data-filter=".insurance">Insurance</a></li>
        <li><a href="#filter" data-filter=".finance">Finance</a></li>
        <li><a href="#filter" data-filter=".tech">Technology</a></li>
        <li><a href="#filter" data-filter=".transport">Transport</a></li>
        <li><a href="#filter" data-filter=".manufacturing">Manufacturing</a></li>
        <li><a href="#filter" data-filter=".consultants">Consulting</a></li>
        <li><a href="#filter" data-filter=".gov">Government</a></li>
        <li><a href="#filter" data-filter=".hospitality">Hospitality</a></li>
        <li><a href="#filter" data-filter=".mining">Mining</a></li>
        <li><a href="#filter" data-filter=".construction">Construction</a></li>
        <li><a href="#filter" data-filter=".legal">Legal</a></li>
        <li><a href="#filter" data-filter=".food">Food</a></li>
        <li><a href="#filter" data-filter=".healthcare">Health</a></li>
        <li><a href="#filter" data-filter=".environment">Environmental</a></li>
        <!--<li><a href="#filter" data-filter=".retail">Retail</a></li> Commented because there are no clients using it-->
        <li><a href="#filter" data-filter=".communication">Communication</a></li>
        <li><a href="#filter" data-filter=".logistics">Logistics</a></li>
        <li><a href="#filter" data-filter=".pharma">Pharmaceuticals</a></li>
        <li><a href="#filter" data-filter=".hr">Recruitment, HR</a></li>
        <li><a href="#filter" data-filter=".security">Security</a></li>
        <li><a href="#filter" data-filter=".agricultural">Agricultural</a></li>
        <li><a href="#filter" data-filter=".sports">Sports</a></li>        
        <li><a href="#filter" data-filter=".energy">Energy</a></li>
        <li><a href="#filter" data-filter=".entertainment">Entertainment</a></li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="maincontent" runat="server">
    <div id="isotope" class="clients">
        <div class="grid" style="width:100%;"></div>
        
        <div class="item healthcare edu tech all">
                <div class="ourHolder-text isotope-header">
                    <h2>Shepherd Centre</h2>
                    <div class="logoClient">
                        <a href="https://shepherdcentre.org.au/" target="_blank" class="ignore" class="ignore"><img src="../Images/Clients/shepherdcenter-logo.jpg" alt="Shepherd Centre" align="left" /></a>
                    </div>
                    <p>A new software developed by SSW is helping deaf kids at the Shepherd Centre. Watch the Case Study video:</p>
                    <iframe width="682" height="384" src="https://www.youtube.com/embed/g4_MnAZJpxg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/Shepherd-Centre.aspx">Read the Case Study</a> 
                    </div>
                </div>
        </div>

        <div class="item agricultural all">
                <div class="ourHolder-text isotope-header">
                    <h2>AuctionsPlus</h2>
                    <div class="logoClient">
                        <a href="http://auctionsplus.com.au/" target="_blank" class="ignore"><img src="../Images/AuctionsPlus-logo.jpg" alt="AuctionsPlus" align="left" /></a>
                    </div>
                    <p>AuctionsPlus is a service provider for electronic online auctions.</p>
                    <p>Established in the mid-1980s, AuctionsPlus runs Australia’s largest online auction for the agricultural industry. AuctionsPlus approached SSW to re-develop their existing online auction site in the latest technologies. SSW delivered a faster system that could handle much more load in a streamlined, intuitive experience that amazed the end users. AuctionsPlus was happy to decommission the old site.</p>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/AuctionsPlus.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div> 
        
        <div class="item tech healthcare all">
                <div class="ourHolder-text isotope-header">
                    <h2>Hutchison Weller</h2>
                    <div class="logoClient">
                        <a href="https://hutchisonweller.com/" target="_blank" class="ignore"><img src="../Images/Clients/hutchisonweller-logo.jpg" alt="Hutchison Weller" align="left" /></a>
                    </div>
                    <p>How SSW helped Hutchison Weller to develop a web application that is helping project managers and construction companies in Australia to save time, money and to greatly increase flexibility for their team. Watch the Case Study video:</p>
                    <iframe width="682" height="384" src="https://www.youtube.com/embed/wiFadV5SOPc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/HutchisonWeller.aspx">Read the Case Study</a> 
                         <a class="next btn" href="/SSW/Consulting/Are-You-Stuck.aspx">Stuck on legacy technology?</a>
                    </div>
                </div>
        </div>

        <div class="item healthcare edu tech all">
                <div class="ourHolder-text isotope-header">
                    <h2>University of Sydney</h2>
                    <div class="logoClient">
                        <a href="https://sydney.edu.au/" target="_blank" class="ignore"><img src="../Images/Clients/syduni-logo.jpg" alt="Sydney University" align="left" /></a>
                    </div>
                    <p>High quality breast imaging and accurate image assessment are critical to the early diagnoses, treatment and management of women with cancer. Mammography is the primary diagnostic tool for detecting breast cancer with 800,000 women X-rayed annually in Australia; however, it fails to detect 30% of breast cancers, with many missed cancers being visible on the image. SSW build the training platform for BreastScreen Reader Assessment Strategy (BREAST), which monitors mistakes, identifies reasons for mammographic errors and creates innovative solutions to reduce errors. Watch the Case Study video:</p>
                    <iframe width="682" height="384" src="https://www.youtube.com/embed/rf7zzTMeTf4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/SydneyUni.aspx">Read the Case Study</a> 
                         <a class="next btn" href="/SSW/Consulting/Are-You-Stuck.aspx">Stuck on legacy technology?</a>
                    </div>
                </div>
        </div>

        <div class="item transport all">
                <div class="ourHolder-text isotope-header">
                    <h2>Toll Transport</h2>
                    <div class="logoClient">
                        <a href="http://www.tollgroup.com/" target="_blank" class="ignore"><img src="../Images/Clients/toll-logo.jpg" alt="Toll Transport" align="left" /></a>
                    </div>
                    <p>Toll Transport is one of Australia's largest logistics and trucking companies. Toll comprises a network of businesses that work individually and collectively to deliver optimal logistics solutions across all industry sectors.</p>
                    <p>Toll was looking to track and understand the movements of their Toll Linehaul fleet across the country. They needed to optimise the travel to reduce costs, meet government compliance, and manage their trucks and drivers.</p>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/Toll.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div>

        <div class="item consultants all">
                <div class="ourHolder-text isotope-header">
                    <h2>PwC</h2>
                    <div class="logoClient">
                        <a href="https://www.pwc.com.au/" target="_blank" class="ignore"><img src="../Images/Clients/pwc-logo.jpg" alt="PwC" align="left" /></a>
                    </div>
                    <p>PwC approached SSW to take an internally developed Excel application driven by macros, that assisted their clients in producing tax returns, and turn it into a fully fledged core application for PwC to help clients manage their tax obligations in an automated fashion. The initial scope of the application was to service the Australian market with the intention to expand to other markets globally.</p>
                    <p>It has grown to cater for tax obligations in Australia, New Zealand, Canada, Switzerland, United Kingdom, India, Singapore, Mexico and other European countries and has been successfully deployed to over 50 large organizations.</p>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/PwC.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div>

        <div class="item healthcare all">
                <div class="ourHolder-text isotope-header">
                    <h2>Bupa</h2>
                    <div class="logoClient">
                        <a href="http://www.bupa.com.au/" target="_blank" class="ignore"><img src="../Images/Clients/bupa-logo.jpg" alt="Bupa" align="left" /></a>
                    </div>
                    <p>Bupa is one of the largest providers of health cover in Australia. Bupa's agents handle hundreds of insurance claim cases every day. They used to use Excel to connect to their database to track and update those claim cases, which is slow, crashed easily, no security restriction and not user friendly.</p>
                    <p>SSW created a user friendly interface for agents to manage cases more efficiently. We integrated with their existing membership database and built the system with case status workflow logic at the backend.</p>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/Bupa.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div>

        <div class="item edu all">
                <div class="ourHolder-text isotope-header">
                    <h2>TAFE</h2>
                    <div class="logoClient">
                        <a href="https://www.tafensw.edu.au/" target="_blank" class="ignore"><img src="../Images/Clients/tafe-logo.jpg" alt="TAFE" align="left" /></a>
                    </div>
                    <p>The Northern Sydney Institute, part of TAFE NSW, is one of Australia’s leading providers of vocational training and tertiary education.</p>
                    <p>Many websites are needed for the Institute, with websites for the brand, international versions, and microsites for subdivisions.</p>
                    <p>The websites require a lot of maintenance and constant content changes. Prior to SSW developing the Sitefinity solution, this was all done manually within a small IT team.<br />
                        A CMS was desperately needed to allow subdivisions to update their sites and content directly (with an approval workflow).</p>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/TAFE.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div>

        <div class="item entertainment all">
                <div class="ourHolder-text isotope-header">
                    <h2>Event Cinemas</h2>
                    <div class="logoClient">
                        <a href="https://www.eventcinemas.com.au/" target="_blank" class="ignore"><img src="../Images/Clients/event-cinemas-logo.jpg" alt="Event Cinemas" align="left" /></a>
                    </div>
                    <p>Event Cinemas is Australia’s leading Cinema company.</p>
                    <p>They were looking to revamp their website with a new look and feel with the added ability to drive the site via a new CMS. Six different CMS options were assessed and Telerik’s Sitefinity was chosen.</p>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/EventCinemas.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div>

        <div class="item finance all">
                <div class="ourHolder-text isotope-header">
                    <h2>Commonwealth Bank of Australia</h2>
                    <div class="logoClient">
                        <img src="../Images/CommBankLogo.gif" alt="Commonwealth Bank of Australia" />
                    </div>
                    <p>CBA is one of Australia's largest banks, and it employs thousands of people Australia wide. SSW developed an intranet based ASP.NET solution to help them better manage their staffing timesheets and allow HR to better track employee performance and work expectations.</p>
                    <p>The project was written in .NET with a MS SQL Server backend. It was written in a combination of both VB.NET (for the front-end plus security) and C# (for data access and business logic). The website needed to be very rich in terms of the client interaction, it was originally slated as a Windows Forms project but for various reasons it ended up being web based. This meant that large effort was put into developing and using rich controls with considerable client-side functionality.</p>
                    <p>An interesting challenge of this project involved the security implementation, whereby the system had to not only allow integrated (Windows) if possible to allow users to be identified without needing to enter a sign in prompt, but it also had to share its authentication and authorization logic with any number of external applications. This means that the authentication and authorization process talks to up to 3 different web services in order to log a user in.</p>
                    <p>Implementing the database schema also threw up a number of challenges including an interesting modeling of the organizational hierarchy and our ability to efficiently query parent-child and parent-descendent relationships within the self-referencing data.</p>
                    <p>The CommTrack application is now expected to serve some thousands of internal users throughout their day and feed into a greater data warehouse to enable advanced management reporting. It is a massive improvement over an existing system of manual spreadsheet maintenance. When the full rollout is complete, CommTrack is expected to give CBA investment returns in the range hundreds of thousands of dollars per year through increased staff productivity and process improvements.</p>
                    <div class="testimonialsOurClients">
                        <blockquote>A quick note to say thanks for all the work on CommTrack and support for the implementation. The app is getting very good reviews from the user base and we have a queue of people lined up nationally wanting to get on and use it. Your part of the larger project has progressed very well (in contrast to roadblocks and pain elsewhere). I wanted to make sure you knew that I recognized a job well done by the SSW and CBA folks.<span>Simon Renton - Retail Operations - Manager Finance and modeling, Commonwealth Bank</span></blockquote>
                    </div>
                </div>
        </div>

        <div class="item insurance all">
                <div class="ourHolder-text isotope-header">
                    <h2>NRMA</h2>
                    <div class="logoClient">
                        <a href="http://www.nrma.com.au"><img src="../Images/NRMA.jpg" alt="NRMA" /></a>
                    </div>
                    <p>The NRMA organization provides a Community Grants Program annually, and when the NRMA came to SSW the records in a legacy database were difficult to report on and maintain. One of the key issues faced by the NRMA community grants team was keeping the records of organizations consistent across several years, when it is common for office bearers to change, and for each organization to create separate registrations making reporting difficult if not impossible for periods beyond the current year.</p>
                    <p>The solution provided by SSW comprised a custom website written in Microsoft ASP.NET Dynamic Data and with an SQL Server backend. Reporting was built on top of Microsoft Reporting Services. A key feature of the system was a mechanism to identify "re-registration" events when someone tries to register for an organization that is already in the system.</p>
                    <p>NRMA now have a secure database for recording the community grants data which is easier to use and maintain that the old system. This system incorporates a mechanism that avoids most cases of organization duplication, and so reporting is reliable across multiple years for the same organization. NRMA have successfully used the system for the first year of its operation, and are looking forward to using it for the next and subsequent years.</p>
                    <p>We used these technologies: Microsoft ASP.NET Dynamic Data, SQL Server, and Microsoft Reporting Services.</p>
                </div>
        </div>

        <div class="item healthcare all">
                <div class="ourHolder-text isotope-header">
                    <h2>Medibank</h2>
                    <div class="logoClient">
                        <a href="https://www.medibank.com.au/" target="_blank" class="ignore"><img src="../Images/Clients/medibank-logo.png" alt="Medibank" align="left" /></a>
                    </div>
                    <p>Medibank Private engage SSW to help implement ALM and DevOps for their internal application development, testing and support. Their currently process involved numerous manual steps and had to involved many different departments to coordinate the development, deployment and testing resources for their application. This was a highly inefficient process.</p>
                    <p>SSW implemented TFS with Test Manager and Lab Manager for Medibank Private. This process streamlined an automated their development pipeline from weeks to create a release to under a day.</p>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/Medibank.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div>

        <div class="item edu all">
                <div class="ourHolder-text isotope-header">
                    <h2>Brisbane Catholic Education</h2>
                    <div class="logoClient">
                        <a href="https://brisbanecatholic.org.au/" target="_blank" class="ignore"><img src="../Images/Clients/bce-logo.jpg" alt="BCE" align="left" /></a>
                    </div>
                    <p>A Case Study of the strategic planning tool SSW did for all of their schools administrators across South-East Queensland. Watch the Case Study video:</p>
                    <iframe style="clear:both;" width="682" height="384" src="https://www.youtube.com/embed/Mc24zR5rprI?rel=0" frameborder="0" allowfullscreen></iframe>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/BCE.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div>

        <div class="item finance all">
                <div class="ourHolder-text isotope-header">
                    <h2>Lend Lease</h2>
                    <div class="logoClient">
                        <a href="http://www.lendlease.com.au"><img src="../Images/LendLease.jpg" alt="Lend Lease" /></a>
                    </div>
                    <p>Lend Lease is one of the world's leading fully integrated property solutions providers, with strong development, investment management, project and construction management and asset and property management capabilities. As part of their ongoing effort in improving efficiency and productivity, several legacy spreadsheets and reports need to be converted into web applications. To ensure consistency, a common visual framework is required across applications.</p>
                    <p>SSW worked together with LendLease IT department and together formed a series of visual UI framework which are used for existing and future web applications.</p>
                    <p>With the visual framework in place, developers can focus their effort in meeting functional requirements and worry less on how the apps should look. End users also benefit from having a common UI theme across their line-of-business applications.</p>
                </div>
        </div>

        <div class="item pharma all">
                <div class="ourHolder-text isotope-header">
                    <h2>Pfizer</h2>
                    <div class="logoClient">
                        <a href="http://www.pfizer.com.au"><img src="../Images/Pfizer.jpg" alt="Pfizer" /></a>
                    </div>
                    <p>We needed to build a complete credit returns system to replace the entirely manual paper based system that was previously in place.</p>
                    <p>We build an ASP.NET application using a custom workflow engine to address this challenge.</p>
                    <p>There is now a mostly automated workflow system in place that manages the entire process of credit returns, and frees up multiple resources for other work.</p>
                    <p>We used these technologies: ASP.NET 3.0 and SQL Server 2005</p>
                </div>
        </div>

        <div class="item consultants all">
                <div class="ourHolder-text isotope-header">
                    <h2>Aurecon</h2>
                    <div class="logoClient">
                        <a href="http://www.aurecongroup.com" target="_blank" class="ignore"><img src="../Images/Clients/aurecon.jpg" alt="Aurecon" align="left" /></a>
                    </div>
                    <p>Aurecon - formerly known as Connell Wagner - identified SharePoint as the product of choice to replace various Lotus Notes applications in use within their business including their intranet portal. SSW were brought in to architect a SharePoint farm for their user base of over 6000 employees worldwide, implement the first part of their portal using best practices for development and deployment, and to train their developers and support staff.</p>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/Aurecon.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div>
        
        <div class="item energy all">
                <div class="ourHolder-text isotope-header">
                    <h2>Ausgrid</h2>
                    <div class="logoClient">
                        <a href="https://www.ausgrid.com.au" target="_blank" class="ignore"><img src="../Images/Ausgrid-logo.jpg" alt="Ausgrid" align="left" /></a>
                    </div>
                    <p>Ausgrid (previously known as Energy Australia) is the major energy provider in Australia.</p>
                    <p>They approached SSW wanting to simplify their vastly complicated (and paper based) rostering and overtime allocation systems for their workers.</p>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/Ausgrid.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div>
        
        <div class="item tech consultants all">
                <div class="ourHolder-text isotope-header">
                    <h2>EstateMaster</h2>
                    <div class="logoClient">
                        <a href="http://www.estatemaster.com/" target="_blank" class="ignore"><img src="../Images/Clients/estatemaster-logo.jpg" alt="EstateMaster" align="left" /></a>
                    </div>
                    <p>EstateMaster develop a suite of powerful, flexible and easy-to-use property development, valuation and investment software packages, designed from the ground up by property professionals for property professionals.</p>
                    <p>EstateMaster wanted a good looking website, based upon a CMS so their marketing people could manage content. A dynamic client area was also needed, allowing clients to login and manage software licenses. A shopping cart was also required, allowing clients to purchase software products, pay for and generate license keys.</p>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/EstateMaster.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div>
        
        <div class="item gov all">
                <div class="ourHolder-text isotope-header">
                    <h2>National Australia Day</h2>
                    <p>A Case Study of the Website Upgrade SSW did for the National Australia Day Council. Watch the Case Study video:</p>
                    <iframe width="682" height="384" src="https://www.youtube.com/embed/pTpJNU-czHY?rel=0" frameborder="0" allowfullscreen></iframe>
                </div>
        </div>

        <div class="item tech all">
                <div class="ourHolder-text isotope-header">
                    <h2>Microsoft Australia</h2>
                <div class="logoClient">
                    <a href="http://www.microsoft.com" target="_blank" class="ignore"><img src="../Images/MSLogo.jpg" alt="Microsoft" align="left" /></a>
                </div>
                <p>Microsoft Australia approached SSW to develop a website in preparation for the upcoming 2008 Forum event for SharePoint and Office. SSW delivered a Web 2.0 site build in SharePoint 2007 in less than 3 weeks. The site capitalizes on many of SharePoint's web publishing features and uses jQuery throughout to enhance the user experience. Virtual Earth was integrated to provide venue information. The completed site demonstrates that the possibilities of using SharePoint 2007 for a public facing website are boundless!</p>

                    <blockquote>The people at SSW were great to work with from concept to delivery, welcoming, friendly and professional - the outcome for us was a high quality site delivered in a very short timeframe
                                        <span>Robin Young, Microsoft Project Lead</span>
                    </blockquote>
                <div class="caseStudy">
                    <a class="next btn" href="/SSW/Consulting/Case-Study/SharePoint-Office-Forum.aspx">View the Case Study</a>
                </div>
                </div>
        </div>

        <div class="item gov all">
                <div class="ourHolder-text isotope-header">
                    <h2>Blueshift</h2>
                    <div class="logoClient">
                        <a href="http://www.blueshift.com.au/" target="_blank" class="ignore"><img src="../Images/Clients/blueshift-logo.jpg" alt="Blueshift" align="left" /></a>
                    </div>
                    <p>A Case Study of BlueShift's engagement with SSW to improve their development processes:</p>
                    <iframe width="682" height="384" src="https://www.youtube.com/embed/J29uXBDmUcM" frameborder="0" allowfullscreen></iframe>
                </div>
        </div>
                           
        <div class="item mining all">
                <div class="ourHolder-text isotope-header">
                    <h2>WorleyParsons</h2>
                    <div class="logoClient">
                        <a href="http://www.worleyparsons.com" target="_blank" class="ignore"><img src="../Images/WorleyParsonsLogo.jpg" alt="WorleyParsons" align="left" /></a>
                    </div>
                        <p>SharePoint 2007 was implemented extensively across their organization, but they were looking to extend the development to include their new public website. After a lengthy tendering process, WorleyParsons chose SSW to develop their new public website and it is now powered by SharePoint 2007.</p>
                        <p>The site and all components were to be reusable, so site templates, page layouts, content types and web parts were used extensively. This allows WorleyParsons employees with sufficient permissions to manage and maintain the website without requiring any assistance from developers.</p>
                        <div class="caseStudy">
                            <a class="next btn" href="/ssw/consulting/case-study/WorleyParsons.aspx">View the Case Study</a>
                        </div>
                </div>
        </div>

        <div class="item environment gov all">
                <div class="ourHolder-text isotope-header">
                    <h2>Queensland Water Infrastructure</h2>
                    <div class="logoClient">
                       <img src="../Images/QWI.jpg" alt="Queensland Water Infrastructure" />
                    </div>
                    <p>The organization was formed to build a series of large water resource projects to provide adequate water resources to South East Queensland. In each of those projects a large amount of land was needed making the acquisition, recording, contracts and communication and key element, and even before a project started a large number of documents are generated relating to site planning, images, email, agreements, and other documents. Queensland Water Infrastructure needed a solution to handle the volume and change management in all this data.</p>
                    <p>SSW provided a solution as two key systems, 1) tracking and reporting on the land acquisitions, and 2) a document management system. A custom application was written to track the acquisitions. This system had a Microsoft SQL Database backend, allowing the complex reporting requirements to be satisfied by Microsoft Reporting Services. The management of documents was built on top of Microsoft SharePoint and WISDOM DMF. The features of Enterprise SharePoint were extended with custom WebParts for project navigation, and custom context menus with options available based on the type of document stored.</p>
                    <p>Projects of the size involved have many legal and practical management requirements that only a system that is both reliable and performing the core business model can provide. The systems SSW provided were tailored to the exact model that QWI ran its business on, and the systems have used to complete 3 successful projects, with further project work currently underway.</p>
                    <p>We used these technologies: Microsoft SharePoint MOSS (Enterprise), SQL Server, Reporting Services, WISDOM DMF, Access 2007</p>
                </div>
        </div>

        <div class="item food all">
                <div class="ourHolder-text isotope-header">
                    <h2>McDonalds Asia Pacific</h2>
                    <div class="logoClient">
                        <a href="http://macanz.com"><img src="../Images/Mac.jpg" alt="McDonalds Asia Pacific" /></a>
                    </div>
                    <p>McDonalds needs to track shipments and report on their meats to the US, Asia and domestically.</p>
                    <p>SSW worked together with McDonalds to build an Access application with SQL backend to help manage their day to day operations. Since then SSW have been porting some existing functions into ClickOnce applications and migrating reports to Reporting Services reports. We also provide training to their users around using Access and writing advanced queries.</p>
                    <p>Streamlined their operations from a manual system to an automated system</p>
                    <p>We used these technologies: Access 2003, SQL Server 2005, SSIS, Web Services, Great Plains integration, Reporting Services</p>
                </div>
        </div>

        <div class="item food all">
                <div class="ourHolder-text isotope-header">
                    <h2>Snack Brands Australia</h2>
                    <div class="logoClient">
                        <a href="http://snackbrands.com.au"><img src="../Images/Snack.jpg" alt="Snack Brands Australia" align="left" /></a>
                    </div>
                    <p>SnackBrands were rapidly growing and acquiring other companies. As such they had sales data in many different systems. They were currently reporting my manually consolidating figures into excel and crunching the numbers.</p>
                    <p>SSW developed the glue that brought all these systems together using SSIS to grab and dump the data into a data warehouse. We worked with the business users to build a cube off that data that helped report on sales, trends, forecasting, volumes, logistics and customers. We also setup SnackBrand's SharePoint infrastructure configuring Excel services and Reporting Services integration, allowing users to easily query the cube and upload and share reports.</p>
                    <p>Empowered users to create their own reports, streamlined their reporting solution by removing the manual steps.</p>
                    <p>We used these technologies: SharePoint 2007 MOSS, Reporting Services 2008, SQL Server 2008, SSIS, and Excel Services</p>
                </div>
        </div>

        <div class="item logistics all">
                <div class="ourHolder-text isotope-header">
                    <h2>eMove</h2>
                    <div class="logoClient">
                        <a href="http://emove.com.au/" target="_blank" class="ignore"><img src="../Images/Clients/emove.jpg" alt="eMove" align="left" /></a>
                    </div>
                    <p>eMove is a free online service for finding removalist quotes; utility connections/disconnections; address changes; cleaners; storage; packing and much more.</p>
                    <p>SSW was brought into the project to provide new functionality for the removalist quotes and utility connections/disconnections. SSW created 2 new DotNetNuke modules for the site and integrated into their solution and bug fixing existing errors on their existing site. SSW was also commissioned to take a new design from eMove and create and implement a DotNetNuke skin for the new design.</p>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/eMove.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div>
           
        <div class="item consultants all">
                <div class="ourHolder-text isotope-header">
                    <h2>Maximus Imprint</h2>
                    <div class="logoClient">
                        <a href="http://maximus.com.au/" target="_blank" class="ignore"><img src="../Images/Clients/maximums-logo.jpg" alt="Maximus Imprint" align="left" /></a>
                    </div>
                    <p>Maximus International is a boutique organizational assessment and development consultancy that offers commercially savvy, unique solutions to business. To support their business they needed a HRIS web application to help manage the HR Process, from initial selection and interviews to staff training and performance reviews. SSW was chosen from a pool of 12 development houses to produce this application based on ASP.NET 2.0, AJAX and NHibernate technologies.</p>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/Maximus.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div>
        <div class="item manufacturing all">
                <div class="ourHolder-text isotope-header">
                    <h2>Vulcan Steel</h2>
                    <div class="logoClient">
                        <a href="http://www.vulcansteel.com.au/" target="_blank" class="ignore"><img src="../Images/Clients/vulcan-steel-logo.jpg" alt="Vulcan Steel" align="left" /></a>
                    </div>
                    <p>Vulcan Steel approached SSW about a Windows application that needed to be updated to the latest technologies to ensure easier maintainability and reusability. This app is the backbone of Vulcan Steel’s day-to-day business operations.</p>
                    <p>They had a desire for a better architecture to allow changes to be made quicker, with a lower chance of unintended defects. With an app of this magnitude, it is essential to keep it up-to-date and functioning perfectly, to ensure a lower total cost of ownership.</p>
                    <p>Because this app is so vital, it was also a requirement that the app remain up and running during the process of upgrading it to the new architecture. The challenges didn’t stop there though: All of the logic was embedded in the windows app with no service layer, and Vulcan Steel’s IT people are based in New Zealand whilst SSW are in Australia.</p>
                    <div class="caseStudy">
                        <a class="next btn" href="/SSW/Consulting/Case-Study/VulcanSteel.aspx">Read the Case Study</a>
                    </div>
                </div>
        </div> 

        <div class="item communication all">
                <div class="ourHolder-text isotope-header">
                    <h2>FastAs</h2>
                    <div class="logoClient">
                        <a href="http://www.fastas.com"><img src="../Images/FastAs.jpg" alt="FastAs" align="left" /></a>
                    </div>
                    <p>FastAs provides a global directory of contact information and integrated messaging services for individuals and businesses. It offers free alphabetic and phonetic searching of millions of subscriber listings, and incorporates message forwarding capabilities that enable a subscriber to be contacted without disclosure of the contact details. The FastAs application incorporates on-line processing of both payments and receipting, and offers convenient (and, if necessary, confidential) contact services via Email, SMS, Fax, surface mail and telegram.</p>
                    <p>FastAs has no in-house development expertise and, after careful evaluation, selected SSW to complete the development and deployment of their Internet services. Key considerations were SSW's strong project management disciplines, their design and creative talents, and their considerable technical expertise in .NET3.</p>
                    <div class="testimonialsOurClients">
                        <blockquote>SSW has carried out all development work in a professional and disciplined manner. They have consistently completed work to time and budget and we have been very happy with the results. We continue to have a strong and strategic relationship. <span>Carl G Peatman, CEO.</span></blockquote>
                    </div>
                </div>
        </div>

        <div class="item security all">
                <div class="ourHolder-text isotope-header">
                    <h2>Chubb</h2>
                    <div class="logoClient">
                        <a href="http://www.chubb.com.au"><img src="../Images/Chubb.jpg" alt="Chubb" align="left" /></a>
                    </div>
                    <p>Chubb had slow Asp.NET web pages and reports and needed to be faster</p>
                    <p>We spent time redesigning the business tier and SQL queries to speed some pages up to 1800% and Payrol reports generated within seconds not hours.</p>
                    <p>We used these technologies: MS SQL, .NET</p>
                </div>
        </div>

        <div class="item mining all">
                <div class="ourHolder-text isotope-header">
                    <h2>Conquest</h2>
                    <div class="logoClient">
                        <img src="../Images/Conquest.jpg" alt="Conquest" />
                    </div>
                    <p>Upgrading a complex Access-based application to the latest technologies. The main problem with Access was client deployment issues.</p>
                    <p>We are bringing the Access application forward to Silverlight with RIA services. We’re keeping the database schema unchanged so that the new version will run in parallel to their existing application, and gradually phase the old one out. This also allows us to deploy the new version earlier and get the end-users excited.</p>
                    <p>Deployment model will be a lot simpler for end-user machines since they won’t need to have Access installed. This will allow Conquest to reach a broader market, and simplify the deployment experience.</p>
                    <p>We used these technologies: Silverlight 3 WCF Services RIA services SQL Server ASP.NET.</p>
                </div>
        </div>

        <div class="item hospitality all">
                <div class="ourHolder-text isotope-header">
                    <h2>Carmody Group</h2>
                    <div class="logoClient">
                        <a href="http://www.carmodygroup.com.au"><img src="../Images/CarmodyLogo.gif" alt="Carmody Group" /></a>
                    </div>
                    <p>Carmody Group specializes in Hotel Interior Design and Refurbishment services throughout Asia Pacific. SSW was given the task to redesign their public website <a target="_blank" class="ignore"  href="/ssw/Redirect/ssw/Carmody.htm">www.carmodygroup.com.au</a> applying unique design concept to showcase current and past projects.</p>
                </div>
        </div>

        <div class="item transport all">
                <div class="ourHolder-text isotope-header">
                    <h2>Westbus</h2>
                    <div class="logoClient">
                        <img src="../Images/WestbusLogo.gif" alt="Westbus" />
                    </div>
                    <p>Westbus is Sydney's largest private bus company serving the communities of Western Sydney and the Hills District by providing local, city, school and charter bus services.</p>
                    <p>SSW developed Westbus' Charter Booking system to serve multiple concurrent users based at the various Westbus depots which service the Western Sydney region. The objective was to replace an existing DOS system, to automate quote calculation and  to integrate with Microsoft Great Plains Accounting for invoicing.</p>
                    <p>The application was developed as an ASP.NET intranet application using a 4 tier design. The .NET Framework 1.1 was used in conjunction with SQL Server. The system generates reports powered by Crystal Reports whilst being exportable to Adobe Acrobat PDF.</p>
                    <p>Daniela Fontana, Westbus Business Development Manager says SSWs simple and efficient design has ensured the application has been quickly accepted by the depot users?</p>
                    <p>Our work for Westbus was recognized by Computer World in their article <a target="_blank" class="ignore" href="http://cdn.computerworld.com.au/article/84102/_net_helps_wheels_go_round_bus_company/?fp=4&fpid=1398720840">".NET helps wheels go round at bus company"</a> and Microsoft also commissioned a .NET Snapshot.</p>
                    <div class="testimonialsOurClients">
                        <blockquote>SSW's simple and efficient design has ensured the application has been quickly accepted by the depot users.<span>Daniela Fontana - Business Development Manager, Westbus.</span></blockquote>
                    </div>
                </div>
        </div>

        <div class="item tech all">
                <div class="ourHolder-text isotope-header">
                    <h2>Scolari Software</h2>
                    <div class="logoClient">
                        <img src="../Images/Scolari.gif" alt="Scolari" />
                    </div>
                    <p>SSW assisted Scolari Software in the technical development of their latest software package - Clubsinc. CLUBSINC has been designed and produced by Scolari Software to overcome skill shortfalls and time restraints facing cultural, community, industry and sporting organizations ensuring that they comply with their rules (constitutions) and relevant legislation.</p>
                    <p>Built in VB .NET, Clubsinc takes advantage of the excellent deployment functionality for applications built on the .NET framework. Lead SSW developer John Liu says "While building in VB .NET has been an exciting challenge, the Clubsinc project has worked successfully due to the close integration of the Scolari Project Team and SSW technical staff."</p>
                </div>
        </div>

        <div class="item tech all">
                <div class="ourHolder-text isotope-header">
                    <h2>Media Monitors</h2>
                    <div class="logoClient">
                        <img src="../Images/MediaMonitors.gif" alt="Media Monitors" />
                    </div>
                    <p>Media Monitors is Australia's only national media information company and is the largest provider of customized information services. Media Monitors required that AC Nielsen ratings data (demographically related) be provided on the transcripts, tapes and recordings they provide to customers. These come in as CSV files. SSW created a utility in Visual Basic 6.0 for the manual import of CSV files from this ratings agency, and modified the associated Word templates and population functions to handle this data.</p>
                </div>
        </div>

        <div class="item sports all">
                <div class="ourHolder-text isotope-header">
                    <h2>Sportstec</h2>
                    <div class="logoClient">
                        <img src="../Images/SportstecLogo.jpg" alt="Sportstec" />
                    </div>
                    <p>Sportstec is a leading provider of sporting technology designed to maximize individual  and team performance.</p>
                    <p>Our focus is on helping their clients by using all the benefits of leading-edge technology. That means working closely with individual athletes, coaches, teams, sports agents and sporting organizations to develop products that are useful and relevant to their sport and their ambitions.</p>
                    <p>Coda is Sportstecs 7th unique Software development for Sporting Game or Coaching analysis.</p>
                    <p>The concept for this development was to create a portable solution for the coding of sporting performance. A PDA was chosen as the ideal platform.</p>
                    <p>The majority of our development is done in-house, however our developers were fully committed at the time we needed to bring Coda to market.</p>
                    <a href="/ssw/Redirect/sportstec.htm" target="_blank" class="ignore" class="external">Sportstec</a>
                    <div class="testimonialsOurClients">
                        <blockquote><p>SSW provided Sportstec with the opportunity to fast-track this development.</p>
                        <p>From our initial discussions, through to product release, SSW was always proactive in helping us create an intuitive and elegant product. The most impressive aspect of the partnership between Sportstec and SSW is flexibility. We were able to make a change in the system in the middle of the project. If something came up unexpectedly, the SSW staff and system adapted immediately.</p>
                        <p>Coda was completed within the promised timeframe and on budget.</p>
                        <p>Sportstec immediately had a second PDA application completed again to our total satisfaction, and have subsequently contracted another large project to SSW.</p>
                        <span>Owen Tough, Sportstec International Support Manager</span>
                        </blockquote>
                    </div>
                </div>
        </div>

        <div class="item food environment all">
                <div class="ourHolder-text isotope-header">
                    <h2>Fisheries Research and Development Corporation</h2>
                    <div class="logoClient">
                        <a href="/ssw/Redirect/frdcapp.htm" target="_blank" class="ignore"><img src="../Images/FRDC.gif" alt="FRDC" /></a>
                    </div>
                    <p>The FRDC plans, manages and funds millions of dollars worth of research into the Australian fisheries industry in conjunction with many independent companies. Funding used to be managed via an Access application that was distributed to over 100 sites across Australia. SSW has designed, developed and deployed a SQL Server 2000 application that streamlines the funding process using Microsoft's latest .NET Passport technologies. We used SSW's <a href="/ssw/AccessReporter">Access Reporter</a> for delivering reports via the web in either Snapshot, HTML, Excel or RTF formats. <a href="/ssw/Redirect/frdcapp.htm" target="_blank" class="ignore">FRDC Web Application</a></p>
                    <p>Our work for the FRDC was recognized by Computer World in their article "Government department fishes out .NET solution".</p>
                </div>
        </div>

        <div class="item consultants all">
                <div class="ourHolder-text isotope-header">
                    <h2>Cap Gemini Ernst Young</h2>
                    <div class="logoClient">
                        <img src="../Images/cgey.gif" alt="Cap Gemini Ernst and Young" /></div>
                    <p>AMS is a data staging system that imports and converts data into a specialized format for import into the Dyna financial modeling system. External outsource service providers send simple files which are imported and converted through 3 databases. SSW's role was development in Visual Basic, JavaScript and SQL Server 7.0 stored procedures. This involved building stored procedures to do data transformation and building an ActiveX component to queue and run batch jobs. The web interface required programming in JavaScript and VB COM objects.</p>
                    <p>SSW worked on this large 3-tier ASP/VB/SQL Server 2000 project. One of the requirements was to create a specialized data transformation system to feed data into an asset management system for predicting future rental prices on all properties owned by the Commonwealth Bank.</p>
                    <p>The data would come in as CSV and tab-delimited files (amongst others), which would be read into the first SQL Server database via DTS. Following this, stored procedures  moved and transformed it into the second SQL Server database where it was in a standard format. Then stored procedures moved it into a third database which was in a special format for output into a text script that the Commonwealth Bank Asset Management package could read. The 'Administration' and 'Script Importing' sections of this project used an ASP interface created by SSW. Validation of the imported data was done in DTS via a Visual Basic 6.0 COM object called by the DTS ActiveX scripts.</p>
                    <div class="testimonialsOurClients">
                        <blockquote>SSW resource played a critical role in the project. The high level of technical understanding ensured the project was completed smoothly.<span>David Masters, AMS system project manager</span></blockquote>
                    </div>
                </div>
        </div>

        <div class="item tech all">
                <div class="ourHolder-text isotope-header">
                    <h2>Enterasys Networks Australia</h2>
                    <div class="logoClient">
                        <img src="../Images/banEnterasys.gif" alt="Enterasys Networks" />
                    </div>
                    <p>Enterasys Networks Australia, a leading manufacturer of networking switches and routers, has partnered with SSW to deploy an automated customer tracking database. This new application is the foundation for all sales and marketing activities at Cabletron, and includes sophisticated product quoting functions.</p>
                    <p>The system uses a SQL Server backend, and is designed to automatically integrate with Microsoft Outlook and Exchange Server. The solution includes a unique data replication feature, automatically transferring records from SQL Server to Exchange Server.</p>
                    <div class="testimonialsOurClients">
                        <blockquote>We have seen immediate improvements in our ability to track customers. The migration of our customer database from Exchange to SQL Server has been very smooth.<span>Ian Fewtrell, Managing Director, Australia and New Zealand</span></blockquote>
                    </div>
                </div>
        </div>

        <div class="item legal all">
                <div class="ourHolder-text isotope-header">
                    <h2>City Agents</h2>
                    <div class="logoClient">
                        <img src="../Images/banCityAgents.gif" alt="City Agents" />
                    </div>
                    <p>City Agents is a legal searching firm employed principally by lawyers to carry out searching, paralegal and agency work. As such they have to keep control of many small but nonetheless important tasks and have these integrated into a solid reporting and accountable system.</p>
                    <p>SSW was commissioned by City Agents to build a custom database to manage the day-to-day running of their business. The database was built using ADP (Access Data Projects) in Access 2000 with MSDE as the backend.</p>
                    <div class="testimonialsOurClients">
                        <blockquote>We are very pleased with the outcome, speed and flexibility of the database and impressed with how SSW kept the project within budget.<span>Mark Scott, Director, City Agents</span></blockquote>
                    </div>
                </div>
        </div>

        <div class="item tech all">
                <div class="ourHolder-text isotope-header">
                    <h2>Davnet (Magna Data)</h2>
                    <div class="logoClient">
                        <img src="../Images/Magna.gif" alt="Davnet" />
                    </div>
                    <p>Australia's first ISP formed in 1993 and based in Sydney, Melbourne, Brisbane. Magna Data is recognized as one of the most experienced Internet companies in Australia.</p>
                    <p>Magna Data has been a central part of the commercial Internet Industry in Australia since the beginning, from its inception as the first officially sanctioned provider of Internet access, through to establishing the Internet Industry Association of Australia.</p>
                    <div class="testimonialsOurClients">
                        <blockquote>SSW converted our customer database which was stored in a Microsoft Excel spreadsheet into a fully workable database using Microsoft Access. Following the rapid growth of our business SSW was further contracted to implement SQL Server 7.0 and also to develop an ASP front-end. I was extremely pleased with the professionalism and support given by SSW throughout these projects.<span>Jason Ashton, CEO, Davnet</span></blockquote>
                    </div>
                </div>
        </div>

        <div class="item food all">
                <div class="ourHolder-text isotope-header">
                    <h2>Laissez-Faire Catering</h2>
                    <div class="logoClient">
                        <img src="../Images/laissezfaireLogo.gif" alt="Laissez-Faire Catering" />
                    </div>
                    <p>Laissez-Faire Catering is one of Australia's most reputable catering companies, winning the 1999 Caterers of the Year and snatching the contract to feed NBC during the Olympics.</p>
                    <p>SSW designed and built a database to streamline their function management processes. The system was originally built in Access 97 but was recently upsized to SQL Server 7 by SSW to cater for the increasing number of users and records. The database is the centre piece for Laissez's function management, controlling quoting, invoicing and all aspects of function requirements.</p>
                    <div class="testimonialsOurClients">
                        <blockquote>The project was professionally, competently, satisfactorily completed by SSW and consequently we have returned to them for further software development projects and for regular software support, such as preparing the database for the GST. We have been very happy with the professional level of services provided by SSW.<span>Alan Seabrook, Director, Laissez Faire Catering</span></blockquote>
                    </div>
                </div>
        </div>

        <div class="item food all">
                <div class="ourHolder-text isotope-header">
                    <h2>Dell</h2>
                    <div class="logoClient">
                        <img src="../Images/banDell.gif" alt="Dell">
                    </div>
                    <p>Dell Computers are a leading vendor of desktop, server and notebook systems. Since its principal competitors were IBM, Compaq and Hewlett Packard, its marketing arm had a hard task before them.</p>
                    <p><strong>Project Specifications: </strong>Dell required a database which would enable them to successfully prosecute new prospects and to follow them up as the sales process progressed. In particular, it had to tie in seamlessly with Microsoft Outlook, which was in general use throughout the company.</p>
                </div>
        </div>

        <div class="item gov transport all">
                <div class="ourHolder-text isotope-header">
                    <h2>CityRail</h2>
                     <div class="logoClient">
                        <img src="../Images/banCityRail.gif" alt="City Rail" />
                    </div>
                    <p>CityRail was the principal urban public transport provider for the Sydney metropolitan region. It employed more than 5,000 persons, many of whom worked near dangerous machinery.</p>
                    <p><strong>Project Specifications: </strong>CityRail&#146;s health services needed a user-friendly Access database to manage the process of returning injured employees to work.</p>
                </div>
        </div>

        <div class="item tech all">
                <div class="ourHolder-text isotope-header">
                    <h2>Cisco Systems</h2>
                    <p>Cisco Systems are to the Internet and networking what Microsoft is to software. We were very privileged to be asked to be involved in such a prestigious company.</p>
                    <p>Cisco Systems Australia needed a web site that could be updated from a central database. Not only did their web site be database driven, it had to be updated by an ASP front end.</p>
                </div>
        </div>

        <div class="item hr all">
                <div class="ourHolder-text isotope-header">
                    <h2>Manpower</h2>
                    <div class="logoClient">
                        <img src="../Images/Manpower.gif" alt="Manpower" />
                    </div>
                    <p>When Manpower contacted SSW we thought we'd be building a website that managed underwear purchasing and having meetings with guys in g-strings! However, it turns out Manpower is a world-leader in complete staffing solutions, with over 70 offices throughout Australia and New Zealand. Manpower required an active Internet and Intranet to extend their services online.</p>
                    <div class="testimonialsOurClients">
                        <blockquote>SSW was always up front and willing to provide and justify their direction and technical advice. The final result is a solid Internet and Intranet application, based on ASP and SQL Server, which performs many useful functions... simple and very user friendly.<span>Steve Milroy, Services Web Master, Manpower</span></blockquote>
                    </div>
                </div>
        </div>

        <div class="item hr all">
                <div class="ourHolder-text isotope-header">
                    <h2>Hamilton James and Bruce</h2>
                    <div class="logoClient">
                        <img src="../Images/HJBNew.gif" alt="Hamilton James and Bruce" />
                    </div>
                    <p>Established in 1979, Hamilton James & Bruce is today, the leading independent executive recruitment consultancy in Australia with offices in Sydney, Melbourne, Brisbane and Parramatta.</p>
                    <p>HJB required a fast, searchable browser-based application.</p>
                </div>
        </div>

        <div class="item manufacturing all">
                <div class="ourHolder-text isotope-header">
                    <h2>Holders Direct</h2>
                    <div class="logoClient">
                        <img src="../Images/HoldersDirect.gif" alt="Holders Direct" />
                    </div>
                    <p>Holders Direct is a world-wide manufacturer and distributor of Injection Moulded clear plastic brochure holders.</p>
                    <p>The company required functionality on their web-site that would enable companies to apply for official distributor status.</p>
                </div>
        </div>

        <div class="item manufacturing all">
                <div class="ourHolder-text isotope-header">
                    <h2>Metalcorp</h2>
                    <div class="logoClient">
                        <img src="../Images/Metalcorp.gif" alt="Metalcorp" />
                    </div>
                    <p>Metalcorp's branches and distributors throughout Queensland, New South Wales, Victoria, Tasmania and South Australia provide manufacturing, distribution and recycling steel services.</p>
                    <p>Metalcorp required the transformation of an outdated order tracking Access database into a fully functional SECURE extranet. Using SSW's proven methodology the system is currently being built using 3-tier architecture.</p>
                </div>
        </div>

        <div class="item tech all">
                <div class="ourHolder-text isotope-header">
                    <h2>SmartSalary</h2>
                    <div class="logoClient">
                        <img src="../Images/SmartSalary.jpg" alt="SmartSalary" />
                    </div>
                    <p>SmartSalary is Australia's second largest and fastest growing salary packaging provider.</p>
                    <p>To handle their dramatic expansion, SSW was commissioned in 2004 to merge their 3 separate databases in close association with internal IT Staff. We were also charged with an upgrade to their existing VB 6, Crystal Report, Active X control-based application to Visual Basic .NET and SQL Server 2000 Reporting Services. In the process, SSW also re-modeled the new Windows Forms application with a proper strongly typed data and business logic layer.</p>
                    <p>Additional client-specific functionality was required and implemented for SmartSalary which made full use of .NET and control inheritance.</p>
                    <div class="testimonialsOurClients">
                        <blockquote>We found the SSW Team to be team oriented, and they integrated well with our internal IT staff.<span>Deven Billimoria, Chief Executive Officer</span></blockquote>
                    </div>
                </div>
        </div>

        <div class="item food all">
                <div class="ourHolder-text isotope-header">
                    <h2>Stolichnaya</h2>
                    <div class="logoClient">
                        <img src="../Images/LemonRuski.gif" alt="Lemon Ruski" />
                    </div>
                    <p>Stolichnaya Lemon Ruski is a leading product of United Distillers (Aust.) Limited.</p>
                    <p>The "Black Market" promotional blitz of Stolichnaya Lemon Ruski required an active messaging facility that would enable customers to join their online promotion. SSW was chosen to construct an online form that would register a contestant's details and allow access to the subsequent components of the promotion.</p>
                </div>
        </div>
                                  
                  
    </div>
</asp:Content>

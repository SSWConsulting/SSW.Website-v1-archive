<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Juval L&ouml;wy - The Architect&#8217;s Master Class" %>

<%--<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
    <img src="/ssw/images/banner_juval.jpg" alt="Juval L&ouml;wy - The Architect's Master Class" />
</asp:Content>--%>

<asp:Content runat="server" ContentPlaceHolderID="title">
<h1>Juval L&ouml;wy - The Architect's Master Class</h1>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="eventsummary">
        
        <ul class="vitals conferenceprice">
            <li>Duration
                <ul>
                    <li>5 days</li>
                </ul>
            </li>
            <li>Price
                <ul>
                    <li style="width:190px;">$2,600 + GST</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule conference">
            
            <li class="flag"><strong>
                <img src="/ssw/events/images/flag_australia.png" style="float: left; margin-right: 10px;" title="australia" />Sydney<br />
                <span><s>11th - 15th July</s></span></strong>
                <ul>
                    <li style="width: 100px;">COMPLETED</li>
                </ul>
            </li>

            <%--<li class="flag"><strong>
                <img src="/ssw/events/images/flag_australia.png" style="float: left; margin-right: 10px;" title="australia" alt="australia flag" />Sydney<br />
                <span>12th - 16th Mar 2012</span></strong>
                <ul>
                    <li style="width: 100px;"><a href="/ssw/Shop/BasketInsert.aspx?ProductID=JLOWY2"><span>Book Now</span></a></li>
                </ul>
            </li>--%>

        </ul>
    </div>

    <div class="greybox">
            <h3>Do you know there is a new version of this course?</h3>
            <p>Check out the <a href="training/Juval-Lowy-Architects-Clinic.aspx">Architecture Clinic</a> page.</p>
        </div>

    <h2>Overview</h2>
<p>While many developers and managers have a clear idea regarding the characteristics, practices, and corresponding set of responsibilities of their own roles, the picture is often vague when it comes to software architects. What is the single most important task facing the software architect? What is the division of labor and responsibilities between the architect and the project manager? How much the architecture should be tied in to the particulars of the underlying technology used, or for that matter, for the specifics of the business? where is the hand-off point between the architect and the developers? What are the necessary skills and analysis tools employed by an architect? How do you validate the design before construction? How do methodologies such as service-orientation affect the design and development process? What are software architecture best practices, guidelines and pitfalls? How do you go about designing world-class systems? How do you make the transition from abstract design patterns and concepts to concrete development decisions? How does the architect decompose the system into its sub system and modules?</p>

<p>The class answers the above questions by teaching the attendees the battle-proven practices of IDesign, distilling lessons learned during more than a decade of architecting systems across numerous projects, industries, countries, and teams. The class also points out classic mistakes and risk mitigations across the process, technology and design. Conducted in the style of a classic Master Class, Juval will provide the common foundation required by software architects, both technical and soft skills.</p>

<p>Noteworthy is that this class is called the Architect's Master Class (as opposed to the Architecture Master Class) because it is dedicated to the core body of knowledge required of today's modern software architects, knowledge that transcends mere design patterns and architecture. The core body of knowledge comprises of three elements: development process, technology, and finally analysis and design. The class shows the architect how to take an active leadership role on all three aspects, as a continuum, since when executing a design, one cannot separate process from design from technology - all three have to work in concert. The class agenda reflects these three elements. The first part is devoted to the accompanying service-oriented development process and the required project management skills. The second part is an immersion in key modern design patterns and development skills, using WCF as a reference model, as a way of illustrating the design ideas and best practices, ensuring the architect is a qualified technical lead. These include interface-based design and contract factoring, service-oriented design, general design principal and patterns concerning reliability, data transfer, instance management scalability and throughput, availability and responsiveness, loosely coupled systems, service discovery, fault propagation, transaction management, concurrency management, security scenarios, and the new Windows Azure AppFabric Service Bus. This section of the class also includes a detailed projection of the next platform after .NET, and how to best prepare for it.</p>
<p>In the last part Juval will explain the IDesign original approach to large system analysis and design called the IDesign Method. The IDesign Method has three elements: it is a method for decomposing a system into modules or services based on the system top-level uses cases, the IDesign Method offers a set of very simple design notations to capture the design decisions, and the Method is a near-mechanical approach to automating the design decision of rarely discussed topics such as allocation of services to assemblies, allocation of services to processes, transaction boundaries, identity management, authorization and authentication boundaries, synchronization and more.</p>

<p>You will also receive the IDesign documents and diagram templates, tools and samples and reference projects.</p>

<p>Don't miss on this unique opportunity to learn from Juval, share their passion for architecture and software engineering, gain from their experience of numerous design projects and profound insight on architecture, technology and its applications.</p>
<h2>Target Audience</h2>

<p>Any .NET architect, project lead or senior developer would benefit greatly from the class.</p>

    <h2>Outline Architect&#8217;s Master Class</h2>
        <h3>The Architect</h3>
        <ul>
            <li>Software development as engineering</li>
            <li>Types of architects</li>
            <li>The role of the architect</li>
            <li>Architects and technology</li>
            <li>Architects and the business</li>
        </ul>

        <h3>Service-Oriented Development Process </h3>
        <ul>
            <li>Project planning</li>
            <li>Estimation and tracking</li>
            <li>Documentation</li>
            <li>Requirement management and traceability</li>
            <li>Configuration management</li>
            <li>Quality control</li>
            <li>Design for performance</li>
            <li>Services simulation and emulation</li>
            <li>Peer reviews</li>
            <li>Development standards</li>
            <li>Metrics collection</li>
            <li>Visibility management</li>
            <li>Avoiding Process Groupthink</li>
        </ul>

        <h3>Introduction to Service-Orientation </h3>
        <ul>
            <li>Why service orientation</li>
            <li>Service-oriented architecture</li>
            <li>Service-oriented applications</li>
        </ul>

        <h3>WCF Essentials</h3>
        <ul>
            <li>Service-oriented programming</li>
            <li>WCF architecture</li>
            <li>Implementation considerations </li>
        </ul>

        <h3>Service Contract Design and Factoring</h3>
        <ul>
            <li>Service contract design</li>
            <li>Contract factoring techniques</li>
            <li>Contract metrics</li>
        </ul>

        <h3>Service-Oriented Design Patterns and Best Practices</h3>
        <ul>
            <li>Data contracts and  data contracts versioning</li>
            <li>Instance management and throttling</li>
            <li>Operations and event management</li>
            <li>Service discovery</li>
            <li>Windows Azure AppFabric service bus</li>
            <li>Transaction management and consistency</li>
            <li>Concurrent management, responsiveness and availability</li>
            <li>Design for security</li>
        </ul>

        <h3>Service Granularity</h3>
        <ul>
            <li>Every class as a service?</li>
            <li>Performance consideration and perspective</li>
            <li>WCF benchmarks</li>
            <li>Beyond .NET and WCF</li>
            <li>The future platfrom</li>
        </ul>

        <h3>Design and Architecture </h3>
        <ul>
            <li>Service decomposition</li>
            <li>Use cases analysis</li>
            <li>Assembly allocation</li>
            <li>Run-time processes design</li>
            <li>Identity management</li>
            <li>Authentication</li>
            <li>Authorization</li>
            <li>Transaction flow</li>
            <li>Synchronization</li>
        </ul>

        <h3>Process Groupthink</h3>
        <ul>
            <li>What about Monday</li>
            <li>The pitfall of Groupthink</li>
            <li>Architect as agent of change</li>
        </ul>

    <h2>Location Details</h2>
    <table class="outline" width="100%">
        <tr>
            <th scope="row">
                <a name="Sydney"></a>SSW Sydney<br />
            </th>
            <td>Gateway Court Suite 13<br />
                81 - 91 Military Road<br />
                Neutral Bay<br />
                <a href="/ssw/Company/Directions/NeutralBay/Default.aspx" target="_blank">Directions</a><br />
                <br />
                <strong>Held at the <a href="/ssw/Events/Hire-Conference-Room.aspx">SSW Conference Centre</a></strong>
            </td>
        </tr>
    </table>

    <h2>Agenda</h2>

    <table class="outline" width="100%">
        <tr>
            <th scope="row">Start</th>
            <td>9AM</td>
        </tr>
        <tr>
            <th scope="row">Morning tea break</th>
            <td>11AM - Tea, coffee and light refreshments provided</td>
        </tr>
        <tr>
            <th scope="row">One hour Lunch Break</th>
            <td>1PM - Catered lunch provided on Friday</td>
        </tr>
        <tr>
            <th scope="row">Afternoon Tea break</th>
            <td>4PM - Tea, coffee and light refreshments provided</td>
        </tr>
        <tr>
            <th scope="row">Finish</th>
            <td>6PM</td>
        </tr>
    </table>

    <h2>Related Links</h2>
        <a href="http://www.idesign.net/Classes/Architect">Full syllabus here</a>
        <br /><br /><br />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebarcontainer" runat="server">
    <div class="rounded">
        <h3>Looking for more?</h3>
    </div>
    <div class="section offer">
        <div class="onsite">

            <h4>Team Foundation Server 2010</h4>
            <p>Are you raring to go? Let's get started with <a href="/ssw/Events/Training/Brain-Quest-VS-TFS-SharePoint.aspx#OverviewTFS">Team Foundation Server</a>!</p>
            <p><strong>Price:</strong> $110+GST.</p>
            
            <h4>SharePoint 2010</h4>
            <p>Relaxed after lunch? Sit back and take it easy with <a href="/ssw/Events/Training/Brain-Quest-VS-TFS-SharePoint.aspx#OverviewSharePoint">SharePoint 2010</a>.</p>
            <p><strong>Price:</strong> $110+GST.</p>

            <h4>Full Day Pass</h4>
            <p>Book both sessions to take advantage of our special offer.</p>
            <p><strong>Price:</strong> $190+GST.</p>

            <div class="clear"></div>
        </div>
    </div>

    <div class="section">
        <h3>About Juval Lowy</h3>
        <p><img src="images/thumb_juval.jpg" class="thumbnail" />Juval L&ouml;wy is a software architect and the principal of IDesign (<a href="http://www.idesign.net">www.idesign.net</a>), specializing in .NET architecture consulting and advanced training. Juval is Microsoft's <!--SSW Link Auditor - Ignore begin--> <a href="http://msdn2.microsoft.com/en-us/isv/bb190468.aspx">Regional Director</a><!--SSW Link Auditor - Ignore end--> for the Silicon Valley, working with Microsoft on helping the industry adopt .NET 4.0. His latest book is <a href="http://www.amazon.com/Programming-WCF-Services-Juval-Lowy/dp/0596526997/sr=1-2/qid=1160362131/ref=sr_1_2/104-3785412-4763969?ie=UTF8&s=books">Programming WCF Services</a> 3rd Edition (O'Reilly 2010). Juval participates in the Microsoft internal design reviews for future versions of .NET and related technologies. Juval published numerous articles, regarding almost every aspect of .NET development, and is a frequent presenter at development conferences. Microsoft recognized Juval as a Software Legend as one of the world's top .NET experts and industry leaders.</p>
    </div>

</asp:Content>
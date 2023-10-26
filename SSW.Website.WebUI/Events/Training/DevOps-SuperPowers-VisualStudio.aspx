<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW DevOps SuperPowers: Visual Studio 2016 + Talk DevOps please: A .NET Developer’s guide to 3rd party tools for DevOps" %>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <img src="images/DevOps-SuperPowers-banner.jpg" />
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="/ssw/EventsCalendar/Images/DevOpsSuperPowers-Thumb.png" alt="DevOps SuperPowers image" class="icon" /> 
    <h1>Visual Studio 2016 + Talk DevOps please: A .NET Developer’s guide to 3rd party tools for DevOps</h1>
    <h2>SSW DevOps SuperPowers Half Day Course</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <p>For 10 years we've been running Brain Quest around the country showing off the new features of VS and ALM. It's now more important than ever that we start turning our teams into well-oiled machines using great DevOps practices. So we are happy to announce the first <strong>DevOps SuperPowers</strong>.</p>

    <div id="eventsummary">
        <ul class="vitals conferenceprice">

            <li>Price (ex GST) 
                <ul>
                    <li>$190</li>
                </ul>
            </li>
            <li>Hosted
                <ul>
                    <li>Microsoft</li>
                </ul>
            </li>
        </ul>
        <ul class="conference schedule">

<%--            
            <li><strong>Adelaide<br />
                <span>MON 12th OCT 2015</span></strong>
                <ul>
                    
                    <li><a href="/ssw/Shop/BasketInsert.aspx?ProductID=BQFDAD"><span>Book Now</span></a></li>
                    <li class="conferencelocation"><a href="#Adelaide">SA Innovation Centre</a></li>
                </ul>
            </li>
            --%>
 
            <li><strong>Brisbane<br />
                <span>MON 5th SEP 2016</span></strong>
                <ul>
                   
                    <li>Sold Out<%--<a href="/ssw/Shop/BasketInsert.aspx?ProductID=BDOSPBR"><span>Book Now  </span></a>--%></li>
                    <li class="conferencelocation"><a href="#Brisbane">Microsoft<br />
                        Brisbane</a></li>
                </ul>
            </li>

            <li><strong>Melbourne<br />
                <span>TUE 6th SEP 2016</span></strong>
                <ul>
                  
                    <li>Sold Out<%--<a href="/ssw/Shop/BasketInsert.aspx?ProductID=DOSPME"><span>Book Now</span></a>--%></li>
                    <li class="conferencelocation"><a href="#Melbourne">Microsoft<br />
                        Melbourne</a></li>
                </ul>
            </li>

           <li><strong>Sydney<br />
                <span>WED 7th SEP 2016</span></strong>
                <ul>                    
                    <li>Sold Out<%-- <a href="/ssw/Shop/BasketInsert.aspx?ProductID=DOSPSY"><span>Book Now</span></a>--%></li>
                    <li class="conferencelocation"><a href="#Sydney">SSW Chapel<br />
                        Neutral Bay</a></li>
                </ul>
            </li>            

            <li><strong>Auckland<br />
                <span>FRI 9th SEPT 2016</span></strong>
                <ul>
                   
                    <li>Sold Out<%-- <a href="/ssw/Shop/BasketInsert.aspx?ProductID=DOSPAU"><span>Book Now</span></a>--%></li>
                    <li class="conferencelocation"><a href="#Auckland">Microsoft<br />
                        Auckland</a></li>
                </ul>
            </li>
        </ul>
    </div>

    <p>This half day training course brings developers up-to-speed on the new features and benefits of DevOps.</p> 
    <p>With detailed insight into a gathering requirements, planning, coding, testing, releasing and feedback handling, attendees will leave with a strong understanding of how to embrace DevOps in their organization regardless of the organization size.</p>
    <p>Your trainer will be of the finest ALM experts in Australia. Depending on the city will either be Adam Cogan or Danijel Malik, both Microsoft Visual Studio ALM MVPs. Rest assured that they will have plenty of war stories to tell as well as sharing with you best practices for everything between a small or an enterprise team.</p>
    <p>If part of this story sounds like your team then this is the course for you.</p>

    <h2><a id="OverviewSprint1"></a>Let's start at the beginning!</h2>
    <p>Scrum is one of the pillars of modern development, but it doesn't save you from going wrong if you start off on the wrong foot. There are a lot of pitfalls before your software goes to production, and you will learn about the most common mistakes and bad decisions that are taken in a hurry to get the product out.</p>
    <p>Did you know a simple ASP.NET application can turn out into a nightmare for an entire IT team. Starting with vague requirements and short deadline developers will pave their way out of hell... and back in. Many developers know what it’s like to inherit a web application using the following technologies:</p>

    <ul>
        <li>Visual Studio 2016</li>
        <li>ASP.NET Web App running on Windows Azure</li>
        <li>ASP.NET WebAPI</li>
        <li>SQL Server Database</li>
        <li>One-Click Publish</li>
        <li>Elmah and NLog for logging</li>
        <li>IntelliTrace</li>
    </ul>

    <h2><a name="OverviewSprint2"></a>Get rid of your fears</h2>

    <p>Teams often then will come up with new ways of logging their code activities, setting up additional environments and ensuring their code gets tested before it goes into production. Their primary goal will be to fail fast so they will be looking at tools like:</p>

        <ul>
            <li>Application Insights for insightful logging</li>
            <li>Selenium for automated UI testing</li>
            <li>TFS/VSO Build for Continuous Integration</li>
            <li>Octopus Deploy and Release Management for automated deployments</li>
            </ul>

    <h2><a name="OverviewSprint3"></a>A whole new Universe</h2>

    <p>If they’ve done the above then it's safe to say that the team is doing really well now. However with more users being added, their application starts to perform below par, and they need to do something about it. They know that some old code needs to be refactored in order to speed up the application. To help the team react to and preempt situations, they will start thinking beyond the deployment and try to close the DevOps loop. They'll collect client feedback, assess performance counters, and handle their technical debt using the following tools:</p>

    <ul>
        <li>Microsoft Feedback Client for gathering the client feedback</li>
        <li>Application Insights and other tools for Performance Monitoring</li>
        <li>SonarQube for Code Analysis</li>
        <li>IntelliTest to help reduce the technical debt</li>
    </ul>


    <h2>
        Location Venues</h2>
    <table class="outline" width="100%">
        <tbody>
<%--                <tr>
                <th scope="row">
                    <a name="Adelaide"></a>Adelaide
                </th>
                <td>
                    SA Innovation Centre
                    <br />
                    Level 2, Westpac House<br />
                    91 King William Street<br />
                    <a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=level+2+91+King+William+St,+Adelaide+SA+5000,+Australia+(Westpac+House)&sll=-34.924821,138.598741&sspn=0.007794,0.016512&ie=UTF8&hq=&hnear=2%2F91+King+William+St,+Adelaide+SA+5000,+Australia&ll=-34.924795,138.598881&spn=0.007794,0.016512&z=17"
                        target="_blank">Directions</a>
                </td>
                    <td>
                    Start Time
                </td>
                    </tr>--%>
            <tr>
                <th scope="row">
                    <a name="Brisbane"></a>Brisbane
                </th>
                <td>TBA
                    <%-- Microsoft Office - Brisbane
                    <br />
                    Level 28,
                    <br />
                    400 George Street<br />
                    <a href="http://maps.google.com.au/maps?f=q&source=s_q&hl=en&geocode=FavTXP4dDvQeCSkz0pOsmleRazFAr97zWqMCBA%3BFXXcXP4deeoeCSklew4EBFqRazGAt8QIbGyJdA&q=from+Brisbane+CBD,+Queensland+to+400+George+Street,+Brisbane,+Queensland&aq=t&sll=-27.46974,153.02236&sspn=0.00405,0.006968&gl=au&ie=UTF8&z=18&saddr=Brisbane+CBD,+Queensland&daddr=400+George+Street,+Brisbane,+Queensland"
                        target="_blank">Directions from CBD</a> --%>
                </td>
                    <td>
                    Times: 9AM - 1PM
                </td>
            </tr>
            <tr>
                <th scope="row">
                    <a name="Melbourne"></a>Melbourne
                </th>
                <td> TBA
                 <%--    Microsoft Office - Melbourne<br />
                    Level 5, 4 Freshwater Place<br />
                    Southbank<br />
                    <a href="http://maps.google.com.au/maps?f=d&source=s_d&hl=en&geocode=FRUAv_0dYfajCCkTjDcQtULWajHWYtHF685DUw%3BFczhvv0divWjCCkzkjFirULWajF7DWegzb4QVg&view=map&saddr=melbourne+CBD&daddr=4+Freshwater+Place+Southbank,+Melbourne&sll=-37.81902,144.96232&sspn=0.016713,0.037143&gl=au&ie=UTF8&ll=-37.817005,144.970651&spn=0.033563,0.074286&z=15"
                        target="_blank">Directions from CBD</a> --%>
                </td>
                    <td>
                    Times: 9AM - 1PM
                </td>
            </tr>
<%--            <tr>
                <th scope="row">
                    <a name="Canberra"></a>Canberra
                </th>
                <td>
                    Microsoft Office - Canberra<br />
                    2/44 Sydney Ave<br />
                    Forrest<br />
                    <a href="http://maps.google.com.au/maps?oe=utf-8&client=firefox-a&ie=UTF8&q=microsoft+canberra&fb=1&gl=au&hq=microsoft&hnear=canberra&cid=0,0,13439053328360611756&ei=lOn8SrT7NtXxkAXr8-XwCw&ved=0CBgQnwIwBA&z=16&iwloc=A"
                        target="_blank">Directions</a>
                </td>
                    <td>
                    Start Time
                </td>
            </tr>--%>
            <tr>
                <th scope="row">
                    <a name="Sydney"></a>Sydney
                </th>
                <td>
                    <a href="https://www.ssw.com.au/ssw/Events/Venues/Hire-Conference-Room.aspx">SSW Chapel</a>
                    <br />
                    Suite 15
                    <br />
                    81 - 91 Military Road<br />
                    Neutral Bay<br />
                    <a href="https://www.ssw.com.au/ssw/Company/Directions/NeutralBay/">Directions from CBD</a>
                </td>
                    <td>
                    Times: 9AM - 1PM
                </td>
            </tr>
            
            <tr>
                <th scope="row">
                    <a name="Auckland"></a>Auckland
                </th>
                <td>

                    TBA
                  <%--   Microsoft Office - Auckland
                    <br />
                    Level 5,<br />
                    22 Viaduct Harbour Avenue<br />
                    Auckland<br />
                    <a href="https://www.google.com.au/maps/dir/Auckland,+New+Zealand/22+Viaduct+Harbour+Ave,+Auckland,+1010,+New+Zealand/@-36.8455305,174.7555478,16z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x6d0d47fb5a9ce6fb:0x500ef6143a29917!2m2!1d174.7633315!2d-36.8484597!1m5!1m1!1s0x6d0d47f3e88433dd:0x32cd29ccbea5dcb4!2m2!1d174.7570075!2d-36.8452935?hl=en">Directions from CBD</a> --%>
                </td>
                <td>
                    Times: 9AM - 1PM
                </td>
            </tr>
            
        </tbody>
    </table>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
<div class="rounded">
        <h3>Session</h3>
    </div>
    <div class="section offer">
        <div class="onsite">
            <h3>Half day course</h3>
            
            <ul>
                <li>Shipping software to production</li>
                <li>4 stages of DevOps</li>
                <li>Implementation of DevOps (including tools)</li>
            </ul>
            <div class="clear"></div>
        </div>
    </div>
    <div class="section">
        <h4>About the presenters</h4>
        <p>
            <img src="Images/adam_thumb.jpg" class="thumbnail" /><a href="https://ssw.com.au/people/adam-cogan">Adam Cogan</a>
            is a Microsoft Regional Director, and Chief Architect at SSW. Adam has been developing
            custom solutions for businesses across a range of industries such as Government,
            banking, insurance and manufacturing since 1990 for clients such as Microsoft, Quicken,
            and the Fisheries Research and Development Corporation. His wealth of experience
            in the industry and unsurpassed technical knowledge will ensure attendees get the
            most out of these sessions.</p>

        <p>
            <a href="https://ssw.com.au/people/alumni/danijel-malik">Danijel Malik</a>
            is a Visual Studio ALM MVP. He is an experienced developer and speaker, regularly presenting at conferences 
            around the world. At SSW, as well as building great solutions for clients, Danijel is the Product Owner for 
            SSW Code Auditor.</p>

    </div>
</asp:Content>

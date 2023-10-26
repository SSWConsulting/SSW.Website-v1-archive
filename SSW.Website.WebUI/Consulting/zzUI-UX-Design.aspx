<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="User Interface (UI) and User Experience (UX) Design | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="JsonLd" ContentPlaceHolderID="JsonLd" runat="server">
    <script type="application/ld+json">
{
    "@context": "http://schema.org",
    "@type": "Service",
    "provider": {
        "@type": "Organization",
        "name": "SSW",
        "additionalType": "https://www.wikidata.org/wiki/Q638608",
        "address": {
            "@type": "PostalAddress",
            "streetAddress": "Level 1, 81-91 Military Road",
            "postalCode": "2089",
            "addressRegion": "NSW",
            "addressLocality": "Neutral Bay",
            "addressCountry": "http://www.wikidata.org/entity/Q408",
            "name": "Postal Address",
            "@id": "https://www.ssw.com.au/#PostalAddress"
        },
        "description": "SSW software developers have delivered best of breed Microsoft solutions for more than 1,400 clients in 15 countries. SSW Consulting has over 30 years of experience developing awesome Microsoft solutions that today build on top of Angular, React, Azure, TFS, SharePoint, Office 365, .NET, WebAPI, Dynamics 365 and SQL Server.",
        "@id": "https://www.ssw.com.au/",
        "logo": "https://www.ssw.com.au/SSW/images/Raven/SSWLogo.svg"
    },
    "image": {
        "@type": "ImageObject",
        "url": "https://www.ssw.com.au/SSW/Consulting/images/thumbs/thumb-web-mvc.jpg",
        "height": "115",
        "width": "115",
        "@id": "https://www.ssw.com.au/SSW/Consulting/images/thumbs/thumb-web-mvc.jpg"
    },
    "brand": {
        "@id": "https://www.ssw.com.au/"
    },
    "additionalType": "https://www.wikidata.org/wiki/Q189210",
    "url": "https://www.ssw.com.au/ssw/Consulting/Web-Applications.aspx",
    "areaServed": "http://www.wikidata.org/entity/Q13780930",
    "description": "SSW has the resources to develop sites of any scope, from ongoing maintenance tasks to the implementation of large complex sites.",
    "name": "Web Applications",
    "@id": "https://www.ssw.com.au/ssw/Consulting/Web-Applications.aspx"
}
</script>

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>We know what <span class="red">works</span></h1>
            <h2>User Interface & User Experience Design showcase</h2>
           
            <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal"><div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
            <h2>or call us on +61 2 9953 3000</h2>
            <!-- CTA button-->
        </div>

        <div class="arrow-scroll bounce">
          <a class="fa fa-chevron-down" href="#more"></a>
        </div>

    </div>

    <div id="videocontainer">
    <video autoplay muted loop>
      <source src="/ssw/include/consulting/img/MVC_background.mp4" type="video/mp4">
      Your browser does not support HTML5 video.
    </video>
    </div>

    <!-- overview and how we work section -->

	<div class="benefits-section MVC-benefits-background">
		<div class="container"><a name="more"></a>
            <h1><span class="red">Overview</span></h1>
            <h5>A well-designed website can do wonders for your corporate image and sales. At SSW, our goal is to deliver practical, creative and unique website solutions:</h5>
            <ul class="MVC-elements">
                <li><img src="/SSW/images/consulting/bulletpoint.png" /> Web Design and Development</li>
                <li><img src="/SSW/images/consulting/bulletpoint.png" /> Web Usability and Accessibility</li>
                <li><img src="/SSW/images/consulting/bulletpoint.png" /> Banner Advertisement and Website Advertisement</li>
                <li><img src="/SSW/images/consulting/bulletpoint.png" /> Email Newsletters</li>
                <li><img src="/SSW/images/consulting/bulletpoint.png" /> Electronic Presentations</li>
            </ul>

            <h1><span class="red">How we work?</span></h1>
            <ul class="MVC-elements">
                <li><img src="/SSW/images/consulting/done-icon.png" /> We have a track record of creating high traffic, interactive websites</li>
                <li><img src="/SSW/images/consulting/done-icon.png" /> Our creative people create a great user experience</li>
                <li><img src="/SSW/images/consulting/done-icon.png" /> At SSW, our designers work every day with our technical team</li>
                <li><img src="/SSW/images/consulting/done-icon.png" /> Good Process: we are experienced at walking you through all the stages of design</li>
                <li><img src="/SSW/images/consulting/done-icon.png" /> Technical knowledge: we know what will work and what your platform can offer</li>
            </ul>

            <h1><span class="red">SSW's</span> Design Showcase</h1>
            <!-- 1 - 7 -->



            <div id="showcase">

                <div class="case">
                    <div>
                        <div id="sswr-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#sswr-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li data-target="#sswr-carousel" data-slide-to="1" class=""></li>
                                <li data-target="#sswr-carousel" data-slide-to="2" class=""></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/SSW-Rewards-1.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/SSW-Rewards-2.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/SSW-Rewards-3.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">
                            <span>SSW Rewards App</span>
                        </h3>
                        <p class="description">
                           SSW Rewards is a community engagement app from SSW. Think of it as Pokemon Go for developers! Attend talks, meet devs, score points, and win cool prizes.
                        </p>
                        <div>
                            <span class="tech">.NET MAUI</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="berkley-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#berkley-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li data-target="#berkley-carousel" data-slide-to="1" class=""></li>
                                <li data-target="#berkley-carousel" data-slide-to="2" class=""></li>
                                <li data-target="#berkley-carousel" data-slide-to="3" class=""></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/Berkley-1.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/Berkley-2.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/Berkley-3.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/Berkley-4.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">Berkley Insurance</h3>
                        <p class="description">Berkley "BindIT" Broker Portal is an Angular portal for Insurance brokers to manage their clients' quotes. It is a modern, easy to use Web Application powererd by a .NET backend pluging in directly onto Berkley's systems. The whole project is hosted on Azure. 
                        </p>
                        <div>
                            <span class="tech">Angular</span>
                            <span class="tech">.NET Core</span>
                            <span class="tech">Azure</span>
                            <span class="tech">Service Bus</span>
                            <span class="tech">HCM</span>
                            <span class="tech">Cosmos</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="msa-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#msa-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li data-target="#msa-carousel" data-slide-to="1" class=""></li>
                                <li data-target="#msa-carousel" data-slide-to="2" class=""></li>
                                <li data-target="#msa-carousel" data-slide-to="3" class=""></li>
                                <li data-target="#msa-carousel" data-slide-to="4" class=""></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/Australia-Moter-Sports-1.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/Australia-Moter-Sports-2.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/Australia-Moter-Sports-3.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/Australia-Moter-Sports-4.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/Australia-Moter-Sports-5.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">The Motorsport Australia</h3>
                        <p class="description">The Motorsport Australia Event Entry Blazor Web Application is a platform used to create events and for entrants to register for an event. 
                        </p>
                        <div>
                            <span class="tech">Blazor</span>
                            <span class="tech">.NET</span>
                            <span class="tech">Azure</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="bradken-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#bradken-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li data-target="#bradken-carousel" data-slide-to="1" class=""></li>
                                <li data-target="#bradken-carousel" data-slide-to="2" class=""></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/Bradken-1.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/Bradken-2.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/Bradken-3.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">Bradken Inspections App</h3>
                        <p class="description">Bradken is a premier supplier of parts to the mining industry. The inspections app is designed for use under tough conditions - inspecting mining equipment onsite where every second counts.
                        </p>
                        <div>
                            <span class="tech">.NET MAUI</span>
                        </div>
                    </div>
                </div>
                
                <div class="case">
                    <div>
                        <div id="fpaa-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#fpaa-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#fpaa-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                                <li
                                    data-target="#fpaa-carousel"
                                    data-slide-to="2"
                                    class=""
                                ></li>
                                <li
                                    data-target="#fpaa-carousel"
                                    data-slide-to="3"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/fpaa-1.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/fpaa-2.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/fpaa-3.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/fpaa-4.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">FPAA (Fire Protection Association Australia)</h3>
                        <p class="description">
                            Fire Protection Association Australia is the national peak body for
                            fire safety, providing information, services and education to the
                            fire protection industry and the community. The Association is
                            supported by approximately 1700 members consisting of leading
                            companies, organisations and individuals around Australia, with a
                            growing reach of up to 30,000 people at all levels of the industry.
                        </p>
                        <div>
                            <span class="tech">Umbraco</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="ipwea-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#ipwea-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#ipwea-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                                <li
                                    data-target="#ipwea-carousel"
                                    data-slide-to="2"
                                    class=""
                                ></li>
                                <li
                                    data-target="#ipwea-carousel"
                                    data-slide-to="3"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/ipwea-1.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/ipwea-2.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/ipwea-3.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/ipwea-4.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">IPWEA NSW & ACT</h3>
                        <p class="description">
                            The Institute of Public Works Engineering Australasia (IPWEA) is the
                            peak association for the professionals who deliver public works and
                            engineering services to communities in Australia and New Zealand.
                            IPWEA provides services to its members and advocacy on their behalf.
                        </p>
                        <div>
                            <span class="tech">React</span>
                            <span class="tech">Gatsby</span>
                            <span class="tech">Storyblok </span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="karras-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#karras-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#karras-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                                <li
                                    data-target="#karras-carousel"
                                    data-slide-to="2"
                                    class=""
                                ></li>
                                <li
                                    data-target="#karras-carousel"
                                    data-slide-to="3"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/karras-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/karras-2.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/karras-3.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/karras-4.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">
                            <span>Karras</span>
                            <span class="visit"><a href="https://karras.com.au/" class="visit" target="_blank">Visit Website</a></span>
                        </h3>
                        <p class="description">
                            Karras Cold Logistics is a dynamic provider of integrated
                            refrigerated transport, cold storage and logistics services.
                        </p>
                        <div>
                            <span class="tech">XHTML and CSS layout</span>
                            <span class="tech">Bootstrap</span>
                            <span class="tech">jQuery</span>
                        </div>
                    </div>
                </div>

                

            <div id="more-cases" class="collapse">
          
                <!-- MORE CASES STARTS HERE -->

                <div class="case">
                    <div>
                        <div id="paw-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#paw-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li data-target="#paw-carousel" data-slide-to="1" class=""></li>
                                <li data-target="#paw-carousel" data-slide-to="2" class=""></li>
                                <li data-target="#paw-carousel" data-slide-to="3" class=""></li>
                                <li data-target="#paw-carousel" data-slide-to="4" class=""></li>
                                <li data-target="#paw-carousel" data-slide-to="5" class=""></li>
                                <li data-target="#paw-carousel" data-slide-to="6" class=""></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/paw-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/paw-2.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/paw-3.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/paw-4.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/paw-5.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/paw-6.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/paw-7.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">
                            <span>Parents at Work</span>
                            <span class="visit"><a href="https://parentsandcarersatwork.com/" class="visit" target="_blank">Visit Website</a></span>
                        </h3>
                        <p class="description">Parents at Work
                            Parents at Work is a world leading provider of education and
                            coaching services for workplaces, parents, carers and leaders. SSW
                            provided art direction, front &amp; backend development as well as
                            design for the client.
                        </p>
                        <div>
                            <span class="tech">XHTML and CSS layout</span>
                            <span class="tech">Bootstrap</span>
                            <span class="tech">jQuery</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="ssw-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#ssw-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li data-target="#ssw-carousel" data-slide-to="1" class=""></li>
                                <li data-target="#ssw-carousel" data-slide-to="2" class=""></li>
                                <li data-target="#ssw-carousel" data-slide-to="3" class=""></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/ssw-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/ssw-2.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/ssw-3.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/ssw-4.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">SSW</h3>
                        <p class="description">
                            SSW website received a makeover. The new layout is designed for
                            easier navigation and provides first-time visitors with quick access
                            to the most sought-after content. The challenge was to create a home
                            page that could be understood and operated by a wider range of
                            clients, not just the technically minded.
                        </p>
                        <div>
                            <span class="tech">ASP.NET</span>
                            <span class="tech">XHTML and CSS layout</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="knownoise-arousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#knownoise-arousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#knownoise-arousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                                <li
                                    data-target="#knownoise-arousel"
                                    data-slide-to="2"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/knownoise-1.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/knownoise-2.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/knownoise-3.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">KNOWnoise</h3>
                        <p class="description">
                            KNOWnoise is a project-specific self-assessment tool that fits into
                            your management framework, providing great value as part of any
                            out-of-hours work procedure. With a clean new user experience, KNOW
                            noise quickly and simply provides the tools to plan, assess and
                            manage project noise impacts.
                        </p>
                        <div>
                            <span class="tech">Angular</span>
                            <span class="tech">.NET Core</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="campion-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#campion-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#campion-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                                <li
                                    data-target="#campion-carousel"
                                    data-slide-to="2"
                                    class=""
                                ></li>
                                <li
                                    data-target="#campion-carousel"
                                    data-slide-to="3"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/campion-1.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/campion-2.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/campion-3.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/campion-4.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">Campion MyConnect</h3>
                        <p class="description">
                            A fully customisable end-to-end solution for educational resources
                            in schools. Users have seamless access to thousands of flat &
                            interactive resources all in one place with Campion MyConnect.
                        </p>
                        <div>
                            <span class="tech">.NET 5</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="nslhd-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#nslhd-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#nslhd-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                                <li
                                    data-target="#nslhd-carousel"
                                    data-slide-to="2"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/nslhd-1.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/nslhd-2.png" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/nslhd-3.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">NSLHD (Northern Sydney Health District)</h3>
                        <p class="description">
                            Northern Sydney Local Health District has a long and proud history
                            of being leaders in research. SSW’s development of a new Medical
                            History UI aimed to improve the experiences of patients and
                            researchers alike.
                        </p>
                        <div>
                            <span class="tech">Angular</span>
                            <span class="tech">CSS</span>
                            <span class="tech">Bootstrap</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div
                            id="shepherdcentre-carousel"
                            class="carousel slide"
                            data-ride="carousel"
                        >
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#shepherdcentre-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#shepherdcentre-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                                <li
                                    data-target="#shepherdcentre-carousel"
                                    data-slide-to="2"
                                    class=""
                                ></li>
                                <li
                                    data-target="#shepherdcentre-carousel"
                                    data-slide-to="3"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/shepherdcentre-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/shepherdcentre-2.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/shepherdcentre-3.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/shepherdcentre-4.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">Shepherd Centre</h3>
                        <p class="description">
                            This example shows using Sitefinity as a Frontend to Dynamics 365,
                            giving a rich user interface compared to the Model Driven Dynamics
                            365 UI. The first image shows what the record looks like in Dynamics
                            and second shows what the record looks like in Sitefinity.
                        </p>
                        <div>
                            <span class="tech">Sitefinity</span>
                            <span class="tech">Dynamics 365</span>
                            <span class="tech">Power BI</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div
                            id="screenproducers-carousel"
                            class="carousel slide"
                            data-ride="carousel"
                        >
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#screenproducers-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#screenproducers-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                                <li
                                    data-target="#screenproducers-carousel"
                                    data-slide-to="2"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/screenproducers-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/screenproducers-2.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/screenproducers-3.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">
                            <span>Screen Producers Australia</span>
                            <span class="visit"><a href="https://www.screenproducers.org.au/" class="visit" target="_blank">Visit Website</a></span>
                        </h3>
                        <p class="description">
                            Screen Producers Australia unite screen businesses to campaign for a
                            healthy commercial environment. SSW customised Dynamics 365 CRM to
                            hold details of Screen Producer memberships and events. We also
                            developed a React Website that used the CRM data and content stored
                            in Kentico Cloud headless CMS.
                        </p>
                        <div>
                            <span class="tech">Kentico Cloud CMS (Headless CMS)</span>
                            <span class="tech">Dynamics 365 CRM</span>
                        </div>
                    </div>
                </div>

                <!-- 10 - 15 -->

                <div class="case">
                    <div>
                        <div
                            id="realinsights-carousel"
                            class="carousel slide"
                            data-ride="carousel"
                        >
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#realinsights-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#realinsights-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                                <li
                                    data-target="#realinsights-carousel"
                                    data-slide-to="2"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/realinsights-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/realinsights-2.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/realinsights-3.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">
                            <span>Realinsights</span>
                            <span class="visit"><a href="http://www.realinsights.com.au/" class="visit" target="_blank">Visit Website</a></span>
                        </h3>
                        <p class="description">
                            Realinsights is a Smart software solutions for real estate
                            professionals.
                        </p>
                        <div>
                            <span class="tech">JQuery</span>
                            <span class="tech">XHTML and CSS layout</span>
                            <span class="tech">KnockoutJS</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="swa-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#swa-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li data-target="#swa-carousel" data-slide-to="1" class=""></li>
                                <li data-target="#swa-carousel" data-slide-to="2" class=""></li>
                                <li data-target="#swa-carousel" data-slide-to="3" class=""></li>
                                <li data-target="#swa-carousel" data-slide-to="4" class=""></li>
                                <li data-target="#swa-carousel" data-slide-to="5" class=""></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/swa-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/swa-2.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/swa-3.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/swa-4.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/swa-5.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/swa-6.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">
                            <span>Sydney Wine Academy</span>
                            <span class="visit"><a href="https://sydneywineacademy.edu.au/" class="visit" target="_blank">Visit Website</a></span>
                        </h3>
                        <p class="description">
                            The Sydney Wine Academy provides training for the hospitality and
                            wine industry as well as wine enthusiasts to refine their wine
                            skills. SSW provided art direction, front & backend development as
                            well as design for the client.
                        </p>
                        <div>
                            <span class="tech">Sitefinity</span>
                            <span class="tech">JQuery</span>
                            <span class="tech">HTML5 and CSS layout</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="thorn-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#thorn-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#thorn-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                                <li
                                    data-target="#thorn-carousel"
                                    data-slide-to="2"
                                    class=""
                                ></li>
                                =
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/thorn-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/thorn-2.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/thorn-3.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">Thorn Group</h3>
                        <p class="description">
                            Thorn is a financial service provider, offering financial solutions
                            to meet a growing demand from niche consumer and commercial markets.
                            SSW provided a full solution including the structure of the
                            intranet, design of the front UI, implementation and deployment of
                            the new intranet, which introduced web part components like
                            "Upcoming birthdays", "New Starter", "Anniversary", "PRIDE" and so
                            on. All of these components are maintainable and some of them have
                            taken advantage of Office 365 Delve (User Profile).
                        </p>
                        <div>
                            <span class="tech">SharePoint Online</span>
                            <span class="tech">JQuery, Bootstrap and Font Awesome</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="yots-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#yots-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#yots-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/yots-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/yots-2.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">Youth Off The Streets</h3>
                        <p class="description">
                            Youth Off The Streets is a non-denominational community organisation
                            working for disadvantaged young people who may be homeless, drug
                            dependent and/or recovering from abuse.
                        </p>
                        <div>
                            <span class="tech">SharePoint</span>
                            <span class="tech">XHTML and CSS responsive layout</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div
                            id="aftercare-carousel"
                            class="carousel slide"
                            data-ride="carousel"
                        >
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#aftercare-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#aftercare-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/aftercare-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/aftercare-2.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">AfterCare</h3>
                        <p class="description">
                            Aftercare is Australia’s longest serving mental health services
                            organisation.We believe in enhancing the social and emotional
                            wellbeing of our clients through social justice and our commitment
                            to collaborative learning and recovery.
                        </p>
                        <div>
                            <span class="tech">SharePoint</span>
                            <span class="tech">XHTML and CSS responsive layout</span>
                        </div>
                    </div>
                </div>

                <!-- 16 - 20 -->
                <div class="case">
                    <div>
                        <div id="apa-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#apa-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li data-target="#apa-carousel" data-slide-to="1" class=""></li>
                                <li data-target="#apa-carousel" data-slide-to="2" class=""></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/apa-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/apa-2.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/apa-3.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">
                            <span>Australian Patisserie Academy</span>
                            <span class="visit"><a href="http://www.theapa.edu.au/" class="visit" target="_blank">Visit Website</a></span>
                        </h3>
                        <p class="description">
                            The Australian Patisserie Academy provides culinary professionals
                            and food enthusiasts the opportunity to further their patisserie
                            skills. SSW provided art direction, front & backend development as
                            well as design for the client. We had successfully met an extremely
                            strict 4 weeks deadline.
                        </p>
                        <div>
                            <span class="tech">Sitefinity</span>
                            <span class="tech">JQuery</span>
                            <span class="tech">XHTML and CSS layout</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="toll-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#toll-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#toll-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                                <li
                                    data-target="#toll-carousel"
                                    data-slide-to="2"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/toll-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/toll-2.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/toll-3.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">Toll Transport</h3>
                        <p class="description">
                            SSW used the <a href="Scrum.aspx">Scrum</a> methodology and embraced
                            the Microsoft Stack to develop and awesome application for Toll
                            Transport management team.
                        </p>
                        <div>
                            <span class="tech">JQuery</span>
                            <span class="tech">XHTML and CSS layout</span>
                            <span class="tech">KnockoutJS</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div
                            id="worleyparsons-carousel"
                            class="carousel slide"
                            data-ride="carousel"
                        >
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#worleyparsons-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#worleyparsons-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                                <li
                                    data-target="#worleyparsons-carousel"
                                    data-slide-to="2"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/worleyparsons-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/worleyparsons-2.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/worleyparsons-3.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">WorleyParsons</h3>
                        <p class="description">
                            WorleyParsons is one of the world&#8217;s top engineering and
                            project delivery companies. SharePoint was implemented extensively
                            across their organization, but they were looking to extend the
                            development to include their new public website. After a lengthy
                            tendering process, WorleyParsons chose SSW to develop their new
                            public website and it is now powered by SharePoint.
                        </p>
                        <div>
                            <span class="tech">SharePoint</span>
                            <span class="tech">JQuery</span>
                            <span class="tech">XHTML and CSS layout</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div
                            id="ms-sharepoint-2008-carousel"
                            class="carousel slide"
                            data-ride="carousel"
                        >
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#ms-sharepoint-2008-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#ms-sharepoint-2008-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                                <li
                                    data-target="#ms-sharepoint-2008-carousel"
                                    data-slide-to="2"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img
                                        alt=""
                                        src="Images/showcases/ms-sharepoint-2008-1.jpg"
                                    />
                                </div>
                                <div class="item">
                                    <img
                                        alt=""
                                        src="Images/showcases/ms-sharepoint-2008-2.jpg"
                                    />
                                </div>
                                <div class="item">
                                    <img
                                        alt=""
                                        src="Images/showcases/ms-sharepoint-2008-3.jpg"
                                    />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">Microsoft SharePoint and Office Forum</h3>
                        <p class="description">
                            Microsoft Australia approached SSW to develop a website in
                            preparation for the upcoming Forum event for SharePoint and Office.
                            The original website design used for previous events required a
                            complete overhaul with clear layout and navigation, and to
                            demonstrate a SharePoint site integrating with various other
                            technologies.
                        </p>
                        <div>
                            <span class="tech">SharePoint</span>
                            <span class="tech">JQuery</span>
                            <span class="tech">XHTML and CSS layout</span>
                        </div>
                    </div>
                </div>

                <div class="case">
                    <div>
                        <div id="aurecon-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#aurecon-carousel"
                                    data-slide-to="0"
                                    class="active"
                                ></li>
                                <li
                                    data-target="#aurecon-carousel"
                                    data-slide-to="1"
                                    class=""
                                ></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img alt="" src="Images/showcases/aurecon-1.jpg" />
                                </div>
                                <div class="item">
                                    <img alt="" src="Images/showcases/aurecon-2.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details">
                        <h3 class="name">Aurecon</h3>
                        <p class="description">
                            SSW were brought in to architect a SharePoint farm for their user
                            base of over 6000 employees worldwide, implement the first part of
                            their portal using best practices for development and deployment,
                            and to train their developers and support staff.
                        </p>
                        <div>
                            <span class="tech">SharePoint</span>
                            <span class="tech">XHTML and CSS layout</span>
                        </div>
                    </div>
                </div>

                </div>

                <button 
                    type="button"
                    class="load-more"
                    data-toggle="collapse" 
                    data-target="#more-cases" 
                    data-aos="fade-up" 
                    aria-expanded="false"
                    aria-controls="more-cases"
                >
                    Load More
                </button>

            </div>
        </div>
	</div>

    <!-- testimonials section -->

	<div class="testimonials-section">
        <div class="container">
            <div class="col-md-4 testimonialCol">
                <div class="callout top-left" data-aos="flip-right">
                    <p>It was a pleasure to have you in the office again.</p>
                    <p>I continue to be impressed by the quality of work and advice you provide.</p>
                
                </div>
                 <img src="/SSW/images/consulting/mark_p.jpg"/><div class="tName"> Mark Pigram</div><div class="tCompany">Contracts Online</div>
            </div>
           

            <div class="col-md-4 testimonialCol">
                <div class="callout top-left" data-aos="flip-right">
                <p>We have dealt with several people at SSW from a network tech helping us with a domain issue, to a couple of graphic designers and several programmers and they have ALL been first rate. </p>
                </div>
                <img src="/SSW/images/consulting/peter-dimaridis.jpg"/><div class="tName"> Peter Dimaridis</div><div class="tCompany">AuctionsPlus</div>
            </div>
            

            <div class="col-md-4 testimonialCol">
                <div class="callout top-left" data-aos="flip-right">
                <p>... out of all the developers I have used in the past [SSW] provide the most complete solutions and best outcomes.</p>
                <p>Thanks for your attention to detail once again.</p>
                
                </div>
                <img src="/SSW/images/consulting/peter-m.jpg"/><div class="tName"> Peter McCurdy</div><div class="tCompany">PDS</div>
            </div>
            
    <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal" data-aos="fade-up"><div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
                <h2>or call us on +61 2 9953 3000</h2>
    <!-- CTA button-->
        </div>
          
	</div>
    
<!-- //testimonials section -->
    <!-- about SSW section -->

	<div class="about-section">
		<div class="container">
            <h1>Why should you choose <span class="red">SSW</span>?</h1>
            <div class="col-md-6">
                <div class="video-player" data-id="Jveq6VFjWTA" data-youkuid=""></div>
                <%--<iframe width="540" height="304" src="https://www.youtube.com/embed/eu0qhzevEXQ?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen data-aos="fade-up"></iframe>--%>
                <%--<img src="/SSW/images/consulting/about_ssw.jpg" data-aos="fade-up" />--%>
            </div>
            <div class="col-md-6">
                <p data-aos="fade-up">SSW's Consulting Services have delivered best of breed Microsoft solutions for more than 1,000 clients in 15 countries. With 40+ consultants in five countries, SSW's developers are some of the best in the business. We have many Microsoft Certifications, three MVPs, and a Microsoft Regional Director.</p>
            </div>
        </div>
	</div>
<!-- //about SSW section -->

    <!-- clients section -->

	<div class="clients-section">
		<div class="container">
            <h1>Companies we have worked with</h1>
            <div class="row no-gutters">
                <div class="col-sm-4"><img src="/SSW/images/consulting/clients1.png" alt="SSW Clients" class="center-block"></div>
                <div class="col-sm-4"><img src="/SSW/images/consulting/clients2.png" alt="SSW Clients" class="center-block"></div>
                <div class="col-sm-4"><img src="/SSW/images/consulting/clients3.png" alt="SSW Clients" class="center-block"></div>   
            </div>
        </div>
	</div>
<!-- //clients section -->

    <!-- technologies section -->

	<div class="technologies-section">
		<div class="container">
            <h1>Other Technologies</h1>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/sqlserverlogo.png" />
                    <p>SQL Server is Microsoft's enterprise level database platform. Being used as the backend database for the majority of Microsoft based IT solutions, it has numerous features to ensure high availability, scalability, data integrity & performance. <a href="DatabaseDevelopment.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/net-logo.png" />
                    <p>.NET 5 (was .NET Core) is a free, cross-platform, open source developer platform for building many different types of applications. With .NET, you can use multiple languages, editors, and libraries to build for web, mobile, desktop, games, and IoT.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/angular-logo.png" />
                    <p>This Google-built and maintained Javascript framework allows us to develop fast, responsive, and interaction-rich web applications. <a href="Angular.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                <img src="/SSW/images/consulting/react-icon.png" />
                <p>React is a JavaScript library for building fast Web apps with JavaScript. It encourages the creation of reusable UI components which present data that changes over time. <a href="React.aspx">Read More</a></p>
                </div>
            </div>

            <div class="col-md-12">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                <img src="/SSW/images/consulting/ms-azure-logo.png" />
                <p>Microsoft Azure provides on-demand infrastructure that scales and adapts to your changing business needs. Whether you are creating new applications or running existing applications we provide the best price-performance and end-to-end support. <a href="Azure.aspx">Read More</a></p>
                </div>
            </div>
        </div>
	</div>
<!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">web project</span></h1>
            
                <p>Jump on a call with one of our Account Managers to discuss how we can help you.</p>

    <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal" data-aos="fade-up"><div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
            <h2>or call us on +61 2 9953 3000</h2>
    <!-- CTA button-->
                    
        </div>
	</div>
					<%-- // material design modal <a href="#" data-modal="#modal" class="modal__trigger "><div class="anim"></div> Book a FREE Initial Meeting</a>--%>

<!-- //solutions section -->
</asp:Content>
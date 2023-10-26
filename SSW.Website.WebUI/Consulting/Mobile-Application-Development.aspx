<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Mobile App Development | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Mobile-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Mobile-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Mobile Apps Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Mobile Apps Consulting - Enterprise Software Development">
    <meta property="og:description" content="If you use mobile apps on an iPhone or an Android phone then you know that mobile phones are an essential tool for business, just like a laptop. Wireless providers have increased their bandwidth and accessibility, opening up more opportunities than ever before. Businesses are gaining a competitive edge through apps that allow them to become more efficient. SSW can build mobile apps using React Native, Xamarin, Flutter, Cordova, PWA or Ionic!" />
</asp:Content>

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
        "url": "https://www.ssw.com.au/SSW/Consulting/images/thumbs/thumb-mobiles-apps.jpg",
        "height": "115",
        "width": "115",
        "@id": "https://www.ssw.com.au/SSW/Consulting/images/thumbs/thumb-mobiles-apps.jpg"
    },
    "brand": {
        "@id": "https://www.ssw.com.au/"
    },
    "additionalType": "https://www.wikidata.org/wiki/Q2988038",
    "url": "https://www.ssw.com.au/ssw/Consulting/Mobile-Application-Development.aspx",
    "areaServed": "http://www.wikidata.org/entity/Q13780930",
    "description": "We can build your mobile app using React Native, Xamarin, Flutter, Cordova, PWA or Ionic!",
    "name": "Mobile Application Development",
    "@id": "https://www.ssw.com.au/ssw/Consulting/Mobile-Application-Development.aspx"
}
</script>

</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to build a <span class="red">mobile application</span>?</h1>
            <h2>Australia's leading mobile developers and consultants</h2>
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

<!-- benefits-section -->
	<div class="benefits-section">
		<div class="container"><a name="more"></a>
            <h1>The benefits of <span class="red">Mobile Apps</span></h1>
            <h5>If you use mobile apps on an iPhone or an Android phone then you know that mobile phones are an essential tool for business, just like a laptop. Wireless providers have increased their bandwidth and accessibility, opening up more opportunities than ever before. Businesses are gaining a competitive edge through apps that allow them to become more efficient. SSW can build mobile apps using React Native, Xamarin, Flutter, Cordova, PWA or Ionic!</h5>
            <div class="eric-video"><div class="video-player" data-id="SebRctjvrVU" data-youkuid=""></div></div>
            <p class="clearfix"></p>
            <h5>Mobile Application Development is an established trend in today's market. Convenience and accessibility have become key factors in why a business solution achieves success. There are two main mobile platforms to target in the current market: Android & iPhone. SSW develops mobile applications in a cross platform way, to ensure that your investments in one platform can easily be brought to the other.</h5>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/crm-integration.png" />
                    <h4>CUSTOMIZED RICH CONTENT</h4>
                    <p>Customized mobile applications with creative content control such as text, images, audio, video and rich functionality</p>
                </div>
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/NFC-payments.png" />
                    <h4>ADVANCE HARDWARE INTEGRATION</h4>
                    <p>Deep integration with advanced hardware features of modern devices such as cameras, GPS, and motion sensors</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/business-processes.png" />
                    <h4>DATABASE INTEGRATION</h4>
                    <p>Integration with your backend systems and databases to provide clients with real time access to information on their mobile devices</p>
                </div>
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/user-expereince.png" />
                    <h4>USER EXPERIENCE</h4>
                    <p>Experienced and specialized graphic and UX designers</p>
                </div>
            </div>

            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-apps">SSW Rules to Better Mobile Apps</a>.</h5>
        </div>

	</div>
<!-- //benefits-section -->

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

<!-- modules section -->
	<div class="technologies-section MSection">
		<div class="container">
            <h1>Technologies</h1>

             <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/maui-logo.png" />
                    <p class="h3">.NET MAUI (was Xamarin)</p>
                    <p>.NET Multi-platform App UI (.NET MAUI) is a framework for building modern, multi-platform, natively compiled iOS, Android, macOS, and Windows apps using C# and XAML in a single codebase.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/native-apps-icon.png" />
                    <p class="h3">Hybrid vs Per-Platform Native</p>
                    <p>Hybrid development take the web's most popular development frameworks and compiling the code into a native UI format for each relevant platform. This brings the best of both worlds - fast development and code reuse, using familiar technologies, and the performance and consistency of a native rendering engine. <a href="https://adamcogan.com/2016/02/10/high-fashion-and-javascript-frameworks/" class="external-link">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/angular-icon.png" />
                    <p class="h3">Angular and NativeScript</p>
                    <p>Build rich native applications with the same toolkit as your responsive websites. <a href="Angular.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/ionic-icon.png" />
                    <p class="h3">Ionic and Apache Cordova</p>
                    <p>HTML-based cross platform apps, on an open sourced mobile SDK.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/react-icon.png" />
                    <p class="h3">React Native</p>
                    <p>Build native mobile apps using only JavaScript. It uses the same design as React, letting you compose a rich mobile UI from declarative components. <a href="React.aspx">Read More</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/flutter-icon.png" />
                    <p class="h3">Flutter</p>
                    <p>Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/pwas-icon.png" />
                    <p class="h3">Progressive Web Apps</p>
                    <p>Building a high-quality Progressive Web App has incredible benefits, making it easy to delight your users, grow engagement and increase conversions.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/reponsive-apps-icon.png" />
                    <p class="h3">Responsive Websites</p>
                    <p>Mobile-targeted websites using Responsive Design. Doesn’t have an installable app, but is instead accessed through the phone's browser.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/nfc-hardware-icon.png" />
                    <p class="h3">Hardware Integration</p>
                    <p>Use hardware features in the phone such as GPS, cameras, rugged devices, RFID, and NFC.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/bots-ai-machine-learning.png" />
                    <p class="h3">Bots/AI</p>
                    <p>SSW are experts at building cross platform mobile and chat apps. We can leverage the power of AI with Machine Learning.</p>
                </div>
            </div>

              <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/apache-cordova.png" />
                    <p class="h3">Apache Cordova</p>
                    <p>Apache Cordova enables software programmers to build hybrid web applications for mobile devices using CSS3, HTML5, and JavaScript, instead of relying on platform-specific APIs like those in Android, iOS, or Windows Phone.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/electron.png" />
                    <p class="h3">Electron</p>
                    <p>Electron allows for the development of desktop GUI applications using web technologies: it combines the Chromium rendering engine and the Node.js runtime.</p>
                </div>
            </div>

        

        </div>
	</div>
<!-- //Modules section -->

<!-- solutions section -->
	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">mobile project</span></h1>
            
                <p>Jump on a call with one of our Account Managers to discuss how we can help you.</p>

    <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal" data-aos="fade-up"><div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
            <h2>or call us on +61 2 9953 3000</h2>
    <!-- CTA button-->
                    
        </div>
	</div>

<!-- //solutions section -->
</asp:Content>
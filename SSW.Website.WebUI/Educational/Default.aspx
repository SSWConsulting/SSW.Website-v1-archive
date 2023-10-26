<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="SSW.Website.WebUI.Raven" Title="SSW Consulting Educational - Sydney, Brisbane, Melbourne" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="description" content="The importance of monitoring and managing student safety has never been more prominent, nor topical. As an independent school or university you have a clear duty of care to your students – as well as an obligation to the parents and carers who are part of your school community. Following the 2017 Royal Commission into Child Sexual Abuse, you also now have a detailed set of recommendations for ensuring child safety and protecting students’ welfare and wellbeing. As technology specialists, we are focused on designing and building modern technology solutions that can help K-12 schools, of all sizes and in all sectors, respond to these requirements and enhance all-important student safety." /> 
    <meta name="keywords" content="student safety, students safety and wellbeing, education sector, technology for schools, technology for education sector, student protection, internet safety for kids, internet safety, educational technology, online safety, cyber safety for kids and children" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <!--<img class="icon" src="images/thumbs/thumb-educational.jpg" alt="SSW Educational"  -->
    <h1>SSW Educational</h1>
    <h2>Customised Technology Solutions</h2>
</asp:Content>
<asp:Content ID="Slider" ContentPlaceHolderID="Slider" runat="server">
    <div id="carousel-example-generic" class="carousel slide hidden-xs" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <a href="files/SSW-Whitepaper.pdf" target="_blank" class="ignore"><img src="/ssw/images/raven/ssw-educational-banner.jpg" alt="SSW Educational" /></a>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">
        <h2><a name="overview"></a>Overview</h2>
        <p>The importance of monitoring and managing student safety has never been more prominent, nor topical. As an independent school (or university) you have a clear duty of care to your students – as well as an obligation to the parents and carers who are part of the community. Following the 2017 Royal Commission into Child Sexual Abuse, you also now have a detailed set of recommendations for ensuring child safety and protecting students’ welfare and wellbeing. Yet while your school may be resolutely committed to following these recommendations, it can be hard to know where to start when it comes to putting them into action – or what processes and technology platforms you need.</p>
        <p>This is where SSW can help. As technology specialists, we are focused on designing and building modern technology solutions that can help K-12 schools, of all sizes and in all sectors, respond to these requirements and enhance all-important student safety. <a href="https://www.ssw.com.au/ssw/Company/Clients/#filter=.edu">View some of our educational clients</a>.</p>
    </div>

    <div class="section">
        <h2><a name="custom-solutions"></a>How SSW can help: Customised Technology Solutions</h2>
        <p>At SSW, we have designed three broad technology solutions that can help you achieve positive outcomes with regards to your students’ safety and wellbeing. We recognise that no two schools are the same, and can customise every solution to suit your specific needs. We can also create a whole raft of other solutions depending on your school's (or university's) existing technology and unique requirements.</p>
    </div>

    <div class="section">
        <div class="row">
            <div class="col-sm-4 col-xs-12">
                <img src="images/ssw-educational-1.jpg" alt="SSW Educational image" />
                <h4>Behavioural management solutions</h4>
                <p>We can create customised solutions to help you identify and correctly manage students' behavioural reporting, so as to protect their long-term welfare and achieve positive educational outcomes.</p>
            </div>
            <div class="col-sm-4 col-xs-12">
                <img src="images/ssw-educational-2.jpg" alt="SSW Educational image" />
                <h4>Student protection solutions</h4>
                <p>We can create user-friendly, highly secure online resources through which your school can document incidents - or suspected incidents, as well as highlight trends and facilitate action.</p>
            </div>
            <div class="col-sm-4 col-xs-12">
                <img src="images/ssw-educational-3.jpg" alt="SSW Educational image" />
                <h4>Onboarding solutions</h4>
                <p>For all schools, enrolling and onboarding new students can be a very time consuming and potentially error-prone process, particularly if managed manually. We can help you generate enormous efficiencies by developing online systems that enable self-service.</p>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="video-player" data-id="Mc24zR5rprI"></div>
    </div>

    <div class="section">
        <div class="greybox">
            <h3>Read the whitepaper: Protecting students' welfare and wellbeing in Australian independent schools</h3>
            <p>As an independent school, protecting the safety and wellbeing of your students is of vital importance. In this whitepaper, we highlight the importance of student safety, discuss Australian schools’ duty of care in the context of recent investigations, and provide examples of how a customised technology solution could help schools meet the ten Child Safe Standards as recommended by 2017 Royal Commission into Child Sexual Abuse.</p>
            <p class="contactActionPhone"><a href="files/SSW-Whitepaper.pdf" target="_blank" class="ignore btn red done">DOWNLOAD THE WHITEPAPER NOW</a></p>
        </div>
    </div>

    <text:Location runat="server" />

    <div class="section">
        <h2><a name="why-ssw"></a>Why SSW?</h2>
        <p>SSW is an Australian-based technology firm with extensive experience in the education sector. We build highly customised solutions for public and private sector organisations of all sizes, to help them to resolve technology challenges and implement best-practice systems that get results.</p>
        <p>We are also a Microsoft Gold Level partner, and specialise in building applications on the Microsoft stack. We have 30+ years’ experience consulting to organisations, building bespoke software apps and teaching, supporting and influencing the global developer community. Our Chief Architect is one of only a few Microsoft Regional Directors in Australia who educate developer communities and help Microsoft evolve their products based on feedback.</p>
        <p class="contactActionPhone"><a href="/ssw/Company/ContactUs.aspx" class="btn black next">Call us today</a></p>
    </div>

    <!-- This site is converting visitors into subscribers and customers with OptinMonster - https://optinmonster.com --><script>var om1526_24214,om1526_24214_poll=function(){var r=0;return function(n,l){clearInterval(r),r=setInterval(n,l)}}();!function(e,t,n){if(e.getElementById(n)){om1526_24214_poll(function(){if(window['om_loaded']){if(!om1526_24214){om1526_24214=new OptinMonsterApp();return om1526_24214.init({"a":24214,"staging":0,"dev":0,"beta":0});}}},25);return;}var d=false,o=e.createElement(t);o.id=n,o.src="https://a.optmstr.com/app/js/api.min.js",o.async=true,o.onload=o.onreadystatechange=function(){if(!d){if(!this.readyState||this.readyState==="loaded"||this.readyState==="complete"){try{d=om_loaded=true;om1526_24214=new OptinMonsterApp();om1526_24214.init({"a":24214,"staging":0,"dev":0,"beta":0});o.onload=o.onreadystatechange=null;}catch(t){}}}};(document.getElementsByTagName("head")[0]||document.documentElement).appendChild(o)}(document,"script","omapi-script");</script><!-- / OptinMonster -->

</asp:Content>

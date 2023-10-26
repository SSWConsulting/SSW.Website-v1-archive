<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="SSW Employment Opportunities" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>We're always looking for <span class="red">exceptional candidates</span> at SSW</h1>
            <h2>Building the best software - Why you should work with us</h2>

            <!-- CTA button -->
            <a href="#Available" class="button raised hoverable">
                <div class="anim"></div>
                Check out our current opportunities
            </a>
            <h2 class="nonvisible">or call us on +61 2 9953 3000</h2>
            <!-- CTA button-->
        </div>

    </div>

    <div id="videocontainer" style="width: auto; height: 500px; position: fixed; top: 50%; left: 50%; min-width: 100%; min-height: 100%; width: auto; height: auto; z-index: -100; transform: translateX(-50%) translateY(-50%); background: url(/ssw/include/consulting/img/bg.jpg) no-repeat; background-size: cover; transition: 1s opacity;">
        <video autoplay="" muted="" loop="">
            <source src="/ssw/include/consulting/img/Employment_background.mp4" type="video/mp4">
            <source src="/ssw/include/consulting/img/Employment_background.webm" type="video/webm">
        </video>
    </div>

    <!-- benefits-section -->

    <div class="benefits-section">
        <div class="container">
            <h1>Things you will <i class="fa fa-heart red" aria-hidden="true"></i> about SSW</h1>
            <div class="eric-video">
                <div class="video-player" data-id="tWuutobJtdg" data-youkuid=""></div>
            </div>

            <h5><a href="https://youtu.be/1ne75o4degg" target="_blank">See alternative short version (1 min)</a></h5>

            <%--<iframe width="560" height="315" src="https://www.youtube.com/embed/eu0qhzevEXQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>--%>
            <h5>SSW has offices in Sydney, Brisbane, Melbourne, Newcastle, and Hangzhou. We have employees from all around the world. We're flexible, and in this fast paced industry, we're on the forefront of cutting edge technology. We're enthusiastic and have a <a href="https://www.ssw.com.au/ssw/Company/Culture/">"Make it happen" culture</a>. We love engaging with the software development community.</h5>

            <h5>We have a really special team here at SSW.<br> See<a href="https://youtu.be/eu0qhzevEXQ" target="_blank"> "Building the best software - Why you should work for SSW" (2:33)</a></h5>
            
            <h5>SSW is unlike any place you've ever worked at.</h5>

            <!-- CTA button -->
            <a href="#Available" class="button raised hoverable EmMdBtn" data-aos="fade-up">
                <div class="anim"></div>
                Check out our current opportunities
            </a>
            <!-- CTA button-->

            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/Employment/latest-technology.png" />
                    <h4>Focus on latest technology</h4>
                    <p>We focus on the latest technology - you won't be stuck doing Access/Windows Forms/ASP.NET 1.1.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/Employment/smart-people.png" />
                    <h4>Work with smart people</h4>
                    <p>We employ smart people and they generate some awesome ideas.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/Employment/cross-industry.png" />
                    <h4>Cross-industry experience</h4>
                    <p>You never get stuck at the same place forever. We work at different businesses so you get cross-industry experience.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/Employment/build-your-career.png" />
                    <h4>Build your career</h4>
                    <p>If you want to build your profile in the industry our SSW TV team and SSW training team will help you make a name for yourself.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/Employment/yes-no.png" />
                    <h4>Work with the decision makers</h4>
                    <p>Managements hands-on involvement means you are often dealing with the decision maker and you should get a 'yes' or 'no' without having to go through a chain of management.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/Employment/best-practices.png" />
                    <h4>SSW's best practices</h4>
                    <p>You will be working with <a href="https://www.ssw.com.au/rules/">SSW Rules</a> which are best practices that developers and companies all over the world follow.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/Employment/fresh-prospective.png" />
                    <h4>Fresh perspectives</h4>
                    <p>You can persuade management to change their decisions if you have a good logical reason.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/Employment/gym.png" />
                    <h4>The balance</h4>
                    <p>We encourage employees to get fit. We have a gym at the Sydney office.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/Employment/work-experience.png" />
                    <h4>Work Experience</h4>
                    <p>You will learn and be among quality devs who are keen and committed.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/Employment/glassdoor.png" />
                    <h4>Glassdoor</h4>
                    <p>We think that we are a great place to work, and our employees think so as well! Read what current and past employees have written <a class="ignore" href="http://www.glassdoor.com.au/Overview/Working-at-SSW-EI_IE818461.11,14.htm">about us</a>.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/sharing-and-collaboration.png">
                    <h4>Work from home mix available</h4>
                    <p>We believe that the best software is built by bringing people together in person to solve the problems faced by our clients. However, for most roles we enable SSW employees to work in a mix of environments that takes into account both productivity and wellbeing - including at home, and in our office. We have a flexible policy where our people feel empowered.</p>
                </div>
            </div>

            <h1><span class="red">Perks</span> of working at SSW</h1>
            <h5>Working for SSW has many excellent perks and benefits.</h5>
            <h5>We value all of our staff, and want you to be successful and help us deliver awesome solutions. All SSW team members get:</h5>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-5 text-left">
                    <ul>
                        <li>A competitive salary</li>
                        <li><a href="https://my.sugarlearning.com/SSW/items/8331/business-hours-and-working-from-home-wfh">Work from home</a> mix available</li>
                        <li><a href="https://my.sugarlearning.com/SSW/items/8158/pc-get-your-laptop-salary-sacrifice">Salary sacrifice</a> options</li>
                        <li>Coaching and public <a href="https://my.sugarlearning.com/SSW/items/9343/running-training-presenting-on-user-groups">speaking opportunities</a> and publishing on <a href="https://www.youtube.com/channel/UCBFgwtV9lIIhvoNh0xoQ7Pg">SSW TV</a></li>
                        <li><a href="https://my.sugarlearning.com/SSW/items/14116/training-self-education-and-software-licenses">Subsidised training</a></li>
                        <li><a href="https://www.ssw.com.au/rules/do-you-have-a-dress-code">Casual dress</a> half the week</li>
                        <li>Get paid for unused sick leave</li>
                        <li><a href="https://www.ssw.com.au/rules/rules-to-better-health-and-exercise-in-the-workplace">Health and wellbeing initiatives</a></li>
                    </ul>
                </div>
                <div class="col-md-5 text-left">
                    <ul>
                        <li>Workplace with <a href="https://www.ssw.com.au/rules/do-you-know-the-dangers-of-sitting">stand-up desks</a> and ergonomic chairs</li>
                        <li><a href="https://www.ssw.com.au/rules/efficiency-do-you-use-two-monitors">2-3 monitors as standard</a></li>
                        <li>Generous and flexible paid leave policy, including fun new experiences via <a href="https://my.sugarlearning.com/SSW/items/13928/yolo-day">YOLO days</a></li>
                        <li>Fun annual retreats</li>
                        <li><a href="https://my.sugarlearning.com/SSW/items/13291/free-lunch">Free lunches</a> most Fridays</li>
                        <li>Free family password manager subscription to keep your family's passwords secure</li>
                        <li>Nespresso coffee pods to keep you going!</li>
                        <li>Variety of work. Anyone can request to be rotated off long projects after 6 months if they're getting bored</li>
                    </ul>
                </div>
                <div class="col-md-1"></div>
            </div>

            <h1>SSW <span class="red">Getaway</span> / <span class="red">Retreat</span></h1>
            <h5>Once or twice a year the SSW guys and their families attend the SSW Getaway and spend some time together outside the office.</h5>
            <h5>During these getaways, we do a bunch of fun activities together, have a hearty and delicious meal, and take an epic walk someplace beautiful.</h5>
            <div class="eric-video">
                <div class="video-player" data-id="BIapqdy170k" data-youtuberes="hqdefault" data-youkuid="XMzM5NzY0NDI4MA=="></div>
            </div>
            
            <a target="_blank" href="https://www.youtube.com/playlist?list=PLpiOR7CBNvlr8T3fyYVxeKbmRp93xTCPM" class="button raised hoverable EmMdBtn">
                <div class="anim"></div>
                Watch the playlist
            </a>

        </div>

    </div>
    <!-- //benefits-section -->

    <!-- technologies section -->

    <div class="technologies-section">
        <div class="container">
            <h1><span class="red">Recruitment</span> process at SSW</h1>
            <img src="/SSW/images/Employment/recruitment_doodle.png" />
            <!-- CTA button -->
            <a href="#Available" class="button raised hoverable EmMdBtn" data-aos="fade-up">
                <div class="anim"></div>
                Check out our current opportunities
            </a>
            <!-- CTA button-->
            <div class="col-md-6">
                <div class="greyTBox EgreyTBox" data-aos="flip-left">
                    <h2>Permanent Roles</h2>
                    <p>Due to the tremendous growth that our business has experienced over the last few months, we are seeking enthusiastic people to join the SSW team. Our company is based in Sydney, Melbourne and Brisbane. Our head office is located in Neutral Bay, Sydney which is one of the most elegant and scenic areas of Sydney. SSW is an Australian owned progressive consulting firm, specializing in building, implementing and maintaining Microsoft .NET software applications.</p>
                    <p>Sydney is a beautiful city on a magnificent harbour with good public schools and friendly people. The area offers some of the best beaches and outdoor sports in the world. SSW is uniquely located with easy access to the City, North Sydney and the Northern Suburbs.</p>
                </div>

            </div>
            <div class="col-md-6">
                <div class="greyTBox EgreyTBox" data-aos="flip-left">
                    <h2>Contractor Opportunities</h2>
                    <p>We're regularly asked to provide highly skilled teams for short term projects. To facilitate these engagements we're looking for contractors who like brief challenging projects. You'll be part of our On-Demand squad - a team of specialised developers in ASP.NET, Angular, React, Xamarin, WPF, Azure, Dynamics CRM and SharePoint.</p>
                    <p>Engagements are undertaken in Australia, China, Europe, UK and the USA. Most require working on-site, however, some are suitable for remote working.</p>
                    <p>If you have a proven track record and you love working with the latest technologies, please send us your CV including details of your technology specializations, availability and salary expectations.</p>
                </div>

            </div>
            <h3 class="text-center">Please note that SSW requires all employment candidates to:</h3>
            <div class="col-md-6">
                <ul>
                    <li>Have strong communication skills with the ability to liaise with people at all levels</li>
                    <li>Hold a degree</li>
                </ul>
            </div>
            <div class="col-md-6">
                <ul>
                    <li>Live within 40 mins drive from SSW</li>
                    <li>Universities Admission Index (UAI) or Equivalent of 80% or above</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //technologies section -->

    <!-- about SSW section -->
    <div class="about-section">
        <div class="container">
            <h1><span class="red">Dressing down</span> (aka casual Fridays)</h1>
            <div class="col-md-6">
                <p data-aos="fade-up">We have a dress-down code or a "devolution" as we call it! It's something to look forward to and we can physically see the week counting down to Friday!</p>
                <p data-aos="fade-up">Our employees dress up on Mondays and Tuesdays by wearing company colors, and dress down later with a casual Thursday and Friday.</p>
                <p data-aos="fade-up">More on <a href="https://www.ssw.com.au/rules/do-you-have-a-dress-code">Do you follow the company's dress code?</a></p>
            </div>
            <div class="col-md-6">
                <img src="/SSW/Employment/Images/SSW-Dresscode.png" data-aos="fade-up" />
            </div>
        </div>
    </div>
    <!-- //about SSW section -->

    <!-- solutions section -->
    <div class="opportunities-listing-section">
        <div class="container">
            <a name="Available"></a>
            <h1>Current <span class="red">opportunities</span></h1>
            <p class="text-center">You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                SSW is unlike any place you've ever worked at.</p>

            <div class="col-md-3 filters" id="SidebarLeft">
                <div class="ui-group">
                    <h3 class="filter-header"><a name="locationfilter"></a>I am looking for...</h3>
                    <ul id="filters-locations" class="option-set" data-filter-group="Locations">
                        <li><a href="#locationfilter" data-filter=".location-all" class="is-checked Filterbutton">All Locations</a></li>
                        <li><a href="#locationfilter" data-filter=".location-sydney" class="Filterbutton">Sydney</a></li>
                        <li><a href="#locationfilter" data-filter=".location-brisbane" class="Filterbutton">Brisbane</a></li>
                        <li><a href="#locationfilter" data-filter=".location-melbourne" class="Filterbutton">Melbourne</a></li>
                        <li><a href="#locationfilter" data-filter=".location-newcastle" class="Filterbutton">Newcastle</a></li>
                        <li><a href="#locationfilter" data-filter=".location-beijing" class="Filterbutton">China</a></li>
                    </ul>
                </div>
                <div class="separator-div"><a name="typefilter"></a></div>
                <div class="ui-group">
                    <ul id="filters-type" class="option-set" data-filter-group="Types">
                        <li><a href="#skillfilter" data-filter=".type-all" class="is-checked Filterbutton">All Types</a></li>
                        <li><a href="#skillfilter" data-filter=".type-contract" class="Filterbutton">Contract</a></li>
                        <li><a href="#skillfilter" data-filter=".type-permanent" class="Filterbutton">Permanent</a></li>
                        <li><a href="#skillfilter" data-filter=".type-fresh" class="Filterbutton">Work Experience</a></li>
                    </ul>
                </div>
                <div class="separator-div"><a name="positionfilter"></a></div>
                <div class="ui-group">
                    <ul id="filters-position" class="option-set" data-filter-group="Positions">
                        <li><a href="#Positionfilter" data-filter=".position-all" class="Filterbutton">All Positions</a></li>
                        <li><a href="#Positionfilter" data-filter=".position-current" class="is-checked Filterbutton">Available Positions</a></li>
                        <li><a href="#Positionfilter" data-filter=".position-filled" class="Filterbutton">Filled Positions</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-9">
                <!-- list of positions -->
                <div id="isotopeVertical">
                    <div class="grid">
                        <div class="panel-group location-all location-sydney location-brisbane location-melbourne location-newcastle location-beijing type-all type-permanent position-all position-current" role="tablist" aria-multiselectable="true">
                            <h3 class="positions-heading">Available Positions</h3>
                        </div>

                        <!-- USE AS TEMPLATE FOR NEW POSITIONS
                        <div class="panel-group location-all location-sydney location-melbourne location-brisbane location-newcastle type-all type-permanent position-all position-current" id="accordionXX" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingXX">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseXX" aria-expanded="true" aria-controls="collapseXX">
                                        <h2 class="panel-title"><span class="position-title">...</span> <span class="position-location"><i class="fa fa-map-marker"></i> Sydney, Brisbane, Melbourne, and Newcastle </span></h2>
                                    </a>
                                </div>
                                <div id="collapseXX" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="headingXX">
                                    <div class="panel-body">
                                        <p>SSW is looking for </p>

                                        <p>You will be working with expert Microsoft full stack developers and designers in a wide variety of exciting enterprise projects.</p>
                                        <p>This role requires great communication skills and solid experience in delivering production-ready web solutions. You will possess a can-do attitude and love to analyze, design, and implement cloud software solutions. This role requires someone who can work closely with clients, think critically, and create the right solution for the right job. Experience with Microsoft .NET is a must.</p>
                                        <p>The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>What you'll be doing?</p>
                                        <ul>
                                            <li><strong>More important than experience is attitude, we are looking for developers who are passionate about delivering awesome software using the latest technologies and best DevOps practices and want to fun while doing so!</strong></li>
                                            <li>...</li>
                                        </ul>
                                        <p>What you'll need?</p>
                                        <ul>
                                            <li>...</li>
                                        </ul>
                                        <p>Technical skills:</p>
                                        <ul>
                                            <li>...</li>
                                        </ul>

                                        <p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Cloud Architect')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div> -->

                        <div class="panel-group location-all location-sydney location-melbourne location-brisbane location-newcastle type-all type-permanent position-all position-current" id="accordion32" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading32">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse32" aria-expanded="true" aria-controls="collapse32">
                                        <h2 class="panel-title"><span class="position-title">Microsoft Power Platform Developer</span> <span class="position-location"><i class="fa fa-map-marker"></i> Sydney, Brisbane, Melbourne, and Newcastle </span></h2>
                                    </a>
                                </div>
                                <div id="collapse32" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading32">
                                    <div class="panel-body">
                                        <p><strong>SSW is looking for Microsoft Power Platform Developer to start ASAP.</strong></p>

                                        <p>Are you a low-code developer who wants to work with our team of Microsoft full-stack developers and designers on a wide variety of exciting corporate projects?</p>
                                        <p>This role requires someone who can work closely with clients, think critically, and create the right solution for the right job. The crucial skills for this role include Microsoft Power Platform and ideally Dynamics 365.</p>
                                        <p>You will have the opportunity to up-skill, develop your personal brand, contribute to innovative projects, and engage with businesses to develop unique solutions to their problems.</p>
                                        <p><strong>More important than experience is attitude, we are looking for developers who are passionate about delivering awesome software using the latest technologies and want to fun while doing so!</strong></p>
                                        
                                        <hr />
                                        <p>About the Role:</p>
                                        <ul>
                                            <li>A minimum of 2 years of Microsoft Power Platform experience with a <strong>particular focus on model-driven apps</strong></li>
                                            <li>Experience developing model-driven apps performs tasks such as schema design, views, forms, workflows</li>
                                            <li>Deploying apps across multiple environments using Power Platform Build Tools</li>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                            <li>An IT degree or equivalent experience</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues</li>
                                            <li>A working knowledge of agile software development methodologies (preferably Scrum)</li>
                                            <li>A passion for finding and using best practices and updating them when necessary. See <a href="https://www.ssw.com.au/rules/">SSW Rules</a></li>
                                            <li>A keen interest in the development community including technological trends, news, people, and innovations</li>
                                            <li>Bonus - Microsoft Certificates (PL-100, PL-200, PL-400, PL-600, PL-900, etc)</li>
                                        </ul>
                                        <p>Skills and Technologies used at SSW:</p>
                                        <ul>
                                            <li>Microsoft Power Platform</li>
                                            <li>Microsoft Dataverse</li>
                                            <li>Power Apps (model-driven)</li>
                                            <li>Power Automate/Logic Apps</li>
                                            <li>Power BI</li>
                                            <li>Microsoft Dynamics 365</li>
                                            <li>Customization and Admin/Configuration</li>
                                            <li>Microsoft SharePoint</li>
                                        </ul>
                                        <p>More about SSW:</p>
                                        <p>Check out this video to find out more about us: <a href="https://youtu.be/tWuutobJtdg">Why work at SSW?</a></p>
                                        <p>We deliver scalable and extensible custom solutions with the future in mind. SSW is a great place to work, as we produce world class modern solutions, open many avenues to bolster your public profile, foster an inclusive and supportive office environment, and much more. </p>
                                        <p>We are committed to increasing our workplace diversity, and we urge people from all walks of life to apply. We encourage expertise, mastery, and respectful discourse. We aim to build you up and hope you'll do the same! We will help you grow your community profile and your technical abilities so you can be the best developer you can be. Our horizontal organisational structure means that your input will make an impact on the way we do business.</p>

                                        <p>In the spirit of transparency our interview process has an initial chat, a timed take-home communication challenge, and a technical challenge.</p>
                                        <p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Power Platform Developer')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney location-melbourne location-newcastle type-all type-permanent position-all position-current" id="accordion6" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading6">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse6" aria-expanded="true" aria-controls="collapse6">
                                        <h2 class="panel-title"><span class="position-title">User Experience Expert & Web Designer</span> <span class="position-location"><i class="fa fa-map-marker"></i> Sydney, Melbourne, and Newcastle </span></h2>
                                    </a>
                                </div>
                                <div id="collapse6" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading6">
                                    <div class="panel-body">
                                        <p><strong>SSW is looking for a highly talented User Experience Expert/Web Designer who is passionate about creating great standards-based sites.</strong></p>
                                        <p>You will be working with both creative designers and technical minded developers in a wide variety of exciting corporate projects. This role requires someone who can articulate concisely, think critically, and create aesthetically pleasing prototypes. An understanding of what constitutes a great user experience is a must.</p>
                                        <hr />
                                        <p>SSW designers are expected to work closely with developers on projects, not only other designers. Thus, being able to convey your ideas to people of a different mindset is of utmost importance.</p>
                                        <p>To see our current SSW Design portfolio, visit <a href="http://www.ssw.com.au/ssw/Consulting/WebsiteDesignAndUserExperience.aspx">our current SSW Design portfolio</a>.</p>
                                        <p>You will have:</p>
                                        <ul>
                                            <li>Australian Citizenship or Permanent Residency</li>
                                            <li><strong>A strong design portfolio</strong></li>
                                            <li><strong>Minimum 3 years of work experience</strong></li>
                                            <li><strong>User Experience (UX) design skills</strong></li>
                                            <li><strong>Front-end technical abilities</strong></li>
                                            <li><strong>Experience with Responsive Design</strong></li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues</li>
                                            <li>The ability to know how best to communicate your design ideas and defend the reasoning behind these decisions</li>
                                            <li>An understanding of common web usability issues and the ability to offer solutions</li>
                                            <li>A keen interest in the web design community including technological trends, news, people, and innovations</li>
                                            <li>A keen interest in digital and social media industry’s best practices</li>
                                        </ul>

                                        <p><strong>Skills:</strong></p>
                                        <ul>
                                            <li><strong>Expert with design tools like Adobe Creative Cloud (XD, Photoshop and Illustrator), Sketch, and Figma</strong></li>
                                            <li><strong>HTML5 & CSS3</strong></li>
                                            <li><strong>Usability & Accessibility</strong></li>
                                            <li>Web Standards, Semantic Mark-up and Cross-Browser Compatibility</li>
                                            <li>Experience with SharePoint, WordPress, and other CMS</li>
                                            <li>Microsoft Office Suite</li>
                                            <li>Marketing fundamentals</li>
                                        </ul>

                                        <p><strong>Favourable:</strong></p>
                                        <ul>
                                            <li>SEO</li>
                                            <li>JavaScript libraries like jQuery, Angular, or React</li>
                                            <li>Experience in presentations</li>
                                            <li>Experience in pre-sales</li>
                                            <li>Video editing - Adobe After Effects and Adobe Premiere Pro</li>
                                        </ul>
                                        <p>Is this you?! Please send us a copy of your resume/portfolio and contact details. For more information contact Penny@ssw.com.au or call 0415 759 348</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for User Experience Expert/Web Designer')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group location-all location-sydney location-brisbane location-melbourne location-newcastle type-all type-permanent position-all position-current" id="accordion22" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading22">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse22" aria-expanded="true" aria-controls="collapse22">
                                        <h2 class="panel-title"><span class="position-title">Senior Full Stack .NET Developer</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney, Brisbane, Melbourne, and Newcastle </span></h2>
                                    </a>
                                </div>
                                <div id="collapse22" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading22">
                                    <div class="panel-body">
                                        <p><strong>SSW is looking for an enthusiastic Full Stack .NET Developer</strong></p>
                                        <p>We are a team of Microsoft stack developers and designers, who work on a wide variety of exciting corporate projects, delivering scalable and extensible custom solutions with the future in mind.  SSW is a great place to work, as we foster an inclusive and supportive office environment, and much more. Check out this video to find out more about us: <a href="https://youtu.be/tWuutobJtdg">Why work at SSW?</a></p>
                                        <p>We are looking for developers who are passionate about delivering cutting-edge software, using the latest technologies and best DevOps practices. and want to have fun while doing so! You will have the opportunity to up-skill, develop your personal brand, contribute to innovative projects, and engage in meaningful work that makes a difference.</p>
                                        <p>We are committed to increasing our workplace diversity, and we urge people from all walks of life to apply. We encourage expertise, mastery, and respectful discourse. We aim to build you up and hope you'll do the same! We will help you grow your community profile and your technical abilities so you can be the best developer you can be. Our horizontal organisational structure means that your input will make an impact on the way we do business.</p>
                                        <p>This role requires great communication skills and solid experience in delivering production-ready web solutions. Further, we encourage you to take ownership of your relationship with clients and build meaningful connections, to think critically, and create the right solution for the right job.</p>
                                        <hr />
                                        <p>About you:</p>
                                        <ul>
                                            <li>Proven commercial experience with .NET web development</li>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                            <li>An IT degree or equivalent experience</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues</li>
                                            <li>Keen interest in the development community including technological trends, news, people, and innovations</li>
                                        </ul>
                                        <p>Skills and tech used at SSW:</p>
                                        <ul>
                                            <li>Web APIs - Commercial .NET experience using C# in web development</li>
                                            <li>Databases - SQL Server, Cosmos DB</li>
                                            <li>Frontend - JavaScript, HTML, CSS, React, Angular, Blazor</li>
                                            <li>DevOps and CI/CD - Azure DevOps, GitHub Actions, Octopus</li>
                                            <li>Infrastructure - We use heaps of Azure</li>
                                            <li>Low code - Office 365, Dynamics 365 (CRM), SharePoint, Power Apps and Power Automate</li>
                                            <li>Methodologies - Agile (Scrum)</li>
                                        </ul>

                                        <p>In the spirit of transparency our interview process has an initial chat, a timed take-home communication challenge, and a technical coding challenge.</p>

                                        <p>Is this you?! Please send us a copy of your resume and your contact details to Penny@ssw.com.au or call Penny for more information on 0415 759 348.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Full Stack Python/.NET Developer')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>  

                        <div class="panel-group  location-all location-sydney location-brisbane location-melbourne location-newcastle type-all type-fresh position-current position-all" id="accordion20" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading20">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse20" aria-expanded="true" aria-controls="collapse20">
                                        <h2 class="panel-title"><span class="position-title">Work Experience</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney, Brisbane, Melbourne, and Newcastle</span></h2>
                                    </a>
                                </div>
                                <div id="collapse20" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading20">
                                    <div class="panel-body">
                                        <p>We are a team of Microsoft stack developers and designers, who work on a wide variety of exciting corporate projects, delivering scalable and extensible custom solutions with the future in mind.  SSW is a great place to work, as we foster an inclusive and supportive office environment, and much more. Check out this video to find out more about us: <a href="https://youtu.be/tWuutobJtdg">Why work at SSW?</a></p>
                                        <p>We are looking for developers who are passionate about delivering cutting-edge software, using the latest technologies and best DevOps practices. and want to have fun while doing so! You will have the opportunity to up-skill, develop your personal brand, contribute to innovative projects, and engage in meaningful work that makes a difference.</p>
                                        <p>We are committed to increasing our workplace diversity, and we urge people from all walks of life to apply. We encourage expertise, mastery, and respectful discourse. We aim to build you up and hope you'll do the same! We will help you grow your community profile and your technical abilities so you can be the best developer you can be. Our horizontal organisational structure means that your input will make an impact on the way we do business.</p>
                                        <p>This role requires great communication skills and solid experience in delivering production-ready web solutions. Further, we encourage you to take ownership of your relationship with clients and build meaningful connections, to think critically, and create the right solution for the right job.</p>
                                        <hr />
                                        <p>SSW only takes on exceptional work experience applicants who are looking to get their nose into the Microsoft world.</p>
                                        <p>Ideal candidates are University students with great results who love to spend their weekends coding, but are missing real world experience. You will be among quality devs who are keen and committed.</p>
                                        <p>Interested? Send us a short cover note with your current experience and goals.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Work Experience')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group location-all location-beijing type-all type-fresh position-current position-all" id="accordion26" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading26">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse26" aria-expanded="true" aria-controls="collapse26">
                                        <h2 class="panel-title"><span class="position-title">Developers</span> <span class="position-location"><i class="fa fa-map-marker"></i>China</span></h2>
                                    </a>
                                </div>
                                <div id="collapse26" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading26">
                                    <div class="panel-body">
                                        <p><strong><span class="flag-icon flag-icon-cn"></span> Chinese candidates should speak to Alvin.</strong></p>
                                        <p>For more info see <a href="https://www.lagou.com/gongsi/335494.html">our recruitment gateway in China</a> to apply for our open jobs.</p>
                                        <p>We have 3 open developer positions in China:</p>
                                        <ul>
                                            <li>Senior Full Stack .NET Developer (Hangzhou)</li>
                                            <li>Senior Front-End Developer (Hangzhou)</li>
                                            <li>Work Experience (Hangzhou)</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group location-all location-sydney location-brisbane location-melbourne location-beijing type-all type-contract type-permanent type-fresh position-all position-filled" role="tablist" aria-multiselectable="true">
                            <h3 class="positions-heading">Filled Positions</h3>
                        </div>

                        <div class="panel-group location-all location-sydney location-melbourne location-brisbane location-newcastle type-all type-permanent position-all position-filled" id="accordion36" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading36">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse36" aria-expanded="true" aria-controls="collapse36">
                                        <h2 class="panel-title"><span class="position-title">Marketing Assistant &amp; Copywriter</span> <span class="position-location"><i class="fa fa-map-marker"></i> Sydney, Brisbane, Melbourne, and Newcastle <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse36" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="headingXX">
                                    <div class="panel-body">
                                        <p>SSW is looking for a dynamic person to complete our exceptional Marketing team.</p>
                                        <p>Our team is growing, and so is our marketing team! This position will work collaboratively with the Marketing, SSW TV and Sales teams and provide support to the Marketing Manager. This position will assist in ensuring that the company brand is presented consistently, campaigns are delivered to deadline, and our developer events run smoothly across 5 offices (in Australia and France). You will be working with one of Australia's leading SEO experts as well as other creative consultants from across the industry to measure and improve our statistics.</p>
                                        <hr />
                                        <p>The main responsibilities are:</p>
                                        <ul>
                                            <li>Assist in the design, creation and rollout of content across multiple social media sites, web, video and traditional PR channels</li>
                                            <li>Write targeted content for websites, blogs, newsletters and other types of marketing and or promotional material </li>
                                            <li>Assist with planning, developing and delivering digital strategies that build brand awareness</li>
                                            <li>Create content for social media channels (LinkedIn, Twitter, Facebook, and Instagram)</li>
                                            <li>Work effectively as a part of a team to ensure efficient and effective processes are identified, initiated and undertaken</li>
                                            <li>Delivering organic and paid social media campaigns across multiple platforms</li>
                                            <li>Keep abreast of industry trends and compelling marketing campaigns</li>
                                            <li>Improving our ‘Rules to Better’ Marketing, Blogs, Social Media, etc.</li>
                                            <li>Reporting on analytics to the Marketing Manager, CEO & Sales team </li>
                                            <li>Event management </li>
                                            <li>Liaising with developers and clients</li>
                                        </ul>

                                        <p>The successful candidate will have:</p>
                                        <ul>
                                            <li>The right to live and work in Australia</li>
                                            <li>At least 2 years of experience in a Marketing Role</li>
                                            <li>A degree in Marketing or equivalent</li>
                                            <li>Experience in writing blogs or equivalent</li>
                                            <li>Experience in Google and social media paid campaigns</li>
                                            <li>Basic knowledge of HTML</li>
                                            <li>Fantastic interpersonal and communication skills</li>
                                            <li>Self-motivation and high attention to detail</li>
                                            <li>Your "can-do" attitude and commitment to getting the job done will secure you an interview</li>
                                        </ul>
                                        <p>We deliver scalable and extensible custom solutions with the future in mind. SSW is a great place to work, as we produce world-class modern solutions, open many avenues to bolster your public profile, foster an inclusive and supportive office environment, and much more.</p>
                                        <p>We are committed to increasing our workplace diversity, and we urge people from all walks of life to apply. We encourage expertise, mastery, and respectful discourse. We aim to build you up and hope you'll do the same! We will help you grow your community profile and your technical abilities so you can be the best developer you can be. Our horizontal organisational structure means that your input will make an impact on the way we do business.</p>
                                        <p>In the spirit of transparency, our interview process has an initial chat, a timed take-home communication challenge, and a technical challenge.</p>

                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Cloud Architect')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group location-all location-sydney type-all type-permanent position-all position-filled" id="accordion28" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading28">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse28" aria-expanded="true" aria-controls="collapse28">
                                        <h2 class="panel-title"><span class="position-title">Videographer (Shooter/Editor/AV Tech) </span> <span class="position-location"><i class="fa fa-map-marker"></i> Sydney <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse28" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading28">
                                    <div class="panel-body">
                                        <p><strong>SSW is looking for a Videographer (Editor/Motion Graphics) to help us engage with the software development community in Australia and internationally. The role is in Sydney.</strong></p>
                                        <p>Do you want to create awesome videos and help turn our our software developers into super-stars? <a href="https://tv.ssw.com/">SSW TV</a> has 37k subscribers and over 1.5 million views. We specialise in educating and engaging with the software development community to create awareness of our brand as Australia’s leading Microsoft .NET consulting service.</p>
                                        <p>The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>This role requires someone who can:</p>
                                        <ul>
                                            <li>Set up, operate, maintain and troubleshoot our in-house studio/camera/livestreaming system. Requires knowledge of industry standard streaming equipment e.g. Blackmagic capture equipment, PC switching software (StreamYard, OBS)</li>
                                            <li>Live streaming, e.g. using StreamYard, OBS</li>
                                            <li>Use and understand pro video connection standards, e.g. SDI, NDI (network video), capturing from laptop feeds etc</li>
                                            <li>Record, livestream, edit and publish monthly Users Group plus more frequent presentations (e.g. Client conferences, training sessions etc) in our studio and at remote locations when required</li>
                                        </ul>
                                        <p>You will be working with our producer/director/editor and marketing manager, as well as technically minded developers in a wide variety of exciting video projects.</p>
                                        <p>You will have:</p>
                                        <ul>
                                            <li>Australian Citizenship or Permanent Residency and a driver's license</li>
                                            <li>A relevant degree in TV Production (or something similar that has given you studio and live experience)</li>
                                            <li>Approx. 2-3 years' experience</li>
                                            <li>A strong portfolio that demonstrates a passion for creating highly effective video content with a keen eye for detail</li>
                                            <li>A professional & disciplined approach to production workflows and adoption of best practices, and a willingness to put forward new and better practices</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues, including the ability communicate your creative ideas and explain the reasoning behind these recommendations to multiple stakeholders</li>
                                            <li>Hunger to learn and ability to figure out and recommend solutions and improvements</li>
                                            <li>Strong written and verbal communication skills</li>
                                            <li>Excellent Teamwork skills</li>
                                            <li>Can-do attitude</li>
                                        </ul>
                                        <p>Essential Skills:</p>
                                        <ul>
                                            <li>Live streaming: Using StreamYard, OBS, Adobe Premiere Pro, etc</li>
                                            <li>Audio: Live sound recording and basic audio post-production</li>
                                            <li>Lighting: Studio lighting, 3-point interview setup, location scenes, ability to use and work with natural light and combinations of natural with artificial lighting</li>
                                            <li>Camera: Lighting, lensing, exposure, composition, and framing</li>
                                            <li>Adobe Premiere Pro</li>
                                            <li>Experience with music libraries and how to use music in an edit for powerful effect</li>
                                            <li>Ability to generate original ideas and produce them from start to finish</li>
                                            <li>Digital Asset Management</li>
                                        </ul>
                                        <p>Favourable, but not essential:</p>
                                        <ul>
                                            <li>Da Vinci Resolve editing skills</li>
                                            <li>Adobe After Effects</li>
                                            <li>Still photography</li>  
                                        </ul>
                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Marketing and Social Networking Manager')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>          

                        <div class="panel-group location-all location-sydney location-melbourne location-brisbane location-newcastle type-all type-permanent position-all position-filled" id="accordion37" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading37">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse37" aria-expanded="true" aria-controls="collapse37">
                                        <h2 class="panel-title"><span class="position-title">People Operations + Recruitment Coordinator</span> <span class="position-location"><i class="fa fa-map-marker"></i> Sydney, Brisbane, Melbourne, and Newcastle <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse37" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading37">
                                    <div class="panel-body">
                                        <p>SSW has created a totally new role for a talented and passionate person to help build and grow our development team. You will be responsible for team happiness, onboarding, and recruitment.</p>
                                        <p>The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>A little about you:</p>
                                        <ul>
                                            <li>You will live and have working rights in Australia</li>
                                            <li>You will have studied a relevant degree & have worked in a similar position for at least 2 years</li>
                                            <li>You enjoy working with smart, technical people, and love tech</li>
                                            <li>You will have a passion for hiring great people and developing creative ways to keep them happy and healthy</li>
                                        </ul>
                                        <p>Some of the things you might do:</p>
                                        <ul>
                                            <li>Search &amp; reach out to great technical consultants who have a passion for building great software</li>
                                            <li>Reporting on recruitment stats to the hiring team</li>
                                            <li>Continuous improvement of our internal recruitment procedures + <a href="https://ssw.com.au/rules">SSW Rules</a></li>
                                            <li>Developing and implementing a people and culture strategy</li>
                                            <li>Employee engagement &amp; retention strategies</li>
                                            <li>Developing new health and well-being programs and initiatives</li>
                                            <li>Managing the onboarding experience</li>
                                            <li>Grievance resolution and investigations</li>
                                        </ul>

                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Cloud Architect')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney type-all type-contract type-permanent position-all position-filled" id="accordion13" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading13">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse13" aria-expanded="true" aria-controls="collapse13">
                                        <h2 class="panel-title"><span class="position-title">Assistant Accountant</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse13" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading13">
                                    <div class="panel-body">
                                        <p>SSW is looking for an accountant with good communication and presentation skills to join our team as the Full-Time Senior Xero Accountant.</p>
                                        <p>You will be working alongside expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>You will work closely with the Financial Controller and Managing Director and be responsible for:</p>
                                        <ul>
                                            <li>Processing payroll and superannuation for 50 staff</li>
                                            <li>Managing weekly Debtors and Creditors</li>
                                            <li>Maintenance of accurate accounting data and daily reconciliations</li>
                                            <li>Maintaining Fixed Asset Registers and depreciation schedules</li>
                                            <li>Preparation of tax reporting documentation including BAS/IAS, Payroll Tax and FBT returns</li>
                                            <li>Preparing monthly management reports, presenting company-wide KPIs and financial & non-financial analysis to the management team</li>
                                            <li>Providing support to State Managers with regard to client financial information, state-wide performances and trends</li>
                                            <li>Assisting with annual review process</li>
                                            <li>Improving and documenting company financial procedures</li>
                                        </ul>
                                        <p>
                                            To be successful in this job, you need:
                                        </p>
                                        <ul>
                                            <li>Degree or Diploma in Accounting.</li>
                                            <li>CA or CPA certificate or in the midst of obtaining</li>
                                            <li>Minimum 2-3 years of Xero experience (proficiency with Xero payroll essential)</li>
                                            <li>Open to getting experience with Power BI or other Xero API connected reporting tools</li>
                                            <li>Accurate data entry skills and a keen eye for detail</li>
                                            <li>Good working knowledge of MS Word, Excel and Outlook</li>
                                            <li>Tech savvy is preferred</li>
                                            <li>Adaptable and proactive attitude</li>
                                        </ul>
                                        <p>Benefits of working with SSW:</p> 
                                        <ul>
                                            <li>2 days working from home arrangements available</li>
                                            <li>Friday free lunches and board games </li>
                                            <li>High-tech office </li>
                                            <li>Assistance with CPA and other professional training costs </li>
                                            <li>Environment focused on continual improvement </li>
                                            <li>Working with some of Australia’s best software consultants </li>
                                            <li>Annual retreats </li>
                                        </ul>
                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Electrician')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group location-all location-sydney location-brisbane type-all type-permanent position-all position-filled" id="accordion27" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading27">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse27" aria-expanded="true" aria-controls="collapse27">
                                        <h2 class="panel-title"><span class="position-title">Administration and Sales Assistant</span> <span class="position-location"><i class="fa fa-map-marker"></i> Sydney and Brisbane <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse27" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading27">
                                    <div class="panel-body">
                                        <p><strong>SSW is looking for an awesome administrator with Sales aspirations for an immediate start.</strong></p>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>If you want to work in a fast-paced, tech-friendly environment with intelligent technophiles, then this is the job for you.</p>
                                        <p>Duties will include:</p>
                                        <ul>
                                            <li>General administration tasks</li>
                                            <li>Help manage the SSW Melbourne office & organize events</li>
                                            <li>Reception desk duties including phones, deliveries, greeting clients, preparing meeting areas</li>
                                            <li>Assisting the Sales Manager with invoicing, sales and customer service</li>
                                            <li>Assisting the Sales Manager with Sales meetings and reporting</li>
                                        </ul>
                                        <p>Must haves:</p>
                                        <ul>
                                            <li>An interest in Sales</li>
                                            <li>Adaptability - a can do attitude is a must for this role</li>
                                            <li>Self-motivation and high attention to detail</li>
                                            <li>Service minded - be a team player and ensure the rest of the team have everything they need to do their job</li>
                                            <li>Fantastic interpersonal and communication skills</li>
                                            <li>An undergraduate degree</li>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                        </ul>
                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Administration and Sales Assistant')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group location-all location-sydney type-all type-permanent position-all position-filled" id="accordion30" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading30">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse30" aria-expanded="true" aria-controls="collapse30">
                                        <h2 class="panel-title"><span class="position-title">Office Administrator & Personal Assistant </span> <span class="position-location"><i class="fa fa-map-marker"></i> Sydney <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse30" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading30">
                                    <div class="panel-body">
                                        <p>SSW is looking for an intelligent person with excellent communication and presentation skills to join our dynamic team in Neutral Bay.</p>
                                        <p>The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>. SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>About the role:</p>
                                        <ul>
                                            <li>Assisting the CEO with his appointments and tasks</li>
                                            <li>Reception desk duties including phones, deliveries, greeting clients, and preparing meeting areas</li>
                                            <li>Managing public email inbox</li>
                                            <li>Managing the SSW office including mail, tax receipts and errands</li>
                                            <li>Assisting the Marketing Manager with marketing implementation</li>
                                            <li>Social Media - composing and editing web content and blog posts, updating Facebook, Instagram, LinkedIn, Meetup & Twitter</li>
                                            <li>Organizing SSW Events</li>
                                        </ul>
                                        <p>Must haves:</p>
                                        <ul>
                                            <li>Adaptability - a can do attitude is a must for this role</li>
                                            <li>Self-motivation and high attention to detail</li>
                                            <li>Service minded - be a team player and ensure the rest of the team have everything they need to do their job</li>
                                            <li>Fantastic interpersonal and communication skills</li>
                                            <li>Knowledge of social media</li>
                                            <li>An undergraduate degree</li>
                                            <li>At least 1 year in a similar role</li>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                            <li>An interest in writing and the ability to edit</li>
                                        </ul>

                                        <p>Extra Perks:</p>
                                        <ul>
                                            <li>Hybrid working from home policy</li>
                                            <li>Salary sacrifice for tech like phones and laptops</li>
                                            <li>Annual Retreats</li>
                                            <li>Subsidized training</li>
                                            <li>Generous and flexible paid leave policy including fun new experiences via YOLO days</li>
                                        </ul>
                                        <p>About SSW:</p>
                                        <p>We are a team of Microsoft stack developers and designers, who work on a wide variety of exciting corporate projects, delivering scalable and extensible custom solutions with the future in mind. SSW is a great place to work, as we foster an inclusive and supportive office environment, and much more. <a href="https://youtu.be/tWuutobJtdg">Check out this video to find out more about us</a>.</p>
                                        <hr />
                                        <p>Your "can-do" attitude and commitment to getting the job done will secure you an interview.</p>
                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Marketing and Social Networking Manager')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group location-all location-sydney location-brisbane location-melbourne location-newcastle type-all type-permanent position-all position-filled" id="accordion24" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading24">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse24" aria-expanded="true" aria-controls="collapse24">
                                        <h2 class="panel-title"><span class="position-title">Microsoft Dynamics 365 Developer</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney, Brisbane, Melbourne, and Newcastle <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse24" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading24">
                                    <div class="panel-body">
                                        <p><strong>SSW is looking for a Dynamics 365 Guru to start ASAP.</strong></p>
                                        <p>We are a team of Microsoft stack developers and designers, who work on a wide variety of exciting corporate projects, delivering scalable and extensible custom solutions with the future in mind.  SSW is a great place to work, as we foster an inclusive and supportive office environment, and much more. Check out this video to find out more about us: <a href="https://youtu.be/tWuutobJtdg">Why work at SSW?</a></p>
                                        <p>We are looking for developers who are passionate about delivering cutting-edge software, using the latest technologies and best DevOps practices. and want to have fun while doing so! You will have the opportunity to up-skill, develop your personal brand, contribute to innovative projects, and engage in meaningful work that makes a difference.</p>
                                        <p>We are committed to increasing our workplace diversity, and we urge people from all walks of life to apply. We encourage expertise, mastery, and respectful discourse. We aim to build you up and hope you'll do the same! We will help you grow your community profile and your technical abilities so you can be the best developer you can be. Our horizontal organisational structure means that your input will make an impact on the way we do business.</p>
                                        <p>This role requires great communication skills and solid experience in delivering production-ready web solutions. Further, we encourage you to take ownership of your relationship with clients and build meaningful connections, to think critically, and create the right solution for the right job.</p>
                                        <hr />
                                        <p>This role requires great communication skills and solid experience in delivering production-ready web solutions.</p>
                                        <p>You will be working with expert .NET and SharePoint developers and designers in a wide variety of exciting corporate projects. This role requires someone who can work closely with clients, think critically, and create the right solution for the right job. As well as having excellent Dynamics 365 skills, a solid understanding of C# is a must. Experience with the cloud is highly favourable.</p>
                                        <p>You will have:</p>
                                        <ul>
                                            <li><strong>More important than experience is attitude, we are looking for developers who are passionate about delivering awesome software using the latest technologies and best DevOps practices and want to fun while doing so!</strong></li>
                                        </ul>
                                        <p>Now the boring stuff:</p>
                                        <ul>
                                            <li>A minimum of 3 years of commercial experience with Dynamics 365 (CRM)</li>
                                            <li>A minimum of 3 years of development experience</li>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues</li>
                                            <li>Strong skills designing and implementing solutions using Dynamics 365</li>
                                            <li>An IT degree or equivalent experience</li>
                                            <li>A working knowledge of agile software development methodologies (preferably Scrum) and good task management skills</li>
                                            <li>A passion for finding and using best practices, and updating them when necessary. See <a href="https://rules.ssw.com.au" target="_blank">SSW Rules</a></li>
                                            <li>A keen interest in the development community including technological trends, news, people, and innovations</li>
                                        </ul>

                                        <p><strong>Skills:</strong></p>
                                        <ul>
                                            <li><strong>Commercial Dynamics 365 experience using C#</strong></li>
                                            <li><strong>Experience with Plugins, JavaScript, Business Rules, Flow (Logic Apps), and Azure Functions</strong></li>
                                            <li><strong>Experience with Customization and Configuration</strong></li>
                                            <li>A working knowledge of agile software development methodologies</li>
                                            <li>Good task and email management skills</li>
                                            <li>Strong C# development skills</li>
                                            <li>JavaScript Frameworks: jQuery, Angular, React and/or TypeScript</li>
                                        </ul>

                                        <p><strong>Favourable:</strong></p>
                                        <ul>
                                            <li>Web API applications using C# and SQL Servers</li>
                                            <li>Angular or React experience</li>
                                            <li>A good understanding of XML, HTML5, CSS3, JavaScript</li>
                                        </ul>

                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Microsoft Dynamics 365 Developer')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group location-all location-sydney location-melbourne location-brisbane location-newcastle type-all type-permanent position-all position-filled" id="accordion33" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading33">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse33" aria-expanded="true" aria-controls="collapse33">
                                        <h2 class="panel-title"><span class="position-title">Microsoft DevOps Engineer</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney, Brisbane, Melbourne, and Newcastle <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>

                                <div id="collapse33" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading33">
                                    <div class="panel-body">
                                        <p><a href="https://rules.ssw.com.au/cloud-architect">Where is the Cloud Architect?</a></p>
                                        <p><strong>SSW is looking for an enthusiastic Microsoft DevOps Architect for an immediate start</strong></p>
                                        <p>We are a team of Microsoft stack developers and designers, who work on a wide variety of exciting corporate projects, delivering scalable and extensible custom solutions with the future in mind.  SSW is a great place to work, as we foster an inclusive and supportive office environment, and much more. Check out this video to find out more about us: <a href="https://youtu.be/tWuutobJtdg">Why work at SSW?</a></p>
                                        <p>We are looking for developers who are passionate about delivering cutting-edge software, using the latest technologies and best DevOps practices. and want to have fun while doing so! You will have the opportunity to up-skill, develop your personal brand, contribute to innovative projects, and engage in meaningful work that makes a difference.</p>
                                        <p>We are committed to increasing our workplace diversity, and we urge people from all walks of life to apply. We encourage expertise, mastery, and respectful discourse. We aim to build you up and hope you'll do the same! We will help you grow your community profile and your technical abilities so you can be the best developer you can be. Our horizontal organisational structure means that your input will make an impact on the way we do business.</p>
                                        <p>This role requires great communication skills and solid experience in delivering production-ready web solutions. Further, we encourage you to take ownership of your relationship with clients and build meaningful connections, to think critically, and create the right solution for the right job.</p>
                                        <hr />
                                        <p>Tech you will use in this role</p>
                                        <ul>
                                            <li>DevOps Pipelines – GitHub Actions, Azure DevOps</li>
                                            <li>Infrastructure as code – Bicep, ARM Templates, Terraform, Pulumi</li>
                                            <li>Scripting - Azure CLI, PowerShell</li>
                                            <li>Containerization - Azure Kubernetes Service (AKS), Docker, Containers</li>
                                            <li>Identity - Azure AAD, Azure B2C, IdentityServer</li>
                                            <li>Security + Networking – Azure VNet, Azure VPNGateway, Azure API Management, Azure VMs, Azure FrontDoor, Firewalls, CloudFlare, Microsoft Defender</li>
                                            <li>Cost Management - Azure Policy, Azure Cost Management</li>
                                            <li>Testing – Playwright, Puppeteer, </li>
                                            <li>Static Code Analysis – SonarCloud, SonarQube, WhiteSource Bolt</li>
                                        </ul>
                                        <p>About you</p>
                                        <ul>
                                            <li>Experience with Azure DevOps or GitHub Actions</li>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                            <li>An IT degree or equivalent experience</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues</li>
                                            <li>Keen interest in the development community including technological trends, news, people, and innovations</li>
                                        </ul>
                                        <p>In the spirit of transparency our interview process has an initial chat, a timed take-home communication challenge, and a DevOps technical challenge.</p>
                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Azure Platform Architect')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>       

                        <div class="panel-group location-all location-sydney location-melbourne location-brisbane location-newcastle type-all type-permanent position-all position-filled" id="accordion31" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading31">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse31" aria-expanded="true" aria-controls="collapse31">
                                        <h2 class="panel-title"><span class="position-title">Full Stack Python/.NET Developer </span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney, Brisbane, Melbourne, and Newcastle <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse31" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading31">
                                    <div class="panel-body">
                                        <p><strong>SSW is looking for an enthusiastic Full Stack Python/.NET Developer</strong></p>
                                        <p>We are a team of Microsoft stack developers and designers, who work on a wide variety of exciting corporate projects, delivering scalable and extensible custom solutions with the future in mind.  SSW is a great place to work, as we foster an inclusive and supportive office environment, and much more. Check out this video to find out more about us: <a href="https://youtu.be/tWuutobJtdg">Why work at SSW?</a></p>
                                        <p>We are looking for developers who are passionate about delivering cutting-edge software, using the latest technologies and best DevOps practices. and want to have fun while doing so! You will have the opportunity to up-skill, develop your personal brand, contribute to innovative projects, and engage in meaningful work that makes a difference.</p>
                                        <p>We are committed to increasing our workplace diversity, and we urge people from all walks of life to apply. We encourage expertise, mastery, and respectful discourse. We aim to build you up and hope you'll do the same! We will help you grow your community profile and your technical abilities so you can be the best developer you can be. Our horizontal organisational structure means that your input will make an impact on the way we do business.</p>
                                        <p>This role requires great communication skills and solid experience in delivering production-ready web solutions. Further, we encourage you to take ownership of your relationship with clients and build meaningful connections, to think critically, and create the right solution for the right job.</p>
                                        <hr />
                                        <p>You will have:</p>
                                        <ul>
                                            <li><strong>More important than experience is attitude, we are looking for developers who are passionate about delivering awesome software using the latest technologies and best DevOps practices and want to fun while doing so!</strong></li>
                                        </ul>
                                        <p>Now the boring stuff:</p>
                                        <ul>
                                            <li>A minimum of 2 years of commercial experience with Python and .NET web development</li>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                            <li>An IT degree or equivalent experience </li>
                                            <li>The ability to communicate and interact professionally and comfortably with clients </li>
                                            <li>Strong skills designing and implementing .NET Web applications using Python and C# </li>
                                        </ul>
                                        <p>Skills:</p>
                                        <ul>
                                            <li>Commercial .NET experience using Python and C# in web development </li>
                                            <li>Great DevOps knowledge (ideally in Azure DevOps and GitHub) </li>
                                            <li>A working knowledge of Agile software development methodologies </li>
                                            <li>Web API applications using C# / SQL Server and Python / Postgres (MongoDB, Cosmos DB etc) </li>
                                            <li>Web: Angular and/or React </li>
                                            <li>Python Frameworks: Django, Flask </li>
                                            <li>Dynamics 365 (CRM) and/or SharePoint experience would be a bonus </li>
                                        </ul>

                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Full Stack Python/.NET Developer')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div> 

                        <div class="panel-group location-all location-sydney type-all type-permanent position-all position-filled" id="accordion35" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading35">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse35" aria-expanded="true" aria-controls="collapse35">
                                        <h2 class="panel-title"><span class="position-title">Videographer (Editor/Motion Graphics)</span> <span class="position-location"><i class="fa fa-map-marker"></i> Sydney <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse35" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading35">
                                    <div class="panel-body">
                                        <p>SSW is looking for a Videographer (AV/Shooter/Editor) to help us engage with the software development community in Australia and internationally. The role is in Sydney.</p>

                                        <p>Do you want to create awesome videos and help turn super geeky developers into stars?</p>
                                        <p><a href="https://tv.ssw.com/">SSW TV</a> is our video channel with 1.5 million views and 28k subscribers. We specialise in educating and engaging with the software development community which helps create awareness of our brand and our consulting work.</p>
                                        <p><a href="https://youtu.be/tWuutobJtdg">SSW is unlike any place you've ever worked at</a>.</p>
                                        <p>You will be working with our producer/director/editor and marketing manager, as well as technically minded developers in a wide variety of exciting video projects.</p>
                                        <hr />
                                        <p>You will have:</p>
                                        <ul>
                                            <li>Australian Citizenship or Permanent Residency and a driver's license</li>
                                            <li>A relevant degree in TV Production (or something similar that has given you studio and live experience)</li>
                                            <li>Approx. 2-3 years' experience</li>
                                            <li>A strong portfolio that demonstrates a passion for creating highly effective video content with a keen eye for detail</li>
                                            <li>A professional & disciplined approach to production workflows and adoption of best practices, and a willingness to put forward new and better practices</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues, including the ability communicate your creative ideas and explain the reasoning behind these recommendations to multiple stakeholders</li>
                                            <li>Hunger to learn and ability to figure out and recommend solutions and improvements</li>
                                            <li>Strong written and verbal communication skills</li>
                                        </ul>
                                        <p>Essential Skills:</p>
                                        <ul>
                                            <li>Camera: Lighting, lensing, exposure, composition, and framing</li>
                                            <li>Adobe Premiere Pro</li>
                                            <li>Motion Graphics: Adobe After Effects</li>
                                            <li>Audio: Live sound recording and basic audio post-production</li>
                                            <li>Lighting: Studio lighting, 3-point interview setup, location scenes, ability to use and work with natural light and combinations of natural with artificial lighting</li>
                                            <li>Experience with music libraries and how to use music in an edit for powerful effect</li>
                                            <li>Ability to generate original ideas and produce them from start to finish</li>
                                            <li>Digital Asset Management</li>
                                        </ul>

                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Videographer')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney location-brisbane location-melbourne type-all type-permanent position-all position-filled" id="accordion8" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading8">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse8" aria-expanded="true" aria-controls="collapse8">
                                        <h2 class="panel-title"><span class="position-title">Systems Administrator</span><span class="position-location"><i class="fa fa-map-marker"></i>Sydney, Brisbane, Melbourne, and Newcastle <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse8" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading8">
                                    <div class="panel-body">
                                        <p><strong>SSW is looking for a super Systems Administrator to start ASAP.</strong></p>
                                        <p>We are a team of Microsoft stack developers and designers, who work on a wide variety of exciting corporate projects, delivering scalable and extensible custom solutions with the future in mind.  SSW is a great place to work, as we foster an inclusive and supportive office environment, and much more. Check out this video to find out more about us: <a href="https://youtu.be/tWuutobJtdg">Why work at SSW?</a></p>
                                        <p>We are looking for developers who are passionate about delivering cutting-edge software, using the latest technologies and best DevOps practices. and want to have fun while doing so! You will have the opportunity to up-skill, develop your personal brand, contribute to innovative projects, and engage in meaningful work that makes a difference.</p>
                                        <p>We are committed to increasing our workplace diversity, and we urge people from all walks of life to apply. We encourage expertise, mastery, and respectful discourse. We aim to build you up and hope you'll do the same! We will help you grow your community profile and your technical abilities so you can be the best developer you can be. Our horizontal organisational structure means that your input will make an impact on the way we do business.</p>
                                        <p>This role requires great communication skills and solid experience in delivering production-ready web solutions. Further, we encourage you to take ownership of your relationship with clients and build meaningful connections, to think critically, and create the right solution for the right job.</p>
                                        <hr />
                                        <p>To be successful in this role, you will have:</p>
                                        <ul>
                                            <li>3 years of IT experience</li>
                                            <li>Australian Citizenship or Permanent Residency and be already living in Sydney</li>
                                            <li>Most important technologies to know: Active Directory, Windows Server 2019, IIS 10.0, SQL Server, Microsoft Teams, SharePoint Online, Azure, PowerShell, Cisco ASA, HP SAN administration, Office 365, and Exchange Online.</li>
                                            <li>Knowledge of architecting systems in Microsoft Azure</li>
                                            <li>An awareness of Hyper-V and Microsoft DPM 2016 (Data Protection Manager)</li>
                                            <li>Excellent communication skills as you will be liaising with our clients</li>
                                            <li>A passion for finding and using <a href="https://rules.ssw.com.au">best practices</a>, and updating them</li>
                                            <li>Strong skills designing and implementing networking strategies such as disaster recovery</li>
                                            <li>A good understanding of DNS</li>
                                            <li>HP hardware skills - Blades and SAN</li>
                                            <li>An IT degree</li>
                                            <li>Have good task and email management skills</li>
                                        </ul>
                                        <p>Ideally we would like someone with a bit of .NET knowledge as well, but this is not essential.</p>

                                        <!--<p>Interested? Send us your resume and a short cover note.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Electrician')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group location-all location-newcastle type-all type-permanent position-all position-filled" id="accordion34" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading34">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse34" aria-expanded="true" aria-controls="collapse34">
                                        <h2 class="panel-title"><span class="position-title">Electrician</span> <span class="position-location"><i class="fa fa-map-marker"></i> Newcastle <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse34" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading34">
                                    <div class="panel-body">
                                        <p><strong>SSW is looking for SSW needs a techy electrician with years of experience doing both residential and commercial properties.</strong> It would be awesome if they also had home/office automation skills (KNX essential, Control4 is desirable).</p>
                                        <p>This role is a full-time job spending 4 days in Newcastle and 1 day in Sydney per week. You will be an employee, not a contractor.</p>
                                        <p>SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>What you'll need?</p>
                                        <ul>
                                            <li>Valid NSW Electrical licence</li>
                                            <li>5+ years of electrical experience</li>
                                            <li>Ideally 1+ year of automation experience</li>
                                            <li>Sometimes moving sensors around</li>
                                            <li>Sometimes physical work</li>
                                            <li>Own a vehicle and have all the tools</li>
                                            <li>Great written and verbal communication skills</li>
                                            <li>The ability to work autonomously (and often with others)</li>
                                            <li>Live around Newcastle area</li>
                                        </ul>
                                        <p>You will be the electrician for <a href="https://www.ssw.com.au/">ssw.com.au</a></p>
                                        <p>SSW has <strong>2 different sites within NSW: Neutral Bay and Newcastle</strong>, your primary work site will be Newcastle with the requirement of coming down to Neutral Bay once a week.<br />
                                            Both locations have cool KNX/Control4 office automation in place, which you will take over and oversee.</p>

                                        <p>For more information contact Penny 0415 759 348</p>

                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Electrician')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div> 

                        <div class="panel-group  location-all location-sydney type-all type-permanent position-all position-filled" id="accordion23" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading23">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse23" aria-expanded="true" aria-controls="collapse23">
                                        <h2 class="panel-title"><span class="position-title">Senior SharePoint Developer </span><span class="position-location"><i class="fa fa-map-marker"></i>Sydney  <strong>*FILLED*</strong></span>

                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse23" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading23">
                                    <div class="panel-body">

                                        <p><strong>SSW is looking for an experienced and talented SharePoint developer who is passionate about implementing awesome SharePoint solutions.</strong></p>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        p>This role requires great communication skills and solid experience in delivering production-ready SharePoint solutions.</p>
                                        <p>You will be working with expert .NET and SharePoint developers and designers in a wide variety of exciting corporate projects. This role requires someone who can work closely with clients, think critically, and create the right solution for the right job. A solid understanding of SharePoint Online and SharePoint On-premises is a must. You will also have excellent .NET Core skills. Experience with the React,  Angular, or Azure is highly favourable.</p>
                                        <p>You will have:</p>
                                        <ul>
                                            <li>Australian Citizenship or Permanent Residency</li>
                                            <li>5+ years of experience with SharePoint Online (Office 365), SharePoint 2013,  2016, and .NET Core</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues</li>
                                            <li>Experience in pre-sales</li>
                                            <li>The ability to know how best to communicate your technical ideas and defend the reasoning behind these decisions</li>
                                            <li>A keen interest in the development community including technological trends, news, people, and innovations</li>
                                        </ul>

                                        <p><strong>Skills:</strong></p>
                                        <ul>
                                            <li>Commercial SharePoint 2016 and/or Office 365 experience</li>
                                            <li>ASP.NET MVC using Razor and C#</li>
                                            <li>An IT degree or equivalent experience</li>
                                            <li>A working knowledge of agile software development methodologies</li>
                                            <li>Good task management skills</li>
                                            <li>Strong C# development skills</li>
                                            <li>Web API applications using C#</li>
                                            <li>HTML5 & CSS</li>
                                            <li>JavaScript Frameworks: jQuery, and/or Angular</li>
                                        </ul>
                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Marketing and Social Networking Manager')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group location-all location-sydney location-brisbane location-melbourne location-newcastle type-all type-permanent position-all position-filled" id="accordion25" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading25">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse25" aria-expanded="true" aria-controls="collapse25">
                                        <h2 class="panel-title"><span class="position-title">Solutions Architect</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney, Brisbane, Melbourne, and Newcastle  <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse25" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading25">
                                    <div class="panel-body">
                                        <p><strong>SSW is looking for an experienced Solution Architect, with a strong understanding of DevOps for its thriving offices.</strong></p>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>The ideal candidate will be responsible for working cross-functionally to understand architecture needs by multiple business units. To be effective in this position, ideally you would feel comfortable owning the entire architecture and the development process, from inception to completion. </p>
                                        <p>This role requires great communication skills and solid experience in delivering production-ready web solutions. You will be working with our expert developers and designers in a wide variety of exciting corporate projects. This role requires someone who can work closely with clients, think critically, and create the right solution for the right job.</p>
                                        <p>.NET experience is a must. Experience with Angular, React, SharePoint and/or Dynamics 365 would be a bonus.</p>
                                        <p>Responsibilities:</p>
                                        <ul>
                                            <li>Lead architecture initiatives from inception to completion</li>
                                            <li>Collaborate with business users to create architecture in alignment with business need</li>
                                            <li>Act as a technical subject matter expert for business users</li>
                                            <li>Champion the adoption of reusable architecture assets to improve efficiency</li>
                                            <li>Produce documentation to aid in the understanding of existing architecture solutions</li>
                                        </ul>
                                        <p>You will have:</p>
                                        <ul>
                                            <li><strong>More important than experience is attitude, we are looking for developers who are passionate about delivering awesome software using the latest technologies and best DevOps practices and want to fun while doing so!</strong></li>
                                        </ul>
                                        <p>Now the boring stuff:</p>
                                        <ul>
                                            <li>A minimum of 5 years of commercial experience with .NET web development</li>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                            <li>An IT degree or equivalent experience</li>
                                            <li>Advanced knowledge of leading architecture solutions in the industry area</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues</li>
                                            <li>Ability to demonstrate technical concepts to non-technical audiences</li>
                                            <li>Strong skills designing and implementing .NET Web applications using C#</li>
                                            <li>A working knowledge of Agile software development methodologies (preferably Scrum) and good task management skills</li>
                                            <li>Keen interest in the development community including technological trends, news, people, and innovations</li>
                                        </ul>

                                        <p><strong>Skills:</strong></p>
                                        <ul>
                                            <li>Commercial .NET experience using C# in web development</li>
                                            <li>Great DevOps knowledge (ideally in VSTS and Git)</li>
                                            <li>Strong Experience and knowledge on Continuous Integration/Continuous Deployment tools such as Azure Pipelines, Octopus, or similar tools</li>
                                            <li>A working knowledge of Agile software development methodologies</li>
                                            <li>Good task and email management skills</li>
                                            <li>Web API applications using C# and SQL Server</li>
                                            <li>A good understanding of XML, HTML5, CSS3</li>
                                            <li>JavaScript Frameworks: jQuery, Angular and/or TypeScript</li>
                                            <li>Experience with Angular or React, Dynamics 365 (CRM) and/or SharePoint experience would be a bonus</li>
                                        </ul>
                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment application for Marketing and Social Networking Manager')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group location-all location-sydney type-all type-permanent position-all position-filled" id="accordion29" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading29">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse29" aria-expanded="true" aria-controls="collapse29">
                                        <h2 class="panel-title"><span class="position-title">Senior Accountant for Super Tech Company </span> <span class="position-location"><i class="fa fa-map-marker"></i> Sydney <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse29" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading29">
                                    <div class="panel-body">
                                        <p><strong>SSW is looking for a proactive accountant with good communication skills to join our dynamic team (based in Sydney).</strong></p>
                                        <p>You will be working with expert Microsoft developers and designers in a wide variety of exciting corporate projects. The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.</p>
                                        <hr />
                                        <p>Working closely with the Financial Controller and Managing Director, you will be responsible for:</p>
                                        <ul>
                                            <li>Processing fortnightly payroll and superannuation</li>
                                            <li>Managing Debtors and Creditors accounts</li>
                                            <li>General Ledger account management</li>
                                            <li>Preparation of monthly management reports </li>
                                            <li>Preparation of monthly IAS & quarterly BAS returns</li>
                                            <li>Lodgement of ITR & FBT Returns</li>
                                            <li>Liaising with our China Office</li>
                                        </ul>
                                        <p>To be successful in this job, you need:</p>
                                        <ul>
                                            <li>Degree in Accounting with CPA / CA</li>
                                            <li>Minimum of 2 years of payroll experience</li>
                                            <li>Experience with MYOB & XERO (essential)</li>
                                            <li>Experience with transitioning to new accounting system (MYOB to XERO)</li>
                                            <li>Knowledge of Payroll Tax and Superannuation</li>
                                            <li>Speedy, accurate data entry skills and an eye for detail</li>
                                            <li>Good working knowledge of MS Word, Excel and MS Outlook</li>
                                            <li>Love working with smart people</li>
                                        </ul>
                                        <p>SSW is unlike any place you've ever worked at. SSW is migrating their accounting system from MYOB to XERO and the successful applicant will be involved in this process.</p>

                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney location-brisbane location-melbourne type-all type-permanent position-all position-filled" id="accordion1" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading1">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="true" aria-controls="collapse1">
                                        <h2 class="panel-title"><span class="position-title">Senior Angular/React, .NET MVC and Web API developer</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney, Melbourne and Brisbane <strong>*FILLED*</strong></span>
                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse1" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading1">
                                    <div class="panel-body">
                                        <h4>SSW is looking for an enthusiastic Senior Full Stack .NET developers to start ASAP</h4>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p><strong>These roles require great communication skills and solid experience in delivering production-ready web solutions.</strong></p>
                                        <p>You will be working with our expert developers and designers in a wide variety of exciting corporate projects. This role requires someone who can work closely with clients, think critically, and create the right solution for the right job. As well as having excellent ASP.NET MVC skills, a solid understanding of Angular is a must. Experience with SharePoint and/or Dynamics 365 (CRM) would be a bonus.</p>
                                        <p><strong>You will have:</strong></p>
                                        <ul>
                                            <li><strong>More important than experience is attitude, we are looking for developers who are passionate about delivering awesome software using the latest technologies and best DevOps practices and want to fun while doing so!</strong></li>
                                        </ul>
                                        <p>Now the boring stuff:</p>
                                        <ul>
                                            <li>A minimum of 5 years of commercial experience with .NET web development</li>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                            <li>An IT degree or equivalent experience</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues</li>
                                            <li>Strong skills designing and implementing ASP.NET MVC applications using C#</li>
                                            <li>A working knowledge of agile software development methodologies (preferably Scrum) and good task management skills</li>
                                            <li>keen interest in the development community including technological trends, news, people,, and innovations</li>
                                            <li>A passion for finding and using best practices, and updating them when necessary ?<a href="https://rules.ssw.com.au">https://rules.ssw.com.au</a></li>
                                        </ul>
                                        <p><strong>Skills:</strong></p>
                                        <ul>
                                            <li>Commercial ASP.NET MVC experience using Angular and C#</li>
                                            <li>A working knowledge of agile software development methodologies</li>
                                            <li>Good task and email management skills</li>
                                            <li>Strong C# development skills</li>
                                            <li>Web API applications using C# and SQL Server</li>
                                            <li>A good understanding of XML, HTML5, CSS3, JavaScript</li>
                                            <li>JavaScript Frameworks: jQuery, Angular and/or TypeScript</li>
                                            <li>Dynamics 365 (CRM) and/or SharePoint experience would be a bonus</li>
                                        </ul>
                                        <!--<p>Is this you?! Please send us a copy of your resume and contact details.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney location-brisbane location-melbourne type-all type-permanent position-all position-filled" id="accordion5" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading1">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse5" aria-expanded="true" aria-controls="collapse5">
                                        <h2 class="panel-title"><span class="position-title">Dynamics 365 Guru</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney, Melbourne and Brisbane <strong>*FILLED*</strong></span>
                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse5" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading5">
                                    <div class="panel-body">
                                        <h4>SSW is looking for an Dynamics 365 Guru to start ASAP</h4>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p><strong>This role requires great communication skills and solid experience in delivering production-ready web solutions.</strong></p>
                                        <p>You will be working with expert .NET and SharePoint developers and designers in a wide variety of exciting corporate projects. This role requires someone who can work closely with clients, think critically, and create the right solution for the right job. As well as having excellent Dynamics 365 skills, a solid understanding of C# is a must. Experience with the cloud is highly favourable.</p>
                                        <p><strong>You will have:</strong></p>
                                        <ul>
                                            <li><strong>More important than experience is attitude, we are looking for developers who are passionate about delivering awesome software using the latest technologies and best DevOps practices and want to fun while doing so!</strong></li>
                                        </ul>
                                        <p>Now the boring stuff:</p>
                                        <ul>
                                            <li>A minimum of 3 years of commercial experience with Dynamics 365 (CRM)</li>
                                            <li>A minimum of 5 years of development experience</li>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues</li>
                                            <li>Strong skills designing and implementing solutions using Dynamics 365</li>
                                            <li>An IT degree or equivalent experience</li>
                                            <li>A working knowledge of agile software development methodologies (preferably Scrum) and good task management skills </li>
                                            <li>A passion for finding and using best practices, and updating them when necessary ?<a href="https://rules.ssw.com.au">https://rules.ssw.com.au</a></li>
                                            <li>A keen interest in the development community including technological trends, news, people, and innovations</li>
                                        </ul>
                                        <p><strong>Skills:</strong></p>
                                        <ul>
                                            <li><strong>Commercial Dynamics 365 experience using C#</strong></li>
                                            <li><strong>Experience with Plugins, JavaScript, Business Rules, and Workflows</strong></li>
                                            <li><strong>Experience with Customization and Configuration</strong></li>
                                            <li>A working knowledge of agile software development methodologies</li>
                                            <li>Good task and email management skills</li>
                                            <li>Strong C# development skills</li>
                                            <li>JavaScript Frameworks: jQuery, Angular, React and/or TypeScript</li>
                                        </ul>

                                        <p><strong>Favourable:</strong></p>
                                        <ul>
                                            <li>Web API applications using C# and SQL Servers</li>
                                            <li>A good understanding of XML, HTML5, CSS3, JavaScript</li>
                                        </ul>

                                        <!--<p>Interested? Send us your resume and a short cover note.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-melbourne type-all type-fresh position-filled position-all" id="accordion21" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading21">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse21" aria-expanded="true" aria-controls="collapse21">
                                        <h2 class="panel-title"><span class="position-title">Maestro - Business Development and Account Management</span> <span class="position-location"><i class="fa fa-map-marker"></i>Melbourne <strong>*FILLED*</strong></span></h2>
                                    </a>
                                </div>
                                <div id="collapse21" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading21">
                                    <div class="panel-body">
                                        <p><strong>SSW Consulting is looking for an experienced, awesome individual for our Melbourne office.</strong></p>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>The ideal candidate will enjoy engaging on an executive level about Microsoft technologies + have experience in leading and developing great teams.</p>
                                        <p>Job responsibilities will include:</p>
                                        <ul>
                                            <li>Identifying and developing new business opportunities</li>
                                            <li>Managing SSW clients</li>
                                            <li>Reporting to head office on Melbourne performance</li>
                                            <li>Leading a team of highly experienced software developers and designers</li>
                                        </ul>
                                        <p>To be successful in this role, you will have:</p>
                                        <ul>
                                            <li>Demonstrable and significant experience in the above listed responsibilities</li>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                            <li><strong>Superb interpersonal and communication skills</strong></li>
                                            <li>Superb interpersonal and communication skills</li>
                                            <li>Strong business development background (ideally in software/technology)</li>
                                            <li>Passionate about people (coaching and training)</li>
                                            <li>A bachelor's degree or higher (ideally in Business, Marketing or Software)</li>
                                        </ul>
                                        <p>To be successful in this role, you will need to be a smart, fast thinker with excellent communication and customer service skills. Your "can-do" attitude and commitment to getting the job done will secure you an interview.</p>
                                        <!--<p>If this is you, please send us a copy of your resume and a short cover note.</p>
                                        <p><strong>No agencies, please.</strong></p>
                                        <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                                            <div class="anim"></div>
                                            Apply Now
                                        </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group location-all location-brisbane location-melbourne type-all type-permanent position-all position-filled" id="accordion16" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading16">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse16" aria-expanded="true" aria-controls="collapse16">
                                        <h2 class="panel-title"><span class="position-title">Business Guy (once a wannabe Developer)</span><span class="position-location"><i class="fa fa-map-marker"></i> Melbourne and Brisbane <strong>*FILLED*</strong></span>
                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse16" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading16">
                                    <div class="panel-body">
                                        <p>SSW is looking for a person comfortable talking to IT Managers and CEO's about Microsoft Technologies. Do you have good communication and presentation skills and want to join our dynamic team in Brisbane as a "Business Technical Sales Manager" (BTSM) for an immediate start.</p>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>The successful candidate will have:</p>
                                        <ul>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                            <li>A bachelor degree in Computer Science, Software Engineering or Business Management</li>
                                            <li>Knowledge of Azure, Angular, ASP.NET MVC and C#</li>
                                            <li>Dynamics 365 (CRM) and/or SharePoint experience would be a bonus</li>
                                            <li>Working knowledge of agile software development methodologies (Scrum Master Experience)</li>
                                            <li>Strong business development background</li>
                                            <li><strong>Strong leadership skills</strong></li>
                                            <li>Passionate about people development (coaching and training)</li>
                                            <li>Enjoy working with a team who has strong technical skills in Microsoft technologies</li>
                                            <li>Strong influencing impact, he/she can engage with executive level</li>
                                            <li>Fantastic interpersonal and communication skills </li>
                                        </ul>
                                        <p>To be successful in this role, you will need to be a smart, fast thinker with excellent communication and customer service skills. Your "can-do" attitude and commitment to getting the job done will secure you an interview.</p>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-beijing type-all type-permanent position-all position-filled" id="accordion3" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading3">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="true" aria-controls="collapse3">
                                        <h2 class="panel-title"><span class="position-title">General Manager</span> <span class="position-location"><i class="fa fa-map-marker"></i>Beijing, China <strong>*FILLED*</strong></span>
                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse3" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading3">
                                    <div class="panel-body">
                                        <ul>
                                            <li><strong>Requires fluent Mandarin (native speaker)</strong></li>
                                            <li><strong>Requires working from Beijing</strong></li>
                                        </ul>

                                        <p>We are looking for an IT professional to become the General Manager of the Beijing office of an Australian owned company. SSW Beijing is a software consultancy focusing on Microsoft technologies and will require you to interact directly with Microsoft on a weekly basis. A history in software development or IT is essential to be able to communicate with Microsoft and our clients.</p>
                                        <p>You will be in charge of the daily operations of the company while reporting to the Australian HQ periodically. You will lead sales meetings and keep company relationships active and healthy.</p>
                                        <p>Job Responsibilities:</p>
                                        <ul>
                                            <li>In charge of the daily operations of the company</li>
                                            <li>Periodically report progress to Australian HQ</li>
                                            <li>Implement short term and long term sales &amp; marketing plans to achieve business targets &amp; build market presence</li>
                                            <li>Develop channel / sales partnership with Microsoft to maximize sales results</li>
                                            <li>Lead the project teams to deliver results for key customers</li>
                                        </ul>
                                        <p>Qualifications:</p>
                                        <ul>
                                            <li>A bachelor degree in Computer Science, Software Engineering or Business Management</li>
                                            <li>Strong business development background </li>
                                            <li>A background in software engineering or IT</li>
                                            <li>Passionate about people development (coaching and training)</li>
                                            <li>Enjoy working with a team who has strong technical skills in Microsoft technologies </li>
                                            <li>Strong influencing impact, he/she can engage with executive level </li>
                                            <li>Strong interpersonal skills with well-balanced financial mind </li>
                                            <li>Ideal candidate would have travelled to an English speaking country</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-brisbane type-all type-permanent position-all position-filled" id="accordion2" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading2">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="true" aria-controls="collapse2">
                                        <h2 class="panel-title"><span class="position-title">Senior SharePoint + Web Developer</span> <span class="position-location"><i class="fa fa-map-marker"></i>Brisbane <strong>*FILLED*</strong></span>

                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse2" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading2">
                                    <div class="panel-body">
                                        <h4>SSW is looking for an experienced and talented SharePoint developer who is passionate about implementing awesome SharePoint solutions. This role requires great communication skills and solid experience in delivering production-ready SharePoint solutions</h4>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>A solid understanding of SharePoint 2010 and 2013 is a must. You will also have excellent ASP.Net MVC skills. Experience with the cloud and SharePoint online is highly favourable.</p>
                                        <p>
                                            <strong>You will have:</strong>
                                        </p>
                                        <ul>
                                            <li>Australian Citizenship or Permanent Residency</li>
                                            <li>5+ years of experience with SharePoint 2007, 2010, or 2013 and ASP.Net MVC</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues</li>
                                            <li>Experience in pre-sales</li>
                                            <li>The ability to know how best to communicate your technical ideas and defend the reasoning behind these decisions</li>
                                            <li>A keen interest in the development community including technological trends, news, people, and innovations</li>
                                        </ul>

                                        <p><strong>Skills:</strong></p>
                                        <ul>
                                            <li><strong>Commercial SharePoint 2007, 2010, and/or 2013 experience</strong></li>
                                            <li><strong>ASP.NET MVC using Razor and C#</strong></li>
                                            <li>An IT degree or equivalent experience</li>
                                            <li>A working knowledge of agile software development methodologies</li>
                                            <li>Good task management skills</li>
                                            <li>Strong C# development skills</li>
                                            <li>Web API applications using C#</li>
                                            <li>HTML5 &amp; CSS</li>
                                            <li>JavaScript Frameworks: jQuery, Angular and/or Knockout </li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney location-brisbane type-all type-permanent position-all position-filled" id="accordion19" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading19">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse19" aria-expanded="true" aria-controls="collapse19">
                                        <h2 class="panel-title"><span class="position-title">Super Video Editor + Web Designer</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney &amp; Brisbane <strong>*FILLED*</strong></span>

                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse19" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading19">
                                    <div class="panel-body">
                                        <h4>SSW is looking for a talented creative to join our video production team and take <a href="http://tv.ssw.com/" target="_blank">SSW TV</a> to the next level.</h4>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />

                                        <p><strong>SSW</strong> is a custom software development consultancy with 40 employees across Sydney, Brisbane, Melbourne, and Newcastle. We're agile, and in this fast paced industry, we're on the forefront of cutting edge technology. We love engaging with the software development community.</p>
                                        <p><strong>SSW TV</strong> is our video channel with 1.5 million views and 12k subscribers. We specialise in educating and engaging with the software development community, and this helps create awareness of our brand and our consulting work. Our aim is to grow the SSW TV brand to a greater worldwide audience and become an industry leader.</p>
                                        <p><strong>You will have:</strong></p>
                                        <ul>
                                            <li>A passion for creating high quality video content with a keen eye for detail</li>
                                            <li>Creative ability to coach and bring out the best in highly technical people to turn them into video superstars</li>
                                            <li>An entrepreneurial flair to help take SSW TV from good to great</li>
                                            <li>Australian Citizenship or Permanent Residency, and a driver’s license</li>
                                            <li>A relevant degree or other tertiary qualification</li>
                                            <li>2-4 years of relevant experience</li>
                                            <li>A strong portfolio ideally showcasing: Video content, short form content, and animation</li>
                                            <li>Excellent communication skills and emotional intelligence</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues </li>
                                            <li>The ability to know how best to communicate your design ideas and defend the reasoning behind these decisions</li>
                                            <li>User Experience (UX) design skills</li>
                                            <li>An understanding of common web usability issues and the ability to offer solutions</li>
                                            <li>A keen interest in the web design community including technology trends, news, people, and innovations</li>
                                            <li>You will learn how to embed a learning management system into the content as part of the enhanced learning experience</li>
                                        </ul>
                                        <p><strong>Skills:</strong></p>
                                        <ul>
                                            <li>Adobe Premiere Pro</li>
                                            <li>Adobe Photoshop &amp; Illustrator</li>
                                            <li>Advanced HTML &amp; CSS</li>
                                            <li>Understanding of lighting and quality audio for video production</li>
                                            <li>Ability to create ideas and produce them from start to finish</li>
                                        </ul>
                                        <p><strong>Favourable:</strong></p>
                                        <ul>
                                            <li>Adobe After Effects </li>
                                            <li>WordPress</li>
                                            <li>Experience in pre-sales</li>
                                            <li>SEO</li>
                                            <li>jQuery</li>
                                            <li>Photography</li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney type-all type-permanent position-all position-filled" id="accordion17" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading17">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse17" aria-expanded="true" aria-controls="collapse17">
                                        <h2 class="panel-title"><span class="position-title">Personal Assistant / Office Administration</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney &amp; Brisbane <strong>*FILLED*</strong></span>

                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse17" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading17">
                                    <div class="panel-body">
                                        <p>SSW is looking for an intelligent person with excellent communication and presentation skills to join our dynamic team in a Full-Time Personal Assistant / Office Administration position.</p>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>If you want to work in a fast-paced, tech-friendly environment with intelligent technophiles then this is the job for you.</p>
                                        <p><strong>Duties will include:</strong></p>
                                        <ul>
                                            <li>Assisting the Managing Director with his appointments and schedules</li>
                                            <li>Using HTML to compile the monthly email newsletter</li>
                                            <li>Maintaining daily contact with the MD ?assisting him with emails and general tasks</li>
                                            <li>Social Media ?composing and editing web content and blog posts, updating Facebook, LinkedIn, Meetup &amp; Twitter</li>
                                            <li>Google Analytics, SEO, and keyword optimisation </li>
                                            <li>Organizing SSW events</li>
                                            <li>Liaising with clients and developers</li>
                                            <li>Reception desk duties including phones, deliveries, greeting clients, preparing meeting areas</li>
                                            <li>General Administration of the SSW office including mail, banking &amp; stationary</li>
                                            <li>Managing public email inbox</li>
                                            <li>Monitoring the SSW public website, reporting errors and proposing changes when needed</li>
                                            <li>HR - Assisting with recruiting the best developers in Australia and China</li>
                                            <li>HR - Devising, implementing and following SSW standards</li>
                                        </ul>

                                        <p><strong>Ideally the successful candidate will have:</strong></p>

                                        <ul>
                                            <li>Fantastic interpersonal and communication skills</li>
                                            <li>At least 1 year in a similar role</li>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                            <li>Knowledge of social media, google analytics and intermediate HTML skills</li>
                                            <li>An interest in writing and the ability to edit </li>
                                            <li>Universities Admission Index - UAI (or equivalent) of 70% or above</li>
                                            <li>Self-motivation and high attention to detail</li>
                                        </ul>

                                        <p>To be successful in this role, you will need to be a smart, fast thinker with excellent communication and customer service skills. You will need a "can-do" attitude, the ability to withstand constructive criticism and a commitment to getting the job done in order to secure an interview.</p>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-melbourne type-all type-permanent position-all position-filled" id="accordion18" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading18">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse18" aria-expanded="true" aria-controls="collapse18">
                                        <h2 class="panel-title"><span class="position-title">Senior .NET architect and Pre-Sales Manager</span> <span class="position-location"><i class="fa fa-map-marker"></i>Melbourne <strong>*FILLED*</strong></span>

                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse18" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="panel-title heading18">
                                    <div class="panel-body">
                                        <h4>SSW is looking for a positive, intelligent person with excellent communication and presentation skills to join our dynamic team as a Senior Architect and Pre-Sales Manager in Melbourne.</h4>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>SSW has opened a new office in the heart of Melbourne, and we’re looking for a passionate consultant to head up the team in both a developer and pre-sales capacity. This role requires great communication skills and solid experience in delivering production-ready web solutions.</p>
                                        <p>You will be working with expert .NET and SharePoint developers and designers in a wide variety of exciting corporate projects. This role requires someone who can work closely with clients, think critically, and create the right solution for the right job. As well as having excellent ASP.NET MVC skills, a solid understanding of AngularJS is a must. Experience with the cloud is highly favourable.</p>
                                        <p><b>The right candidate will have:</b></p>
                                        <ul>
                                            <li><strong>More important than experience is attitude, we are looking for developers who are passionate about delivering awesome software using the latest technologies and best DevOps practices and want to fun while doing so!</strong></li>
                                        </ul>
                                        <p>Now the boring stuff:</p>
                                        <ul>
                                            <li>A minimum of 5 years of commercial experience with .NET web development</li>
                                            <li>The right to live and work in Australia (Australian Citizenship or Permanent Residency)</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues</li>
                                            <li>Strong skills designing and implementing ASP.NET MVC applications using C#</li>
                                            <li>An IT degree or equivalent experience</li>
                                            <li>A working knowledge of agile software development methodologies (preferably Scrum) and good task management skills </li>
                                            <li>Experience attending initial meetings and following up prospects</li>
                                            <li>A keen interest in the development community including technological trends, news, people, and innovations</li>
                                        </ul>
                                        <p><strong>Skills:</strong></p>
                                        <ul>
                                            <li>Commercial experience designing and implementing ASP.NET MVC applications using C# and Angular </li>
                                            <li>A working knowledge of agile software development methodologies</li>
                                            <li>Good task management skills</li>
                                            <li>Strong C# development skills</li>
                                            <li>ASP.NET MVC and ASP.NET WebAPI using C#</li>
                                            <li>A good understanding of HTML5, CSS3, JavaScript and TypeScript, JSON, XML</li>
                                            <li>JavaScript UI Frameworks: Angular JS/Angular 2, Kendo UI and jQuery</li>
                                        </ul>



                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-melbourne location-brisbane type-all type-permanent position-all position-filled" id="accordion4" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading4">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="true" aria-controls="collapse4">
                                        <h2 class="panel-title"><span class="position-title">Business Development Manager</span> <span class="position-location"><i class="fa fa-map-marker"></i>Brisbane or Melbourne <strong>*FILLED*</strong></span>

                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse4" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading4">
                                    <div class="panel-body">
                                        <h4>SSW is looking for an intelligent person with good communication and presentation skills to join our dynamic team in a Full or Part-Time Business Development Management position in Melbourne and Canberra.</h4>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <ul>
                                            <li>Finding new clients for SSW</li>
                                            <li>Attending initial meetings and following up prospects</li>
                                            <li>Liaising with clients and developers</li>
                                            <li>Gather customer feedback and ensure smooth and successful launches</li>
                                            <li>Organizing SSW events</li>
                                        </ul>
                                        <p>
                                            The successful candidate will have:
                                        </p>
                                        <ul>
                                            <li>At least 1 year in a similar role</li>
                                            <li>Great sales skills</li>
                                            <li>Universities Admission Index - UAI (or equivalent) of 80% or above</li>
                                            <li>Fantastic interpersonal and communication skills</li>
                                            <li>Self-motivation and high attention to detail</li>
                                            <li>A tertiary qualification would be highly regarded</li>
                                        </ul>
                                        <p>
                                            To be successful in this role, you will need to be a smart, fast thinker with excellent
                            communication and customer service skills. Your "can-do" attitude and commitment
                            to getting the job done will secure you an interview.
                                        </p>


                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney location-brisbane location-melbourne type-all type-contract type-permanent position-all position-filled" id="accordion7" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading7">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse7" aria-expanded="true" aria-controls="collapse7">
                                        <h2 class="panel-title"><span class="position-title">Sales and Marketing</span> <span class="position-location"><i class="fa fa-map-marker"></i>Melbourne &amp; Sydney <strong>*FILLED*</strong></span>

                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse7" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading7">
                                    <div class="panel-body">
                                        <p><b>We are looking for a sales assistant to support the state sales managers to win new work. You will take on some of the administrative tasks the sales managers complete so they have more client facing time.</b></p>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />

                                        <p><b>Duties and Responsibilities</b></p>

                                        <p>The Sales Assistant will be primarily responsible for:</p>
                                        <ul>
                                            <li>Implementing social media strategies</li>
                                            <li>Create and implement inbound marketing strategy including social media, email newsletters, blogging, podcasting, webinars and videos</li>
                                            <li>Managing offline marketing activities</li>
                                            <li>Liaising with clients</li>
                                            <li>Assisting with the creation of sales material</li>
                                            <li>Providing administrative assistance to the sales department</li>
                                            <li>Maintaining the schedules of sales managers</li>
                                            <li>Organize post-sales activities with new clients</li>
                                        </ul>

                                        <p><strong>Skills and experience</strong></p>
                                        <ul>
                                            <li>Some knowledge of Microsoft technologies</li>
                                            <li>Have 1-2 years of commercial experience in a similar role</li>
                                            <li>Excellent communication skills</li>
                                            <li>Some experience in online marketing strategies</li>
                                            <li>Be an energetic, motivated individual who can manage multiple opportunities/leads and responsibilities concurrently</li>
                                            <li>Ability to work closely with other staff in a team environment</li>
                                            <li>A tertiary qualification in Business/Marketing or related field preferred</li>
                                            <li>Self-motivation and high attention to details</li>
                                        </ul>

                                        <p>Your "can-do" attitude and commitment to getting the job done will secure you an interview.</p>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney location-brisbane location-melbourne type-all type-contract type-permanent position-all position-filled" id="accordion9" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading9">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse9" aria-expanded="true" aria-controls="collapse9">
                                        <h2 class="panel-title"><span class="position-title">Senior SharePoint Developer</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney <strong>*FILLED*</strong></span>

                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse9" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading9">
                                    <div class="panel-body">
                                        <p><b>SSW is looking for an experienced and talented SharePoint developer who is passionate about implementing awesome SharePoint solutions. This role 
                            requires great communication skills and solid experience in delivering production-ready SharePoint solutions.</b></p>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>You will be working with expert .NET and SharePoint developers and designers in a wide variety of exciting corporate projects. This role requires someone 
                            who can work closely with clients, think critically, and create the right solution for the right job. A solid understanding of SharePoint 2010 and 2013 
                            is a must. Experience with SharePoint 2007 and general knowledge of .NET development, particularly ASP.NET and MVC is highly favourable.
                                        </p>

                                        <p>You will have:</p>
                                        <ul>
                                            <li>Australian Citizenship or Permanent Residency</li>
                                            <li>5+ years of experience with SharePoint 2007, 2010, or 2013</li>
                                            <li>The ability to converse and interact professionally and comfortably with clients and colleagues</li>
                                            <li>Experience in pre-sales</li>
                                            <li>The ability to know how best to communicate your technical ideas and defend the reasoning behind these decisions</li>
                                            <li>A keen interest in the development community including technological trends, news, people, and innovations</li>
                                        </ul>

                                        <p><b>Skills:</b></p>
                                        <ul>
                                            <li>Commercial SharePoint 2007, 2010, and/or 2013 experience</li>
                                            <li>An IT degree</li>
                                            <li>A working knowledge of agile software development methodologies</li>
                                            <li>Good task management skills</li>
                                            <li>Strong C# development skills</li>
                                        </ul>

                                        <p><b>Favourable:</b></p>
                                        <ul>
                                            <li>ASP.NET MVC using Razor and C#</li>
                                            <li>Web API applications using C#</li>
                                            <li>XML</li>
                                            <li>HTML5</li>
                                            <li>CSS</li>
                                            <li>JavaScript and/or jQuery</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney location-brisbane location-melbourne type-all type-contract type-permanent position-all position-filled" id="accordion10" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading10">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse10" aria-expanded="true" aria-controls="collapse10">
                                        <h2 class="panel-title"><span class="position-title">BDM/Account Management Role</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney <strong>*FILLED*</strong></span>

                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse10" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading10">
                                    <div class="panel-body">
                                        <p>SSW is looking for an intelligent person with good communication and presentation skills to join our dynamic team in a Full or Part-time Business Development Management position.</p>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>To be successful in this role you should have the following:</p>
                                        <ul>
                                            <li>An IT Degree</li>
                                            <li>Have 1-2 years of commercial experience in a similar role</li>
                                            <li>Excellent communication skills</li>
                                            <li>Some knowledge of Microsoft technologies</li>
                                            <li>Some experience in business development, client relationships management in an IT environment</li>
                                            <li>Can manage and maintain new businesses and offering them with effective IT solutions</li>
                                            <li>Be an energetic, motivated individual who can manage multiple opportunities/leads and responsibilities concurrently</li>
                                            <li>Ability to work closely with other staff in a team environment</li>
                                        </ul>
                                        <p>Salary is negotiable based on experience.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney location-brisbane location-melbourne type-all type-contract type-permanent position-all position-filled" id="accordion11" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading11">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse11" aria-expanded="true" aria-controls="collapse11">
                                        <h2 class="panel-title"><span class="position-title">IT Marketing Manager</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney <strong>*FILLED*</strong></span>

                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse11" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading11">
                                    <div class="panel-body">
                                        <p>SSW is looking for a candidate who is keen to get into the IT industry as a Marketing Administrator. Your role will involve:</p>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <ul>
                                            <li>Devising and implementing marketing strategies to grow product and consulting sales</li>
                                            <li>Analysis of sales data</li>
                                            <li>Optimisation of existing marketing strategies</li>
                                            <li>Sourcing new business and giving presentations to clients </li>
                                            <li>General management of the SSW office </li>
                                            <li>Liaising with clients and developers</li>
                                            <li>Web administration</li>
                                            <li>Following up clients who have downloaded our software products </li>
                                        </ul>
                                        <p>The successful candidate will have:</p>
                                        <ul>
                                            <li>At least 1 year in a Marketing Role </li>
                                            <li>A recent degree in Marketing </li>
                                            <li>Familiarity with online selling </li>
                                            <li>Some knowledge of HTML </li>
                                            <li>Telemarketing and product support experience </li>
                                            <li>Universities Admission Index - UAI (or equivalent) of 80% or above </li>
                                            <li>Fantastic interpersonal and communication skills </li>
                                            <li>Self-motivation and high attention to detail</li>
                                        </ul>
                                        <p>Your "can-do" attitude and commitment to getting the job done will secure you an interview.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney location-brisbane location-melbourne type-all type-contract type-permanent position-all position-filled" id="accordion12" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading12">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse12" aria-expanded="true" aria-controls="collapse12">
                                        <h2 class="panel-title"><span class="position-title">Project Manager</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney <strong>*FILLED*</strong></span>

                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse12" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading12">
                                    <div class="panel-body">
                                        <p>SSW is looking for an intelligent person with great communication skills to be our Project Manager.</p>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>Major Functions:</p>
                                        <ul>
                                            <li>Liaise with clients to determine their requirements</li>
                                            <li>Be an awesome Scrum Master</li>
                                            <li>Make sure sites go live regularly</li>
                                            <li>Work closely with our development team to design the best solution</li>
                                            <li>Review developer estimates</li>
                                            <li>Deliver projects on time and on budget</li>
                                            <li>Gather customer feedback and ensure smooth and successful launches</li>
                                            <li>Establish short and long term goals and strategies</li>
                                        </ul>
                                        <p>
                                            Experience/Skills<br>
                                        </p>
                                        <ul>
                                            <li>Brilliant Communication Skills</li>
                                            <li>Experienced Team Leader</li>
                                            <li>Computer Science Degree or equivalent</li>
                                            <li>Coding experience of 1 year with SQL Server and .NET Projects</li>
                                            <li>Analysis, Design, Programming and Installation</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney location-brisbane location-melbourne type-all type-contract type-permanent position-all position-filled" id="accordion14" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading14">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse14" aria-expanded="true" aria-controls="collapse14">
                                        <h2 class="panel-title"><span class="position-title">Software Developer - Microsoft Access &amp; SQL Server for Migration to .NET Projects</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney <strong>*FILLED*</strong></span>

                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse14" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading14">
                                    <div class="panel-body">
                                        <p>SSW is looking for an enthusiastic Software Developer to start NOW.</p>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p><strong>To be suitable for the role you must have:</strong></p>
                                        <ul>
                                            <li>A minimum of 2 years of development experience in MS Access, ASP.NET MVC and MS SQL Server.</li>
                                            <li>Excellent communication skills.</li>
                                            <li>Experience in designing and implementing ASP.NET and Web Forms applications. </li>
                                            <li>A good understanding of XML, HTML5, CSS and JavaScript.</li>
                                            <li>A working knowledge of agile software development methodologies.</li>
                                            <li>A passion for leading-edge Microsoft Technologies. </li>
                                            <li>Motivated, reliable &amp; committed.</li>
                                        </ul>
                                        <p><strong>The following additional skills will be highly regarded: </strong></p>
                                        <ul>
                                            <li>Business Intelligence (SQL Reporting Services and Analysis Services)</li>
                                            <li>.NET skills</li>
                                            <li>CRM or SharePoint. </li>
                                        </ul>
                                        <p>You will be learning Performance Point 2010 and Access Services 2010 as part of the role.</p>
                                        <p>Salary is negotiable depending on experience. There is plenty of scope for advancement. The successful candidate will also receive fully paid Microsoft certified training to MCSD level.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-group  location-all location-sydney location-brisbane location-melbourne type-all type-contract type-permanent position-all position-filled" id="accordion15" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading15">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse15" aria-expanded="true" aria-controls="collapse15">
                                        <h2 class="panel-title"><span class="position-title">Marketing and Social Networking Manager</span> <span class="position-location"><i class="fa fa-map-marker"></i>Sydney <strong>*FILLED*</strong></span>
                                        </h2>
                                    </a>
                                </div>
                                <div id="collapse15" class="panel-collapse collapse fade" role="tabpanel" aria-labelledby="heading15">
                                    <div class="panel-body">
                                        <p>SSW is looking for a new person to add to the team to make sure our events are well attended, our developers are blogging well and people know we are doing some great projects. </p>
                                        <p>You will be working with expert Microsoft stack developers and designers in a wide variety of exciting corporate projects.<br />
                                        The main reasons people choose to work at SSW are the <a href="https://www.ssw.com.au/ssw/Company/Culture">great culture</a>, the <a href="https://www.ssw.com.au/ssw/Company/Clients">cool client projects</a>, and the cutting edge <a href="https://www.ssw.com.au/ssw/Consulting/Default.aspx">tech stack</a>.<br />
                                        SSW is unlike any place you've ever worked at.</p>
                                        <hr />
                                        <p>The main responsibilities are:</p>
                                        <ul>
                                            <li>Getting good number to events around Australia and globally</li>
                                            <li>Sending Newsletters</li>
                                            <li>Working with one of Australia's leading SEO experts to measure and improve our statistics</li>
                                            <li>Event marketing and management
                                    <ul>
                                        <li>Setting dates E.g. we run events in each capital city, 2 x per year</li>
                                        <li>Marketing via Social Media<br>
                                            - Email, Facebook, Twitter, Linked In etc. 
                                        </li>
                                        <li>Sending info to important bloggers about SSW events </li>
                                        <li>Submitting relevant links to forums</li>
                                        <li>Adding useful comments to blogs with related SSW links</li>
                                        <li>Working with Microsoft to run joint events</li>
                                    </ul>
                                            </li>
                                            <li>Improving our Rules to better Blogs, Twitter, Social Networking, etc.</li>
                                            <li>Taking Blogging to a new level
                                    <ul>
                                        <li>SSW Blog with regular news updates</li>
                                        <li>Helping SSW guys to blog better</li>
                                    </ul>
                                            </li>
                                            <li>Setting up SSW's Podcast (inside SSW.TV)</li>
                                            <li>Office Reception and some Office Management</li>
                                            <li>4 days a week preferably (flexible if full or part time needed)</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="noResultsContainer">
                    <div>No position available. Try a different filter</div>
                </div>
                <!-- // end of positions list -->
            </div>
            <div class="col-md-12">

                <h2 class="text-center">Don't fit any of the available positions?</h2>
                <p class="text-center" style="font-size:1.2rem;">We may still be a match! Tell us why you want to join the SSW team.</p>

                <!-- CTA button -->
                <a href="javascript:sendEmail('70656e6e7977616c6b6572407373772e636f6d2e6175','Employment')" onmouseover="javascript:displayStatus('70656e6e7977616c6b6572407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" class="button raised hoverable EmMdBtn">
                    <div class="anim"></div>
                    Send email to apply!
                </a>

                <h2>or call Penny on +61 2 9953 3000</h2>
                <!-- CTA button-->
            </div>
        </div>
    </div>

    <!-- //solutions section -->
</asp:Content>

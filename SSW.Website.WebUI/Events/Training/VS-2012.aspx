<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="C++ and Visual Studio 2012: Modern, Readable, Fast, Safe" %>
<%--Do not change the title - we know it's long, but for SEO purposes--%>



<asp:Content ContentPlaceHolderID="Slider" runat="server">
   
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
        <img class="icon" src="Images/thumbs/thumb-vs11-course.png" alt="VS-2012" />
        <h1>C++ and Visual Studio 2012:</h1>
        <h2>Modern, Readable, Fast, Safe</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server"> 
    <h2>C++ in 2011:</h2>
    <ul>
        <li><a href="#Description">Description</a></li>
        <li><a href="#WhatYouWilllearn">What you'll learn</a></li>

        <li><a href="#TargetAudience">Target Audience</a></li>

        <li><a href="#Trainers">Your Trainers</a></li>
        <li><a href="#Location">Location</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="eventsummary">

        <ul class="vitals conferenceprice">
            <li>Duration
                <ul>
                    <li>1 day</li>
                </ul>
            </li>
            <li>Price
                <ul>
                    <li style="width:190px;">$300 + GST</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule conference">
            <li class="flag">
                <strong><img src="/ssw/events/images/flag_australia.png" style="float: left; margin-right: 10px;"
                    title="Brisbane" />Sydney<br /><span>CANCELLED</span></strong>
                    <ul>
                        <li style="width: 100px;"><a href="/ssw/Shop/BasketInsert.aspx?ProductID=cvssy1"><span>
                            Book Now</span></a>
                        </li>
                   </ul>
            </li>
        </ul>
    </div>
    <div class="section">
        <h2><a name="Description"></a>Description</h2>
        <p>C++ is gaining momentum as a development language, so whether you’ve never used C++ or stopped using it a decade ago, it may be time to brush up on your 
        skills. With a new standard release providing new keywords and capabilities, C++ is a  featured language for many of the new Microsoft technologies and enables 
        some amazing speed-ups of your application using libraries like PPL and C++ AMP. What’s more, Visual Studio offers tools to native developers that have only 
        been available for managed developers in earlier versions.</p>
        <p>This all day session will show you what the fuss is about and give you the skills you need to understand the advantages of C++ today, and start gaining 
        those benefits for your application.</p>        
    </div>

    <h2><a name="WhatYouWilllearn"></a>What you'll learn</h2>
    <ul>
        <li>Modern C++ with the Standard Library (demo of strings, shared pointers)</li>
        <li>Application Lifecycle Management for Visual C++ 11</li>
        <li>Leveraging Lambdas for the PPL and C++ AMP</li>
        <li>Best practices for C++ developers today</li>
    </ul>

<div class="section">
<h2><a name="TargetAudience"></a>Target Audience</h2>
   <p>If you're an experienced and current C++ developer, you may not need to come to this session. But if you were thinking you needed a refresher, here's a great way 
   to get one, and at the same time look at some of the cool new stuff that is available to you once you know C++.</p>
   <p>If you've never written a line of C++ code in your life, but you're solid in C# or Java so you know the basic syntax (if, while, etc) you should be able to 
   follow this session, though it won't teach you all the fiddly bits of C++ syntax and make you a C++ developer from scratch. It should, however, give you the inspiration you might need to go and learn all that fiddly 
   syntax, and understand why we have it.</p>
   <p>Someone who has no idea what is in C++ 11 will enjoy this session a lot.</p> 
</div>
<div class="section">
<h2><a name="Trainers"></a>Your trainer</h2>
    <table class="normal">
        <tr>
            <td><img src="/ssw/events/Training/images/kategregory.jpg" style="width: 150px;"/></td>
            <td><h3>Kate Gregory</h3>
            <p>Kate Gregory is in her fourth decade of being paid to program. Her firm, Gregory Consulting Limited, is based in rural Ontario and helps clients adopt 
            new technologies and adjust to the changing business environment. Current work makes heavy use of .NET and Visual C++ for both web and client development, 
            especially for Windows 7 and 8. Managing, mentoring, technical writing, and technical speaking occupy much of her time, but she still writes code every week.</p> 
            <p>Kate is the author of over a dozen books and speaks at DevTeach, TechEd (USA, Europe, Africa), and TechDays, among others. Kate is a C++ MVP, a founding
             sponsor of the Toronto .NET Users Group, the founder of the East of Toronto .NET Users group, a member of the INETA speakers bureau, and a member of adjunct
             faculty at Trent University in Peterborough. Since January 2002 she has been Microsoft Regional Director for Toronto and since January 2004 she has been 
             awarded the Microsoft Most Valuable Professional designation for Visual C++. In June 2005 she won the Regional Director of the year award and in February
             2011 she was designated Visual C++ MVP of the year for 2010. Kate develops courses on C++, Visual Studio, and Windows programming for Pluralsight and is
             writing a book on C++ AMP.</p>
            <p><a href="http://www.gregcons.com/KateBlog/">Read Kate's blog</a></p>
            <p>Adam interviewed Kate recently for SSWTV. <a href="http://tv.ssw.com/1882/why-c-is-better-than-csharp-with-kate-gregory">See what the Queen of C++ has to say about the revitalisation of C++ and Windows 8.</a></p>
            </td>
        </tr>
    </table>
</div>  
    <h2><a name="Location"></a>Location Details</h2>
    <table class="outline" width="100%">
        <tr>
            <th scope="row">Sydney</th>
            <td>SSW Offices | <a class="directions" href="/ssw/Company/Directions/NeutralBay/">Directions</a></td>
        </tr>
    </table>
</asp:Content>

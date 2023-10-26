<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Tech Breakfast: C++ and Visual Studio Dev 11" %>
<%--Do not change the title - we know it's long, but for SEO purposes--%>

<%--<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="description" content="Complete overview of building enterprise MVC applications using ASP.NET <http://ASP.NET> MVC 4, including architecture best practices, data planning and UI implementation guildelines" />
</asp:Content>--%>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <%--<img src="/ssw/images/raven/Banner-MVC.jpg" alt="Banner for Enterprise MVC courses" />--%>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
        <h1>Tech Breakfast: C++ and Visual Studio 2012</h1>
        <h2>Delicious and healthy breakfast, tips and tricks to use today</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server"> 
    <h2>C++ in 2011:</h2>
    <ul>
        <li><a href="#When">When</a></li>
        <li><a href="#Description">Description</a></li>
        <%--<li><a href="#WhatYouWilllearn">What you'll learn</a></li>--%>
        <%--<li><a href="#CourseOutline">Course Outline</a></li>--%>
        <%--<li><a href="#TargetAudience">Target Audience</a></li>--%>
        <%--<li><a href="#Prerequisites">Prerequisites</a></li>--%>
        <%--<li><a href="#CourseIncludes">Course Includes</a></li>--%>
        <%--<li><a href="#ExtraInfo">Extra Info</a></li>--%>
        <li><a href="#Trainers">Your Trainer</a></li>
        <li><a href="#Location">Location</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">
		<h2><a name="When"></a>Details</h2>
		<table class="beautyTable">
        
		  <tr class="odd">
			<td rowspan="5"><a><img src="/ssw/events/images/fruitDropShadow.jpg" alt="Tech Breakfast"/></a></td>
            <td>Date:</td>
			<td>CANCELLED</td>     
		  </tr>
		  <tr>
			<td>Time:</td>
			<td>9:00am - 11:00am</td>
		  </tr>
		  <tr class="odd">
			<td>Cost:</td>
			<td>No Charge</td>
		  </tr>
		  <tr>
			<td>Presenter:</td>
			<td>Kate Gregory, C++ MVP, Microsoft Regional Director</td>
		  </tr>
          <tr>
            <td> </td>
            <td><a class="green next" href="/ssw/Shop/BasketInsert.aspx?ProductID=TBVS11">Register</a></td>
          </tr>
        </table>  
	 </div>
    <div class="section">
        <h2><a name="Description"></a>Description</h2>
        <p>C++, both the language and the libraries that come with every compiler, is defined by an ISO standard. The latest version of the standard, generally known as 
        C++ 11 after its approval last fall, was optimistically called C++0x throughout the multi-year process that let to its adoption. Many of the language changes 
        (new keywords, new punctuation, new rules) and library changes (genuinely smart pointers, threading, and more) have already been implemented by vendors who were 
        following the standards process closely.</p>
        <p>In this session Kate will introduce and demonstrate many of the highlights of C++11 including lambdas, auto, shared_ptr, and unique_ptr. These are all supported 
        in Microsoft’s Visual Studio 2010. You can see how to make your code more readable and expressive, easier to update, more correct (less bugs and memory leaks) 
        and faster, not by trading off among those possible constraints but by adopting modern C++ which gives you improvements in all four areas at once. If you’ve been 
        ignoring the Standard Library, for example, you must see how lambdas make all the difference and open a world of productivity to you. You’ll also see that the next 
        version of Visual Studio has even more C++11 goodness including range-based for.</p>        
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
            <center><h4>This event is proudly sponsored by:</h4>
                        <a href="http://www.telerik.com/?utm_source=SSWUpdate_May&utm_medium=email&utm_campaign=MVC_Training_for_Enterprising_Developers"><img src="/ssw/netug/sswupdate/images/Telerik Logo.jpg" alt="Telerik Logo" width="150" height="50" /></a></center>
            </td>
        </tr>
    </table>
</div>  
    <h2><a name="Location"></a>Location Details</h2>
    <table class="outline" width="100%">
        <tr>
            <th scope="row"><a href="https://www.ssw.com.au/ssw/Events/Venues/Hire-Conference-Room.aspx">SSW Chapel</a></th>
            <td>SSW Sydney Offices | <a class="directions" href="/ssw/Company/Directions/NeutralBay/">Directions</a></td>
        </tr>
    </table>
</asp:Content>

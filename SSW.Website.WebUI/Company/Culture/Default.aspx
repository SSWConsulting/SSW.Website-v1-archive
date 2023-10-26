<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="AboutUs.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW - Our Culture - Sydney's Premier Software Consultants" Inherits="SSW.Website.WebUI.Raven" %>
<%@ Register Src="~/Components/AboutUs.ascx" TagName="AboutUs" TagPrefix="ssw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>SSW Culture</h1>
    <h2>Make it happen</h2>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
    <img src="images/header_AboutUs.jpg" alt="About Us." />
</asp:Content>--%>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
   
    <div class="section">

        <h2>Our Culture</h2>
        <p>A company's culture pervades everything a company does. As one of Australia's longest-running .NET consultancies, the culture of SSW is mature but flexible, always evolving to include the best cumulative values, attitudes, standards, and beliefs of the employees. </p>
        <p>Though culture can be nebulous and changeable, it is a point of pride at SSW that our culture is always underpinned by the following: </p>        
                
        <h3>A "Make it happen" culture</h3>
        <p>We work together to provide solutions to problems for our clients every day, and this proactivity happens internally too.</p>
        <p>We are effective and make sure our time counts.</p>
        <p>We always leave meetings with clear action items and knowing what's expected from everyone.</p>
        <p>We use <a href="https://www.ssw.com.au/ssw/consulting/Scrum.aspx">Scrum</a> extensively to help with prioritisation and work transparency.</p>

        <h3>Appreciation</h3>
        <p>We understand that not everyone communicates and listens the same way, and that what's important to some may not be important to all. However, it is human to want to feel appreciated for our effort, so at SSW we keep this in mind when making an employee feel valued for their work. </p>
        <p>See our interview with Kylie Hunt, workplace happiness guru, on <a target="_blank" href="https://tv.ssw.com/6931/the-5-languages-of-appreciation-in-the-workplace-with-kylie-hunt">the 5 languages of love</a>.</p>
        
        <h3>Innovation</h3>
        <p>Keeping on the cutting edge of technology, we're always looking out for the latest and greatest way of doing everything. We use the latest version of everything, sometime while it’s still in Beta (or even Alpha) stage. Being flexible and able to pivot as required means we’re ready for anything.</p>

        <h3>Consistency</h3>
        <p>We have documented all of the best practices we can possibly think of in our <a href="https://rules.ssw.com.au/">Rules to Better 'Everything'</a>, and are always trying to make sure we're following and updating them whenever possible. We have also made a number of apps that enforce our coding standards in our work, such as <a href="https://linkauditor.com.au/">SSW Link Auditor</a> and <a href="https://www.codeauditor.com/">SSW Code Auditor</a>.</p>
        <p>We also have an extensive induction program built on <a href="https://www.sugarlearning.com/">SugarLearning</a>, which ensures we’re all on the same page with regards to our roles, rights, and responsibilities at the company. Each person who undertakes this induction is asked to provide feedback, to make sure the process is as fresh and accurate as possible.</p>

        <h3>Community involvement</h3>  
        <p>We run multiple user groups including the <a href="https://www.ssw.com.au/ssw/NETUG/Sydney.aspx">Sydney</a>, <a href="https://www.ssw.com.au/ssw/NETUG/Melbourne.aspx">Melbourne</a>, and <a href="https://www.ssw.com.au/ssw/NETUG/Canberra.aspx">Canberra</a> .NET User Groups, the <a href="https://www.ssw.com.au/ssw/NETUG/Brisbane.aspx">Brisbane</a> Full Stack User Group and the Fire User Group in <a href="https://fireusergroup.com/">Beijing and Hangzhou</a>. We encourage as many of our employees as possible to share their tech passions by speaking at other User Groups and industry events such as Ignite, Build, NDC, etc.</p>
        <p>SSW also runs our own TV channel called <a href="http://tv.ssw.com/">SSW TV</a>, filled with content on the latest technologies. SSW TV encompasses everything from recordings of presentations and conferences, videos from our training courses, webinars, interviews and more. All content on SSW TV is available to anyone, 100% free, no sign up required.</p>

        <h3>SSW Getaway</h3>
        <p>Once or twice a year the SSW guys and their families escape Sydney, Melbourne and Brisbane to attend the SSW Getaway and spend some time together outside the office.</p>
        <p>During these getaways, we do a bunch of fun activities together, have a hearty and delicious meal, and take an epic walk someplace beautiful.</p>
        <iframe width="750" height="422" src="https://www.youtube.com/embed/JqlfAH56v7U" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
    </div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <ssw:AboutUs ID="AboutUs" runat="server" />

</asp:Content>

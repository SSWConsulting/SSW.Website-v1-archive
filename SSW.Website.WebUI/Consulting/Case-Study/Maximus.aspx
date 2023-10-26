<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Maximus Imprint Case Study | SSW Consulting" %>
<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content4" ContentPlaceHolderID="title" runat="server">
    <h1>Maximus Imprint Case Study</h1>
    <h2>ASP.NET, Ajax and NHibernate technologies</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <script type="text/javascript">
        var slides = []; //FIRST SLIDESHOW
        //configure the below images and descriptions to your own. 
        slides[0] = ["/ssw/Images/Slideshow/imprinthrpSlide_01.jpg", "<strong>Figure 1: Search for a performance review - Table View</strong>"];
        slides[1] = ["/ssw/Images/Slideshow/imprinthrpSlide_02.jpg", "<strong>Figure 2: AJAX drag and drop organisational structure</strong>"];
        slides[2] = ["/ssw/Images/Slideshow/imprinthrpSlide_03.jpg", "<strong>Figure 3: Search for a performance review - Gantt Chart View</strong>"];
        slides[3] = ["/ssw/Images/Slideshow/imprinthrpSlide_04.jpg", "<strong>Figure 4: 360 Survey report</strong>"];
    </script>
    <script src="/ssw/include/slideShowGlobal.js" type="text/javascript">
/***********************************************
* Swiss Army Image slide show script  - John Davenport Scheuer: http://home.comcast.net/~jscheuer1/
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full original source code
***********************************************/
    </script>

    <div class="section">
        <h2>Challenge</h2>
        <p>
            Maximus International is a boutique organizational assessment and development consultancy
            that offers commercially savvy, unique solutions to business. To support their business
            they needed a HRIS web application to help manage the HR Process, from initial selection
            and interviews to staff training and performance reviews. SSW was chosen from a
            pool of 12 development houses to produce this application based on ASP.NET 2.0,
            AJAX and NHibernate technologies.
        </p>
    </div>
    <div class="sectionRight">
        <p>
            <script type="text/javascript">
                //Notes on Parameters: The only required parameter is the slides_array_name.  If Width is used, so must Height.
                //Interval is optional too.  It is always last, either fourth after Width and Height or second after Slides_array_name.
                //Usage: new inter_slide(Slides_array_name, Width, Height, Interval)
                new inter_slide(slides)
            </script>
        </p>
    </div>
    <div class="sectionLeft">
        <h2>Process</h2>
        <h3>Agile Development</h3>
        <p>We adopted an agile/extreme programming development paradigm so that we could get user feedback early in the development process and react to change requests quickly. A good example of this is the weekly demonstrations on Friday afternoons to the client and some end users. The goals of the demonstrations were to showcase the progress achieved in the current week and to obtain feedback from the end users of the system. These demonstrations were positively received.</p>
        <h3>Usability</h3>
        <p>A lot of attention was paid to the usability of the system for end users. The iterative agile approach allowed us to fine tune the navigation of the system so that most parts of the system were accessible within 6 clicks of the mouse.</p>
        <p>We also used Microsoft AJAX technology where possible to create a more rich and interactive experience for users of the system. An example of this is the drag and drop organisation structure, the autosuggest search fields and search screens.</p>
        <p>The usability of the system has been well received from the live and pilot clients of the system.</p>
        <h3>Software as a Service</h3>
        <p>
            One of the main requirements of the application was to make it customizable for each client. The main areas of customization are the themes, reports and business logic.
            <br />
            The customization of themes was achieved through Master Pages and ASP.NET Theming engine.
        </p>
        <p>The reports were customizable through custom XSL templates for each client (for use with XML FO)</p>
        <p>The business logic was customized through pluggable libraries for each client.</p>

    </div>

    <div class="section">
        <h1>Technologies</h1>
        <p>The Web Application is built on Microsoft ASP.NET 2.0 with a SQL Server 2000 backend. The persistence layer used was NHibernate ¨C although we did consider using LINQ but it was too immature at that stage.</p>
        <p>We also incorporated Microsoft AJAX to create a richer user experience.</p>
        <p>For reporting we used XML FO and Component Art Web Charts to produce rich documents that could not be done in SQL Reporting Services or Crystal Reports.</p>
    </div>

    <div class="section">
        <h1>Results</h1>
        <p>We have received very positive feedback from the live and pilot users of the system. Maximus are beginning to roll out the system to some of their clients.</p>
    </div>

    <text:Location runat="server" />

</asp:Content>
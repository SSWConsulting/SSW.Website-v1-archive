<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="eMove Case Study | SSW Consulting" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
<h1>eMove</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">

<script type="text/javascript">
var slides=[]; //FIRST SLIDESHOW
//configure the below images and descriptions to your own. 
slides[0] = ["/ssw/Images/Slideshow/emoveSlide_01.jpg", "<strong>Figure 1: Before</strong>"];
slides[1] = ["/ssw/Images/Slideshow/emoveSlide_02.jpg", "<strong>Figure 2: After</strong>"];
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
            eMove is a free online service for finding removalist quotes; utility connections/disconnections; address changes; cleaners; storage; packing and much more.
        </p>
        <p>SSW was brought into the project to provide new functionality for the removalist quotes and utility connections/disconnections. SSW created 2 new DotNetNuke modules for the site and integrated into their solution and bug fixing existing errors on their existing site. SSW was also commissioned to take a new design from eMove and create and implement a DotNetNuke skin for the new design. </p>
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
                <h3>DotNetNuke Skin Creation</h3>        
                    <p>
                        eMove provided SSW with a Photoshop (PSD File) design of the new look for the site. SSW’s team of graphic designers sliced up the file into dozens of images and created the css stylesheet for the colour scheme and layout.
SSW then created the new DotNetNuke skin using these files that were created for all pages on the eMove website.

                    </p>
                    
<h3>DotNetNuke Modules</h3>
                    <p>
                    As part of the new design eMove wanted to add new functionality to their existing website. Two new modules were created; <a href="http://www.emove.com.au/Default.aspx?tabid=59" target="_blank">Removalists quotes</a> and <a href="http://www.emove.com.au/ConnectDisconnect/tabid/61/Default.aspx" target="_blank">Connections/Disconnections</a>.
The removalists quotes section contained wizard functionality to move between steps with validation and dynamic updates using AJAX technologies to create a user friendly experience. 

                    </p>
       
    </div>
    <div class="section">
        <h2>Technologies</h2>
        <p>
            The Web Application is built on Microsoft ASP.NET 2.0 using DotNetNuke with a SQL Server 2005 backend. </p>
            <p>
            We also incorporated Microsoft AJAX and used Telerik RADControls for ASP.Net to create a richer user experience in the custom Desktop Modules.</p>
    </div>
    <div class="section">
        <h2>Results</h2>
        <p>
            The project was deployed successfully and the client has indicated they are extremely satisified with the end result.
        </p>
    </div>

</asp:Content>

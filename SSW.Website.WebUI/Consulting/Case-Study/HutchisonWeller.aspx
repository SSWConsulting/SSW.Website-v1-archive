<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Hutchison Weller - KNOWnoise Case Study | SSW Consulting" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content5" ContentPlaceHolderID="title" runat="server">
    <h1>Hutchison Weller</h1>
    <h2>KNOWnoise – Managing and reducing the impact of noisy construction in communities </h2>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <iframe width="750" height="422" src="https://www.youtube.com/embed/wiFadV5SOPc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>

    <div class="section">
        <h2>Challenge</h2>
        <p>Hutchison Weller, a company that focuses on managing the environmental impacts for their clients in the construction market, had a personalized noise management spreadsheet as part of their services that could be tailored for each client on Excel. Even though they had demand for this service, it was time-consuming to personalize it every time a new client signed-in for the service. Hutchison Weller knew they needed a new solution in order to keep selling their noise management consultancy.</p>

        <h2>We make complicated things simple</h2>
        <p>Hutchison Weller wanted KNOWnoise to save time, money and to greatly increase flexibility for project managers on linear infrastructure projects.</p>
        <p>Their needs were some of these:</p>
        <ul>
            <li>Besides that, Hutchison Weller's clients also needed flexibility in planning, particularly out-of-hours works, when they tend to have problems. Now there's no need to wait for a consultant to prepare a report</li>
            <li>Direct their resources where needed most, being able to identify the worst impacts instantly</li>
            <li>Identify specific receivers that may require notification or alternative accommodation, being able to save the community consultation team valuable time and to inform the community with a detailed understanding of the potential impacts previously of starting the project</li>
        </ul>
        <p>More than just a predicted noise level, KNOWnoise now can provide the project team with:</p>
        <ul>
            <li>The ability to assess virtually any combination of activity at any time or place</li>
            <li>A built-in equipment list, that can be modified or augmented</li>
            <li>Detailed prediction results identifying exceedances, cumulative impacts and colour-coded risk profiles. This can also include ancillary facilities (compounds)</li>
            <li>'Impact maps' showing colour-coded noise predictions and risk profiles</li>
            <li>A printable report for approval and record-keeping. It's also possible to export all results/report to Excel</li>
            <li>Calendar-based scheduling and management</li>
            <li>Advice on compliance and control measures based on results and conditions of approval, Environment Protection Licenses or other licence or permit obligations</li>
        </ul>
        
        <h2>Technology</h2> 
        <p>KNOWnoise was re-developed as a web application and deployed within 3 months. This application was built using Angular and NgRx in the frontend. The backend was developed using .Net Core, hosted on Azure, and following the Clean Architecture principles.</p>
        
        <h2>Results</h2>
        <p>KNOWnoise now allows managers to model noise impacts on neighbourhoods surrounding noisy construction sites such as NorthConnex, featured in this six-minute testimonial video. Additional positive impacts include improved community relations and regulatory compliance.</p>
        
        <h3>Related links</h3>
        <ul>
            <li><a href="https://knownoise.net/">KNOWnoise project website</a></li>
            <li><a href="https://hutchisonweller.com/">Hutchison Weller website</a></li>
            <li><a href="https://adamcogan.com/2019/12/13/8-tips-to-strengthen-your-devops-project-knownoise/">8 Tips to Strengthen Your DevOps (Project KNOWnoise) - Adam's Blog</a></li>
        </ul>
    </div>

</asp:Content>
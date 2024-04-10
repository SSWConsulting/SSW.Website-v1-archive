<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Shepherd Centre Case Study | SSW Consulting" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content5" ContentPlaceHolderID="title" runat="server">
    <h1>Shepherd Centre</h1>
    <h2>Assisting children who have hearing loss</h2>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section" style="text-align:center;">
        <iframe width="750" height="384" src="https://www.youtube.com/embed/g4_MnAZJpxg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>

    <div class="section">
        <h2>The Challenge</h2>
            <p>More than 90% of children globally and 50% in Australia miss out on specialist support for disabling levels of hearing loss. For more than half a century, The Shepherd Centre’s mission has been to make sure that these kids develop the best-spoken language and social skills literacy.</p>
            <p>The Shepherd Centre team needed to modernize two assessment tools and two educational courses they had created for clinicians and parents.</p>
            <p>These tools previously worked as a desktop native application. They already had a small database, and the desktop apps saved information into an existing local database. However, it was slow, located on-premises, and not on the cloud, so it was not distributable across other centres in Australia. At that stage, the concept was excellent, but it was impossible to make this solution scalable and available worldwide.</p>

        <h2>We make complicated things simple</h2> 
            <p>Our UX team designed the UI to be more user-friendly, and they worked together with the development team to make this solution scalable.</p>
            <p>From many paper notes and records, a tiny database, and a concept in a few clinicians’ minds, SSW Solution Architects <a href="https://www.ssw.com.au/people/calum-simpson">Calum Simpson</a> and <a href="https://www.ssw.com.au/people/mehmet">Mehmet Ozdemir</a> worked continuously on developing this application for 9 months until an MVP was successfully delivered.</p>
            <p>They used Microsoft Dynamics, Power Platform, Sitefinity, Azure, and .NET across the various parts of the system, integrating them all together to give life to HearHub.</p>
            <p>HearHub is an integrated online platform that connects two tools created by The Shepherd Centre: Reddi and FLI-P.</p>
            <p><a href="https://hearhub.org/home/features/tools/reddi/">REDDI</a> focuses on children's ability to hear their access to sound, so it was designed to track a child's functional access to the critical sounds used in speech, both through detection and imitation.</p>
            <p><a href="https://hearhub.org/home/features/tools/fli-p/">FLI-P</a> is a series of questions and tasks that track the listening development journey of a child from just a few months of age all the way through to six. This tool enables these children to get the listening skill development they need to get the subsequent language development.</p>
            <p>With these tools, the clinicians can now visualize the data in Power BI and find out where the children are in their journey. That way, they can accurately plan the next steps for that child’s development to develop the child's skills and track the requirements for additional emphasis or cues in their treatment.</p>

        <h2>Results</h2>
            <p>Over the past 3 years, The Shepherd Centre has successfully aided over 1.4 thousand children in Australia. Through optimized assessment, therapy, and the use of hearing devices, over 40% of children who initially had listening skills below their age-appropriate levels were able to reach those levels. This is a remarkable achievement that significantly improves their prospects of acquiring language, literacy, and social skills on par with their hearing peers. Now, 75-80% of all graduates achieve language scores equivalent to their peers – an impressive figure. These results are possible because of the real-time data they now have access to.</p>
            <p>The forecast for HearHub's impact is astounding. Over 190 thousand children are expected to benefit between 2023 and 2026 in a network of more than 9.5 thousand hearing health professionals across the USA, Canada, Mexico, Japan, UK, Ireland, Australia, New Zealand, South Africa, and Indonesia.</p>
            <p>According to Aleisha Davis, CEO of The Shepherd Centre, HearHub has the potential to be transformative on a global scale. Helping children with hearing loss receive the support they deserve, unlocking their full potential for a brighter future.</p>
                    
        <h2>Microsoft Partner of the Year Finalist</h2>
        <p>This SSW project has been recognized as a Microsoft Partner of the Year Finalist for 2023!</p>
        <img src="Images/POTY-Finalist-inclusion-logo.png" />    

        <h2>Related links</h2>
        <ul>
            <li><a href="https://www.ssw.com.au/industry/non-profit">Non-Profit Software Solutions</a></li>
            <li><a href="https://shepherdcentre.org.au">The Shepherd Centre website</a></li>
            <li><a href="https://hearhub.org">Hearhub website</a></li> 
        </ul>

    </div>

</asp:Content>
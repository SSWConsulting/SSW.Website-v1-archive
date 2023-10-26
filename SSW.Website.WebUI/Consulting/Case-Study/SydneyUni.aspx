<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Sydney University - BREAST Case Study | SSW Consulting" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content5" ContentPlaceHolderID="title" runat="server">
    <h1>Sydney University</h1>
    <h2>BREAST - Improving Radiologists' Ability to Detect Breast Cancer</h2>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <iframe width="750" height="422" src="https://www.youtube.com/embed/rf7zzTMeTf4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>

    <div class="section">
        <h2>Challenge</h2>
        <p>High quality breast imaging and accurate image assessment are critical to the early diagnoses, treatment and management of women with cancer. Mammography is the primary diagnostic tool for detecting breast cancer with 800,000 women X-rayed annually in Australia; however, it fails to detect 30% of breast cancers, with many missed cancers being visible on the image.</p>
        <p>Radiologist's fear of making a false diagnosis is well justified… such an event can have a devastating impact on patients, creating anxiety and distress which we know can last for years. We also know that such anxiety can lead to illness. During training some radiologists have even been known to say things like "I missed that one cancer – so I just killed a woman". It's critical that radiologists can diagnose different types of lesions, but just as important that they can clearly recognise what is "normal", with instant feedback on their performance. They needed to know what errors they made, why, and how to avoid them. Misdiagnosis missed cancer or false positives could be reduced.</p>

        <h2>We make complicated things simple</h2>
        <p>In an outstanding example of clinical and academic collaboration, the Cancer Institute of NSW, and the BREAST research group at the University of Sydney’s Faculty of Health Sciences, had previously developed a web-based app in-house some years ago. This innovative new training tool was named "Detected", which works in parallel with the hospital-grade picture archiving system, PACS, as a tool that gives radiologists immediate feedback on their performance when they are looking at mammograms and trying make a diagnosis.</p>
        <p>However, it lacked the real time feedback and offline capability they needed for learning conferences. It also required manual processes involving copying and pasting between offline and online spreadsheets, being a time-consuming task for the radiologists whilst learning. Finally, it lacked 3D capability used in more detailed assessments after a positive lesion identification.</p>
        <p>Then, we accepted Sydney University's challenge and started working together on this project. Using our agile development methodology and collaborating closely with the BREAST research group, we were able to deliver a new, upgraded version of the web application that allows trainees to diagnose the type of cancer & specify where it is, then receive instant feedback on their performance vs benchmarks and their peers. </p>
        <p><span class="red">"Detected"</span> replicates the operation/procedures radiologists would normally perform in a clinical setting and is used in tandem with high resolution imagery in PACS.</p>
        <p>For example, rolling the mouse wheel through slices of a 3-D image or Zooming, inverting an image or adjusting the contrast all happens exactly as it would in hospital. Three main features were developed:</p>
        <ul>
            <li>Simple Subscription for web browser users with easy self-service setup</li>
            <li>Offline capability with seamless synchronisation</li>
            <li>Added 3D imagery for more detailed assessments after positive lesion identification</li>
        </ul>
        <p>SSW's agile approach to software development meant that we could prioritise new features based on available funding and the specific value they would provide to the professional handling it. We were able to try an early version at a conference late in 2018, and then finally added the 3D feature on March 2019.</p>
        
        <h2>Technology</h2> 
        <p>This solution was built in .NET Core for the back-end and Angular for the front-end and the whole application was hosted in Azure.</p>
        
        <h2>Results</h2>
        <p>Now radiologists can feel more confident in their abilities and improve their performances by using this powerful tool to increase their expertise and accurate diagnoses.</p>
        <p>We are very proud of SSW's contribution to this life-changing project, and we look forward to any future developments that will benefit all of our mothers, aunties, daughters, sisters & friends.</p>
        
        <h3>Related links</h3>
        <ul>
            <li><a href="https://www.breastscore.com/">BREAST Australia</a></li>
            <li><a href="http://sydney.edu.au/health-sciences/breastaustralia/">BreastScreen Reader Assessment Strategy (BREAST)</a></li>
            <li><a href="https://www.breastscreen.nsw.gov.au/information-for-health-professionals/professional-development">Professional Development in Breast Screening</a></li>
        </ul>
    </div>

</asp:Content>
<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master" Title="SSW's Suggestions for Scrum" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f25323042657474657225323046616365626f6f6b')" 
onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f25323042657474657225323046616365626f6f6b');return true;"  
onmouseout="javascript:clearStatus(); return true;" > Let us know </a> what you think.</p>

    <div class="TableOfContents">
        <h3>SSW's Suggestions for Scrum</h3>
        <ol>
            <li><a href="#give-examples">Give some examples</a></li>
            <li><a href="#2-views-backlog">Make the Product Backlog have 2 views, Priority and Functional</a></li>
            <li><a href="#deal-with-approval">How to deal with approval workflows</a></li>
            <li><a href="#po-stakeholders-dealing">Guidance around how a PO should deal with stakeholders</a></li>
            <li><a href="#lack-of-time-cost-estimates">How to sell the fact that Scrum does not allow for any time or cost estimates?</a></li>
        </ol>
    </div>

    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="give-examples"></a>Give some examples</h2>
                    <p>The scrum guide is very generic, which is great to make it accessible to anyone, but this is at the cost of being specific enough to be very useful.</p>
                    <p>I would love to see examples of:</p>
                    <ul>
                        <li>How a dev team can predict capacity</li>
                        <li>How a Product Owner can predict the end date of a project</li>
                        <li>How a PO defines the value of a Product Backlog Item (PBI)</li>
                        <li>How a team should estimate the size of PBIs</li>
                    </ul>
            </li>

            <li>
                <h2><a name="2-views-backlog"></a>Make the Product Backlog have 2 views, Priority and Functional</h2>
                    <p>Product owners like to see the product backlog in priority order so they can know what's happening next.</p>
                    <p>Developers like to see the product backlog nested in functional areas, so they can get an architectural idea of what's left.</p>
                    <p>It would be great to be able to switch between these 2 views.</p>       
            </li>            

            <li>
                <h2><a name="deal-with-approval"></a>How to deal with approval workflows</h2>
                    <p>The biggest roadblock most of my teams has is testing and approval. Are there any recommendations on the best way to deal with this issue? When should testing be done? Before, at or after the Review?</p>
            </li>

            <li>
                <h2><a href="#po-stakeholders-dealing"></a>Guidance around how a PO should deal with stakeholders</h2>
                    <p>The PO is in charge of the backlog, but how should he be reporting back to stakeholders? What metrics does Scrum provide to help him show how the team is doing?</p>
            </li>

            <li>
                <h2><a href="#lack-of-time-cost-estimates"></a>How to sell the fact that Scrum does not allow for any time or cost estimates?</h2>
                    <p>Scrum pushes the fact that devs are bad at estimating, and instead of providing methods to help with this process, it asserts that you should simply explain that any estimate will be wrong, so we're just going to work on the most important stuff 1st, and then when the client runs out of money, we'll stop. How can this compete against competitors who give a price up front? Is there any guidance on how to sell this?</p>
            </li>
        </ol>
    </div>

    <h2>Acknowledgments</h2>
    <p><a href="/people/adam-cogan">Adam Cogan</a><br />
        <a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Uly.aspx">Ulysses Maclaren</a></p>

</asp:Content>

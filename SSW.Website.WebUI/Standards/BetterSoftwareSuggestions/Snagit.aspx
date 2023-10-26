<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Suggestions for Snagit" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')"> Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#drag-my-paper-around">Help me drag my paper around</a></li>
            <li><a href="#Flash-not-supported">Please change from Flash to HTML5</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="drag-my-paper-around"></a>Help me drag my paper around</h2>
                <p>I want "Space + Mouse Click and Drag" to work - it is a convention that started with Photoshop and has continued with many other apps. E.g. Acrobat</p>
                <dl class="image">
                    <dt><img src="Images/Snagit-drag-paper-around.jpg" alt="I want to drag my paper around... but I get this :-("/></dt>
                    <dd>Figure: I want to drag my paper around... but I get this :-(</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Flash-not-supported"></a>Please change from Flash to HTML5</h2>
                <p>Flash is still not supported by some mobile Apple devices.</p>
                <dl class="image">
                    <dt><img src="Images/Flash-not-supported.jpg" alt="Flash not supported"/></dt>
                    <dd>Figure: Please change from Flash to HTML5</dd>
                </dl>
            </li>

        </ol>
    </div>
    
    <h2>Acknowledgments</h2>
        <p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br /></p>
</asp:Content>

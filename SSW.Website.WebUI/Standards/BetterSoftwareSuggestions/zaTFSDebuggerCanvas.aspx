<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Suggestions for TFS Debugger Canvas" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')"> Let us know</a> what you think.</p>
    
    <h3>Cameron Skinner and Kael Rowan on the MSR (Microsoft Research) team have built this cool tool: <a href="http://blogs.msdn.com/b/kaelr/archive/2011/05/21/introducing-debugger-canvas.aspx" target="_blank">Debugger Canvas</a></h3>
    <div class="TableOfContents">
        <ol>
            <li><a href="#better-name">Give it a better name</a></li>
            <li><a href="#add-icons">Help me know which methods/properties/fields are used</a></li>
            <li><a href="#click-title">Help me know I can click in the title bar</a></li>
            <li><a href="#ColorCode">Allow me to color code each project</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="better-name"></a>Give it a better name</h2>
                <p>I think "Debugging Helicopter" might be a better name as it indicates that you are higher up... hovering above the code</p>
                <p>If not "Code Bubbles" would be better, but "Canvas" sounds for designers...</p>
                <dl class="image">
                    <dt><img src="Images/debugging-helicopter.jpg" alt="debugging helicopter"/></dt>
                    <dd>Figure: This tool kind of is like hovering over the code</dd>
                </dl>
            </li>
            
            <li>
                <h2><a name="add-icons"></a>Help me know which methods/properties/fields are used</h2>
                <dl class="image">
                    <dt><img src="Images/debugger-add-icons.jpg" alt="debugging helicopter"/></dt>
                    <dd>Figure: Add icons</dd>
                </dl>
                <p>Seeing all the other methods/properties of a class when debugging is not super useful.</p>
                <p>Despite that, you may as well improve it by:</p>
                <ul>
                    <li>Using the standard method/property /field icon</li>
                    <li>Using some extra icon + bold if that method/property is used in the code bubble you are looking at</li>
                </ul>
            </li>
            
            <li>
                <h2><a name="click-title"></a>Help me know I can click in the title bar</h2>
                <dl class="goodImage">
                    <dt><img src="Images/good-click-title.jpg" alt="debugging helicopter"/></dt>
                    <dd>Figure: Good example - I know I can click in here because it is white</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/bad-click-title.jpg" alt="debugging helicopter"/></dt>
                    <dd>Figure: Bad Example - Missing a visual indication that you can even click in the title bar</dd>
                </dl>
            </li>

            <li>
                <a name="ColorCode"></a><h2>Allow me to color code each project</h2>
                <div class="greyBox">
                    <p>E.g.</p>
                    <ul>
                        <li>UI &#8211; red</li>
                        <li>Business &#8211; orange</li>
                        <li>DataAccess &#8211; Green</li>
                    </ul>
                </div>
                <p>Then when we are dropping into each new bubble, we know what layer we are in.</p>
                <p>Even better automatically align them:</p>
                <div class="greyBox">
                    <p>E.g.</p>
                    <ul>
                        <li>UI &#8211; top</li>
                        <li>Business &#8211; middle </li>
                        <li>DataAccess &#8211; bottom</li>
                    </ul>
                </div>
                <p>This would be in the style of the architecture tools.</p>
                <dl class="Image">
                    <dt><img src="Images/color-code-layers.jpg" /></dt>
                    <dd>Figure: I would <strong>*love*</strong> to be able to color code the layers</dd>
                </dl>
            </li>

        </ol>
    </div>
    
    <h2>Acknowledgments</h2>
        <p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br /></p>
</asp:Content>

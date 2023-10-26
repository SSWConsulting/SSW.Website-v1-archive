<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Telerik SharePoint Acceleration Kit Suggestions" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')"> Let us know</a> what you think.</p>
    
    <div class="TableOfContents">
        <ol>
            <li><a href="#CountBrackets">Grid - Help me get the count in brackets like outlook </a></li>
            
        </ol>
    </div>
   
    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="CountBrackets"></a>Grid - Help me get the count in brackets like outlook </h2>
                <p>On <a href="http://sharepoint.telerik.com/aspnet-ajax/web-parts/Pages/Hierarchy.aspx ">http://sharepoint.telerik.com/aspnet-ajax/web-parts/Pages/Hierarchy.aspx </a></p>
                <ol>               
                <li>Workaround - How do I do this today? </li>
                <li>Suggestion - Could this be added by default into the grid?</li>                
                </ol>
                <dl class="image">
                    <dt><img src="Images/CountBrackets.jpg" alt="Count brackets should be added."/></dt>  
                    <dd>Figure: It would be handy to know the number of records before drilling down</dd>
                </dl>
            </li>

           
                     
        </ol>
    </div>
    
    <h2>Acknowledgments</h2>
    
    <p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br /></p>
</asp:Content>

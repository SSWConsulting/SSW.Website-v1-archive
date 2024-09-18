<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW TFS Sidekicks Suggestions" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#SortByDate">Help me sort by last accessed date</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="SortByDate"></a>Help me sort by last accessed date </h2>
                <p>The Workspace Sidekick in Team Foundation Sidekicks gives some useful information about each user and workspace that has accessed the TFS server, and allows you to sort the results by columns.</p>
                <p>However, the Last Access Date column is sorted alphabetically. The records are not in order!</p>
                <p>Sorting by the Last Access Date column should sort based on the date, not the string representation of the date.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/SortByDate.JPG" alt="Sort base on date."/></dt>
                    <dd>
                        Figure: Last Access Date sorts alphabetically. It should sort based on the date. </dd></dl>
            </li>
          
           
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/people/alumni/damian-brady">Damian Brady</a><br />
        
    </p>
</asp:Content>

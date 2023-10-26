<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW SugarSync Suggestions" %>

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
            <li><a href="#Sync">Help me Sync (read only folders)</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="Sync"></a>Help me Sync (read only folders)</h2>
                <p>
                 SugarSync has a feature that DropBox does not. It allows you to give users a read-only view of your folders. (see 'Share folders with permissions and password' on <!--SSW Link Auditor - Ignore begin--><a href="https://www.sugarsync.com/sync_comparison.html">https://www.sugarsync.com/sync_comparison.html)</a><!--SSW Link Auditor - Ignore end--> <br />
                 The problem is, when it is given to you as 'Read only', you get no right click menu "Sync (read only)"<br />
                 Currently you get a "Export/Save As" option, and this is a horrible experience.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/ReadOnlyOption.JPG" alt="Read Only option "/></dt>
                        
                    <dd>
                        Figure: Where is the "Sync (read only)" option?</dd></dl>
            </li>

        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
    </p>
</asp:Content>

<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Team Companion Suggestions" %>

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
            <li><a href="#TrackFromField">Track the "FROM" field from an email</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="TrackFromField">Track the "FROM" field from an email</a></h2>
                <p>
                 It would be great if TeamCompanion could track and store the "FROM" field from an email that you create a work item from. This way we can see who the originator of the task is without needing to open the email attachment, and we could use the field in the email templates that you provide.
                </p>
                <p>
                 TeamCompanion is currently limited to the default process templates that get shipped with TFS, but providing a wiki page on how to "Add a From/Requested field to TFS" will help users add the field and enable this extra piece of functionality.
                </p>
                <p>
                 <a href="http://www.scinaptic.com/oneplacemail.html">OnePlaceMail</a> (Outlook Addin for SharePoint) does a similar thing and stores the "FROM" details as metadata against a list item.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/OnePlaceMail.JPG" alt="One Place Mail"/></dt>
                    <dd>
                        </dd></dl>
                <dl class="image">
                    <dt>
                        <img src="Images/ExampleLibrary.JPG" alt="Example library "/></dt>
                    <dd>
                        </dd></dl>
            </li>
            
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/people/alumni/eric-phan">Eric Phan</a><br />
        
    </p>
</asp:Content>

<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Suggestions for Microsoft Live Meeting" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#ClearSpeak">Make it clear when you are an attendee (and are not allowed to speak)</a></li>
            <li><a href="#SendAppointment">Send invitation as an Outlook Appointment or provide a download link for an Outlook Appointment (.vcs file)</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="ClearSpeak"></a>Make it clear when you are an attendee (and are not allowed to speak)</h2>
                <p>
                    Background: I was trying to present a session, but the other end where unable to hear me speak and I was confused why.
                </p>
                <p>
                    The reason ended up being, that the person who configure the conference, configure me up as a attendee, not a presenter. A attendee is not able to talk.
                </p>
                <p>
                    Give a messagebox informing the user of this, rather than disable this option.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/ClearSpeak.jpg" alt=""/></dt>
                    <dd>
                        Figure: Never disable this option - instead give a message telling the user that he is an attendee without permission to speak.
                    </dd>
                </dl>
                
                
            </li>
            <li>
                <h2>
                    <a name="SendAppointment"></a>Send invitation as an Outlook Appointment or provide a download link for an Outlook Appointment (.vcs file)</h2>
                <p>
                    Every now and then you get an invitation to a live meeting session, and you want to make sure not to miss it.
                    <br />
                    What you want do then is to create a reminder / appointment in your calendar.
                    <br />
                    This can be quite hard if you are in a different time zone!
                    <br />
                    It would be helpful if a similar link found in the newsletter was displayed on the live meeting site.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/AddAppointmentDownload.jpg" alt="Provide a download link for an Outlook Appointment (.vcs file)"/></dt>
                    <dd>
                        Figure: A Live Meeting site without the link to Internet Calendar file.
                    </dd>
                </dl>
                PS: The functionality of downloading an Internet Calendar file (.ics) is there in the newsletter, it’s just not per default shown on a Live Meeting site.
            </li>
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=LX">Lei Xu</a>
    </p>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="ContactUs" Title="SSW Sydney, Melbourne and Brisbane Consulting - Contact Us" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="uc1" TagName="OpenTime" Src="~/Components/OpenTime.ascx" %>
<%@ Register Src="~/Components/AboutUs.ascx" TagName="AboutUs" TagPrefix="ssw" %>
<%@ Register TagPrefix="text" TagName="Location" Src="~/components/location.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Contact Us</h1>
    <h2>What can we do for you?</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>
        <a name="AboutUs"></a>Contact Us:</h2>
    <ul>
        <li><a href="/ssw/Company/Offices.aspx">Our Offices</a></li>
        <li><a href="#LetUsContactYou">Let Us Contact You</a></li>
        <li><a href="#TradingHours">Trading Hours</a></li>
        <li><a href="#EFT">EFT Payment Details</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">
        <p>Our specialists are ready to answer any enquiry you have, so don't hesitate to give us a call or send us an email if you are interested in our <a href="/ssw/Consulting/">consulting services</a>, <a href="/ssw/Products/">products</a>, <a href="/ssw/NETUG/">user groups</a> or <a href="/ssw/Events/">training</a>.</p>
        <p>We also welcome enquiries about <a href="/ssw/Employment/Employment.aspx">Employment Opportunities</a>.</p>
        <p class="contactActionEmail"><a class="black next btn" href="javascript:sendEmail('696e666f407373772e636f6d2e6175')" onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" name="ContactUs">Send an email</a></p>
        <p class="contactActionPhone">or call &nbsp;&nbsp;<strong style="font-size:24px"><a href="tel:+61299533000">+61 2 9953 3000</a></strong></p>

        <p class="contactActionPhone">or WeChat</p>
        <p class="contactActionPhone"><img src="/ssw/Images/QRcode.jpg" alt="SSW QR Code" width="100" title="SSW WeChat QR Code" height="100" /></p>
        <p class="contactActionPhone"><a href="https://mp.weixin.qq.com/s/jL4zEmzWM5VSTRu9DUW6-Q" target="_blank">WeChat - website</a></p>
        <p class="contactActionPhone">
            <a class="ignore large" id="facebook-menu" title="SSW on Facebook" href="https://www.facebook.com/SSW.page" target="_blank"><i class="fa fa-facebook"></i></a>
            <a class="ignore large" id="instagram-menu" title="SSW on Instagram" href="https://www.instagram.com/ssw_tv" target="_blank"><i class="fa fa-instagram"></i></a>
            <a class="ignore large" id="twitter-menu" title="SSW on Twitter" href="https://twitter.com/SSW_TV" target="_blank"><i class="fa fa-twitter"></i></a>
            <a class="ignore large" id="linkedin-menu" title="SSW on LinkedIn" href="https://www.linkedin.com/company/ssw/" target="_blank"><i class="fa fa-linkedin"></i></a>
            <a class="ignore large" id="youtube-menu" title="SSW on YouTube" href="https://www.youtube.com/user/sswtechtalks/" target="_blank"><i class="fa fa-youtube"></i></a>
        </p>
    </div>
    
    <div class="section">
        <a name="LetUsContactYou"></a>
        
        <text:Location runat="server" />

        <%-- <div class="get-started-form">
        <div class=" form-horizontal">
            <h2>Let Us Contact You</h2>
            <p>Fill in the form below and we'll get back to you soon.</p>
           <div class="form-group">
                <label for="contactName" class="control-label">Name</label>
                <div>
                    <input type="text" id="contactName" placeholder="Type your full name here" title="Contact Name" tabindex="1" class="form-control" runat="server" />
                    <asp:RequiredFieldValidator ID="RFV_contactName" runat="server" ControlToValidate="contactName" EnableClientScript="true">
                            <img alt="Red Star:Required field, Exclamation:Error" src="/ssw/Images/Validation//redstar.gif" width="18" height="14" border="0" /><span class="validation">Name is required</span>
                    </asp:RequiredFieldValidator>
                </div>
            </div> 
            <div class="form-group">
                <label for="contactEmail" class="control-label">Email</label>
                <div>
                    <input type="text" id="contactEmail" placeholder="Type your email here" title="Contact Email" tabindex="2" class="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RFV_contactEmail" runat="server" ControlToValidate="contactEmail" EnableClientScript="true">
                            <img alt="Red Star:Required field, Exclamation:Error" src="/ssw/Images/Validation//redstar.gif" width="18" height="14" border="0" /><span class="validation">Email is required</span>
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="REV_contactEmail" runat="server" ControlToValidate="contactEmail"
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid email address"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="contactPhone" class="control-label">Phone</label>
                <div>
                        <input type="text" id="contactPhone" placeholder="Type your phone number here" title="Contact Phone" tabindex="3" class="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RFV_contactPhone" runat="server" ControlToValidate="contactPhone" EnableClientScript="true">
                            <img alt="Red Star:Required field, Exclamation:Error" src="/ssw/Images/Validation//redstar.gif" width="18" height="14" border="0" /><span class="validation">Phone is required</span>
                        </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="MailMessageFreeTextBox" class="control-label">Message</label>
                <div>
                        <textarea class="form-control" id="MailMessageFreeTextBox" runat="server" rows="5" tabindex="4"></textarea>
                        <asp:RequiredFieldValidator ID="RFV_contactMessage" runat="server" ControlToValidate="MailMessageFreeTextBox" EnableClientScript="true">
                            <img alt="Red Star:Required field, Exclamation:Error" src="/ssw/Images/Validation//redstar.gif" width="18" height="14" border="0" />
                        </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="cboTimeZone" class="control-label">Time Zone</label>
                <div>
                        <asp:DropDownList ID="cboTimeZone" runat="server" TabIndex="5" CssClass="form-control"/>
                        <br />
                        Please let us know your timezone so we can contact you at an appropriate time.
                </div>
            </div>
            <div class="form-group">
                <div>
                        <asp:Button ID="btnSend" CssClass="btn red done" runat="server" Text="Send" OnClick="btnSend_Click" />
                </div>
            </div>

        </div>
    </div>
    --%>
        
    </div>

    <div class="section">

        <h2>Our Offices</h2>
        <p>SSW has offices in several countries around the world: <a href="Offices.aspx">see SSW Offices</a>.</p>
    </div>

    <div class="section">
        <a name="TradingHours"></a>
        <h2>Trading Hours</h2>
        <p>SSW maintains long opening hours in order to give the best possible support around the world:</p>
        <table width="100%" class="normal">
            <tbody>
                <tr>
                    <th scope="row" style="width: 25%">Head Office Hours
                    </th>
                    <td>Monday to Friday, 8.30am - 6.30pm AEST 
                        <uc1:OpenTime ID="OpenTimeOfficeHours" runat="server" IsOfficeHours="true"></uc1:OpenTime>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Support Hours
                    </th>
                    <td>Monday to Sunday, 7.00am - 11.30pm AEST 
                        <uc1:OpenTime ID="OpenTimeAfterHours" runat="server" IsOfficeHours="false"></uc1:OpenTime>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="section">
        <a name="EFT"></a>
        <h2>EFT Payment Details</h2>
        <p>For our clients wishing to EFT (Direct Deposit) payment, details are as follows:</p>
        <table width="100%" style="margin-bottom: 10px;" class="normal">
            <tbody>
                <tr>
                    <th scope="row" style="width: 25%">Bank Name
                    </th>
                    <td>ANZ - 218 Military Road, Neutral Bay, NSW, Australia
                    </td>
                </tr>
                <tr>
                    <th scope="row">Account Name
                    </th>
                    <td>SSW
                    </td>
                </tr>
                <tr>
                    <th scope="row">BSB Number
                    </th>
                    <td>012 352
                    </td>
                </tr>
                <tr>
                    <th scope="row">Account Number
                    </th>
                    <td>3546 24304
                    </td>
                </tr>
                <tr>
                    <th scope="row">SWIFT Number
                    </th>
                    <td>ANZBAU3M
                    </td>
                </tr>
                <tr>
                    <th scope="row">ABN
                    </th>
                    <td>21 069 371 900
                    </td>
                </tr>
                <tr>
                    <th scope="row">ACN
                    </th>
                    <td>069 371 900
                    </td>
                </tr>
            </tbody>
        </table>
        <p>
            If you have made a direct deposit, please notify us by <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175','EFT Amount')"
                onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                onmouseout="javascript:clearStatus(); return true;">email</a>.
        </p>
        <p>
            SSW also accepts payments by Visa, MasterCard, American Express and Diners Club. There is an <a href="https://www.ssw.com.au/terms-and-conditions">additional charge for payments made by credit card</a>.
        </p>
        <img src="/ssw/company/Images/creditcards.png" />
    </div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebarcontainer" runat="server">
    <ssw:AboutUs ID="AboutUs" runat="server" />
    <div class="section">
        <h4>SSW's Chief Architect is one of a few Microsoft Regional Directors in Australia!</h4>
        <p>
            <br />
            <img src="/ssw/Company/Images/Microsoft-regional-director.png" alt="Microsoft Regional Director Program"
                width="150" height="53" />
        </p>
        <p>
            RDs are 120 partners in 50 countries. They speak many languages and have various
            areas of technical expertise. They are master presenters and consistently get the
            best scores when presenting to our customers. Regional directors are independent
            developers and architects, volunteers chosen for their leadership in their local
            technology circles, whose primary purpose is to share information about Microsoft
            technologies with their developer communities and to provide feedback from developers
            to Microsoft.
        </p>
        <p>
            Regional directors have gained developers' trust by providing an objective viewpoint.
            Regional Directors are not Microsoft employees, so they tend to be very open about
            our products, both good and bad.
        </p>
        <a href="http://www.msrd.io/"
            target="_blank">More about Microsoft Regional Director Program</a>
        <p>
            <br />
            <img src="/SSW/Company/Images/Microsoft-MVP.png" alt="Adam is a Microsoft MVP" width="124" />
            <br />
            Adam is also a Microsoft Most Valued Professional (MVP) for Microsoft Visual Studio ALM (formerly Visual Studio Team System).

        </p>
    </div>

</asp:Content>

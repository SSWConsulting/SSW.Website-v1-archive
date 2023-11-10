<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="SSW Iphone Suggestions" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f25323042657474657225323046616365626f6f6b')" 
onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f25323042657474657225323046616365626f6f6b');return true;"  
onmouseout="javascript:clearStatus(); return true;" > Let us know
 </a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#KeepImgInline">Email - Give an option to keep images inline in the email history</a></li>
            <li><a href="#IpadComments">Add the comments on the main update form (like the iPad)</a></li>
            <li><a href="#ContactCounter">I would like to see a contact count in the contact groups screen</a></li>
            <li><a href="#AddScreenshot">Make it easy to add a screen shot into an email</a></li>
            <li><a href="#ExtraViews">Make extra views discoverable </a></li>
            <li><a href="#ShowAttached">Show attached emails as normal attachments </a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
              <li>
                <h2><a name="KeepImgInline"></a>Email - Give an option to keep images inline in the email history</h2>
                    <dl class="badImage">
                        <dt><img src="Images/ReplacedImg.JPG" alt="The image is replaced"/></dt>
                        <dd>Figure: Bad example &#8211; currently images are replaced in your email history</dd>
                   </dl>
              </li>
              <li>
                <h2><a name="IpadComments"></a>Add the comments on the main update form (like the iPad)</h2>
                    <dl class="image">
                        <dt><img src="Images/IpadComments.png" alt="Comments on Ipad"/></dt>
                        <dd>Figure: The ipad does a good job. Make the form longer and add the comments down the page so I can do it in one screen like this</dd>
                    </dl>
              </li>

              <li>
                <h2><a name="ContactCounter"></a>I would like to see a contact count in the "contact groups" screen</h2>
                    <dl class="badImage">
                        <dt><img src="Images/iphone-contact-screen.jpg" alt="Iphone contact group screen"/></dt>
                        <dd>Figure: I can't see how many contacts I have on "contact groups" screen :(</dd>
                   </dl>

                   <dl class="image">
                        <dt><img src="Images/iphone-contact-screen-2.jpg" alt="Iphone contact screen"/></dt>
                        <dd>Figure: I know if I scroll all the way down on my contacts screen I will find this info</dd>
                   </dl>
              </li>
              <li>
               <h2><a name="AddScreenshot"></a>Make it easy to add a screen shot into an email</h2>
               <ol>
                The experience should be:
                <li>Take a screen shot (currently works - using the 2 button approach)</li>
                <li>Pop a screen and ask if you want that on the clipboard</li>
                <li>Open an email and Paste (currently works)</li>
                <li>Convert the email to HTML (currently it shows beautifully inline when you view on an iPhone, but someone in OWA only sees a 'Plain Text' email with 2 attachments</li>                
               </ol>
              </li>
              <li>
                <h2><a name="ExtraViews"></a>Make extra views discoverable</h2>
                <p>
                For example the iPhone shows album covers and the actual list of songs that you can flip through? but you would be lucky to find this.<br />
                I found this hard to find... I never knew there was a cool new view when you turn the iPhone on the side (This is not a very discoverable feature from Mr Jobs).
                </p>
                <dl class="image">
                        <dt><img src="Images/NormalView.jpg" alt="Normal view"/></dt>
                        <dd>Figure: The normal view - give me some indication that there is a new view on the side.</dd>
                   </dl>
                <dl class="image">
                        <dt><img src="Images/3DFlipView.jpg" alt="You can see the 3D flip view "/></dt>
                        <dd>Figure: Turn it on the side an you have an interactive 3D flip view</dd>
                   </dl>
              </li>
              <li>
                <h2><a name="ShowAttached">Show attached emails as normal attachments </a></h2>
              <p>
                An email with an attachments (of an .msg) don't show as attachments.<br />
                Grrrrr.<br />
                iPads/iPhones actually emded the text at the bottom of the email - but I can't imagine anyone expecting that behavior.
              </p>
              <dl class="image">
                        <dt><img src="Images/AttachmentNotShow.jpg" alt="The attached doesn't show. "/></dt>
                        <dd>Figure: This attachment does not show on an iPhone or iPad</dd>
                   </dl>
              </li>
              
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
    </p>
</asp:Content>

<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="SSW Facebook Suggestions" %>

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
            <li><a href="#EditGroupName">Allow you to edit a groups name</a></li>
            <li><a href="#FindingOption">Make Finding Friends By City Possible</a></li>
            <li><a href="#PasteImage">Help me be able to paste an image</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>

              <li>
                <h2>
                    <a name="EditGroupName"></a>Allow you to edit a groups name</h2>
                <p>
                    When I was Administrator of a group, it is better allow me to edit the group name:
                </p>
                 <dl class="image">
                    <dt>
                        <img src="Images/Facebook_EditGroupName_1.JPG" alt="Facebook group page"/></dt>
                    <dd>
                        Figure: The group name could not be edited.</dd></dl>
              </li>
              <li>
                <h2>
                 <a name="FindingOption"></a>Make Finding Friends By City Possible</h2>
                 <p>It is not possible to find my friends that live in 'Melbourne' and work for 'Microsoft'</p>
                  <ol>
                   Give me extra find options:
                   <li>'Recently Added Friends'</li>
                   <li>'By City'</li>
                   <li>'By Company'</li>
                  </ol>
                  <dl class="image">
                    <dt><img src="Images/FindFriends.jpg" alt="Find friends"/></dt>
                    <dd>Figure: Improve finding your 'real' friends</dd>
                  </dl>
              </li>

            <li>
                <h2><a name="PasteImage"></a>Help me be able to paste an image</h2>
                <p>For example on this Discussion Board I want to be able to paste and image to show the problem.</p>
                <p>See Facebook Discussion Board.</p>
                <dl class="image">
                    <dt><img src="Images/facebook-discussion-board.jpg" alt="Facebook Discussion Board"/></dt>
                    <dd>Figure: Add 'Paste Image' icon</dd>
                </dl>
            </li>

              <p>Official Facebook suggestions (that they don't respond to) <a href="http://www.facebook.com/help/?topic=suggestions">http://www.facebook.com/help/?topic=suggestions</a> </p>          
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
    </p>
</asp:Content>

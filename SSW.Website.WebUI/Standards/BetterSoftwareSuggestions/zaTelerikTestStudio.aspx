<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Telerik Test Studio Suggestions" %>

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
            <li><a href="#FindInStartMenu">Help me find it in the start menu</a></li>
            
        </ol>
    </div>
   
    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="FindInStartMenu">Help me find it in the start menu</a></h2>
                <ol>
                  <li>Change it from "WebUI Test Studio QA Edition" To "Telerik WebUI Test Studio QA Edition"</li>
                  <li>(optional) I would also remove the red - go for simplicity</li>                  
                </ol>
                <dl class="image">
                    <dt><img src="Images/ChangeTheName.jpg" alt="Add Telerik to the name. "/></dt>  
                    <dd>Figure: Change it from "WebUI Test Studio..." To "Telerik WebUI Test Studio..." </dd>
                </dl>
            </li>

           
        </ol>
    </div>
    
    <h2>Acknowledgments</h2>
    
    <p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br /></p>
</asp:Content>

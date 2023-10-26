<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="SSW SMH Suggestions" %>

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
            <li><a href="#ASX200">We need a listing of the Top ASX 200</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
<%--        example:  
              <li>
                <h2>
                    <a name="Rings"></a>Different rings</h2>
                <p>
                    When you lose the network connection, I would prefer a message box:
                </p>
                <div class="greyBox">
                You have lost the network connection.<br /><br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Try Again]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Cancel]
                </div>
                <p>
                    But now it only show a error message tell you the error about network:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/LossConnMsg.JPG" alt="The message when loss network"/></dt>
                    <dd>
                        Figure: The message when you loss network connection.</dd></dl>
            </li>            
--%>
            <li>
                <h2>
                    <a name="ASX200"></a>We need a listing of the Top ASX 200</h2>
                <p>
                    You need an important list on this page "Top ASX 200"
                </p>
                <p>
                    http://markets.smh.com.au/apps/mkt/indexDetails.ac?idx=XJO
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/SMH_ASX_1.JPG" alt="On this page need a list"/></dt>
                    <dd>
                        Figure: There is no "Top ASX 200" list.</dd></dl>
                <p>
                    If too hard then please link to:
                </p>
                <div class="greyBox">
                    http://www.digitallook.com/cgi-bin/dlmedia/security.cgi?security_classification_id=627901&country_id=1&trade_analysis=0&csi=870325&target_csi=&id=870325&sub_action=&orderby_field=security_name&price_type=closing_&intraday_prices=1&ac=&username=&action=constituents&selected_menu_link=%2Fdlmedia%2Finvesting&order_by=column7&view_data=standard&sequence=descending 
                </div>
                <dl class="image">
                    <dt>
                        <img src="Images/SMH_ASX_2.JPG" alt="The page can be linked"/></dt>
                    <dd>
                        Figure: You can link to this page.</dd></dl>
                <p>
                Note #1: The same suggestion applies to this page: http://www.findata.co.nz/markets/analysis.aspx
                </p>
                <p>
                Note #2: I have added this list to the bottom of the relevant Wikipedia page: http://en.wikipedia.org/wiki/ASX_200
                </p>
                <p>
                but this is only a partial solution.
                </p>
            </li>
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
    </p>
</asp:Content>

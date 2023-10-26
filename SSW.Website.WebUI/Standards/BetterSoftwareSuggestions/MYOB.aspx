<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW MYOB Suggestions" %>

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
            <li><a href="#Payroll">Payroll Module - Entitlements</a></li>
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
                    <a name="Payroll"></a>Payroll Module - Entitlements</h2>
                <p>
                    It shows in hours per pay period. Add extra field in below form: Days per year [ 20.7 ]
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/MYOB_Payroll.JPG" alt="Need add field on this form"/></dt>
                    <dd>
                        Figure: Need add a field in this form for show in hours per pay period.</dd></dl>
                <p>
                    For example: The 6.369 is showing in hours (per fortnight) (which is 23 annual leave days/40*36 hours per week worked *8/26)
                </p>
                <p>
                    Need to show "20.7 days per year"  (which is 26 pay periods/8 hours per day)
                </p>
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

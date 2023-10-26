<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Asterix Phone Suggestions" %>

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
            <li><a href="#Rings">Different rings</a></li>
            <li><a href="#TransferEasier">Make transferring easier</a></li>
            <li><a href="#PickUpOnAnother">Pick up a ringing call on another extension</a></li>
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
                    <a name="Rings"></a>Different rings</h2>
                <p>
                    It would be good to have the phone be able to ring with a different sound for an Internal call vs External Call.
                </p>
                <p>
                    For example: For our office, one ring for "9953 3000" calls and one ring if extension 424 is calling me.
                </p>
            </li>
            <li>
                <h2>
                    <a name="TransferEasier"></a>Make transferring easier</h2>
                <p>
                    To transfer a call internally (when you only know the name) you need to: "Services" | "Local Phone Directory".
                </p>
                <p> 
                    You should be able to press a button: "Names".
                </p>
            </li>
            <li>
                <h2>
                    <a name="PickUpOnAnother"></a>Pick up a ringing call on another extension</h2>
                <p>
                    When an external call is ringing (but not on your extension), to get it you need to: "xxx".
                </p>
                <p>
                    You should be able to: "yyy".
                </p>
                <p>
                    PS: If you are an asterix guru - and you know fixes to the above, please let us know.
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

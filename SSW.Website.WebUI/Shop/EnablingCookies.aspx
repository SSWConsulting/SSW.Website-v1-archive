<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="How to Enable Cookies in Internet Explorer" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>How to Enable Cookies in Internet Explorer</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="shop-container">
        <script language="JavaScript" src="/ssw/Include/Validation.js" type="text/javascript"></script>
        <script language="JavaScript" src="/ssw/Include/Printing.js" type="text/javascript"></script>
        <div id="contentPane">
            <ol>
                <li>Select the tools menu Internet Explorer, then Internet Options
				<li>The Internet Options Dialog sould appear. Select the <strong>Privacy</strong>
                    tab, located at the top of the dialog
				<li>Under Web Site, click on the&nbsp;<strong>Edit</strong>
                    Button&nbsp;
				<li>The Per Site Privacy action should now appear. In the <strong>Address of Website</strong>, 
				Type 'http://www.ssw.com.au'
				<li>Click the allow <strong>Allow</strong> Button, followed by the <strong>OK</strong>
                    Button twice to apply changes</li>
            </ol>
            <dl class="image">
                <dt><a name="Step11"></a><%--<img border="0" src="/ssw/Images/EnableCookies/screen3.gif"/ >--%></dt>
                <dd></dd>
            </dl>
            <dl class="image">
                <dt><a name="Step11"></a><%--<img border="0" src="/ssw/Images/EnableCookies/screen5.gif"/ >--%></dt>
                <dd></dd>
            </dl>
        </div>
    </div>
</asp:Content>

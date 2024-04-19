<%@ Page MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW - Shopping Process" %>

<asp:Content ID="Title" ContentPlaceHolderID="title" runat="server">
    <h1>SSW - Shopping Process</h1>
</asp:Content>

<asp:Content ID="Side" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">

    <%--    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
        <% '#2 Above 3 lines required by SSWWebTemplate.aspx ver 1 %>
        <script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script>
        <script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>

    </head>
    <body onbeforeprint="javascript:togglePrint();" onafterprint="javascript:togglePrint();">--%>

    <% '#3 Above 7 lines required by SSWWebTemplate.aspx ver 1  Note: there can be a PageTitle parameter if it is different to the Document.Title %>

    <p>Step 1 (Download) > <a href="/ssw/Standards/WiseSetup/UserGuide.aspx">Step 2 (Install and Test)</a> > <a href="/ssw/Registration/userguide.aspx">Step 3 (Register)</a></p>


    <b>SSW Shopping Process</b><br>
    <br>
    There are a few different ways to purchase SSW Products from our web site.<br>
    Most people download our products first and then install and test it.<br>
    The final step is to purchase it.
		<br>
    <br>
    This tutorial assumes you follow the <b>Download - Install - Purchase</b> process.
		<br>
    <br>
    Alternatively you can start from <a href="/ssw/Products/">Product List</a>.
        <br>
    If you want to see it in action, go to <a href="UserGuideFlash.aspx">Flash Run-through</a><br>
    <br>

    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width: 100%}">
        <tr>
            <td>
                <b><a href="#download">1.</a> Download</b><br>
                <b><a href="#installtest">2.</a> Install</b><br>
                <b><a href="#purchase">3.</a> Purchase</b><br>
                <b><a href="#nstep">4.</a> Next step</b>

            </td>
        </tr>
    </table>
    <h2>SSW's Web Site Shopping Process Screens </h2>

    <h2>1. Download<a name="download"></a></h2>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/HomeDownloadFirst.gif"></dt>
        <dd>Figure 1: SSW Home Page - Click 'Download' Link from the dropdown menu</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/Download.gif"></dt>
        <dd>Figure 2: Download Page - Select a Product and click on 'Free Download' button</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/ProdBasketDownloadFirst.gif"></dt>
        <dd>Figure 3: Review Download Basket Page - Click 'Login and Send Download' button</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/LoginDownloadFirst.gif"></dt>
        <dd>Figure 4: Login Page - Enter Your Details and Click 'Login' Button</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/DownloadMessage.gif"></dt>
        <dd>Figure 5: Message Page - Email sent!</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/DownloadEmail.gif"></dt>
        <dd>Figure 6: You will get download email with link to download file or a file as an attachment depending on your selection on Download Basket page(Figure 3)</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/DownloadDialog.gif"></dt>
        <dd>Figure 7: Download dialog box (Only if you selected 'Email Me the URL' Radio button on Download Basket page(Figure 3))</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/Run.gif"></dt>
        <dd>Figure 8: Download Finish dialog box (Only if you selected 'Email Me the URL' Radio button on Download Basket page(Figure 3))</dd>
    </dl>


    <h2>2. Install and Test<a name="installtest"></a></h2>
    Install and test your downloaded program on your machine.
To install view the <a href="/ssw/Standards/WiseSetup/UserGuide.aspx">Installation User Guide</a>

    <h2>3. Purchase<a name="purchase"></a></h2>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/Home.gif"></dt>
        <dd>Figure 9: SSW Home Page - Click 'Products' Link from the dropdown menu</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/SelectProductGroup.gif"></dt>
        <dd>Figure 10: Order Page - Select Product Group</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/Order.gif"></dt>
        <dd>Figure 11: Order Page with VS.NET Product Group  - Click 'Order Now' Link</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/SelectProduct.gif"></dt>
        <dd>Figure 12: Purchase SSW Code Auditor Page - Select Specific Product and then Click 'Order Now' Link</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/Basket.gif"></dt>
        <dd>Figure 13: Shopping Basket Page - Check Your Selection and Click 'Continue' Button</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/Cart.gif"></dt>
        <dd>Figure 14: Shopping Cart Page - Check Your Selection and Click 'Next' Link</dd>
    </dl>
    <dl class="image">
        <dt><a name="Step14"></a>
            <img border="0" src="/ssw/Images/Shop/Payment.gif"></dt>
        <dd>Figure 15: Payment Method Page - Enter Payment Details</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/PaymentOrderNow.gif"></dt>
        <dd>Figure 16: Payment Method Page - Click 'Order Now' Button</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/Finish.gif"></dt>
        <dd>Figure 17: Message Page - Finished!</dd>
    </dl>

    <dl class="image">
        <dt><a name="Step14"></a>
            <img border="0" src="/ssw/Images/Shop/ThankyouEmail.gif"></dt>
        <dd>Figure 18: You will get first email with your payment details from SSW Team within an hour</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/HowToDownloadEmail.gif"></dt>
        <dd>Figure 19: You will get a second email with Payment Confirmed and Registration Instructions link</dd>
    </dl>
    <dl class="image">
        <dt>
            <img border="0" src="/ssw/Images/Shop/KBArticleHowToRegister.gif"></dt>
        <dd>Figure 20: KB Article about How to register</dd>
    </dl>
    <h2>Next step<a name="nstep"></a></h2>
    <a name="NextStep"></a>
    Do you want to know more about how to register?</p>
        <p>
            To register view the <a href="/ssw/StandardsInternal/Registration/userguide.aspx">Registration User Guide</a>
        </p>
    <p>&nbsp;</p>
    <%--    </body>
    </html>--%>
</asp:Content>
